# Dynamics and Measurement

This section derives quantum dynamics from logical principles and explains measurement as a strain-threshold phenomenon. The Born rule emerges from logical constraints rather than being postulated.

## Dynamics from Action Minimization

### The Logical Action

For a trajectory through configuration space $\psi(t) \in \mathcal{A}$, define the logical action:

$$
S[\psi] = \int_0^T \left[ \langle\psi|\frac{\partial}{\partial t}|\psi\rangle - D(\psi(t)) \right] dt
$$

where:
- First term: kinetic-like contribution from configuration change
- $D(\psi)$: logical strain functional from Section 3

### Euler-Lagrange Equations

Minimizing $S[\psi]$ subject to normalization yields:

$$
i\hbar\frac{\partial}{\partial t}|\psi\rangle = \hat{H}|\psi\rangle
$$

where the Hamiltonian emerges as:

$$
\hat{H} = \hat{H}_0 + \hat{V}_{strain}
$$

- $\hat{H}_0$: kinetic term from logical graph connectivity
- $\hat{V}_{strain}$: potential from strain landscape

**Key point:** The Schrödinger equation is not postulated—it's the equation of motion for minimum logical action trajectories.

## The Born Rule Without Postulates

### Probability from Logical Consistency

Consider measuring observable $\hat{Q}$ with eigenspaces $\{P_k\}$ on state $|\psi\rangle$.

The probability $p_k$ of outcome $k$ must satisfy:

**L1 (Normalization):** $\sum_k p_k = 1$

**L2 (Logical Additivity):** For orthogonal decompositions,
$$p(A \lor B) = p(A) + p(B) \text{ when } A \land B = \emptyset$$

**L3 (Coherence Invariance):** Probabilities depend only on logical content:
$$p_k = f(|\langle P_k|\psi\rangle|)$$

**L4 (Composition):** For independent systems,
$$p_{ij} = p_i \cdot p_j$$

### The Unique Solution

**Theorem (Gleason-type):** The only function satisfying L1-L4 is:

$$
p_k = |\langle P_k|\psi\rangle|^2 = |c_k|^2
$$

*Proof sketch:*
- L3 implies $p_k = f(|c_k|)$ for some function $f$
- L2 forces $f$ to be homogeneous of degree $n$
- L4 requires $f(xy) = f(x)f(y)$, giving $f(x) = x^n$
- L1 with orthogonal states forces $n = 2$

Therefore: **The Born rule is the unique probability measure consistent with logical requirements.**

## Measurement as Strain Resolution

### The Coherence Capacity

Every physical system has a **coherence capacity** $\sigma_{critical}$ representing the maximum logical strain it can sustain while maintaining superposition.

When strain exceeds this threshold:
$$
\mathbb{E}[D(\psi)] > \sigma_{critical}
$$
the system must resolve to a lower-strain configuration.

### Measurement Process

1. **Pre-measurement:** System in superposition $|\psi\rangle = \sum_k c_k |k\rangle$

2. **Interaction:** Coupling to apparatus creates composite state with strain:
   $$D_{total} = D_{system} + D_{apparatus} + D_{interaction}$$

3. **Threshold crossing:** When $D_{total} > \sigma_{critical}$:
   - System forced to project onto eigenspace
   - Probability of each outcome given by Born rule
   - Post-measurement strain drops below threshold

4. **Post-measurement:** Definite outcome state with $D < \sigma_{critical}$

### Why Measurement Appears Random

The apparent randomness arises from:
- **Logical underdetermination:** Multiple outcomes consistent with constraints
- **Strain minimization:** System selects outcome probabilistically per Born weights
- **Information incompleteness:** Observer lacks complete logical specification

The randomness is **epistemic**, not fundamental—it reflects logical indeterminacy, not ontological indeterminism.

## Decoherence and the Classical Limit

### Environmental Coupling

Interaction with environment adds external strain:
$$
v_E = \sum_{k \in environment} J_k |\langle k|\psi\rangle|^2
$$

This drives decoherence on timescale:
$$
\tau_D = \frac{\hbar}{\langle v_E \rangle}
$$

### Emergence of Classical Behavior

Classical behavior emerges when:
1. Environmental strain dominates: $v_E \gg v_I, v_N$
2. Coherence capacity saturated: $D \approx \sigma_{critical}$
3. Superpositions rapidly decay: $\tau_D \to 0$

The classical world is the high-strain, low-coherence limit of the logical framework.

## Quantum Zeno Effect

Frequent measurements keep strain below threshold:
- Each measurement resets strain
- System cannot accumulate enough strain to evolve
- Evolution effectively frozen

This provides a strain-based explanation for the Zeno effect without invoking consciousness or observation.

## EPR and Non-locality

### Entangled States

For entangled state $|\psi\rangle_{AB} = \frac{1}{\sqrt{2}}(|00\rangle + |11\rangle)$:

- Global configuration has single logical constraint
- Local measurements must respect global consistency
- Correlation emerges from shared logical structure

### No Spooky Action

The correlations are not due to:
- Faster-than-light signaling
- Hidden variables
- Retrocausation

Instead: both outcomes determined by the same global logical constraint established at entanglement creation.

## Predictions Beyond Standard QM

### Strain-Modified Transition Rates

Transition probability with strain correction:
$$
P_{i \to f} = P_{QM} \cdot \exp\left(-\beta \Delta D_{if}\right)
$$

### Measurement Back-action

Post-measurement strain increase:
$$
\Delta D = w_N \ln\left(\frac{1}{|c_k|^2}\right)
$$

### Coherence Recovery Time

After measurement, coherence rebuilds as:
$$
D(t) = D_{post} \cdot \exp\left(-\frac{t}{\tau_{recovery}}\right)
$$

## Summary

This section established:
1. **Dynamics** emerge from logical action minimization
2. **Born rule** is the unique measure satisfying logical constraints
3. **Measurement** occurs at strain thresholds, not by mysterious collapse
4. **Decoherence** results from environmental strain coupling
5. **Classical limit** is the high-strain regime

All quantum phenomena—measurement, decoherence, entanglement—arise from logical structure and strain dynamics, not from additional postulates.