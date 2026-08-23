---
name: stakeholder-requirements-csf
description: Build and check the traceability chain from stakeholder analysis to a classified requirements table to 4-6 critical success factors for a business case strategic case. Use this whenever the user is working on stakeholder analysis, asks who the stakeholders are for a project, is building a requirements table, needs to classify requirements as necessary or nice-to-have or aspirational, is selecting critical success factors, or asks whether their CSFs are any good. Also use when the user says their options screening feels arbitrary, since that usually means the CSFs are not traceable to requirements.
---

# Stakeholder, Requirements and CSF Chain

These three artefacts are one chain, not three tasks. Stakeholders generate requirements, necessary requirements generate the critical success factors, and the CSFs screen the options. Teams that build them separately end up with CSFs that cannot be traced back to any stakeholder, which is a named mark deduction, and with options screening that looks arbitrary to the reader.

Build them in order and keep the trace visible.

## Stage 1: stakeholders

Identify broadly, then narrow to key stakeholders using a matrix. Interest and influence is the standard choice, but any defensible matrix works provided the analysis is shown rather than asserted.

For each stakeholder record role, interest in the outcome, and influence over it. Interest and influence are different axes and teams routinely collapse them: a group can care enormously and control nothing, and that gap is usually where the real problem sits.

Cover, at minimum, the categories a policy problem always has: the commissioning client, the decision maker, the delivery agencies at national and local level, the groups who bear the impact, the groups who bear the cost, and the organised interests on each side of the debate. Note where a stakeholder's stated position and their underlying interest differ.

Do not invent stakeholder positions. Where a position is inferred rather than documented, mark it as an inference and say what would confirm it. AI-assisted stakeholder analysis is explicitly permitted on this project, and the way to use it honestly is to generate candidate positions and then verify the ones that carry weight.

## Stage 2: requirements

Take the key stakeholders and extract what each requires for the project to count as a success. Classify each:

- **Necessary.** Must be met or the project fails. This list is the source of the CSFs, so be strict. If it can be traded away, it is not necessary.
- **Nice-to-have.** Adds value, not required for completeness.
- **Aspirational.** The stakeholder would want it, but it falls outside the project scope definition.

Two things the rubric specifically rewards. First, evidence of how requirements were selected, so record which stakeholder each requirement came from and on what basis. Second, explicit identification of shared requirements and conflicting requirements. Conflicts are the interesting content: where two key stakeholders hold incompatible necessary requirements, say so plainly and note that a compromise or a trade-off will be needed. A requirements table with no conflicts in it usually means the analysis stopped too early.

The full table goes in the appendix. The body carries the necessary requirements and the discussion of common and conflicting interests.

Table format:

| Stakeholder | Requirement | Classification | Source or basis | Conflicts with |

## Stage 3: critical success factors

Select 4 to 6, no more and no fewer, drawn from the necessary requirements.

Three tests each candidate must pass:

**Traceability.** Name the necessary requirement and the stakeholder it came from. A CSF with no traceable parent is the single most common deduction here.

**Key, not merely desirable.** A CSF is an attribute an option must achieve to be considered for the shortlist. If an option could fail it and still be worth carrying, it is not a CSF.

**Set at the right height.** Pitched so it does not eliminate important options at an early stage. A CSF written as a specific numeric target usually cuts too early; one written as an achievable attribute usually screens properly. Check each CSF by asking what it eliminates. If it eliminates everything, or nothing, it is set wrong.

Also check the set as a whole: the CSFs should collectively cover the distinct necessary requirements rather than restating one requirement in four ways, and they should be independent enough that an option can pass some and fail others. A set where options always pass or fail together is not screening anything.

## Output format

```
## Stakeholder matrix
[table, with position marked stated or inferred]

## Requirements table
[full table, appendix-ready]

## Shared and conflicting requirements
[body-ready discussion, conflicts named explicitly]

## Proposed CSFs
| # | CSF | Traced to requirement | Traced to stakeholder | What it eliminates |

## Chain check
[any requirement with no stakeholder, any CSF with no requirement, any key stakeholder whose necessary requirements are not represented in the CSF set]
```

## When auditing an existing chain

Work backwards. Take each CSF and try to reach a named stakeholder through a necessary requirement. Report every break. Then take each key stakeholder and check their necessary requirements are represented somewhere in the CSF set. A stakeholder with necessary requirements that no CSF touches will make your options screening look like it ignored them, and a reader on that stakeholder's side will notice.
