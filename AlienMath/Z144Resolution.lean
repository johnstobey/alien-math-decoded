-- Z144Resolution.lean
-- Algebraic model of the null-state divergence and mod-144 ring closure
-- Companion to F2_12_closure.lean

import Mathlib.Data.ZMod.Basic
import Mathlib.Data.Finset.Basic

open Finset

-- The standard SDP resolvent denominator: 1 - m·θ
-- Diverges at θ_c = 1/m (for m = 12: θ_c = 1/12)

-- In Z/12Z: the partial sum at the critical point closes to 0
-- ∑_{k=0}^{11} (m·θ_c)^k = ∑_{k=0}^{11} 1^k = 12 ≡ 0 (mod 12)
theorem ring_resolvent_closes_to_zero :
    (∑ k ∈ Finset.range 12, (1 : ZMod 12) ^ k) = 0 := by
  decide

-- The Z/144Z product ring: level index × harmonic parameter
-- C(|σ|, H) = (|σ| × H) mod 144
def cipherStation (level harmonic : ℕ) : ZMod 144 :=
  ((level * harmonic : ℕ) : ZMod 144)

-- Level-1, harmonic-12: station 12 (one ring step completed)
#eval (cipherStation 1 12 : ZMod 144)   -- expected: 12

-- Level-12, harmonic-12: station 0 (closure)
#eval (cipherStation 12 12 : ZMod 144)  -- expected: 0

-- Station 11 (approaching closure): level-11, harmonic-12
#eval (cipherStation 11 12 : ZMod 144)  -- expected: 132

theorem closure_at_144 : cipherStation 12 12 = (0 : ZMod 144) := by decide

theorem approach_station (k : Fin 12) :
    cipherStation k.val 12 = ((k.val * 12 : ℕ) : ZMod 144) := by
  simp [cipherStation]
