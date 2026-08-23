#!/usr/bin/env bash
# Rebuild every .skill in dist/ from the SKILL.md files under skills/.
# Run from the repo root: ./build.sh
set -euo pipefail

cd "$(dirname "$0")"
mkdir -p dist
fail=0

for skill_md in skills/*/SKILL.md; do
    dir=$(dirname "$skill_md")
    folder=$(basename "$dir")
    declared=$(sed -n 's/^name:[[:space:]]*//p' "$skill_md" | head -1 | tr -d '\r')

    if [ -z "$declared" ]; then
        echo "FAIL  $folder: no 'name:' in frontmatter"
        fail=1
        continue
    fi

    if [ "$declared" != "$folder" ]; then
        echo "FAIL  $folder: frontmatter name is '$declared', must match the folder name"
        fail=1
        continue
    fi

    if ! grep -q '^description:' "$skill_md"; then
        echo "FAIL  $folder: no 'description:' in frontmatter (the skill will never trigger)"
        fail=1
        continue
    fi

    rm -f "dist/$folder.skill"
    (cd "$dir/.." && zip -qr "$OLDPWD/dist/$folder.skill" "$folder" -x '*.DS_Store')
    echo "ok    $folder.skill"
done

if [ "$fail" -ne 0 ]; then
    echo
    echo "Some skills failed. dist/ was not updated for those. Fix and rerun."
    exit 1
fi

echo
echo "All skills rebuilt. Commit both skills/ and dist/ so nobody installs a stale copy."
