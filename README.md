# Linear independence of 1, ζ(3), ζ(5): Lean formalization

This repository is a Lean 4 + Mathlib formalization project concerning the conjectural linear independence over Q of 1, ζ(3), and ζ(5).

## Mathematical status

The intended statement is that for a,b,c in Q, a + bζ(3) + cζ(5) = 0 implies a=b=c=0. This is a research target, not a theorem established by this repository. In particular, the irrationality of ζ(5) is itself not currently known. Do not present the three-number linear independence as a proved result.

The initial Lean files separate the formal statement from its analytic foundations. No axiom or fabricated proof is used to claim the target.

## Work from Android without installing Lean locally

Use GitHub Codespaces in your browser:

1. Open this repository on GitHub.
2. Tap Code → Codespaces → Create codespace on main.
3. Wait for setup to finish; the devcontainer installs the pinned Lean toolchain.
4. In the Codespaces terminal run:

   lake exe cache get
   lake build

5. Edit Lean files in the browser editor. Run lake build after changes. Use the Source Control panel to commit and push.

GitHub's free plan includes a limited monthly Codespaces allowance for eligible personal accounts. Usage beyond the included allowance can incur charges. Check Codespaces billing/usage and do not enable paid usage if you need to keep the cost at zero. No Lean installation is needed on your Android device.

## Project layout

- lean-toolchain: exact Lean compiler version.
- lakefile.toml: Lake project and Mathlib dependency.
- ZetaIndependence/Basic.lean: initial constants and target proposition.
- Main.lean: root import.
- .devcontainer/: Codespaces environment setup.
- .github/workflows/lean.yml: build check on pushes and pull requests.

## Formalization roadmap

1. Define ζ(3) and ζ(5) from a mathematically justified representation.
2. Formalize convergence and equality of the relevant Dirichlet series with the standard zeta function.
3. Formalize the exact rational-linear-independence proposition.
4. Formalize independently established lemmas and theorems, with explicit dependencies and proofs.
5. Keep the final independence theorem as an unproved target unless a complete, mathematically valid proof is found and checked by Lean.

## Reproducibility

CI runs the Mathlib cache step and lake build. A green build certifies that the checked Lean files compile; it does not certify the open mathematical conjecture unless a proof of that proposition is actually present.
