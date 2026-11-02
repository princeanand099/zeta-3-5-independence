import Mathlib

/-!
# Linear independence of 1, ζ(3), and ζ(5)

The constants below are temporary placeholders. They are not yet identified
with the analytic Riemann zeta values. This file states a research target,
not a proved theorem.
-/

namespace ZetaIndependence

/-- Temporary placeholders, not yet the actual zeta values. -/
opaque zeta3 : ℝ
opaque zeta5 : ℝ

/-- Intended rational-linear-independence statement. -/
def Target : Prop :=
  ∀ a b c : ℚ,
    (a : ℝ) + (b : ℝ) * zeta3 + (c : ℝ) * zeta5 = 0 →
      a = 0 ∧ b = 0 ∧ c = 0

/-- A named proposition for the research target; no proof is asserted. -/
theorem target_statement : Prop := Target

end ZetaIndependence
