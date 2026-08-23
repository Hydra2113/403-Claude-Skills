#!/usr/bin/env bash
# Check that every .skill in dist/ matches its SKILL.md source.
# Run locally the same way CI runs it: ./verify.sh
#
# Compares the SKILL.md *inside* each archive against the source file, not the
# zip bytes. Zip archives embed file timestamps, so a rebuild is never
# byte-identical to a previous build even when the content is unchanged.
set -uo pipefail

cd "$(dirname "$0")"
fail=0
tmp=$(mktemp -d)
trap 'rm -rf "$tmp"' EXIT

for skill_md in skills/*/SKILL.md; do
    dir=$(dirname "$skill_md")
    folder=$(basename "$dir")
    archive="dist/$folder.skill"

    declared=$(sed -n 's/^name:[[:space:]]*//p' "$skill_md" | head -1 | tr -d '\r')
    if [ "$declared" != "$folder" ]; then
        echo "FAIL  $folder: frontmatter name is '${declared:-<missing>}', must match the folder name"
        fail=1
        continue
    fi

    if ! grep -q '^description:' "$skill_md"; then
        echo "FAIL  $folder: no 'description:' in frontmatter (the skill would never trigger)"
        fail=1
        continue
    fi

    if [ ! -f "$archive" ]; then
        echo "FAIL  $folder: $archive is missing. Run ./build.sh"
        fail=1
        continue
    fi

    rm -rf "${tmp:?}/x" && mkdir -p "$tmp/x"
    if ! unzip -qo "$archive" -d "$tmp/x" 2>/dev/null; then
        echo "FAIL  $folder: $archive is not a readable zip. Run ./build.sh"
        fail=1
        continue
    fi

    if [ ! -f "$tmp/x/$folder/SKILL.md" ]; then
        echo "FAIL  $folder: archive does not contain $folder/SKILL.md. Run ./build.sh"
        fail=1
        continue
    fi

    if ! diff -q "$skill_md" "$tmp/x/$folder/SKILL.md" >/dev/null; then
        echo "FAIL  $folder: dist/ is stale, the packaged SKILL.md differs from source. Run ./build.sh"
        fail=1
        continue
    fi

    echo "ok    $folder"
done

for archive in dist/*.skill; do
    [ -e "$archive" ] || continue
    name=$(basename "$archive" .skill)
    if ! compgen -G "skills/$name/SKILL.md" >/dev/null; then
        echo "FAIL  $name: $archive has no source under skills/. Delete it or restore the source."
        fail=1
    fi
done

echo
if [ "$fail" -ne 0 ]; then
    echo "dist/ is out of sync. Run ./build.sh, then commit skills/ and dist/ together."
    exit 1
fi
echo "dist/ is in sync with skills/."
