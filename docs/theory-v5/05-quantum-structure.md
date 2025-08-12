# Quantum Structure

Having established the complex Hilbert space $\mathcal{H} = \ell^2(\mathcal{A}/\sim, \mathbb{C})$ from logical requirements, we now derive the operator formalism and algebraic structure of quantum mechanics.

## Foundation: The Logical Inner Product

**Critical reminder:** The inner product we use throughout this section is **not** imported from quantum mechanics. It was derived in Section 4 from logical distinguishability:

$$
\langle [G] | [H] \rangle = \begin{cases}
1 & \text{if } [G] = [H] \\
0 & \text{if } [G] \neq [H]
\end{cases}
$$

This encodes the fundamental principle that distinct logical content must be distinguishable. All operator properties and algebraic relations that follow inherit this logical foundation—they are not quantum postulates.

## Observables as Logical Queries

### From Questions to Operators

A logical query about an admissible configuration can be formalized as:
- **Yes/No questions:** "Does property $P$ hold?"
- **Valued questions:** "What is the value of quantity $Q$?"

These queries must:
1. Respect the logical structure of $\mathcal{A}$
2. Preserve coherence when applied to superpositions
3. Yield definite answers for basis states

### Projection Operators

For a yes/no query about property $P$:

$$
\hat{P} = \sum_{[G] \models P} |[G]\rangle\langle[G]|
$$

where $[G] \models P$ means configuration $[G]$ satisfies property $P$.

Properties:
- **Idempotent:** $\hat{P}^2 = \hat{P}$ (asking twice doesn't change the answer)
- **Self-adjoint:** $\hat{P}^\dagger = \hat{P}$ (logical queries are real-valued, using our logical inner product)
- **Eigenvalues:** 0 (property absent) or 1 (property present)

### General Observables

Valued quantities emerge as weighted sums of projections:

$$
\hat{Q} = \sum_q q \hat{P}_q
$$

where $\hat{P}_q$ projects onto configurations with value $q$ for quantity $Q$.

**Key insight:** Every observable corresponds to a partition of $\mathcal{A}/\sim$ into equivalence classes based on the query's answer.

## Algebraic Structure

### Commutation Relations

Two queries $\hat{P}$ and $\hat{Q}$ **commute** iff they partition $\mathcal{A}/\sim$ compatibly:

$$
[\hat{P}, \hat{Q}] = 0 \iff \text{queries are simultaneously answerable}
$$

Non-commuting observables arise when:
- The logical structure prevents simultaneous determination
- Answering one query necessarily disturbs the other
- The partitions of $\mathcal{A}/\sim$ are incompatible

### The Uncertainty Principle

For non-commuting observables $\hat{A}$, $\hat{B}$ with $[\hat{A}, \hat{B}] = i\hat{C}$:

The logical incompatibility manifests as uncertainty:
$$
\Delta A \cdot \Delta B \geq \frac{1}{2}|\langle\hat{C}\rangle|
$$

This is not a measurement limitation but a **logical necessity**—the structure of $\mathcal{A}$ prevents simultaneous sharp values.

## Dynamics from Coherence Preservation

### The Coherence Requirement

Time evolution must:
1. Preserve admissibility: $\mathcal{A} \to \mathcal{A}$
2. Maintain logical relationships (our distinguishability inner product)
3. Act continuously (small time → small change)

### Unitary Evolution

**Theorem:** Any continuous transformation preserving the logical inner product structure on $\mathcal{H}$ must be unitary.

*Proof sketch:*
- Inner product preservation → norm preservation (from logical distinguishability)
- Continuity → one-parameter group
- Wigner's theorem → unitary or antiunitary
- Continuity at identity → unitary

Therefore: $\hat{U}(t) = e^{-i\hat{H}t/\hbar}$ for some self-adjoint $\hat{H}$.

### The Hamiltonian

The generator $\hat{H}$ (Hamiltonian) encodes:
- Logical dynamics inherent to $\mathcal{A}$
- Coupling between different configurations
- Energy scale set by strain gradients

The Schrödinger equation emerges:
$$
i\hbar\frac{\partial}{\partial t}|\psi\rangle = \hat{H}|\psi\rangle
$$

## Composite Systems

### Tensor Product Structure

For independent logical systems $\mathcal{A}_1$, $\mathcal{A}_2$:

$$
\mathcal{A}_{12} = \mathcal{A}_1 \times \mathcal{A}_2
$$

The corresponding Hilbert spaces compose as:

$$
\mathcal{H}_{12} = \mathcal{H}_1 \otimes \mathcal{H}_2
$$

The tensor product inner product preserves logical distinguishability:
$$
\langle [G_1][G_2] | [H_1][H_2] \rangle = \langle [G_1]|[H_1]\rangle \cdot \langle [G_2]|[H_2]\rangle
$$

This tensor product structure is **forced** by:
- Logical independence of subsystems
- Preservation of local admissibility
- Requirement for subsystem queries

### Entanglement

Entangled states arise when the composite configuration cannot be factored:

$$
|\psi\rangle_{12} \neq |\phi\rangle_1 \otimes |\chi\rangle_2
$$

Logically: the composite system has global constraints not reducible to local ones.

## Symmetries and Conservation

### Noether's Theorem (Logical Version)

For any continuous symmetry of the logical structure:
1. There exists a unitary representation $\hat{U}(\theta)$
2. The generator $\hat{G}$ satisfies $[\hat{H}, \hat{G}] = 0$
3. $\langle\hat{G}\rangle$ is conserved

Examples:
- **Phase symmetry** → Number conservation
- **Rotation symmetry** → Angular momentum conservation
- **Translation symmetry** → Momentum conservation

## Connection to Standard Formalism

Our derivation yields:
- **Observables:** Self-adjoint operators partitioning $\mathcal{A}/\sim$
- **States:** Rays in $\mathcal{H}$
- **Evolution:** Unitary groups preserving logical distinguishability
- **Measurements:** Projections onto eigenspaces
- **Uncertainty:** From non-commuting partitions

This recovers the complete quantum formalism without postulating it.

## What's Different

Unlike standard QM, we have:
1. **Logical grounding** for the inner product (distinguishability, not postulate)
2. **Explanation** for operators (queries on $\mathcal{A}$)
3. **Derivation** of non-commutativity (incompatible partitions)
4. **Origin** of unitarity (preserving logical relationships)
5. **Source** of uncertainty (logical incompatibility)

## Summary

The quantum formalism emerges necessarily from:
- The logical inner product encoding distinguishability
- Queries on admissible configurations
- Coherence preservation requirements
- Symmetries of the logical structure

The operator algebra, commutation relations, and uncertainty principles are not mysterious features of the quantum world—they are mathematical consequences of representing and transforming logically admissible information with preserved distinguishability.