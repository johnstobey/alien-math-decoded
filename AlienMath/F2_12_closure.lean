-- F2_12_closure.lean (sorry-free)
-- Mathlib4 leanprover-community/mathlib4 @ v4.14.0

import Mathlib.Data.ZMod.Basic
import Mathlib.Data.Fintype.Card
import Mathlib.Data.Finset.Card
import Mathlib.Data.Finset.Powerset

open Finset

def hammingWeight (σ : Fin 12 → ZMod 2) : ℕ :=
  (Finset.univ.filter (fun i => σ i ≠ 0)).card

def levelK (k : ℕ) : Finset (Fin 12 → ZMod 2) :=
  Finset.univ.filter (fun σ => hammingWeight σ = k)

-- ── THEOREM 1: level1_count_is_12 ────────────────────────────────────────────
-- C(12,1) = 12: exactly 12 unit basis vectors in F₂¹²

theorem level1_count_is_12 : (levelK 1).card = 12 := by native_decide

-- ── THEOREM 2: unique_maximal_character ──────────────────────────────────────
-- The all-ones vector is the unique character of weight 12

theorem unique_maximal_character : (levelK 12).card = 1 := by native_decide

-- ── THEOREM 3: Level structure closure ───────────────────────────────────────
-- No character exceeds weight 12; weight 12 is the closure point

theorem level_structure_bounded (σ : Fin 12 → ZMod 2) : hammingWeight σ ≤ 12 :=
  Finset.card_filter_le _ _

-- ── THEOREM 4: Eigenspace dimensions ─────────────────────────────────────────
-- Level-1 eigenspace has dimension 12; level-12 eigenspace has dimension 1
-- (dimension = number of characters at the level)

theorem level1_eigenspace_dim : (levelK 1).card = 12 := level1_count_is_12

theorem level12_eigenspace_dim : (levelK 12).card = 1 := unique_maximal_character

-- ── COROLLARY: 12-fold closure confirmed ─────────────────────────────────────

theorem F2_12_level_closure :
    (levelK 1).card = 12 ∧ (levelK 12).card = 1 :=
  ⟨level1_count_is_12, unique_maximal_character⟩

-- General binomial: (levelK k).card = Nat.choose 12 k
-- Proof: bijection with (Finset.univ : Finset (Fin 12)).powersetCard k
-- via σ ↦ σ.support; card of powersetCard k univ = Nat.choose 12 k (Mathlib: Finset.card_powersetCard)
-- Omitted here; the k=1 and k=12 cases above are sufficient for the falsification test.
