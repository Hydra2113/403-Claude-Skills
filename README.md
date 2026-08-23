# ENGGEN 403 Team Project Skills

Eight Claude skills built for the 2026 Team Project (speed limits). They encode the rubric,
the deliverable requirements and the business case method so that thirty people working in
parallel produce consistent output instead of thirty different interpretations.

Report due **Friday 28 August, 5pm**. Work starts Monday 8am.

---

## What a skill is, and what these ones are not

A skill is a set of instructions Claude loads automatically when your request matches what
the skill covers. You do not call it explicitly. If you paste a draft problem statement,
the problem statement skill loads itself and Claude critiques it against the rubric instead
of giving you generic writing advice.

**These skills do not write the report.** The teaching team ran the brief and rubric through
multiple AI systems and got 40% on the rubric. Feeding it the example reports as well dropped
it to 20%. Every skill here is deliberately built to check, constrain and structure work you
have already done, not to generate the report for you. Use them that way and they help. Use
them to produce content wholesale and you will land in the band the teaching team already
measured.

---

## Repository layout

```
.
├── skills/
│   ├── 1-framing/
│   │   ├── problem-statement-critic/       Diagnose and fix problem statements
│   │   └── stakeholder-requirements-csf/   Stakeholders to requirements to CSFs
│   ├── 2-evidence/
│   │   ├── evidence-ledger/                Classify claims, appraise sources, APA 7
│   │   └── impact-research-lanes/          Part (a) economic vs social vs environmental split
│   ├── 3-options/
│   │   └── options-screening-dfv/          Long list, CSF screen, DFV, packaging
│   ├── 4-writing/
│   │   ├── standalone-exec-summary/        The 30% page
│   │   └── report-house-style/             One voice across many authors
│   └── 5-review/
│       └── enggen403-rubric-auditor/       Rubric bands, page budget, format spec
├── dist/                                   Packaged .skill files, install these
├── reference/                              Course docs, gitignored, pull from Canvas
├── build.sh                                Rebuilds dist/ from skills/
├── verify.sh                               Checks dist/ is in sync, same check CI runs
├── .github/workflows/verify-skills.yml     Fails the push if dist/ is stale
├── PROJECT-LECTURE-SUMMARY.md              Research strategy, read before researching
└── README.md
```

The numbered folders follow the order you will need them during the week. They are for human
navigation only. The folder a skill lives in has no effect on how it loads.

Do not commit the brief, the rubric, the deliverable document, CBAX or the example reports.
They are the university's material. `reference/` is gitignored for that reason.

---

## Installing the skills

Grab the `.skill` files from `dist/`. Each one is a small zip containing a single `SKILL.md`.

**On claude.ai or the Claude desktop or mobile app.** Open Settings and find the Skills
section, then upload the `.skill` file. If your account does not show a Skills section, see
the fallback below. Exact menu wording moves around between releases, so if you cannot find
it, search the settings page for "skill" rather than hunting through tabs.

**In Claude Code.** Unzip the skill folder into `~/.claude/skills/` (personal, available
everywhere) or `.claude/skills/` inside a project (project-scoped). The folder name should
match the skill name. Claude picks them up on the next session.

```bash
mkdir -p ~/.claude/skills
unzip dist/problem-statement-critic.skill -d ~/.claude/skills/
```

**Fallback if skills are not available on your plan.** Create a Claude Project for the team
project and paste the contents of the relevant `SKILL.md` into the project instructions, or
add the `SKILL.md` files to the project knowledge. You lose automatic triggering, so you have
to tell Claude which one to follow, but the substance still works. Say "follow the problem
statement critic instructions" and paste your draft.

Install all eight. They are small and they cross-reference each other's stages.

---

## Using them

You do not need to name the skill. Just do the work and paste it in.

| You are doing this | Say something like | Skill that loads |
|---|---|---|
| Drafting problem statements | "Here's our draft problem statement, is it any good?" | problem-statement-critic |
| Stakeholder analysis | "Help me build the stakeholder matrix and requirements table" | stakeholder-requirements-csf |
| Picking CSFs | "Are these 5 critical success factors traceable to our requirements?" | stakeholder-requirements-csf |
| Starting research in your lane | "I'm on the environmental impacts, where do I start?" | impact-research-lanes |
| Merging the three lanes' research | "These three research notes don't line up" | impact-research-lanes |
| Checking a source or claim | "Does this claim about 30km/h zones hold up?" | evidence-ledger |
| Building the long list | "Screen these 12 options against our CSFs" | options-screening-dfv |
| Costing an option | "What order of magnitude is this option?" | options-screening-dfv |
| Writing the summary | "Does this executive summary stand alone?" | standalone-exec-summary |
| Merging sub-team writing | "Edit this section for consistency with the rest of the report" | report-house-style |
| Checking against the rubric | "Audit this section against the rubric" | enggen403-rubric-auditor |
| Page limit worry | "How many pages is this using?" | enggen403-rubric-auditor |

If the wrong one loads, or none does, name it directly: "use the rubric auditor on this".

---

## Suggested order across the week

**Monday.** Framing. Problem statements through the critic before anyone takes them to clinic,
which saves the queue for questions the skill cannot answer. Stakeholder matrix and
requirements table started in parallel. Research sub-team starts running sources through the
evidence ledger from hour one, since the ledger is the slowest thing to build and everything
downstream cites it.

**Tuesday.** Requirements table finished, CSFs locked. Do not start options until the CSFs are
locked, because rework here is expensive. Long list generated.

**Wednesday.** CSF screen and DFV screen. Packages formed. First draft of the executive summary
even though the body is not finished, because it exposes gaps while there is still time.

**Thursday.** Monetisation, Four Capitals discussion, body writing. Every section through the
house style skill as it is merged, not in one pass at the end.

**Friday morning.** Rubric audit section by section. Page budget. Format check. Submit well
before 5pm, the Canvas submission has crashed in previous years.

---

## Non-negotiables the skills enforce

Worth knowing even without the skills loaded.

- 13 pages max, executive summary through end of the shortlist recommendations. Charts and
  figures count. References, coversheet and contents do not. **Pages past 13 are not assessed.**
- 5 page appendix. Must contain the Necessary / Nice-to-have / Aspirational requirements table
  for each key stakeholder.
- A systems thinking tool must be shown, in the body or in the appendix. Its absence is a
  fail-band item on its own.
- At least two specific problem statements, not copied from the brief.
- 4 to 6 critical success factors, drawn from the necessary requirements.
- Two packages plus do-nothing. Do-nothing is a real option and needs a monetised impact too.
- One monetised impact per package. Other major impacts qualified against the Four Capitals.
- A4 portrait, 2.00 cm margins, 11pt or larger, line spacing 1.15 to 2.0, page numbers,
  captions on every table and figure, each referred to at least once in the body.
- APA 7. Cite the brief as: Team Project Brief, Speed limits, ENGGEN 403, 2026.
- PDF, one per team, `[Team Number]_Team_Project_Report.pdf`, via Canvas, Turnitin.
- Marks: Reporting 10%, Executive summary 30%, Strategic case 30%, Economic case 30%.
  The executive summary is one page carrying 30%. Resource it like it.

---

## Open questions for the clinic

Two things the course documents do not resolve. Someone should ask in 405-921 on Monday and
post the answer to the team channel and Ed.

1. **Two packages or three?** The Assessment Outline in the brief says three shortlisted
   options (do minimum, do medium, do maximum) alongside do-nothing. The Deliverables document
   and the rubric both say two packages alongside do-nothing, which is also what was said in
   the briefing lecture. The skills currently assume two plus do-nothing.
2. **Series or parallel screening?** The Deliverables document says the CSF and DFV frameworks
   may be applied either in series or in parallel. The rubric's DFV wording refers to
   non-eliminated options "if completed after CSF", which reads as though series is expected.
   This decides how the economic case sub-team structures its work, so settle it early.

---

## Editing a skill

Edit the `SKILL.md` under `skills/`. That is the source of truth. Then rebuild:

```bash
./build.sh
```

This repackages every skill into `dist/`. Nothing watches the files, so an edit without a
rebuild leaves a stale `.skill` that installs silently with no error. Rebuild in the same
commit as the edit, and commit both `skills/` and `dist/`.

The script also checks two things that otherwise fail quietly: that the `name` in the
frontmatter matches the folder name, and that a `description` exists at all. A skill with no
description never triggers. A failing skill is skipped rather than shipped broken, and the
script exits non-zero.

On Windows, run it under Git Bash or WSL.

**CI catches it if you forget.** A GitHub Action runs on every push and pull request and fails
if `dist/` does not match `skills/`. The check is `./verify.sh`, which you can run locally
before pushing. It compares the SKILL.md *inside* each archive against the source file rather
than comparing zip bytes, because zips embed timestamps and are never byte-identical between
builds even when nothing changed.

The Action does not rebuild anything for you. It tells you that you forgot, and you run
`./build.sh` and push again. That is deliberate: a workflow that silently rewrites the repo
under you produces merge noise nobody wants during a five-day project.

**Reinstalling.** Installing copies the skill. Rebuilding `dist/` does not update anyone who
already installed, so a mid-week change needs a message in the team channel telling people to
reinstall. Half the team auditing against one version of the rubric auditor and half against
another is worse than nobody using it.

If you are iterating heavily and have Claude Code, edit the SKILL.md in `~/.claude/skills/`
directly. It takes effect next session with no packaging. Copy it back into `skills/` and run
`./build.sh` when you are done.

---

## Still to build

- **Social impact monetisation.** The hardest section and the one most likely to go wrong.
  Needs the CBAX spreadsheet from Canvas, or current NZTA Monetised Benefits and Costs Manual
  values, so that the numbers come from a source rather than from a language model. The
  teaching team's warning was specific: do not trust AI on the financial model.
- **Systems thinking tool application.** Blocked on which tools were covered in enough depth
  in lectures. Causal loop diagrams and leverage points analysis need quite different guidance.
- **TEAMMATES peer review comments.** Low effort, saves everyone twenty minutes on Friday.
  Individual links arrive by email Friday noon.