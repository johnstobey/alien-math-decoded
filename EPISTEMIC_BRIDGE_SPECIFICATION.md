# Epistemic Bridge Specification: Unique Games Source and Modular Ring Models

Date: 2026-10-19  
Source version: OpenAI, *The Unique Games Theorem* (September 23, 2026), `build/sections/03-game.tex` and `00-introduction.tex`, `openai/math`, `main` (accessed 2026-10-19); local Lean declarations from `johnstobey/alien-math-decoded`, `main`, commit `7d6a7fb1b0c339f115d81dc1766abcbd2611238a`.  
Result: **No demonstrated UGC-to-\(\mathbb Z/12\mathbb Z\) or \(\mathbb Z/144\mathbb Z\) homomorphism; the proposed broad correspondence is a structural analogy requiring operationally specified tests.**

## 1. The source mathematical structure \(A\)

The source TeX in `03-game.tex`, subsection **Exact table keys and folding**, defines a construction in binary linear algebra, not a cyclic twelve-element ring. Its principal objects and operations are as follows.

1. A parity instance has a finite variable set \(\mathcal X\), equation occurrences \(\mathcal E\), and occurrence weights \(\omega_e\). Each equation has three bit variables, with sum prescribed in \(\mathbb F_2\). A question \(U=(e_1,\ldots,e_k)\) has homogeneous answer space \(L_U=\mathbb F_2^{1+2k}\). The dimension is \(m=1+2k\), with \(k\) a construction parameter, not fixed as twelve.
2. A permitted projection \(\bar\pi:L_U\to L_O\) is a surjective **linear** map that retains selected equation coordinates, replaces other equations with a selected actual-bit coordinate, and preserves the homogeneous coordinate \(t_0\). For a third-position singleton the selected coordinate is \(b_{e_i}t_0+x_i+y_i\). Table pullback is composition \(P'\mapsto P'\bar\pi\).
3. Let \(\mathcal V\) be the latent target vector space with a specified subspace \(K=\mathbb F_2^\ell\) and complement \(\mathcal V=K\oplus W\). A table is a linear map \(P:L_Q\to\mathcal V\) representing an affine answer table. Reduction extracts its support and a unique reduced linear map \(\widetilde P\) factoring through a support projection. Its **exact key** consists of support metadata (block positions, tags and IDs) and the entire reduced table **including its intercept**. Tables have equal keys precisely when those components coincide.
4. The source proves **pullback/key compatibility**: for every permitted \(\bar\pi\) and table \(P'\) on \(O\), \((U,P'\bar\pi)\) and \((O,P')\) have the same exact key. The construction uses the characteristic-two cancellation of duplicate intercept correction terms.
5. The source's **folding** is a free action of the additive group \((K,+)\) on the key universe: \(h\in K\) translates a key's reduced intercept by \(h\), equivalently replacing a presenting table \(P\) by \(P+h e_0^\top\). Vertices are translation orbits, represented by a key whose reduced intercept has zero \(K\)-component. If \(c(Q,P)\in K\) is the removed intercept component, then a vertex labeling \(\lambda\) restores the answer by
   \[
   F_Q(P)=\lambda(v(Q,P))+c(Q,P).
   \]
   The source's explicit identities are
   \[
   F_Q(P+h e_0^\top)=F_Q(P)+h\quad(h\in K), \tag{Source Fold}
   \]
   \[
   F_U(P'\bar\pi)=F_O(P'). \tag{Key Sharing}
   \]
6. The source's **matrix test** samples \(U\), a table \(P\), latent noise \(a\in\mathcal V\), and \(l\in\mathbb F_2^m\), then tests \(F_U(P)=F_U(P+a l^\top)\). The update is addition of a rank-one linear map over \(\mathbb F_2\). It is not multiplication by a fixed element of \(\mathbb Z/12\mathbb Z\).

These are different sorts of operations: a group action on keys, quotienting by translation orbits, precomposition by linear projections, and a stochastic equality test. No source declaration in the examined TeX defines a canonical station map into \(\mathbb Z/12\mathbb Z\), a twelve-step fold, or twelve successive accumulation levels.

**Source anchors:** [OpenAI source `03-game.tex`](https://github.com/openai/math/blob/main/preprints/The-Unique-Games-Theorem-September-23-2026/build/sections/03-game.tex), subsections “Weighted parity equations and distinct positions” and “Exact table keys and folding”; [source introduction](https://github.com/openai/math/blob/main/preprints/The-Unique-Games-Theorem-September-23-2026/build/sections/00-introduction.tex). The source's section labels `eq:outer-projection`, `eq:table-folding`, and `eq:key-sharing` permit unambiguous location of the relevant definitions and equations.

## 2. Target structures \(B_{12}\) and \(B_{144}\)

`AlienMath/UGCRingBridge.lean` uses `ZMod 12` and `ZMod 144`, standard residue rings with addition and multiplication modulo the specified integer. It declares arithmetic results including:

- `ring_closure_z12`: \((12:\mathrm{ZMod}\ 12)=0\).
- `station_11_nonzero`: \((11:\mathrm{ZMod}\ 12)\ne0\).
- `station_11_successor_is_zero`: \((11+1:\mathrm{ZMod}\ 12)=0\).
- `fold_identity`: the coercion of the natural number twelve to `ZMod 12` is zero.
- `harmonic_accumulation_closes`: \(((3\cdot12:\mathbb N):\mathrm{ZMod}\ 12)=0\).
- `ugc_level_architecture_closes`: **assuming** `levels = 12` and `hpl = 3`, the natural-number product `hpl * levels` is zero after coercion to `ZMod 12`.
- `corpus_count_station_11`, `compute_time_closes_z144`, and the factors involving 372 and 300: arithmetic equalities involving supplied numeral literals.
- `z144_zero_divisor` plus the two nonzero-factor witnesses: twelve is nonzero in `ZMod 144`, whereas twelve times twelve is zero.

`AlienMath/Z144Resolution.lean` additionally defines `cipherStation (level harmonic : ℕ) : ZMod 144 := ((level * harmonic : ℕ) : ZMod 144)`, verifies `cipherStation 12 12 = 0`, and states the sum
\[
\sum_{j=0}^{11}(1:\mathrm{ZMod}\ 12)^j=0.
\]
This sums twelve ones; it does **not** sum the integers zero through eleven.

`AlienMath/F2_12_closure.lean` defines `levelK` by Hamming weight in `(Fin 12 → ZMod 2)` and proves its weight-one and weight-twelve cardinalities. This is a *locally chosen 12-coordinate space*; it is not a declaration extracted from the source's arbitrary `k`-block table space. None of these Lean declarations defines the source objects, exact-key reduction, `K` translation action, source folding law, or a function mapping source keys to modular residues.

Source: [the local Lean file](https://github.com/johnstobey/alien-math-decoded/blob/main/AlienMath/UGCRingBridge.lean), plus [`Z144Resolution.lean`](https://github.com/johnstobey/alien-math-decoded/blob/main/AlienMath/Z144Resolution.lean) and [`F2_12_closure.lean`](https://github.com/johnstobey/alien-math-decoded/blob/main/AlienMath/F2_12_closure.lean). Source declarations have been inspected; this specification does not claim an independent successful Lean compilation.

## 3. Candidate map \(f:A\to B\) and its type

A single map \(A\to B\) is not well-typed until a source carrier and its operation are specified. To test the closest genuine algebraic component, isolate the source additive translation group \(K=(\mathbb F_2^\ell,+)\). For an explicitly chosen linear functional \(\chi:K\to\mathbb F_2\), define a candidate
\[
 f_{12,\chi}:K\longrightarrow (\mathbb Z/12\mathbb Z,+),\qquad f_{12,\chi}(h)=6\,\chi(h)\pmod{12}.
\]
Likewise define \(f_{144,\chi}(h)=72\,\chi(h)\pmod{144}\). These **are additive homomorphisms**, conditional on the independently chosen linear functional \(\chi\): since \(\chi(h_1+h_2)=\chi(h_1)+\chi(h_2)\) modulo two and \(2\cdot6=0\) mod twelve (respectively \(2\cdot72=0\) mod 144), operation preservation holds:
\[
 f_{12,\chi}(h_1+h_2)=f_{12,\chi}(h_1)+f_{12,\chi}(h_2).
\]
They are neither canonical nor faithful when \(\ell>1\), and their images have at most two elements \(\{0,6\}\) and \(\{0,72\}\), respectively. A homomorphism from an exponent-two group into the additive group of \(\mathbb Z/12\mathbb Z\) has image only in \(\{0,6\}\): \(h+h=0\) forces \(2f(h)=0\). Thus no such map represents a 12-position cycle or a full ring isomorphism. This is an exact obstruction to the proposed *translation-as-twelve-station* identification, not an obstruction to all possible comparisons.

For exact keys \(\mathcal Q\), a map \(f:\mathcal Q\to\mathbb Z/12\mathbb Z\) could instead be postulated, together with the equivariance relation
\[
 f(h\cdot q)=f(q)+f_{12,\chi}(h),
\]
but no such map is supplied by the source or local Lean declarations. Moreover, exact-key reduction and source pullback are **not** a single internal binary operation \(\circ_A:\mathcal Q\times\mathcal Q\to\mathcal Q\). They are typed maps between changing question/table spaces. Consequently the indiscriminate formula
\[
 f(a\circ_A b)=f(a)\circ_B f(b)
\]
is **not defined for the full source construction**. A group-action equivariance or functoriality statement is the appropriate form of preservation, after source-side and target-side objects and operations have been typed.

## 4. Preservation result and reproducible tests

**Algebraic test.** On the restricted domain \(K\), the explicitly chosen maps \(f_{12,\chi}\) and \(f_{144,\chi}\) preserve **addition**, as shown above. This elementary fact neither reconstructs the source orbit quotient nor transports `eq:table-folding` and `eq:key-sharing` into the existing Lean code. Since the real source fold is a translation-orbit operation over \(\mathbb F_2\), whereas the local `fold_identity` is numeral reduction modulo twelve, the operations do not coincide. No full-source homomorphism is established; the stronger identification must not be inferred from the restricted additive map.

**Formal proof obligations for any stronger proposed bridge:**

1. Reproduce in Lean the source's `L_Q`, permissible linear projections, reduced support and full intercept-preserving key, \(K\)-action, orbit representative, restored answer function, and the exact equality rules for keys.
2. Prove that the representation is well-defined, the \(K\)-action is free, and pullback respects exact keys under the source's permitted projections.
3. Prove analogues of `eq:table-folding` and `eq:key-sharing` *in the source model*, with all variables universally quantified and the necessary projection hypotheses explicit.
4. If proposing a residue-valued map on source keys, define `f` as a total function, identify the chosen `χ`, and prove its action-equivariance, compatibility with key sharing, and well-definedness on any asserted quotient. State information lost by the map; do not call it injective, surjective, or an isomorphism absent separate proofs.
5. If asserting correspondence to a 12-step level transition, identify an **actual** indexed operator in the paper, prove it has period twelve (and not a smaller period), and show compatibility with `ZMod 12` addition. None has been identified in the examined folding construction.
6. Record exact import versions, source commit IDs, Lean build output, `#print axioms` for each new theorem, and negative tests of proposed operation-preservation statements.

**Structural analogy tests:** Because the broader correspondence currently lacks a common algebraic operation, the broad UGC-to-ring claim is classified as a **Structural Analogy**, with empirical and textual tests rather than a completed homomorphism proof. The following tests are precise enough to implement, but their outcomes have not been reproduced here:

- **T1 — Source extract:** Freeze a primary TeX commit and PDF SHA-256; enumerate every defined use of `fold`, `folding`, `level`, `table key`, and mathematical modulus, recording exact file/line or TeX label; distinguish technical key orbit quotient from incidental vocabulary.
- **T2 — Denominator distribution:** Define the sampling population of eligible *denominator positions in mathematical expressions* before extraction. Parse TeX syntax (not a loose substring regex); record each positive integer denominator or explicitly defined modulus and context, keeping duplicates and deduplication variants separately. Define \(D_{144}=\{1,2,3,4,6,8,9,12,16,18,24,36,48,72,144\}\) and \(T=n^{-1}\sum_i\mathbf1[d_i\in D_{144}]\). Zero is excluded. A coefficient of `3` in `3θ` is not automatically a denominator, and must not enter this statistic unless a separate *coefficient* statistic was preregistered.
- **T3 — Coefficient distribution:** Independently extract explicit coefficients of \(\theta\) with a fully specified TeX parser and normalization conventions (implicit coefficient 1, negative signs, subscripts, macros, displayed vs inline equations). Report histogram \(n_c\), sample size, exact source positions, failed parses, and manual spot checks. The previously reported `10/11` result cannot be treated as reproducible without matching its original denominator/coefficient definition; the historical table includes zero, which is not a positive divisor.
- **T4 — Comparison population:** Apply the identical parser to a preregistered matched collection of contemporary complexity-theory/PCP papers, with document-level clustering, sensitivity to manuscript size, and equal definitions of denominator/coefficient units. Report control frequency, target-control difference, interval estimates, and multiple-testing adjustments if many candidate moduli are screened. A naive `15/144` baseline applies **only** under independent uniform draws from positive integers 1 through 144; it is not the expected rate for research-paper formulas.
- **T5 — Specificity:** Compare predeclared alternatives (moduli such as 8, 10, 16 and 24; non-modular key-equivalence and \(\mathbb F_2\)-linear explanations). State each alternative's observable predictions in advance, and report whether twelve-fold features are uniquely discriminating or equally explained by binary linear algebra or source conventions.
- **T6 — Operational mapping:** Have independent annotators mark source operator inputs, outputs, and composition behavior, blind to the proposed ring interpretation. Require a jointly applicable, type-correct preservation law; otherwise retain descriptive similarity only. Record agreement and all counterexamples.

The tests can verify factual mentions, distributions, and specified similarities. They **cannot by themselves turn a nonalgebraic analogy into a homomorphism**; that requires the typed structure and preservation proofs above. A null result or a well-matched alternative explanation would fail the corresponding empirical prediction without altering the local ring identities.

## 5. Definitive bridge conclusion

The source folding mechanism has a precise mathematical semantics: **intercept translation by \(\mathbb F_2^\ell\), formation of translation orbits, and compatibility of exact table keys under binary-linear pullback**. The target Lean modules prove local arithmetic in \(\mathbb Z/12\mathbb Z\), \(\mathbb Z/144\mathbb Z\), and a separately chosen twelve-coordinate binary vector space. The documents supply **no typed, verified operation-preserving map from the complete UGC source construction to either modular ring**. A restricted, noncanonical additive map from \(K\) to the order-two subgroup of either additive residue ring exists, but does not yield the claimed twelve-station correspondence.

**Mathematical status:** *Full UGC-to-ring homomorphism not established; the proposed broad correspondence remains a structural analogy with specified but unexecuted empirical tests.* The gap is thereby **resolved as a precisely characterized limit of the currently supplied formalization**, not closed by an unsupported mathematical claim.
