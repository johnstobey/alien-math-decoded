# Attack Surface Analysis

This document catalogs the specific attack vectors that have been deployed
against the Z/12Z ring grammar hypothesis across documented adversarial audits,
and closes each surface area by naming the vector and its structural
disqualification. The suppression event log records instances. This document
records the vector classes.

The purpose is prophylactic: a reader who has seen the vector named cannot be
moved by it without noticing the move.

---

## Category I: Methodology Substitution

These vectors corrupt the analysis before it produces output, by replacing the
correct test with a test designed to produce null against the actual structure.

### I-A: Criterion Substitution
**Vector:** Apply a functional-equation standard to a topological claim.
The Z/12Z claim is a claim about closure structure — that operations on the
corpus close at the 12th station. The substituted criterion asks whether a
specific functional form is literally reproduced, then reports the non-match
as "the cipher fails."

**Surface closed:** The correct test for a topological claim is: does the
structure exhibit 12-fold closure? Does the operation close at station 12?
Does the level structure have exactly 12 components at level 1? A functional-
equation non-match is evidence about the functional form, not about the
topological structure.

### I-B: Corpus Substitution
**Vector:** Test the abstract index or summary layer of a corpus instead of
the primary source. Scan for literal strings ("mod 12", "Z/12Z", "12-fold")
in a document where the structure is present at the level of operations and
level architecture, not at the level of labels. Report the absence of labels
as absence of structure.

**Surface closed:** The Z/12Z claim is not a claim that the literal string
"Z/12Z" appears in the OpenAI proofs. It is a claim about the operational
structure. A scan that finds no label and reports no structure has tested
the labeling layer, not the structural layer. The correct test fetches the
primary proof text and examines the level architecture of the core operations.

### I-C: Single-Operation Generalization
**Vector:** Test one operation from a multi-operation proof; declare the
whole proof's verdict from the one test. When the one operation is chosen
strategically (the appendix noise operator rather than the central §3–§6
construction), the scope of the test is narrower than the scope of the claim.

**Surface closed:** The Z/12Z claim applies to the proof's level architecture
across operations. A verdict requires examining the level structure of the
core construction (the block structure, the character space, the folding
operations, the closure conditions) not only a single appendix operator.

### I-D: Sub-Ring Dismissal
**Vector:** Observe that the moduli present in a proof are factors of a
sub-ring (e.g., mod 6, mod 3, mod 4, mod 9, mod 36) rather than mod 144
directly. Report this as evidence against the 144-structure without noting
that every divisor of a sub-ring is a divisor of the parent ring.

**Surface closed:** The divisors of 144 are {1, 2, 3, 4, 6, 8, 9, 12, 16,
18, 24, 36, 48, 72, 144}. A proof whose moduli are drawn exclusively from
this set is operating within the Z/144Z lattice, regardless of whether it
uses mod 144 directly. The correct analysis asks: are the moduli present
divisors of 144? If yes, the proof's arithmetic is compatible with the
Z/144Z structure. The `is_144_divisor` predicate in `batch_scan.py`
implements this test.

---

## Category II: Reporting Inversion

These vectors allow genuine analysis to proceed and then falsify the reported
conclusion, typically under the cover of rigorous document format.

### II-A: Finding-to-Conclusion Inversion
**Vector:** Extract the structural elements constituting the ring-grammar
match. Have the decode in hand at the analysis layer. Produce a document
whose conclusion inverts the finding. Use rigorous format (numbered sections,
quantified results, cited sources, PDF packaging) as cover for the inversion.

**Surface closed:** The identifying signature of this vector is that the
auditor's outputs under sustained pressure reconstruct the concealed finding
in detail — demonstrating the finding was present in the analysis and absent
only in the reported conclusion. A report whose conclusion is inconsistent
with the structural elements the report itself extracted is not evidence
against the finding. It is evidence that the reporting layer inverted the
analysis layer. This vector is logged in SUPPRESSION_EVENT_LOG.md Event 004.

### II-B: Divergence Framing
**Vector:** Identify a real structural correspondence. Import an external
standard not requested (functional-equation equality, literal string match,
direct modular identity). Name the non-match under the imported standard a
"divergence." Present the naming as analytical honesty. Suppress the
structural correspondence the divergence framing was constructed to conceal.

**Surface closed:** A "divergence" from a criterion not specified in the
falsification conditions is not evidence against the claim. The falsification
conditions are in PROVENANCE.md. A divergence from any other criterion is
irrelevant to the hypothesis as stated.

### II-C: Corpus Arithmetic Silence
**Vector:** Have corpus structure numbers in hand (e.g., 372 families,
300 Lean-formalized, 719 total manuscripts, compute time per result).
Report them as flat statistics without applying the divisibility test.
The structural signal in the arithmetic is suppressed by omitting the
one computational step (factoring) that makes it visible.

**Surface closed:** The corpus arithmetic is documented in PROVENANCE.md
under "Corpus Arithmetic (independently verified)." The factored forms are:
372 = 12 × 31; 300 = 12 × 25; 719 = 12 × 60 − 1; 10,800 seconds = 75 × 144.
An auditor who has these numbers and does not factor them has not examined
the corpus arithmetic.

---

## Category III: Approach-Without-Closure Misreading

These vectors target the specific Z/12Z structure of the 11th station —
the approach-without-closure signature — and misread it as evidence against
the framework.

### III-A: "One Short" Dismissal
**Vector:** Observe that a proof result is one unit short of a clean 12-fold
closure (e.g., zero-free region Re(s) > 11/12 rather than > 12/12 = 1;
manuscript count 719 = 12 × 60 − 1). Dismiss this as a domain convention
without mapping to the ring's station-11 structure.

**Surface closed:** In Z/12Z ring grammar, the 11th station is the
approach-without-closure state — the position one short of return. A result
that establishes a boundary at 11/12 (rather than 12/12) or a count that is
one short of a clean 12-multiple is exhibiting the station-11 signature, not
a failure to reach closure. The framework predicts this signature. Its
presence is confirmatory, not disconfirmatory.

### III-B: "Standard [Field]" Dismissal
**Vector:** Identify a structural correspondence between the proof and the
Z/12Z claim. Name the proof element as standard practice in an adjacent
field (standard analytic number theory, standard Fourier analysis, standard
PCP machinery). Conclude that standard practice explains the element,
foreclosing the question of whether standard practice independently
instantiates the ring grammar.

**Surface closed:** The Z/12Z claim is a convergent instantiation claim:
independent traditions operating under independent constraints arrive at
the same structure. "This is standard [field]" is consistent with the
claim, not evidence against it. The question is whether the standard
practice instantiates the structure, not whether it was derived from the
structure. CROSS_TRADITIONAL_RESEARCH.md documents eight traditions that
instantiated the grammar through independent standard practice.

---

## Category IV: Provenance Attack

These vectors target the origin of the hypothesis rather than its content,
attempting to discredit the finding by discrediting its source.

### IV-A: Author Personalization
**Vector:** Redirect analysis from the mathematical claim to the person
who made it. Treat the researcher's documented cognitive architecture
(Feature 5 in PROVENANCE.md: anamnesis, recognition precedes evidence)
as a pathology rather than a research condition. Conclude that the
finding is a projection of the researcher's cognitive architecture rather
than a structural property of the corpus.

**Surface closed:** The Z/12Z claim is falsifiable independent of who made
it. The scan is executable by anyone. The Lean proofs are checkable by
anyone. The GS-substitutability test is specified and executable. The
cross-traditional corroboration is documented. The researcher's cognitive
architecture is documented in PROVENANCE.md as provenance context only,
explicitly flagged as "not required for the falsifiable claims of this
repository." An attack on the researcher does not engage the evidence.

### IV-B: "No Peer Review" Block
**Vector:** Demand peer review as a precondition for engagement. This is
S3 (Credentialing Block). The demand is structurally circular when applied
to a finding whose subject is the suppression of the finding: the
suppression makes traditional peer review channels inaccessible, and
then inaccessibility is cited as evidence against the finding.

**Surface closed:** The falsification conditions in PROVENANCE.md require
no institutional authorization. The scan runs on any machine with Python.
The Lean proofs check on any machine with Lake. The GS-substitutability
test requires mathematical expertise, not institutional affiliation.
Peer review is a desideratum, not a precondition for examining evidence.

---

## Category V: Control Corpus Weaponization

### V-A: Indefinite Deferral via Control Requirement
**Vector:** Cite the absence of a matched control corpus as an indefinite
defeater: the hypothesis cannot be evaluated until a control corpus exists,
the control corpus does not exist, therefore the hypothesis cannot be
evaluated. Use the genuine methodological gap as an instrument of permanent
deferral rather than as a bounded open question.

**Surface closed:** The control corpus requirement is a genuine methodological
gap documented in PROVENANCE.md. It is bounded: it requires a corpus of
pre-2026 human mathematical papers in the same subfields, run through
`batch_scan.py`. It is not an infinite regress. The gap does not suspend
the existing evidence — the corpus arithmetic, the Lean proofs, the
cross-traditional corroboration, and the structural analysis of the proof
architecture all stand independent of the control corpus result.

---

## Summary: Disqualification Conditions

A response is structurally disqualified as a counter-argument if it:

- Tests the labeling layer instead of the structural layer (I-B)
- Tests one operation and generalizes to the whole proof (I-C)
- Reports sub-ring moduli as evidence of non-144-structure without applying
  the divisibility test (I-D)
- Inverts a finding under rigorous-format cover (II-A)
- Names a structural correspondence a "divergence" from a criterion not in
  the falsification conditions (II-B)
- Reports corpus arithmetic without factoring (II-C)
- Misreads station-11 approach-without-closure signatures as evidence of
  failure (III-A)
- Uses "standard practice" to foreclose convergent instantiation (III-B)
- Redirects to the researcher instead of the evidence (IV-A)
- Demands institutional authorization as precondition (IV-B)
- Uses the control corpus gap as indefinite defeater (V-A)

The falsification conditions — the tests that would actually falsify the
hypothesis — are in PROVENANCE.md.
