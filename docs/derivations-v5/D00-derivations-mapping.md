# D00: Derivation-Theory Cross-Reference Map

This document maps each derivation file to the theory sections it supports and proves.

## Forward Mapping: Derivations → Theory Sections

### D01-foundations.md
**Status:** 📝 Placeholder

**Primary References:**
- **Section 2** (Pre-Quantum Foundations)
  - Definition 2.1: Syntactic Space 𝒮
  - Definition 2.2: Logic Operator 𝕃
  - Algorithm 2.1: Logic Filter implementation
  - Definition 2.4: Logical Equivalence classes

**Secondary References:**
- **Section 3.2** (Definition of Logical Strain)
  - How strain applies to admissible graphs
  - Initial formulation of v_I, v_N, v_E

**Must Prove:**
- Theorem 2.1: 𝕃 properties (contractive, idempotent, decidable)
- Complexity analysis O(|V|³)
- Equivalence class construction algorithm
- Graph admissibility checker implementation

---

### D02-complex-necessity.md
**Status:** ✅ COMPLETE (Publishable)

**Primary References:**
- **Section 4** (From Graphs to Vector Spaces)
  - Section 4.4: Why Complex Numbers?
  - Theorem 4.1: Field Uniqueness
  - Section 4.4.3: Graph Cycles and Rotation Groups
  - Section 4.4.5: Physical Interpretation of i

**Secondary References:**
- **Section 2.4**: Logical Equivalence Classes [G]
- **Section 4.6**: Path Counting and Born Rule

**Proves:**
- Theorem 4.1: ℂ is the unique scalar field
- Orientation-Composition requirements
- Exclusion of ℝ, ℍ, finite fields
- Physical meaning of imaginary unit

---

### D03-unitary-evolution.md
**Status:** 📝 Placeholder

**Primary References:**
- **Section 5** (Quantum Structure)
  - Section 5.7: Dynamics from Coherence Preservation
  - Theorem 5.5: Unitarity from Logic
  - Section 5.4: The Hamiltonian from Graph Dynamics

- **Section 6** (Dynamics and Measurement)
  - Section 6.1: Dynamics from Action Minimization
  - Schrödinger equation emergence

- **Section 7** (Symmetries and Gauge Fields)
  - Section 7.2: Local Gauge Invariance
  - Section 7.3: Emergence of Fundamental Forces

**Must Prove:**
- Wigner's theorem application to logical transformations
- Stone-von Neumann uniqueness
- Z₂ → SU(2) enhancement mechanism
- S₃ → SU(3) from 3-coloring
- Gauge field emergence from local coherence

---

### D04-born-rule-proof.md
**Status:** 📝 Placeholder

**Primary References:**
- **Section 4** (From Graphs to Vector Spaces)
  - Section 4.6: Path Counting and Born Rule
  - Proposition 4.2: Born Rule Uniqueness
  - Section 4.6.1: Logical Paths in Configuration Space

- **Section 6** (Dynamics and Measurement)
  - Section 6.2: The Born Rule Without Postulates
  - Theorem 6.1: Born Rule Uniqueness

**Must Prove:**
- Complete path counting formalism
- Why exactly n=2 in P(G) = |c_G|^n
- Connection to (but not reliance on) Gleason's theorem
- Independence requirement → multiplicative probability
- Uniqueness of quadratic probability measure

---

### D05-strain-timing-policy.md
**Status:** 📝 Placeholder

**Primary References:**
- **Section 3** (Logical Strain Theory)
  - Section 3.2: Definition of Logical Strain
  - Weight derivation w_I : w_N : w_E = 1 : ln(ξ/ℓ₀) : (ξ/ℓ₀)²
  - Section 3.3: Realization Probability

- **Section 6** (Dynamics and Measurement)
  - Definition 6.1: Coherence Capacity σ_critical = N_dof × σ₀
  - Section 6.3.2: Outcome Selection Mechanism
  - Section 6.5: Decoherence and Classical Limit

**Must Prove:**
- Scale invariance at criticality → weight ratios
- Critical exponents connection
- Decoherence time formula: τ_D = ℏ/⟨v_E⟩ × (σ_critical/D_total)
- Measurement timing from strain accumulation
- Gradient flow dynamics: d|ψ⟩/dτ = -∇D(ψ)

---

### D06-predictions.md
**Status:** 📝 Placeholder

**Primary References:**
- **Section 3** (Logical Strain Theory)
  - Section 3.5: Predictions
  - Interference visibility: V = V₀ exp(-β v_E)
  - Decoherence time: τ_D

- **Section 6** (Dynamics and Measurement)
  - Section 6.8: Predictions Beyond Standard QM
  - Section 6.8.4: Critical Experiments

- **Section 8** (Conclusion)
  - Experimental Predictions summary
  - Near/Medium/Long-term tests

**Must Include:**
- Concrete experimental protocols with parameters
- Numerical predictions with error bars
- Comparison table: LFT vs Standard QM predictions
- "Smoking gun" experiment design
- Feasibility analysis for current technology

---

## Reverse Mapping: Theory Claims → Required Derivations

### Section 2 (Pre-Quantum Foundations)
| Claim | Required Derivation | Status |
|-------|-------------------|---------|
| 𝕃 is contractive, idempotent | D01 | 📝 |
| O(|V|³) complexity | D01 | 📝 |
| Equivalence classes well-defined | D01 | 📝 |

### Section 3 (Logical Strain Theory)
| Claim | Required Derivation | Status |
|-------|-------------------|---------|
| Weights from scale invariance | D05 | 📝 |
| w_I : w_N : w_E = 1 : ln(ξ/ℓ₀) : (ξ/ℓ₀)² | D05 | 📝 |
| Testable predictions | D06 | 📝 |

### Section 4 (From Graphs to Vector Spaces)
| Claim | Required Derivation | Status |
|-------|-------------------|---------|
| ℂ is unique (Theorem 4.1) | D02 | ✅ |
| Born rule from paths (Prop 4.2) | D04 | 📝 |
| Discrete → continuous bridge | D02 | ✅ |

### Section 5 (Quantum Structure)
| Claim | Required Derivation | Status |
|-------|-------------------|---------|
| Unitarity from coherence | D03 | 📝 |
| [x̂,p̂] = iℏ derivation | D03 | 📝 |
| Hamiltonian from graphs | D03 | 📝 |

### Section 6 (Dynamics and Measurement)
| Claim | Required Derivation | Status |
|-------|-------------------|---------|
| Born rule uniqueness | D04 | 📝 |
| Gradient flow mechanism | D05 | 📝 |
| σ_critical = N_dof × σ₀ | D05 | 📝 |
| Measurement predictions | D06 | 📝 |

### Section 7 (Symmetries and Gauge Fields)
| Claim | Required Derivation | Status |
|-------|-------------------|---------|
| U(1)×SU(2)×SU(3) emergence | D03 | 📝 |
| Three generations from 3-coloring | D03 | 📝 |
| Gauge fields as logical connectors | D03 | 📝 |

---

## Priority Order for Completion

1. **D04-born-rule-proof.md** [HIGH]
   - Second most novel result after complex necessity
   - Central to quantum mechanics
   - Path counting approach is unique

2. **D05-strain-timing-policy.md** [HIGH]
   - Makes predictions concrete and testable
   - Derives measurement mechanism
   - Critical for experimental validation

3. **D03-unitary-evolution.md** [MEDIUM-HIGH]
   - Includes gauge field emergence
   - Completes dynamics picture
   - Contains Standard Model connection

4. **D01-foundations.md** [MEDIUM]
   - Algorithmic details
   - Foundation for Lean formalization
   - More technical than conceptual

5. **D06-predictions.md** [MEDIUM]
   - Experimental protocols
   - Requires D05 completion first
   - Critical for experimental physicists

---

## Lean Formalization Targets

From completed and pending derivations, prioritize formalizing:

1. **From D02** (Complete):
   - Theorem D2.2: Real exclusion
   - Theorem D2.3: Quaternion exclusion
   - Theorem D2.7: Complex necessity

2. **From D01** (When complete):
   - Graph admissibility checker
   - Logic operator algorithm

3. **From D04** (When complete):
   - Born rule uniqueness
   - Path counting formalism

---

## Notes

- **D02 is publishable** as a standalone paper on complex necessity
- D04 and D05 together would make another strong paper on measurement
- The complete set D01-D06 supports the full LFT framework
- Each derivation should be self-contained but reference theory sections for context