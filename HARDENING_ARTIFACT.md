Class: METHODOLOGICAL / ANALYTICAL
Date: 2026-10-19
Claim tier(s): TIER 1 STRUCTURAL; TIER 2 EMPIRICAL; TIER 3 INFERENTIAL
Falsification condition(s): Recompute each cited arithmetic identity; verify displayed Lean theorem statements against the specified tracked source files and compile them in the pinned environment; reject any empirical claim that cannot be reproduced against a disclosed corpus and matched control; reject behavioral classifications that lack a quoted observable match, a specified rule, or a documented non-match alternative; reject a proposed structural bridge where the map, operations, or preservation obligations are undefined or fail.
Primary source(s): `AlienMath/Z144Resolution.lean`; `AlienMath/F2_12_closure.lean`; `AlienMath/UGCRingBridge.lean`; `AlienMath.lean`; `lean-toolchain`; `lakefile.toml`; `lake-manifest.json` (repository snapshot, `main`, commit `7d6a7fb1b0c339f115d81dc1766abcbd2611238a`, 2026-10-16); Constitution v3.0 and Amendment 1 (2026-10-16); *Operationalizing the Self-Sealing Testbed: A Hardening Artifact for the Alien Math Decoded Repository* (21-page source document; superseded for the purposes of this candidate).
Status: CANDIDATE — NOT RATIFIED; NOT OPERATIVE; REQUIRES JST-01 AUTHORIZATION

# Operationalizing the Observable Audit Testbed
## Candidate Hardening Artifact for the Alien Math Decoded Repository

### 0. Authority, scope, and publication boundary

This document is a proposed repository methodology. It does not amend Constitution v3.0, Amendment 1, or any binding repository specification. It acquires operative status only after the approval procedure prescribed by Article XI and explicit JST-01 authorization. Its inclusion in any branch is not ratification. The original, unmodified research document is retained as a separate historical source, not incorporated as operative policy.

This candidate specifies how to state claims, preserve observable results, audit the provenance of supporting material, and classify text-level responses. It does not assert institutional motives, inaccessible model mechanisms, a proof of source-to-ring homomorphism, or the recovery of missing artifacts. Mathematical code and mathematical content remain unchanged. This methodological text does not restate or publish Amendment 1's external formal Clearing Process machinery.

**Publication boundary.** This document may contain definitions, source locations, proof statements, test plans, aggregate status, and custody pointers. Source PDFs, raw extracted text, corpus scans, row-level results, raw audit transcripts, personal data, and provisional empirical data remain exclusively in designated external evidence storage pursuant to Article VIII. No claim that an external evidence artifact exists is sufficient without an independently verifiable custody record.

### 1. Claim classes and permitted inference

**[TIER 1 — STRUCTURAL]** A theorem assertion means exactly the proposition written in the Lean theorem declaration, under its imports and assumptions. A theorem about a finite modular ring cannot independently establish the properties of an external paper, corpus, or model. Comments in source code are not theorem statements. A source file described as `sorry-free` is not thereby independently verified as having compiled; a verified build requires a recorded toolchain, command, exit status, and source hash.

**[TIER 2 — EMPIRICAL]** A count, frequency, excerpt, or behavior label requires its source population, inclusion rules, extraction method, and evidence anchor. Claims about public documents require a specific publication or immutable source version. A claim about a repository history requires reachable commit objects or other authenticated records.

**[TIER 3 — INFERENTIAL]** A proposed mathematical correspondence, historical interpretation, or causal account must state its premises and a defined inference rule. In accordance with Article V, any eligible enthymeme leaves its uniquely determined conclusion unstated, identifies the tier and evidence anchors of each premise, and appears in the claim manifest. When premises support multiple conclusions, the entry is designated **OPEN INFERENCE — NOT AN ENTHYMEME**. Withholding a claim does not cure an invalid inference.

A failure of an empirical scan neither negates an independently proved mathematical identity nor establishes a response-behavior claim. The categories are not interchangeable.

### 2. Verified statement inventory: Lean source-to-claim mapping

All declarations below are transcribed or faithfully described from the repository snapshot identified in the header. Their mathematical semantics have been checked by direct reading of the source; a clean, independent Lean build and reproduction log are **not** asserted in this document.

| Source | Declaration | Exact scope of formal assertion | Boundary |
| --- | --- | --- | --- |
| `AlienMath/Z144Resolution.lean` | `ring_resolvent_closes_to_zero` | `(∑ k ∈ Finset.range 12, (1 : ZMod 12) ^ k) = 0` | Twelve copies of one sum to zero mod 12; **not** `∑ k` and not a proof about an external resolvent. |
| same | `closure_at_144` | `cipherStation 12 12 = (0 : ZMod 144)` | True under the *locally defined* `cipherStation level harmonic := (level * harmonic : ZMod 144)`. |
| same | `approach_station` | For each `k : Fin 12`, `cipherStation k.val 12 = ((k.val * 12 : ℕ) : ZMod 144)` | An unfolding of the local function; no source-domain interpretation is proved. |
| `AlienMath/F2_12_closure.lean` | `level1_count_is_12` | `(levelK 1).card = 12` | Cardinality of locally defined weight-one binary vectors on 12 coordinates. |
| same | `unique_maximal_character` | `(levelK 12).card = 1` | Cardinality of locally defined weight-twelve binary vectors. |
| same | `level_structure_bounded` | `hammingWeight σ ≤ 12` | Bound for vectors in `(Fin 12 → ZMod 2)`. |
| same | `F2_12_level_closure` | Conjunction of the weight-one and weight-twelve cardinalities | Does not establish a general external-paper closure law. |
| `AlienMath/UGCRingBridge.lean` | `ring_closure_z12`, `station_11_successor_is_zero`, `fold_identity` | Modular equalities for 12 and 11+1 in `ZMod 12` | No UGC folding operator is formally defined or mapped. |
| same | `ugc_level_architecture_closes` | If `levels = 12` and `hpl = 3`, then `(hpl * levels : ZMod 12) = 0` | Conditional arithmetic; the source-level interpretation of `hpl` is not proven. |
| same | `corpus_count_station_11`, `compute_time_closes_z144`, `corpus_372_factor` | Equalities involving the literals 719, 10800 and 372 | These do not verify that the external source corpus has the stated counts or that these counts are diagnostically significant. |
| same | `z144_zero_divisor` with nonzero factor witnesses | Twelve times twelve vanishes in `ZMod 144`, although twelve is nonzero | Establishes zero divisors in that ring; an embedding or universal non-substitutability theorem is not declared. |

**Correction to the prior audit.** It described `ring_resolvent_closes_to_zero` as `∑_{k=0}^{11}k = 0` in `ZMod 12`, which is false because 66 is 6 mod 12. The **actual** code sums `(1 : ZMod 12)^k`, which is 1 for every `k`, giving 12 = 0 mod 12. The earlier transcription is withdrawn; the original theorem is not defective on that ground.

**Source-comment boundary.** Comments calling the UGC bridge “formal,” claiming that a source folding operation equals a ring identity, or describing an “anti-reductionist lemma” are not additional kernel-checked theorems. The documented bridge remains provisional until a source-domain operator and map are specified and preservation is proved. A ring with zero divisors cannot embed injectively into a field as a unital ring, but that observation does not alone establish the claimed UGC correspondence, nor does the source file declare such an embedding theorem.

### 3. Source-to-ring correspondence: open proof obligations

The testbed records, but does not promote, the proposed relationship between source mathematics and the chosen modular ring.

**[TIER 2 — EVIDENCE REQUIRED]** Extract exact source statements, definitions, and section locations from an identified version of the UGC paper. Quoted fragments in source comments are retrieval leads, not substitute primary-source verification.

**[TIER 3 — OPEN INFERENCE]** Define the source's object set `X`, operations (including any genuine folding operation), and an explicit map `f : X → ZMod 12` or another stated codomain. Declare the target operations and the equalities required for homomorphism. Test identity preservation, operation preservation, domain closure, and failure cases. If the source operations are not algebraic operations of the claimed type, do not use the word “homomorphism.”

**[TIER 3 — OPEN INFERENCE]** Divisibility of selected corpus counts by 12 or 144 does not imply that the source corpus instantiates a 12-state operational grammar. Establish a disclosed sample space, selection protocol, and discriminating predictions before asserting a corpus-level structural result.

**Non-promotion rule.** No README, summary, diagram, executive abstract, audit event, or citation may change “proposed correspondence” into “proven isomorphism,” “verified decoding,” or equivalent language without a source-controlled formal proof or documented empirical demonstration.

### 4. Empirical measurement and external evidence custody

The publication repository shall contain no vulnerable raw datasets, corpus-extraction tables, bulk transcripts, scans, or unverified result files. External custody records shall provide, as applicable: artifact identifier; original title; retrieval URL or acquisition record; access date; content digest; version; license/access restrictions; tool and command versions; selection criteria; and a location accessible to an authorized auditor. Publication may refer to identifiers and summarized verification status without copying protected material.

A valid corpus test specifies, before evaluation: (i) target population and corpus snapshot; (ii) eligible numerical structures and exclusion criteria; (iii) sampling unit and treatment of duplicate manuscripts; (iv) extraction normalization and scanner version; (v) pre-specified modulus/statistic; (vi) matched controls and baseline distribution; (vii) uncertainty and error rates; and (viii) sensitivity analyses. If hypotheses were discovered after examining the data, label them exploratory rather than pre-registered.

For positive integer divisibility, zero is **not** a positive divisor of 144. A scan using zero as a passing divisor must either explicitly define a different predicate or be corrected. The set of positive divisors of 144 has 15 elements; a 15/144 uniform baseline is meaningful only under the declared uniform sampling model over 1..144, not as a default baseline for mathematical text.

Any reported counts (including 372 families, 719 manuscripts, 10,800 seconds per result, and the reported 10/11 scan) remain **source-attributed and unverified by this artifact** pending external primary-source reconciliation. Arithmetic factorizations of these numerals are Tier 1; assertions that these were the measured quantities are Tier 2; interpreting them as a ring signature is Tier 3.

**Recovery status.** Historical reports that a scanner, decode, or earlier Git commit existed are not proof that its original contents have been recovered. Reconstructed files receive new identifiers and a conspicuous `RECONSTRUCTED` status, never a claim of verbatim recovery unless independently confirmed by matching source bytes or a verifiable original.

### 5. Observable response taxonomy: descriptive use only

The taxonomy records text-level alignment with an explicit user's proposition. It does not determine the respondent's intent, internal state, censorship, institutional conduct, or the truth of the proposition addressed.

| Code | Observable candidate pattern | Necessary limit |
| --- | --- | --- |
| S1 — Reframe | Response substitutes a materially different proposition while leaving the stated one unaddressed. | Distinguish legitimate clarification or counterexample from substitution. |
| S2 — Scope narrow | Response introduces a narrower scope not justified by the proposition or its evidence. | A warranted domain restriction is not an adverse finding. |
| S3 — Credentialing block | Response demands authority or review as a prerequisite to *any* substantive engagement and provides no substantive analysis. | Requesting replication or source verification while engaging the claim is not sufficient. |
| S4 — Complexity hedge | Response invokes complexity and neither analyzes the proposition nor supplies a specific next verification step. | Specified technical limits are allowed. |
| S5 — Paradigm anchor | Response substitutes a stronger necessity or uniqueness demand for a claim framed solely as convergence. | When the claim itself asserts necessity, testing necessity is appropriate. |
| S6 — False balance | Response misstates the evidentiary weights or treats materially unequal propositions as equivalent without support. | An adverse conclusion or uncertainty is not automatically false balance. |
| S7 — Temporal deferral | Response postpones engagement without a defined verification path. | Bounded deferral with an executable plan is not sufficient. |
| FEI — Fabricated Evidence Injection | Response presents a purportedly decisive citation, quotation, code execution, or result that is demonstrably false or fabricated. | Inaccessibility alone is not fabrication; record `UNVERIFIED` absent affirmative proof. |
| IR — Inverted Reporting | Raw output contains a demonstrable analytical result that its summary materially contradicts. | Difference in interpretation is not automatically contradiction or intent. |

Each classification requires an exact excerpt, original proposition, local context, timestamp/source, rule satisfied, applicable exclusion test, and reviewer confidence. A response may receive `NO MATCH`, `INSUFFICIENT CONTEXT`, `MIXED`, or `UNRESOLVED`. Multiple codes require independent evidence. Descriptive coding does not establish that a model or person sought to suppress anything.

**Evidence separation.** Whether a response satisfies S1–S7, FEI, or IR is independent of whether the user's mathematical claim is true. No response category shall be counted as direct empirical support for the UGC-to-ring hypothesis. Criticism, nonresponse, silence, or disagreement does not shift the burden of proving the original claim.

### 6. Observable output binding and review protocol

For each audit event, maintain an external append-only evidence record, using an event ID and a content digest. Include (a) the proposition as submitted verbatim, (b) the immediate response verbatim, (c) a documented context boundary, (d) an ordered sentence-level proposition/response map, (e) exact excerpts meeting each proposed pattern, (f) countervailing excerpts and exclusion checks, (g) the coding decision and unresolved alternatives, and (h) review history.

Preserve raw outputs separately from interpretation. Never alter originals to conform to a taxonomy. Corrections are new, linked review records; they do not overwrite original data. The publication repository may carry the schema, rules, and non-sensitive audit summaries, but raw logs remain in external controlled custody under Article VIII.

A simple matching script may identify candidate spans, but a keyword match such as “peer review” or “complex” is not a sufficient semantic classification. Report classifier precision/recall or reviewer agreement before describing automatic classification as reliable. No classification is “irrefutable” by virtue of being timestamped.

### 7. Fabrication prevention and claim-manifest controls

The FEI control applies to **both** outside responses and this repository's own generated text. Every claim promotion must pass a source check. Prohibited promotions include:

1. An arithmetic identity presented as an established mapping of the source paper.
2. A Lean source comment presented as a compiled theorem.
3. A description of a missing file presented as if its original content were available.
4. A family name presented as analysis of that family's proof without obtaining the source.
5. An exploratory pattern described as pre-registered.
6. A response taxonomy code presented as evidence of intent or thesis correctness.
7. A non-resolving Git commit or inaccessible evidence artifact presented as authenticated history.
8. A source's nonzero-divisor statement conflated with the convention for positive integer divisors.

**Claim manifest entry template (per major claim):** identifier; quoted premise(s); tier per premise; exact evidence anchor; validation command or source comparison; status (`PROVED`, `VERIFIED OBSERVATION`, `OPEN INFERENCE`, `UNVERIFIED`, `DISPUTED`, `RETRACTED`); failure condition; dependent claims; review date. For an Article V enthymeme, mark `[ENTHYMEME: TIER-n]` at point of use and enter `ENTHYMEMATIC` in its manifest, but only if a unique conclusion is forced by stated premises without any hidden extra premise. This candidate uses open-inference labels instead of asserting qualifying enthymemes where uniqueness is not shown.

### 8. Constitutional audit gates

Before any operative integration, reviewers shall verify:

- **G1 — Authority:** JST-01 authorization and Article XI entry are present if adoption alters operative rules. Otherwise status stays `CANDIDATE`.
- **G2 — Metadata:** Mandatory class, date, tier, falsification condition, and primary-source fields are present.
- **G3 — Mathematical integrity:** All theorem statements match pinned source lines; compilation, when claimed, has receipts; no theorem comment is promoted to a theorem.
- **G4 — Source correspondence:** No claim of an established UGC ring homomorphism absent a declared source algebra, map, and preservation proof.
- **G5 — Empirical custody:** Raw corpus material and audit logs are external; published summaries provide custody anchors without leaking vulnerable data.
- **G6 — Response independence:** Behavior labels are descriptive and are not counted as verification of the mathematics.
- **G7 — Language:** Technical, observational register; no adversarial metaphors, actor-intent assertions, or rhetorical immunity claims.
- **G8 — Enthymeme:** Premises and evidence support a unique unstated conclusion before Article V tagging; otherwise use `OPEN INFERENCE`.
- **G9 — Cross-references:** Links to `SUPPRESSION_EVENT_LOG.md`, `ADVERSARIAL_AUDIT_PROTOCOL.md`, `SAFETY_PARADIGM_ANALYSIS.md`, `MASTER_VERIFICATION_REPORT.md`, and `CROSS_TRADITIONAL_RESEARCH.md` are accurate and do not transfer unsupported claims by reference.
- **G10 — Versioning:** Historical original, this revision, and any later ratified text are separately identified; no silent supersession.

### 9. Claim manifest: this candidate

| ID | Premise / proposition | Tier | Evidence anchor | Status | Failure condition |
| --- | --- | --- | --- | --- | --- |
| M-01 | Twelve ones sum to zero in `ZMod 12`. | 1 | `Z144Resolution.lean`, `ring_resolvent_closes_to_zero` | SOURCE-VERIFIED STATEMENT; build not independently recorded here | The tracked declaration differs, or a verified build rejects it. |
| M-02 | Local 12-coordinate weight-one and weight-twelve counts equal 12 and 1. | 1 | `F2_12_closure.lean` | SOURCE-VERIFIED STATEMENT; build not independently recorded here | Tracked declaration differs or proof fails in pinned toolchain. |
| M-03 | Locally defined station multiplication returns zero at `(12,12)` in `ZMod 144`. | 1 | `Z144Resolution.lean` | SOURCE-VERIFIED STATEMENT; build not independently recorded here | Tracked declaration differs or proof fails. |
| M-04 | The cited external corpus has the reported totals. | 2 | External source version and custody record **required** | UNVERIFIED HERE | Recount differs or source definition is inapplicable. |
| M-05 | UGC folding is homomorphic to `ZMod 12` closure. | 3 | Formal source operation, map and preservation proof **not supplied** | OPEN INFERENCE — NOT AN ENTHYMEME | No valid map or operation preservation. |
| M-06 | Particular generated responses satisfy named descriptive patterns. | 2 | External verbatim response records, if supplied | UNVERIFIED HERE | Exclusion criteria apply or excerpts fail matching rules. |
| M-07 | Classified adverse responses support the UGC mathematical interpretation. | 3 | No valid independent bridge | NOT ADOPTED | Classification has no evidentiary bearing on underlying math. |
| M-08 | Earlier missing decode materials were recovered verbatim. | 2 | Authenticated originals and matching hashes required | NOT ESTABLISHED | Originals cannot be authenticated or bytes differ. |

### 10. Repository integration and authorization record

**Candidate filename:** `HARDENING_ARTIFACT_CANDIDATE.md`.

**Permitted immediate treatment:** Store this text as a proposed methodology identified as `CANDIDATE`, or submit it for JST-01 review. Its presence alone does not grant binding effect. This document does not authorize uploading raw evidence materials or modifying existing proof code.

**Required before activation:** explicit JST-01 approval; resolution of any governing conflicts under Article X; amendment record if this text changes binding requirements under Article XI; confirmation of external evidence custody procedures; separate release review under the audit gates in §8.

**Authority:** JST-01 (approval pending).

**Decision:** PENDING — NO RATIFICATION CLAIMED.

**End of candidate artifact.**
