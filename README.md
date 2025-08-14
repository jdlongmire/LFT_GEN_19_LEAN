# Logic Field Theory

**Deriving Quantum Mechanics from the Three Fundamental Laws of Logic**

[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.16788881.svg)](https://doi.org/10.5281/zenodo.16788881)
[![Theory: CC BY-NC-SA 4.0](https://img.shields.io/badge/Theory-CC%20BY--NC--SA%204.0-lightgrey.svg)](https://creativecommons.org/licenses/by-nc-sa/4.0/)
[![Code: MIT](https://img.shields.io/badge/Code-MIT-green.svg)](https://opensource.org/licenses/MIT)

## Overview

Logic Field Theory (LFT) derives the complete mathematical formalism of quantum mechanics and the Standard Model from the Three Fundamental Laws of Logic (Identity, Non-Contradiction, Excluded Middle) without assuming physical postulates. All core derivations are formally verified in Lean 4.

## Key Results

- **Quantum mechanics emerges necessarily** from logical consistency
- **Complex numbers required** (not real or quaternionic)
- **Standard Model gauge group U(1)×SU(2)×SU(3)** uniquely determined
- **Exactly 3 fermion generations** from mathematical necessity
- **Born rule derived** (not postulated)

## Repository Structure

```
Logic-Field-Theory/
├── LFT_GEN_19_LEAN/         # Lean 4 implementation [COMPLETE]
│   ├── LFT/Core/            # Verified proofs (D01-D05)
│   └── docs/predictions/    # Experimental tests (D06)
│
├── docs/
│   ├── theory-v5/           # Theory exposition (8 chapters)
│   ├── derivations-v5/      # Mathematical proofs (D00-D06)
│   ├── position-papers/     # Published papers & preprints
│   └── sessions/            # Development notes
│
├── planning/                # Research roadmap
├── figures/                 # Diagrams and visualizations
└── lean-map/               # Theory-to-Lean mapping
```

## Current Status

✅ **Theory Complete**: All derivations finalized  
✅ **Lean Verified**: Core modules D01-D05 formally proven  
✅ **Predictions Ready**: Experimental tests specified (D06)  
🔬 **Awaiting Experiments**: Decoherence scaling test will be decisive

## Quick Links

- **[Lean Implementation](LFT_GEN_19_LEAN/)** - Formal proofs in Lean 4
- **[Theory Overview](docs/theory-v5/)** - Complete exposition
- **[Mathematical Derivations](docs/derivations-v5/)** - Detailed proofs
- **[Experimental Predictions](docs/predictions/)** - Testable outcomes

## Critical Experiment

The theory makes a decisive prediction: decoherence time scales as τ_D ∝ (ξ/ℓ₀)² (positive slope) versus standard QM's τ_D ∝ 1/size (negative slope). This opposite behavior enables definitive experimental validation.

## Publications

- Zenodo Archive: [10.5281/zenodo.16788881](https://doi.org/10.5281/zenodo.16788881)
- arXiv Preprint: [forthcoming]

## Author

**James D. Longmire**  
Northrop Grumman Fellow (independent research)  
Email: longmire.jd@gmail.com  
ORCID: [0009-0009-1383-7698](https://orcid.org/0009-0009-1383-7698)

## Contributing

Seeking collaborators in:
- Experimental quantum physics (molecular interferometry)
- Formal verification (Lean 4)
- Quantum foundations

## License

- **Theory & Documentation**: CC BY-NC-SA 4.0
- **Code**: MIT License

See [LICENSE](LICENSE) for details.

## Citation

```bibtex
@article{longmire2025lft,
  author = {Longmire, James D.},
  title = {Logic Field Theory: Deriving Quantum Mechanics from First Principles},
  year = {2025},
  doi = {10.5281/zenodo.16788881},
  url = {https://github.com/jdlongmire/Logic-Field-Theory}
}
```

---

*For detailed implementation, see [LFT_GEN_19_LEAN](LFT_GEN_19_LEAN/README.md)*