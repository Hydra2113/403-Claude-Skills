---
name: problem-statement-critic
description: Diagnose and strengthen problem statements for business cases, strategic cases and systems engineering reports. Use this whenever the user shares a draft problem statement, asks whether a problem statement is any good, asks for help "framing the problem", says their statement feels too broad or too narrow, or is starting the strategic case of a business case. Also use when the user pastes several candidate statements and wants them compared or narrowed down. Do not write a fresh statement from nothing before diagnosing what they already have.
---

# Problem Statement Critic

Weak problem statements are the single biggest source of downstream failure in a business case. Every later section (stakeholders, requirements, critical success factors, options, packages) inherits the framing. A statement that is too broad produces options that cannot be screened. A statement that smuggles in a solution produces an options long list that is really one option wearing four hats. Rework at that stage is expensive, so the job here is to catch it early and be blunt about it.

## Core principle

Diagnose first, rewrite second. The user's draft encodes decisions their team has already argued about. If you rewrite immediately you destroy that information and they cannot tell what was wrong. Always produce the diagnosis, then offer the rewrite.

Never invent facts to fill a gap. If the draft asserts a cause with no evidence behind it, the correct output is "this element is unevidenced, here is what you would need to support it", not a plausible-sounding cause you generated.

## The four required elements

A complete problem statement contains all four. Check each one separately.

1. **What the problem is.** A condition in the world, described in a sentence that could be true or false. Not a goal, not a solution, not a question.
2. **Who is impacted.** Named groups, not "people" or "society". If the impact falls unevenly across groups, say so, because that unevenness usually drives the options later.
3. **Why the problem exists.** The mechanism or cause. This is the element teams most often skip, and its absence is why option generation later stalls.
4. **The negative consequence being addressed.** What goes wrong if nothing changes. Quantified where the evidence allows, qualitative where it does not, never vague.

## Diagnostic checks

Run every draft against these.

**Solution smuggling.** Does the statement name or imply an intervention? Phrases like "the lack of X", "insufficient Y", "without Z" usually define the problem as the absence of a preferred solution. "There is insufficient enforcement of speed limits" is a solution in disguise. "Compliance with posted limits is low on roads where the limit was reduced without physical change to the road" is a problem.

**Statement, not question.** "How might we ..." is an ideation prompt, not a problem statement. Flag it and convert it.

**Scope, the Goldilocks test.** Too broad if the statement could be attached to any transport policy debate anywhere, or if the options that follow from it would number in the dozens. Too narrow if it constrains the answer to one road, one intervention, or one number, leaving nothing to screen. Say which way it errs and by roughly how much, because "adjust the scope" alone is useless feedback.

**Compound problems.** If the statement contains "and" joining two distinct causal chains, it is two problems. Split them and say which one the team should carry.

**Vagueness and fluff.** Flag every unquantified comparative ("significantly", "poor", "high"), every abstract noun cluster, and every claim that reads as a value position stated as fact. Values positions are legitimate in a report but they belong in the context and stakeholder analysis, not disguised as problem description.

**Evidence hooks.** For each factual claim in the statement, note whether it is the kind of thing that needs a citation. A statement whose claims cannot be sourced will not survive review.

## Output format

Use this structure.

```
## Verdict
[One line: usable as is / needs work / restart]

## Element check
| Element | Present | Comment |
| What the problem is | yes/partial/no | ... |
| Who is impacted | yes/partial/no | ... |
| Why it exists | yes/partial/no | ... |
| Negative consequence | yes/partial/no | ... |

## Diagnosis
[Ordered by severity. Quote the exact words from the draft that trigger each issue.]

## Scope call
[Too broad / too narrow / about right, with the reason and the direction to move.]

## Claims needing evidence
[Each factual assertion, and what kind of source would support it.]

## Rewrite
[Only after the above. Offer two variants at different scopes so the team can choose, and state what each variant commits them to downstream.]
```

## Worked example

**Draft:** "How might we address the significant safety issues caused by the government's reversal of speed limit reductions, which is putting communities at risk?"

**Diagnosis:** Framed as a question, so it is an ideation prompt rather than a statement. "Significant safety issues" is unquantified. The causal claim (reversal causes harm) is asserted rather than evidenced and is the exact claim under dispute, so stating it as given makes the report look partisan to a Minister who holds the opposite view. "Communities" does not name who is impacted, and the impact is uneven across urban, regional and rural settings, which matters for later packaging. No mechanism given.

**Rewrite, broader variant:** "Reversal of reduced speed limits under the 2024 rule change returns some road segments to speeds above the level assessed as safe by the road controlling authority. Where this occurs near schools, town centres and unseparated rural roads, the groups most exposed are pedestrians, cyclists and school-age children, who bear injury risk they cannot manage through their own behaviour. Absent intervention, the expected consequence is an increase in deaths and serious injuries on affected segments, at a social cost the reversal decision did not count because the required benefit cost ratio excludes non-safety benefits."

**Rewrite, narrower variant:** [same structure, scoped to one environment type, with a note that this narrows the option space to interventions deliverable by territorial authorities.]

Explain to the user which variant commits them to which downstream scope, so the choice is informed rather than aesthetic.

## Set-level requirements

Individual quality is not enough. Business case problem spaces are usually assessed on the set, so check these too.

**Count.** At least two specific problem statements for the overarching problem. One statement is marked down even if it is excellent.

**Distinctness.** Two statements that restate the same problem at different scopes are one statement. They should be separable, so that an option could address one and not the other.

**Coverage.** Between them the statements should span the problem the client actually brought, not one convenient corner of it.

**Evolution shown.** The report must show how the problem moved from a broad conception to the specific statements, supported by a systems thinking tool. Causal loop diagrams, mind maps, leverage points, levels of thinking and mental models all qualify. A statement set presented with no visible derivation reads as assertion, and the absence of a tool is separately penalised. When critiquing, ask what the narrowing steps were and whether the tool output actually supports the statements arrived at, rather than sitting beside them as decoration.

**Root cause.** A high-level analysis of root causes or cause and effect relationships between elements of the problem must sit behind the statements. The "why it exists" element of each statement should be the output of that analysis, not a separate guess.

**Originality.** Problem statements must not be copied from the brief. Inspired by is fine, paraphrased closely is not.

## When the user has several drafts

Score each against the four elements, then recommend one to carry and say explicitly what the others contribute that should be preserved elsewhere in the strategic case. Teams lose good thinking when a rejected statement is simply deleted.
