# D00: Derivation-Theory Cross-Reference Map

This document maps each derivation file to the theory sections it supports and proves.

## Derivation Status Overview

| Derivation | Status | Priority | Core Result |
|------------|--------|----------|-------------|
| D01-foundations | 📝 Placeholder | Medium | Graph admissibility algorithm |
| D02-complex-necessity | ✅ COMPLETE | - | **ℂ is unique scalar field (PUBLISHABLE)** |
| D03-unitary-evolution | 📝 Placeholder | Medium-High | Coherence → unitarity, gauge emergence |
| D04-born-rule-proof | 📝 Placeholder | HIGH | Path counting → \|ψ\|² |
| D05-strain-timing-policy | 📝 Placeholder | HIGH | Scale invariance → weights |
| D06-predictions | 📝 Placeholder | Medium | Experimental protocols |

## D01-foundations.md

### Theory References
| Section | Topics | Specific Items |
|---------|--------|----------------|
| **§2** (Primary) | Pre-Quantum Foundations | Def 2.1 (𝒮), Def 2.2 (𝕃), Algorithm 2.1, Def 2.4 (equivalence) |
| **§3.2** (Secondary) | Logical Strain Definition | How strain applies to graphs, v_I, v_N, v_E formulation |

### Must Prove
| Theorem/Result | Description | Complexity |
|----------------|-------------|------------|
| Theorem 2.1 | 𝕃 properties (contractive, idempotent, decidable) | Medium |
| Complexity Analysis | O(\|V\|³) for admissibility checking | Low |
| Equivalence Algorithm | Construction of 𝒜/∼ | Medium |

## D02-complex-necessity.md ✅

### Theory References
| Section | Topics | Specific Items |
|---------|--------|----------------|
| **§4.4** (Primary) | Why Complex Numbers | Theorem 4.1, Graph cycles, Rotation groups |
| **§4.4.5** (Primary) | Physical Interpretation | i as orientation generator |
| **§2.4** (Secondary) | Equivalence Classes | [G] notation and properties |
| **§4.6** (Secondary) | Path Counting | Connection to Born rule |

### Proves
| Theorem | Result | Significance |
|---------|--------|--------------|
| Theorem D2.2 | ℝ cannot represent orientation | Excludes real QM |
| Theorem D2.3 | ℍ violates independence | Excludes quaternionic QM |
| Theorem D2.7 | ℂ is unique and necessary | **Core publishable result** |

## D03-unitary-evolution.md

### Theory References
| Section | Topics | Specific Items |
|---------|--------|----------------|
| **§5.7** (Primary) | Coherence Preservation | Theorem 5.5 (Unitarity from Logic) |
| **§5.4** (Primary) | Hamiltonian | Graph dynamics → Ĥ |
| **§6.1** (Primary) | Action Minimization | Schrödinger equation emergence |
| **§7.2-7.3** (Primary) | Gauge Fields | Local invariance, fundamental forces |

### Must Prove
| Result | Description | Priority |
|--------|-------------|----------|
| Wigner's theorem | Application to logical transformations | High |
| Stone-von Neumann | Uniqueness of representation | Medium |
| Z₂ → SU(2) | Gauge enhancement mechanism | High |
| S₃ → SU(3) | 3-coloring → strong force | High |

## D04-born-rule-proof.md

### Theory References
| Section | Topics | Specific Items |
|---------|--------|----------------|
| **§4.6** (Primary) | Path Counting | Proposition 4.2, Logical paths |
| **§6.2** (Primary) | Born Rule | Theorem 6.1 (uniqueness) |
| **§4.6.1** (Secondary) | Configuration Paths | Amplitude calculation |

### Must Prove
| Result | Description | Significance |
|--------|-------------|--------------|
| Path formalism | Complete counting mechanism | Novel approach |
| n=2 uniqueness | Why P = \|ψ\|² not \|ψ\|ⁿ | Fundamental |
| Independence → multiplication | P(A×B) = P(A)P(B) | Key requirement |

## D05-strain-timing-policy.md

### Theory References
| Section | Topics | Specific Items |
|---------|--------|----------------|
| **§3.2** (Primary) | Strain Definition | D(ψ) = w_I v_I + w_N v_N + w_E v_E |
| **§3** (Primary) | Weight Derivation | w_I : w_N : w_E ratios |
| **§6.3** (Primary) | Coherence Capacity | σ_critical = N_dof × σ₀ |
| **§6.5** (Primary) | Decoherence | Classical limit emergence |

### Must Prove
| Result | Formula/Description | Application |
|--------|---------------------|-------------|
| Scale invariance | w ratios from critical exponents | Weight values |
| Decoherence time | τ_D = ℏ/⟨v_E⟩ × (σ_critical/D_total) | Testable |
| Gradient flow | d\|ψ⟩/dτ = -∇D(ψ) | Measurement |

## D06-predictions.md

### Theory References
| Section | Topics | Specific Items |
|---------|--------|----------------|
| **§3.5** | Strain Predictions | V = V₀ exp(-β v_E), τ_D formula |
| **§6.8** | Beyond Standard QM | Critical experiments |
| **§8** | Experimental Summary | Near/medium/long-term tests |

### Must Include
| Prediction Type | Specific Measurement | Deviation from QM |
|-----------------|---------------------|-------------------|
| Interference visibility | Modified double-slit | ~10⁻⁶ effect |
| Decoherence scaling | τ_D vs system size | Linear in N_dof |
| Strain accumulation | Near-threshold behavior | Sharp transition |
| Null outcomes | High-strain dissolution | Novel prediction |

## Theory → Derivation Requirements

### Section 2: Pre-Quantum Foundations
| Claim | Required Proof | Derivation | Status |
|-------|---------------|------------|---------|
| 𝕃 is contractive | Mathematical proof | D01 | 📝 |
| 𝕃 is idempotent | Mathematical proof | D01 | 📝 |
| O(\|V\|³) complexity | Algorithm analysis | D01 | 📝 |

### Section 3: Logical Strain
| Claim | Required Proof | Derivation | Status |
|-------|---------------|------------|---------|
| Weights from first principles | Scale invariance | D05 | 📝 |
| w_I : w_N : w_E = 1 : ln(ξ/ℓ₀) : (ξ/ℓ₀)² | Critical behavior | D05 | 📝 |
| Testable predictions | Experimental protocols | D06 | 📝 |

### Section 4: Graphs to Vectors
| Claim | Required Proof | Derivation | Status |
|-------|---------------|------------|---------|
| ℂ is unique (Theorem 4.1) | Complete exclusion proof | D02 | ✅ |
| Born rule from paths (Prop 4.2) | Path counting uniqueness | D04 | 📝 |
| Discrete → continuous | Graph automorphisms → U(1) | D02 | ✅ |

### Section 5: Quantum Structure
| Claim | Required Proof | Derivation | Status |
|-------|---------------|------------|---------|
| Unitarity from coherence | Wigner's theorem | D03 | 📝 |
| [x̂,p̂] = iℏ | Translation generator | D03 | 📝 |
| Ĥ from graphs | Connectivity → energy | D03 | 📝 |

### Section 6: Dynamics & Measurement
| Claim | Required Proof | Derivation | Status |
|-------|---------------|------------|---------|
| Born rule uniqueness | L1-L4 requirements | D04 | 📝 |
| Gradient flow | Strain minimization | D05 | 📝 |
| σ_critical = N_dof × σ₀ | Scaling argument | D05 | 📝 |

### Section 7: Gauge Fields
| Claim | Required Proof | Derivation | Status |
|-------|---------------|------------|---------|
| U(1)×SU(2)×SU(3) necessary | Minimal faithful reps | D03 | 📝 |
| Three generations | 3-coloring theorem | D03 | 📝 |
| Gauge = logical connector | Local coherence | D03 | 📝 |

## Lean Formalization Priority

| Priority | Theorem | From | Description |
|----------|---------|------|-------------|
| 1 | Theorem D2.7 | D02 | ℂ necessity (ready now) |
| 2 | Graph admissibility | D01 | Algorithm implementation |
| 3 | Theorem D2.2-D2.3 | D02 | ℝ, ℍ exclusion (ready now) |
| 4 | Born uniqueness | D04 | When complete |
| 5 | Gauge emergence | D03 | When complete |

## Publication Strategy

| Paper | Core Content | Status | Target Journal |
|-------|-------------|--------|----------------|
| Paper 1 | D02: Complex necessity | **Ready** | Foundations of Physics |
| Paper 2 | D04+D05: Measurement | In progress | PRA or PRX Quantum |
| Paper 3 | Full LFT framework | After D01-D06 | Reviews of Modern Physics |

## Completion Checklist

- [x] D02: Complex necessity proof
- [ ] D04: Born rule from path counting
- [ ] D05: Strain weights and dynamics  
- [ ] D03: Unitarity and gauge fields
- [ ] D01: Algorithmic foundations
- [ ] D06: Experimental predictions