---
name: options-screening-dfv
description: Screen a long list of options down to a shortlist using critical success factors and the Desirable/Feasible/Viable framework, then combine survivors into packages. Use this whenever the user is generating a long list of options, asks how to narrow options down, is filling in a DFV table, needs an order-of-magnitude cost estimate for an option, asks which options to carry forward, or is building do-minimum and do-maximum packages against a do-nothing baseline. Also use when the user asks why an option was dropped or whether an eliminated option can be carried forward anyway.
---

# Options Screening and Packaging

Two frameworks applied in series or in parallel, then packaging. The reader is not interested in the long-list detail; they are interested in the range considered and the criteria used to narrow it. So the screening logic has to be visible and consistent, while the long list itself stays compact or moves to the appendix.

The single most penalised failure here is an option that disappears. Every long-list option must be traceable to an outcome: eliminated with a brief justification, or carried forward with a reason.

## Long list generation

Wide-ranging but within the realm of possibility. New to the application is fine, science fiction and undeveloped technology are not. Each option must offer some merit towards the requirements, and its advantages and disadvantages must be clear.

Coverage test before screening: a long list drawn from one lever type is not wide-ranging. Push across the levers available to the actors involved, which for a policy problem usually means regulatory, funding, infrastructure, technology, enforcement, information and behavioural, and institutional or process change. If every option needs the same body to deliver it, the list is too narrow.

Each option needs a one-line statement of what it is and who would deliver it. An option nobody can be named to deliver will fail feasibility later, so catch it now.

## Framework 1: critical success factor screening

Assess each option against each of the 4 to 6 CSFs.

The elimination rule: an option that fails more than one CSF, or that only partially meets two CSFs, should be discounted and not carried forward.

Two things the rubric watches. First, brief justification for every eliminated option is required, so never let one vanish silently. Second, if a discounted option is carried forward anyway, the reasoning must be clearly justified. That is permitted when the option is a strong candidate to be paired with others in a package, but the justification has to say which pairing and why, not simply that the team liked it.

Expect that on a problem of this scale no option fully satisfies every CSF. That is normal. What the report must then do is state clearly which necessary stakeholder requirements are not fully met by the carried-forward options, and why the team still considers them appropriate. Skipping that admission reads as not having noticed.

Table format:

| Option | CSF 1 | CSF 2 | ... | Outcome | Justification |

Use meets / partially meets / fails rather than numeric scores. Numeric scoring invites a weighted total that hides the elimination rule and gives the reader a false sense of precision.

## Framework 2: DFV

For each option not already eliminated, describe the extent to which it is:

- **Desirable.** Do the stakeholders who matter actually want it, and which ones do not. Desirability on a values-laden problem is contested by definition, so name whose desirability is being assessed.
- **Feasible.** Can it technically be done, by an identified body, within the relevant constraints. If it is not technically feasible it must not be carried forward, no exceptions.
- **Viable.** Whether it makes sense to do, including a high-level cost estimate.

**Cost estimates.** Exact numbers are not required and false precision is worse than none. Estimate the order of magnitude: $10 million, $100 million, $1 billion. State the basis in one line, for example unit cost times a rough count of affected sites. Then sanity-check the number against the overall fiscal position of the government, because an option costing a visible fraction of the transport budget faces a different political test from one costing a rounding error, and that difference belongs in the viability discussion.

Every DFV assessment needs support and justification. An unsupported DFV table is explicitly a lower band.

## Packaging

Build two packages plus do-nothing.

**Do-nothing is mandatory and is a real option.** It is the benchmark everything else is measured against, it must be carried into the shortlist, and concluding that it wins is a legitimate outcome. Treat it seriously rather than as a straw man, and note that spending nothing to gain nothing beats spending money to gain nothing.

Packages may be bundled by magnitude of cost (do minimum, do maximum), or by technology, policy, locality, or whatever grouping is logical for the problem and leverage points being addressed. A package may contain one option or several, but each package must address the problems as a whole rather than one of them.

Test each package: does it address both problem statements, does it meet the CSFs of the key stakeholders, and is it coherent, meaning the options inside it support each other rather than merely coexisting. A package that is two unrelated options stapled together will be visible as such.

Then, for each package including do-nothing, identify, quantify and monetise one major impact. It may be the same metric across all three, which makes them comparable and is usually the better choice. Identify and qualify the other major impacts against the Four Capitals of the Living Standards Framework: natural, human, social and financial or physical capital. Those do not need monetising.

## Output format

```
## Long list
| # | Option | What it is | Who delivers | Advantages | Disadvantages |

## CSF screen
| Option | [each CSF] | Outcome | Justification |

## DFV assessment
| Option | Desirable | Feasible | Viable incl. cost order | Carry forward? |

## Disposition check
[every long-list option accounted for, none unaccounted]

## Requirements not fully met
[necessary stakeholder requirements the surviving options miss, and why they are still appropriate]

## Packages
[Do-nothing, Package 1, Package 2: contents, logic for the grouping, which problems each addresses]
```

## Common failures to flag

Packages that are really one option each, so the two packages differ only in scale of the same intervention. Cost estimates with no basis given. Feasibility assessed as "yes" with no delivering body named. A long list where every option survives, which means the CSFs are set too low. A long list where almost nothing survives, which means they are set too high.
