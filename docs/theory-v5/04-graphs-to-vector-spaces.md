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

**R2 (Distinguishability):** Distinct logical content must be distinguishable. We define a **combinatorial pairing** on equivalence classes:
$$
\delta([G], [H]) := \begin{cases}
1 & \text{if } [G] = [H] \\
0 & \text{if } [G] \neq [H]
\end{cases}
$$

**Critical Note:** This pairing is **purely combinatorial**—it encodes logical distinguishability, not probability. It simply states that distinct logical configurations are orthogonal. No Born rule or probabilistic interpretation is assumed here. The probability measure will emerge later from independent logical requirements.

When extended bilinearly to superpositions and combined with the complex structure (derived below), this becomes the formal inner product $\langle \cdot | \cdot \rangle$.

**R3 (Coherence Preservation):** Logical relationships between configurations are preserved under valid transformations.

### The Vector Space

With these axioms:

1. **Basis vectors:** $\{|[G]\rangle : [G] \in \mathcal{A}/\sim\}$
2. **Linear combinations:** $|\psi\rangle = \sum_i c_i |[G_i]\rangle$ (finite sums initially)
3. **Formal inner product:** Extended bilinearly from the combinatorial pairing

This gives us the free vector space $\mathcal{V}$ over field $\mathbb{F}$ (to be determined).

## Why Complex Numbers?

### Additional Minimal Assumptions

To determine the scalar field, we need:

**A1 (Separability):** The set of logical-equivalence classes $\mathcal{A}/\sim$ is countable.

**A3 (Symmetry Action):** Admissibility-preserving automorphisms act strongly continuously and preserve overlaps up to a unit-modulus scalar.

**A7 (Independent Composition):** Scalars commute with local operators on disjoint subsystems.

**C1 (Orientation Sensitivity):** Clockwise vs. counterclockwise directed inference cycles are logically distinct.

**C2 (Connected Change):** Deformations of a cycle act as strongly continuous one-parameter subgroups.

### The Orientation-Composition Theorem

**Theorem (Field Minimality):** Under assumptions A1-A3, A7, C1-C2, the scalar field for the Hilbert space of logical states must be $\mathbb{C}$.

### Part I: Real Scalars Are Insufficient

Consider directed logical inference cycles (e.g., $P \to Q \to R \to P$). By C1, clockwise vs. counterclockwise cycles are logically distinct. By C2 and A3, there exists a strongly continuous rotation group $\{R_\theta\}$ acting on the span $V$ of these orientation types.

**Standard result from representation theory:** Any continuous orthogonal representation of $S^1$ on a real inner-product space decomposes into 2D rotation blocks:

$$
R_\theta\big|_{V_k} = \begin{pmatrix}
\cos(n_k\theta) & -\sin(n_k\theta) \\
\sin(n_k\theta) & \cos(n_k\theta)
\end{pmatrix}
\quad (n_k \in \mathbb{N})
$$

Such real rotations have no real eigenvectors for generic $\theta$. To represent the two orientation types as **stable, distinct eigenstates** under continuous action (the content of C1), we need complex eigenvectors.

The generator $K = \frac{d}{d\theta}\big|_{\theta=0} R_\theta$ satisfies:

$$
K = \begin{pmatrix} 0 & -n \\ n & 0 \end{pmatrix}, \quad K^2 = -n^2 I
$$

Defining $J = \frac{1}{n}K$ gives $J^2 = -I$, a complex structure on $V$ compatible with the inner product. Therefore $\mathbb{R}$ is insufficient; complex structure is logically necessary.

### Part II: Quaternions Violate Composition

In quaternionic Hilbert spaces, scalar multiplication is non-commutative. For independent systems $A, B$ and $q \in \mathbb{H} \setminus \mathbb{R}$, axiom A7 requires:

$$
(qX) \otimes Y = X \otimes (Yq)
$$

for all operators $X$ on $A$, $Y$ on $B$. But the left side multiplies by $q$ on $A$ while the right side multiplies by $q$ on $B$. Equality for all $X, Y$ forces $q$ to lie in the center of $\mathbb{H}$, i.e., $q \in \mathbb{R}$. Therefore non-real quaternions violate A7.

### Conclusion

By the division algebra classification $\{\mathbb{R}, \mathbb{C}, \mathbb{H}\}$:
- $\mathbb{R}$ fails: cannot represent orientation eigenstates
- $\mathbb{H}$ fails: violates independent composition (A7)
- **$\mathbb{C}$ is the unique solution**

### Physical Interpretation

The imaginary unit $i$ emerges as the generator of logical orientation transformations:
- For rotation generator $K = \dot{R}_0$ on a block, the complex structure $J = K/n$ satisfies $J^2 = -I$
- Over $\mathbb{C}$, orientation eigenstates $|G_\pm\rangle$ satisfy:
  $$R_\theta |G_\pm\rangle = e^{\pm in\theta} |G_\pm\rangle$$
- Quantum phase $e^{i\theta}$ directly encodes the orientation angle of directed logical inference paths

This is not a mathematical convenience but a logical necessity—the only way to represent oriented logical structures under continuous transformations.

### Exclusion of Alternatives

- **Real 2×2 matrices:** While SO(2) can represent rotations, it cannot provide the eigenspace structure needed for orientation states
- **Split-complex numbers:** Lack the norm structure required for probability conservation
- **Dual numbers:** Nilpotent elements violate the division algebra requirement
- **Finite fields:** Lack the continuity structure required by C2

## Hilbert Space Completion

With $\mathbb{F} = \mathbb{C}$ established, we complete the construction:

1. **Pre-Hilbert space:** $\mathcal{V} = \text{span}_\mathbb{C}\{|[G]\rangle : [G] \in \mathcal{A}/\sim\}$ with the formal inner product derived from the combinatorial pairing
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
- **Inner product:** Encodes logical distinguishability (not probability)

This matches the standard QM framework while providing logical grounding.

## Forward Connection: From Complex Structure to Born Rule

With $\mathbb{C}$ rigorously established from pure logical requirements, we can now derive the probability measure without circularity:

### The Path-Counting Bridge

The complex structure enables a natural path-counting measure:

1. **Complex phases encode path orientations:** Each directed logical path through inference space acquires phase $e^{i\theta}$ based on its orientation (clockwise/counterclockwise from C1)

2. **Path amplitude summation:** When multiple paths lead to the same configuration $[G]$, their complex amplitudes must sum:
   $$c_G = \sum_{\text{paths to } G} A_{\text{path}} \cdot e^{i\theta_{\text{path}}}$$
   where $A_{\text{path}}$ is the logical weight of each path

3. **Interference from indistinguishability:** Paths that cannot be logically distinguished must interfere:
   - Same orientation → constructive interference (phases align)
   - Opposite orientation → destructive interference (phases cancel)

4. **Probability from self-consistency:** The only measure preserving:
   - **Positivity:** $P(G) \geq 0$ for all configurations
   - **Path interference:** Amplitude addition with complex phases
   - **Normalization:** $\sum_G P(G) = 1$
   - **Composition:** $P(G_1 \times G_2) = P(G_1) \cdot P(G_2)$ for independent systems

$$\boxed{
\begin{align}
\textbf{Proposition 4.1 (Born Rule Uniqueness):} \\
\text{Let } \mathcal{P}: \mathcal{H} \to [0,1] \text{ be a probability measure on complex} \\
\text{superpositions } |\psi\rangle = \sum_G c_G|G\rangle \text{ satisfying:} \\
\\
\text{(i) Positivity: } \mathcal{P}(G|\psi) \geq 0 \text{ for all } G, \psi \\
\text{(ii) Interference: } c_G = \sum_{\text{paths}} A_p e^{i\theta_p} \text{ with amplitude addition} \\
\text{(iii) Normalization: } \sum_G \mathcal{P}(G|\psi) = 1 \\
\text{(iv) Factorization: } \mathcal{P}(G_1 \times G_2|\psi_1 \otimes \psi_2) = \mathcal{P}(G_1|\psi_1) \cdot \mathcal{P}(G_2|\psi_2) \\
\\
\text{Then } \mathcal{P}(G|\psi) = |c_G|^2 \text{ is the unique solution.} \\
\\
\text{Proof sketch: (ii) forces } \mathcal{P} \text{ to depend on } |c_G|^n \text{ for some } n. \\
\text{(iv) requires } \mathcal{P}(c_1 c_2) = \mathcal{P}(c_1)\mathcal{P}(c_2), \text{ giving } n = 2. \\
\text{(i) and (iii) fix the normalization. Full proof in Section 6.} \quad \square
\end{align}
}$$

**Key insight:** The Born rule emerges from counting logical paths with complex weights, not from assuming quantum mechanics. The $|c|^2$ structure is forced by:
- Complex phases from orientation (derived above from C1-C2)
- Positivity of probability (logical requirement)
- Interference of indistinguishable paths (coherence preservation)
- Independent system composition (A7)

### No Circular Reasoning

Notice the careful separation:
1. **This section:** Derives $\mathbb{C}$ from orientation and composition requirements alone
2. **Combinatorial pairing:** Defines distinguishability without invoking probability
3. **Section 6:** Uses the complex structure to derive Born rule from path counting (Proposition 4.1)
4. **No quantum postulates:** Everything emerges from logical requirements

This completes the chain: 
$$\text{Logic} \to \text{Graphs} \to \text{Complex numbers} \to \text{Path interference} \to \text{Born rule}$$
with no circular assumptions.

## Key Results

1. **Superposition is forced** by the need to represent incomplete information
2. **Linearity is required** for coherence preservation
3. **Complex structure emerges** from orientation and continuity—rigorously proven, not postulated
4. **Born rule is predetermined** by the complex structure and path counting (Proposition 4.1)
5. **Hilbert space completion** follows from convergence requirements

## What Remains

We have established:
- The kinematic structure (complex Hilbert space)
- Why complex numbers are necessary
- How probabilities will emerge (path counting with uniqueness proof)

Still to derive in subsequent sections:
- Dynamics (unitary evolution from coherence preservation)
- Measurement (collapse as strain threshold)
- Specific Hamiltonians (from logical graph connectivity)

## Summary

The vector space structure of quantum mechanics is not a postulate but a logical necessity:
- Representing logical incompleteness requires superposition
- Preserving coherence requires linearity
- Encoding orientation requires complex structure (proven via C1-C2)
- Maintaining composition independence excludes quaternions (proven via A7)
- Path counting with complex amplitudes uniquely yields Born rule (Proposition 4.1)

The complex Hilbert space $\mathcal{H} = \ell^2(\mathcal{A}/\sim, \mathbb{C})$ is the **unique** mathematical structure satisfying these logical requirements. The imaginary unit $i$ is not mysterious—it is the generator of logical orientation, emerging necessarily from the structure of directed inference cycles. The Born rule is not postulated—it emerges uniquely from counting paths through logical configuration space with the complex phases that orientation requires.