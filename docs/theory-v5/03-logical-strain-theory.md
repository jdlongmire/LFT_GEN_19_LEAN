# Logical Strain Theory

The previous section established **what can exist**: the admissible set $\mathcal{A}$ of all configurations consistent with the Three Fundamental Laws of Logic. This section addresses **what does exist**: among logically possible configurations, which are physically realized.

The **logical strain functional** $D(\psi)$ quantifies the "realization cost" of admissible configurations and provides a selection principle grounded in logic, not in quantum postulates.

## The Need for a Selection Principle

$\mathcal{A}$ is vast—it contains all logically coherent configurations. Physical reality, however, realizes some configurations far more frequently than others. We require a principle that:

1. Respects admissibility as a hard constraint  
2. Assigns relative weights to admissible configurations  
3. Arises from logical, not physical, assumptions  
4. Reproduces quantum mechanical probabilities in the correct limit

The logical strain functional provides this mechanism.

## Definition of Logical Strain

For any admissible configuration $\psi \in \mathcal{A}$:

$$
D(\psi) = w_I\, v_I(\psi) + w_N\, v_N(\psi) + w_E\, v_E(\psi)
$$

where the weights $w_I, w_N, w_E$ are not free parameters but derived below from scale invariance.

### Internal Contradiction Strain ($v_I$)

Measures proximity to logical contradiction *within* $\mathcal{A}$. Even admissible configurations can skirt the edge of inconsistency.

**Graph-theoretic definition:** For configuration represented by graph $G = (V, E, \tau)$:
$$
v_I(G) = \sum_{v \in V} \frac{1}{d^2(v, \tau(v))}
$$
where $d(v, \tau(v))$ is the shortest path length from vertex $v$ to its negation $\tau(v)$.

- Longer paths → greater separation from contradiction → lower strain
- Shorter paths → closer to contradiction → higher strain
- Dimension: $[v_I] = L^{-2}$ where $L$ is logical distance

### Non-classicality Strain ($v_N$)

Quantifies logical indeterminacy in a **basis-independent** way.

**Graph invariant definition:** For superposition $|\psi\rangle = \sum_G c_G |[G]\rangle$:
$$
v_N(\psi) = 1 - \max_G |c_G|^2
$$

This measures deviation from the nearest classical (single-graph) state:
- $v_N = 0$ for pure basis states (classical)
- $v_N = 1 - 1/n$ for equal superposition of $n$ states (maximum indeterminacy)
- Dimension: $[v_N] = L^0$ (dimensionless)

**Key improvement:** This definition is invariant under basis changes that preserve logical equivalence classes, avoiding the Shannon entropy basis-dependence issue.

### External Misfit Strain ($v_E$)

Captures coupling to environment or boundary conditions.

**Coupling definition:** For system interacting with environment:
$$
v_E(\psi) = \sum_{k \in \text{env}} |J_k|^2 |\langle k|\psi\rangle|^2
$$
where $J_k$ are coupling strengths to environmental modes.

- Zero for perfectly isolated systems
- Increases with environmental entanglement
- Dimension: $[v_E] = L^2$ (coupling area)

## Derivation of Strain Weights

The weights $w_I, w_N, w_E$ are not free parameters but determined by scale invariance and dimensional consistency.

### Dimensional Analysis

From the strain component dimensions:
- $[v_I] = L^{-2}$ 
- $[v_N] = L^0$
- $[v_E] = L^2$

For $D(\psi)$ to have consistent dimension $[D] = L^0$ (dimensionless action), we need:
- $[w_I] = L^2$
- $[w_N] = L^0$ 
- $[w_E] = L^{-2}$

### Scale Invariance at Criticality

Near the coherence capacity threshold $\sigma_{\text{critical}}$, the system exhibits critical behavior with correlation length $\xi$. Scale invariance under $\xi \to \lambda\xi$ requires:

$$
D(\lambda \cdot \psi) = D(\psi) \quad \text{at criticality}
$$

This determines the weights uniquely:

$$\boxed{
\begin{align}
w_I &= \left(\frac{\xi}{\ell_0}\right)^2 \\
w_N &= 1 \\
w_E &= \left(\frac{\ell_0}{\xi}\right)^2
\end{align}
}$$

where $\ell_0$ is the fundamental logical length scale (analogous to Planck length).

### Physical Regimes

This yields three distinct regimes:

1. **Quantum (microscopic):** $\xi \gg \ell_0$
   - $w_I \gg w_N \gg w_E$
   - Internal strain dominates
   - Stable superpositions

2. **Critical:** $\xi \sim \ell_0$  
   - $w_I \sim w_N \sim w_E \sim 1$
   - All strains comparable
   - Quantum-classical transition

3. **Classical (macroscopic):** $\xi \ll \ell_0$
   - $w_E \gg w_N \gg w_I$
   - External strain dominates
   - Rapid decoherence

## Realization Probability

The probability of realizing configuration $\psi$ follows a Boltzmann-like distribution:

$$
P(\psi) = \frac{1}{Z} \exp(-\beta D(\psi))
$$

where:
- $\beta = 1/T_{\text{logical}}$ is the inverse logical temperature
- $Z = \sum_{\psi \in \mathcal{A}} \exp(-\beta D(\psi))$ is the partition function

### Properties

1. **All admissible states possible:** $P(\psi) > 0$ for all $\psi \in \mathcal{A}$
2. **Lower strain preferred:** $D(\psi_1) < D(\psi_2) \Rightarrow P(\psi_1) > P(\psi_2)$
3. **Temperature dependence:** High $T$ → equal weights; Low $T$ → minimum strain dominates

## Connection to Quantum Mechanics

### Born Rule via Path Counting

The Born rule emerges from the path-counting measure established in Section 4:

**By Proposition 4.1:** Given complex amplitudes $c_G$ arising from oriented path counting, the unique probability measure satisfying positivity, interference, normalization, and factorization is:

$$
P(G|\psi) = |c_G|^2
$$

The strain functional determines **when** measurement occurs (threshold crossing), while Proposition 4.1 determines **what** outcomes occur (Born probabilities).

### Measurement as Strain Threshold

A measurement event is triggered when total strain exceeds the system's coherence capacity:

$$
D(\psi) > \sigma_{\text{critical}} \quad \Rightarrow \quad \text{measurement/collapse}
$$

**Nature of $\sigma_{\text{critical}}$:**
- Not a free parameter but an empirical "hardware constant"
- Depends on physical implementation (atoms, photons, qubits)
- Analogous to critical temperature in phase transitions
- Measurable via decoherence experiments

Post-measurement, the system collapses to an eigenstate with $D < \sigma_{\text{critical}}$.

## Dynamics and Evolution

### Strain-Driven Evolution

Between measurements, the system evolves to minimize logical strain:

$$
\frac{d|\psi\rangle}{dt} = -\nabla D(\psi) + \text{unitary evolution}
$$

This combines:
- Hamiltonian evolution (unitary part from Section 6)
- Strain gradient flow (dissipative part)

### Decoherence Time

The characteristic decoherence time depends on strain accumulation rate:

$$
\tau_D = \frac{\sigma_{\text{critical}}}{\langle\dot{D}\rangle} = \frac{\sigma_{\text{critical}}}{w_E \Gamma}
$$

where $\Gamma$ is the environmental coupling rate.

Using our derived weights:
$$
\tau_D = \sigma_{\text{critical}} \cdot \left(\frac{\xi}{\ell_0}\right)^2 \cdot \frac{1}{\Gamma}
$$

This predicts:
- Microscopic systems ($\xi \gg \ell_0$): Long coherence times
- Macroscopic systems ($\xi \ll \ell_0$): Rapid decoherence
- Matches experimental observations

## Experimental Predictions

### Near-Term Tests

1. **Modified Interference Visibility:**
   $$
   V = V_0 \exp\left(-\left(\frac{\ell_0}{\xi}\right)^2 v_E\right)
   $$
   Testable in matter-wave interferometry with varying particle size.

2. **Scale-Dependent Decoherence:**
   $$
   \tau_D \propto \left(\frac{\xi}{\ell_0}\right)^2
   $$
   Measurable across different quantum platforms.

3. **Critical Behavior at Threshold:**
   Near $D = \sigma_{\text{critical}}$, expect:
   - Power-law correlations
   - Universal scaling exponents
   - Critical slowing down

### Parameter Extraction

From any quantum system, measure:
1. Coherence time $\tau_D$
2. System size/correlation length $\xi$
3. Environmental coupling $\Gamma$

This determines:
- $\sigma_{\text{critical}} = \tau_D \cdot \Gamma \cdot (\ell_0/\xi)^2$
- Fundamental scale $\ell_0$ (should be universal)

## Interpretation

### Information-Theoretic View
- Strain = cost of maintaining logical consistency
- Measurement = information processing limit reached
- Decoherence = information leakage to environment

### Thermodynamic Analogy
- $D(\psi)$ = logical free energy
- $\beta^{-1}$ = logical temperature  
- $\sigma_{\text{critical}}$ = phase transition point

### Geometric Picture
- Configuration space has natural metric from strain
- Evolution follows geodesics modified by strain gradient
- Measurement = discontinuous jump when geodesic hits boundary

## Resolution of Conceptual Issues

### Why Measurement Appears Random
Randomness is **epistemic**, not fundamental:
- Multiple outcomes minimize strain equally
- Selection follows Born weights (Proposition 4.1)
- Observer lacks complete logical specification

### Why Macroscopic Superpositions Are Rare
From our weight derivation:
- Large objects have $\xi \ll \ell_0$
- External strain $w_E v_E$ dominates
- Threshold crossed almost instantly

### Why Quantum Systems Preserve Coherence
For microscopic systems:
- $\xi \gg \ell_0$ gives $w_I \gg w_E$
- Internal consistency matters more than environment
- Can maintain superposition below threshold

## Summary

Logical strain bridges **possibility** (what can exist) and **actuality** (what does exist):

1. **Strain components** have clear logical meanings and dimensions
2. **Weights derived**, not postulated, from scale invariance
3. **Born rule** emerges from path counting (Proposition 4.1), not strain
4. **Measurement** triggered by strain threshold crossing
5. **Decoherence** rates predicted from fundamental parameters
6. **No free parameters** except empirical constants ($\sigma_{\text{critical}}$, $\ell_0$)

The next section uses coherence preservation to derive the specific form of quantum dynamics.