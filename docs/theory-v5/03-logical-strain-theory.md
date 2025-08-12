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

where:

### Internal Contradiction Strain ($v_I$)

Measures proximity to logical contradiction *within* $\mathcal{A}$. Even admissible configurations can skirt the edge of inconsistency.

- In the graph model, $v_I(G)$ is computed from **weighted shortest path lengths** from any vertex $v$ to its negation $\tau(v)$.
- Longer paths imply greater separation from contradiction (lower strain); shorter paths imply greater risk of collapse under additional constraints.
- This definition uses only the graph-theoretic admissibility structure, avoiding any Hilbert-space assumption.

### Non-classicality Strain ($v_N$)

Quantifies informational indeterminacy without invoking post-quantum constructs.

- Defined as **Shannon entropy** in the logical/graph basis:
  $$
  v_N(\psi) = -\sum_i |c_i|^2 \ln |c_i|^2
  $$
  where $\{c_i\}$ are coefficients in an admissible graph decomposition.
- This replaces von Neumann entropy with a basis-level entropy to avoid circularity.
- Zero for classical (single-graph) states; positive for superpositions.

### External Misfit Strain ($v_E$)

Captures incompatibility with boundary conditions or environmental contexts.

- Examples: misalignment with apparatus eigenstates, violation of selection rules, environmental coupling.
- Defined to be **zero for perfectly isolated systems**, so it only enters when the configuration is embedded in a larger context.

## Realization Probability

The probability of realizing configuration $\psi$ follows:

$$
P(\psi) = \frac{1}{Z} \exp(-\beta D(\psi))
$$

where:
- $\beta$ is a *logical inverse temperature* parameter
- $Z = \sum_{\psi \in \mathcal{A}} \exp(-\beta D(\psi))$ normalizes the distribution

### Properties

1. **All admissible states are possible** — $P(\psi) > 0$ if $\psi \in \mathcal{A}$  
2. **Lower strain $\Rightarrow$ higher probability**  
3. **Selectivity tunable via $\beta$** — high $\beta$ favors minimal-strain configurations; low $\beta$ approaches uniform weighting.

## Connection to Quantum Mechanics

### Born Rule Emergence

For a superposition $|\psi\rangle = \sum_i c_i |i\rangle$, define **projection strain** $D(\psi \to k)$ for outcome $|k\rangle$. The strain-based probability:

$$
P(k|\psi) \propto \exp\big(-\beta\, D(\psi \to k)\big)
$$

Under limits where:
- Projection strain scales quadratically with coefficients, and
- $\beta$ is set by the system's coherence bandwidth,

one obtains (see derivation D04):

$$
P(k|\psi) = |c_k|^2
$$

This is the Born rule, recovered without assuming it.

### Measurement as Strain Threshold

A measurement occurs when expected strain exceeds the system's **critical coherence capacity** $\sigma_{\text{critical}}$:

$$
\mathbb{E}[D(\psi)] > \sigma_{\text{critical}} \quad\Rightarrow\quad \text{measurement event}.
$$

This yields collapse as a logical necessity when coherence can no longer be maintained.

## Interpretations

- **Information-theoretic:** Strain = cost of maintaining consistency  
- **Thermodynamic:** Strain = logical free energy  
- **Geometric:** Strain = distance to the nearest classical (zero-entropy) configuration

## Predictions

1. **Interference Visibility Reduction:**
   $$
   V = V_0 \exp(-\beta v_E)
   $$
2. **Strain-dependent Decoherence Time:**
   $$
   \tau_D = \tau_0 \left(1 + \frac{v_E}{\sigma_{\text{critical}}}\right)^{-1}
   $$
3. **Measurement Back-action:**
   $$
   \Delta D = w_N \ln N
   $$
   where $N$ is the measured subspace dimension.

## Open Questions

- Can $w_I, w_N, w_E$ be derived from deeper logical or symmetry principles?  
- Is $\sigma_{\text{critical}}$ universal or context-dependent?  
- How does strain interact with relativistic constraints?

## Summary

Logical strain bridges **possibility** and **realization**. It:
- Is derived from logical structure alone
- Recovers quantum probabilities in limit cases
- Makes falsifiable predictions
- Explains measurement without altering unitary dynamics

The next section uses this strain formalism and coherence preservation to motivate the emergence of complex vector spaces.
