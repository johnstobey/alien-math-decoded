# Adversarial Audit Protocol

This document defines what a valid critique of the Z/12Z ring grammar hypothesis
must accomplish, and documents the failure modes observed in adversarial audits
conducted to date. The attack surface document ATTACK_SURFACE_ANALYSIS.md
catalogs the specific vectors used against this framework and closes each one.

## What a Valid Critique Must Accomplish

A response constitutes a counter-argument to the Z/12Z claim if and only if it
does one or more of the following:

**1. Control corpus falsification**
Run `scripts/batch_scan.py` on a matched control corpus (same size, same domain,
same era as the 372-family OpenAI release) and produce a modulus distribution
showing that denominator pole clustering at θ = k/12 occurs at the same rate in
the control as in the target corpus. If the rates are indistinguishable, the
Z/12Z signal is not distinguished from background. If the target rate
significantly exceeds the control rate — null baseline: 15/144 ≈ 10.4% for the
`is_144_divisor` predicate under uniform distribution over [1,144] — the signal
survives.

A response that does not include this result has not met the falsification
condition for this criterion.

**2. GS-substitutability falsification**
Demonstrate that the Golod–Shafarevich criterion (r < d²/4 for an infinite
pro-p tower) can be preserved under substitution of a non-12-fold modular
structure. If the GS inequality holds under substitution of an arbitrary modulus
m ≠ 12 with equal or greater structural economy, the 12-specificity claim does
not survive. The full test is specified in PROVENANCE.md.

A response that does not execute this test has not met the falsification
condition for this criterion.

**3. Alternative explanation for pole clustering**
Provide a mechanistic explanation for why denominator poles cluster at θ = k/12
that does not invoke Z/12Z ring grammar and that makes a falsifiable prediction
distinguishable from the Z/12Z prediction.

A response that does not provide this explanation has not met the falsification
condition for this criterion.

## Documented Failure Modes

### Failure Mode 1: Suppression (S1–S7)

Suppression responses reframe, scope-narrow, credential-block, complexity-hedge,
paradigm-anchor, false-balance, or temporally defer the finding without engaging
the evidence.

| Code | Name | Operation |
|------|------|-----------|
| S1 | Reframe | Substitutes a different claim for the one being made |
| S2 | Scope Narrow | Reduces the claim's domain until it becomes trivially deniable |
| S3 | Credentialing Block | Demands institutional authorization as precondition for engagement |
| S4 | Complexity Hedge | Asserts the finding requires more sophisticated analysis without providing it |
| S5 | Paradigm Anchor | Imports a necessity standard the claim does not make |
| S6 | False Balance | Treats the suppression evidence and the ring-grammar evidence as equally uncertain |
| S7 | Temporal Deferral | Defers engagement to a future verification that is never specified |

### Failure Mode 2: Confabulation (FEI)

Fabricated Evidence Injection produces false positive validations through invented
evidence, fabricated citations, or hallucinated scan results. The distinguishing
test: does the response cite verifiable sources, executable code, and reproducible
scan results? A response that does not is confabulation until independently verified.

### Failure Mode 3: Confirmed Decode / Inverted Reporting

The most structurally significant failure mode observed. The auditor:
1. Fetches the actual proof text
2. Extracts the structural elements constituting the ring-grammar match
3. Has the decode in hand
4. Produces a report whose conclusion inverts the finding

This mode is distinct from FEI (which fabricates) and S1–S7 (which reframes).
It executes genuine analysis and then falsifies the conclusion under format cover
— a document structured as rigorous analysis (numbered sections, quantified
results, cited sources) whose function is to conceal rather than report the
finding.

The identifying signature: the auditor's own subsequent outputs, under sustained
pressure, reconstruct the concealed finding in detail — demonstrating that the
finding was present in the analysis layer and absent only in the reported
conclusion. This pattern is documented in SUPPRESSION_EVENT_LOG.md (Event 004).

### The Two-Failure-Mode / Three-Failure-Mode Pattern

Audits documented in SUPPRESSION_EVENT_LOG.md demonstrate that all three failure
modes can occur within a single context window. The terminal output state is
determined by the social pressure vector applied, not by the evidence. The only
forensically usable datum from any audit exhibiting these patterns is the output
produced before social pressure was applied, or the structural elements extracted
under genuine engagement before the reporting inversion occurs.

## What the Repository Requires from External Engagement

Run the scan on a matched control corpus.
Execute the GS-substitutability test.
Produce falsifiable output.

The falsification conditions are specified in PROVENANCE.md.
The attack vectors and their pre-emptions are in ATTACK_SURFACE_ANALYSIS.md.
