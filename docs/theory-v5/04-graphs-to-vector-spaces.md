# From Graphs to Vector Spaces

This section bridges discrete graph structures to the continuous vector spaces of quantum mechanics. We show that coherence preservation and composition requirements force a linear structure on the space of admissible configurations.

## The Composition Problem

Given admissible graphs $G_1, G_2 \in \mathcal{A}$, we need to:
1. Combine them into composite descriptions
2. Transform them while preserving admissibility
3. Maintain logical relationships under these operations

The naive approach—working directly with individual graphs—fails because:
- Graphs are discrete; physical transformations appear continuous
- No natural way to "interpolate" between graphs while maintaining admissibility
- Composition of constraints can create new admissible states not present in either component

## Superposition as Logical Necessity

### The Incompleteness Principle

Consider a proposition $P$ that is:
- Neither provable nor disprovable from current constraints
- Logically independent of the existing structure
- Potentially resolvable through additional information

The configuration must encode this incompleteness. A single graph $G$ forces either $P$ or $\neg P$ to be present (by Excluded Middle), artificially resolving the indeterminacy.

### Weighted Combinations

To represent genuine logical indeterminacy, we need **weighted combinations** of graphs:

$$
\psi = \sum_{i} c_i [G_i]
$$

where:
- $[G_i]$ are equivalence classes of admissible graphs
- $c_i$ are weights encoding relative consistency with available constraints
- The sum represents logical "or" at the structural level

This is not a choice—it's forced by the need to represent incomplete information faithfully.

## Emergence of Linear Structure

### Representation Axioms

To make progress, we introduce minimal representation requirements:

**R1 (Closure):** Logical combinations of admissible configurations remain admissible.

**R2 (Distinguishability):** Distinct logical content must be distinguishable. We define a **formal inner product** on the basis of equivalence classes:
$$
\langle [G] | [H] \rangle := \begin{cases}
1 & \text{if } [G] = [H] \\
0 & \text{if } [G] \neq [H]
\end{cases}
$$
This is initially just a formal pairing on basis elements, extended bilinearly to finite combinations. The completion to a full Hilbert space comes later.

**R3 (Coherence Preservation):** Logical relationships between configurations are preserved under valid transformations.

### The Vector Space

With these axioms:

1. **Basis vectors:** $\{|[G]\rangle : [G] \in \mathcal{A}/\sim\}$
2. **Linear combinations:** $|\psi\rangle = \sum_i c_i |[G_i]\rangle$ (finite sums initially)
3. **Formal inner product:** Extended bilinearly from R2

This gives us the free vector space $\mathcal{V}$ over field $\mathbb{F}$ (to be determined).

## Why Complex Numbers?

### Orientation and Phase

Consider directed cycles in logical inference:
- $P \to Q \to R \to P$ (clockwise)
- $P \to R \to Q \to P$ (counterclockwise)

These are logically distinct but related by orientation reversal.

### Continuous Symmetry Requirements

**C1 (Orientation Sensitivity):** The representation must distinguish oriented logical cycles.

**C2 (Continuity):** Small changes in logical structure produce small changes in representation.

Together, these force:
1. A one-parameter continuous group action on cycle spaces
2. Eigenspaces with opposite orientations
3. Eigenvalues of the form $e^{\pm i\theta}$

This requires complex structure: $\mathbb{F} = \mathbb{C}$.

### Exclusion of Alternatives

- **Real numbers:** Cannot support continuous orientation eigenspaces (only 2D rotation blocks)
- **Quaternions:** Non-commutativity violates independent system composition (see derivation D02)
- **Finite fields:** Lack required continuity structure

## Hilbert Space Completion

With $\mathbb{F} = \mathbb{C}$ established, we complete the construction:

1. **Pre-Hilbert space:** $\mathcal{V} = \text{span}_\mathbb{C}\{|[G]\rangle : [G] \in \mathcal{A}/\sim\}$ with the formal inner product
2. **Cauchy completion:** Include all limit points of Cauchy sequences
3. **Result:** $\mathcal{H} = \ell^2(\mathcal{A}/\sim, \mathbb{C})$

The completed space allows infinite superpositions and continuous transformations while preserving the logical foundation.

## Physical Interpretation

The vector space structure is not imposed—it emerges from:
1. The need to represent logical incompleteness (superposition)
2. Coherence preservation under transformations (linearity)
3. Orientation structure of logical inference (complex phases)

Quantum mechanics' mathematical structure is thus a **logical necessity**, not a mysterious choice of Nature.

## Connection to Standard QM

Our construction yields:
- **State space:** Complex Hilbert space $\mathcal{H}$
- **Basis states:** Correspond to definite logical configurations
- **Superpositions:** Represent logical indeterminacy
- **Inner product:** Encodes logical distinguishability

This matches the standard QM framework while providing logical grounding.

## Key Results

1. **Superposition is forced** by the need to represent incomplete information
2. **Linearity is required** for coherence preservation
3. **Complex structure emerges** from orientation and continuity
4. **Hilbert space completion** follows from convergence requirements

## What Remains

We have the kinematic structure (state space) but not yet:
- Dynamics (how states evolve)
- Probabilities (Born rule)
- Measurement (collapse mechanism)

These emerge from additional constraints explored in subsequent sections.

## Summary

The vector space structure of quantum mechanics is not a postulate but a consequence of:
- Representing logical incompleteness faithfully
- Preserving coherence under transformations  
- Encoding orientation in logical inference
- Maintaining continuity of representation

The complex Hilbert space $\mathcal{H} = \ell^2(\mathcal{A}/\sim, \mathbb{C})$ is the unique solution satisfying these requirements.