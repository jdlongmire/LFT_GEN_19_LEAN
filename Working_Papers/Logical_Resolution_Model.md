# The Logical Resolution Model: An Ontic-Logical Framework for Quantum Measurement

**James D. Longmire**  
*Independent Researcher*  

---

## Abstract

The *Logical Resolution Model* (LRM) reframes quantum measurement by treating the **Three Fundamental Laws of Logic** (3FLL) as ontic constraints on the admissible states of physical systems. In LRM, a quantum system's possible states are fixed at preparation — typically via manipulation of a quantum field with emitters — and bounded by intrinsic physical constraints that exclude logically inconsistent configurations. The quantum state is interpreted as a **resolution-dependent description** of a fixed ontic reality, not the reality itself. What standard quantum mechanics calls *wavefunction collapse* is replaced by a continuous **resolution process**, which progressively eliminates inadmissible possibilities until the description matches the system's actual state. A field-theoretic Lagrangian formulation is provided to demonstrate how resolution can emerge from physical interactions. The model is empirically equivalent to standard quantum mechanics but offers greater parsimony through its **observer-independent ontology**, removing the need for measurement postulates, pilot waves, or parallel worlds, while providing a principled integration of logic into physics.

---

## 1. Introduction

The measurement problem remains one of the most persistent conceptual challenges in quantum mechanics [1,2]. The Copenhagen interpretation posits a discontinuous "collapse" of the wavefunction upon observation, introducing a dualism between unitary evolution and measurement [3]. Other interpretations — Bohmian mechanics [4], Many-Worlds [5] — preserve determinacy but introduce additional ontological structures.

### 1.1 Non-Technical Summary

The Logical Resolution Model (LRM) offers a new way to understand quantum measurement based on a simple principle: physical reality always obeys the basic laws of logic. Just as a coin flip must result in either heads or tails (never both or neither), physical systems must have definite properties — we just may not know them until we look carefully enough.

In this view:
- Quantum "superposition" describes our incomplete knowledge, not reality itself
- Measurement doesn't change reality; it improves our knowledge through physical interaction
- The famous "collapse" is just the endpoint of gradually learning what was always true

This approach requires no extra worlds, hidden particles, or observer-dependent reality — just the recognition that logic constrains what can physically exist.

### 1.2 Technical Overview

The Logical Resolution Model (LRM) formalizes these ideas through three key principles:

1. The **Three Fundamental Laws of Logic** are *ontic* features of reality, constraining physical states at all times.
2. The **quantum state** is a description of our knowledge at a given resolution, not a direct representation of the system's ontic state [6].
3. **Collapse** is reinterpreted as the end-point of a continuous, physical resolution process.

---

## 2. Core Ontic Axiom

> **Core Ontic Axiom:** No manifestation of physical reality violates the Three Fundamental Laws of Logic (3FLL).  
> **Formally:** For all physically real systems $S$, and for all well-defined properties $P$ of $S$:
> 1. **Identity:** $S$ is exactly one ontic state $s_{\text{ontic}}$ with respect to $P$.
> 2. **Non-Contradiction:** $S$ does not instantiate mutually exclusive states for $P$ simultaneously.
> 3. **Excluded Middle:** $S$ has exactly one admissible value of $P$ — never an in-between outside the admissible set.

**Interpretive consequence:** Quantum mechanics describes how our *resolution* of $s_{\text{ontic}}$ changes with interaction; it does not describe a reality that is ontically indefinite.

### 2.1 Empirical Justification

The claim that the 3FLL are ontic is grounded in observation: in the entire history of experimental physics, no measurement outcome has ever violated them. Every measurement yields: (1) exactly one state (Identity), (2) no contradictory properties (Non-Contradiction), and (3) one definite value from the admissible set (Excluded Middle) [7]. This exceptionless empirical validity parallels the justification for other fundamental principles, such as conservation laws [8] or Lorentz invariance [9]. 

### 2.2 Addressing Apparent Violations

Critics might point to quantum phenomena that seem to violate classical logic:

**Quantum Contextuality (Kochen-Specker)** [42]: The theorem shows that measurement outcomes can depend on the measurement context. In LRM, this reflects how different measurement contexts define different predisposition sets $\mathcal{P}$, not a violation of logic in the ontic state itself.

**Entanglement and Non-locality** [43]: Bell violations show correlations incompatible with local hidden variables. LRM accepts these correlations as properties of the joint ontic state without violating the 3FLL — the system has definite properties that respect logical constraints while exhibiting non-local correlations.

**Quantum Logic Proposals** [44]: Some argue quantum mechanics requires non-classical logic. LRM maintains that while our *descriptions* may use non-Boolean algebras, the *ontic reality* always satisfies classical logic. Apparent violations occur only in incomplete descriptions, never in actual measurement outcomes [10,11].

Thus, the burden of proof rests with critics to produce even one empirical counterexample where a measurement outcome itself violates these logical laws.

---

## 3. Formal Structure of Predisposition and Resolution

### 3.1 From Logic to Physics

The 3FLL constrain physical states as follows:
- **Identity** → Each system has exactly one ontic state
- **Non-Contradiction** → Mutually exclusive properties cannot coexist  
- **Excluded Middle** → Every well-defined property has a definite value

These constraints define the **predisposition set** $\mathcal{P}$: the subset of Hilbert space containing only logically admissible states given the preparation conditions.

*Notation:* $\mathcal{P}$ denotes the **predisposition set**, while $P(\cdot)$ denotes probability. The two are unrelated; the former is a subset of Hilbert space, the latter a numerical measure.

### 3.2 Mathematical Framework

Let $\mathcal{H}$ be the system's Hilbert space.

- **Predisposition set:** A measurable subset $\mathcal{P} \subset \mathcal{H}$ fixed at preparation, determined by:
  - Field mode structure and emitter configuration [12]
  - Environmental constraints and conservation laws [13,14]
- **Topology:** Inherited from $\mathcal{H}$'s norm topology.
- **Measure:** Born measure restricted to $\mathcal{P}$ [15]:  
  $$\mu(A) = \langle \psi | \Pi_A | \psi \rangle, \quad A \subset \mathcal{P}$$
- **Symmetry:** $\mathcal{P} \mapsto U(g)\mathcal{P}$ for $g \in G$, where $G$ is the relevant symmetry group [16].

**Resolution** is a one-parameter semigroup of maps [17]:  
$$R_t : \mathcal{P} \to \mathcal{P}, \quad R_0 = \mathrm{id}, \quad \lim_{t \to T} R_t = \{ s_{\text{ontic}} \}$$

Physically, $t$ is interaction time; resolution progressively eliminates states in $\mathcal{P}$ inconsistent with observed interactions.

**Convergence:** In physical realizations, $R_t$ is generated by a completely positive, trace-preserving semigroup with a unique stationary state in the $\hat{O}$-diagonal subspace [18]. This uniqueness follows when the interaction Hamiltonian couples all off-diagonal sectors to the resolution field with nonzero rate. Cyclic or multi-fixed-point behavior would require finely tuned degeneracies, which are unstable to generic apparatus or environmental perturbations [19].

### 3.3 Resolution vs. Decoherence

While related, resolution and decoherence are distinct:

**Decoherence** [32,33]: Loss of quantum coherence due to environmental entanglement, selecting a preferred basis but leaving diagonal mixtures.

**Resolution**: Physical process that identifies which diagonal element represents the actual ontic state, completing what decoherence begins.

In practice: Decoherence → diagonal mixture; Resolution → single outcome.

---

## 4. Preparation via Quantum Fields

In QFT, particles are excitations of underlying fields [20,21]. **Emitters** — lasers [22], electron guns [23], spin filters [24] — manipulate the field to produce excitations constrained in momentum, spin, polarization, and other observables. These define $\mathcal{P}$. Physical boundaries arise from:

- Source geometry [25]
- Field mode structure [26]
- Environmental coupling [27]
- Conservation and symmetry restrictions [28]

---

## 5. Measurement as Resolution

### 5.1 Resolution Principle

A measurement is a physical interaction that increases the resolution of our description, eliminating members of $\mathcal{P}$ inconsistent with newly acquired information [29].

### 5.2 Maximum Resolution

**Operational definition:** Maximum resolution is reached when $\rho$ is diagonal in the $\hat{O}$-basis restricted to $\mathcal{P}$, and all off-diagonal elements fall below experimental detectability [30]. Physically, the coherence length is shorter than the smallest apparatus-resolvable feature.

Mathematically:  
$$\mathcal{P} \xrightarrow{\text{resolution}} \{ s_{\text{ontic}} \}, \quad P(o_i) = \|\Pi_{o_i} \psi\|^2$$

---

## 6. Symmetry, Decoherence, and Erasure

- **Symmetry breaking:** Resolution can break initial symmetries in $\mathcal{P}$ (e.g., double-slit with which-path info) [31].
- **Decoherence:** Environmental interactions act as uncontrolled resolution, breaking symmetries and suppressing interference [32,33].
- **Preferred basis:** In LRM, the preferred basis is fixed by the interaction Hamiltonian; decoherence naturally selects the same basis, with pointer states emerging from the interaction's structure [34,35].
- **Symmetry restoration:** Erasing distinguishing information expands $\mathcal{P}$ and restores interference [36].

---

## 7. Lagrangian Demonstration of Resolution Dynamics

We model resolution with a **resolution field** $r(t,\mathbf{x})$ coupled to the system field $\psi(t,\mathbf{x})$ in closed-time-path (CTP) form [37,38].

### 7.1 System Lagrangian
$$\mathcal{L}_{\text{sys}} = i\hbar\,\psi^*\partial_t\psi - \frac{\hbar^2}{2m}|\nabla\psi|^2 - V(\mathbf{x})\,|\psi|^2$$

### 7.2 Resolution Sector
Duplicate fields ($\psi_\pm$) for forward/backward time branches:  

$$\mathcal{L}_{\text{res}} =$$

$$\frac{\chi}{2}(\partial_\mu r)(\partial^\mu r) - \frac{\mu^2}{2} r^2 + i\lambda\, r \big(\psi_+^* \hat{O} \psi_+ - \psi_-^* \hat{O} \psi_-\big)$$

Integrating out $r$ produces an influence functional that penalizes forward/backward disagreements in $\hat{O}$, generating dephasing in the $\hat{O}$-basis [39].

### 7.3 Master Equation
In the Born–Markov limit [40]:  
$$\partial_t \rho = -\frac{i}{\hbar}[H,\rho] - \gamma\,[\hat{O},[\hat{O},\rho]]$$

where $\gamma = \frac{\lambda^2}{2\hbar\,\mu^2}F_B$ is the resolution rate, with $F_B$ the bath spectral factor.

Here $\gamma$ is the **resolution rate** — small $\gamma$ yields weak measurement; large $\gamma$ approaches maximum resolution. Continuous infinite $\gamma$ corresponds to the quantum Zeno effect [41].

**Quantum Zeno Effect in LRM:** In LRM, the quantum Zeno effect corresponds to sustaining $\gamma$ at a very high value continuously, freezing the system in an eigenstate of $\hat{O}$. This is not interpreted as repeated "collapses" but as holding the resolution operator at maximum strength, preventing evolution into logically distinct alternatives.

**Interpretation:** The double commutator term eliminates contradictory eigenstate pairs from $\mathcal{P}$, aligning description with the ontic state.

### 7.4 Physical Interpretation of the Resolution Field

The resolution field $r(t,\mathbf{x})$ represents physical degrees of freedom that acquire distinguishing information:

**In Simple Systems:**
- Double-slit: Photons scattered from electrons near the slits
- Stern-Gerlach: Magnetic field gradients coupling to spin
- Cavity QED: Cavity photons entangling with atomic states

**In Complex/Macroscopic Systems:**
The resolution field scales as:
$$r(t,\mathbf{x}) = \sum_i g_i r_i(t,\mathbf{x})$$
where $r_i$ represents individual environmental modes and $g_i$ their coupling strengths. For macroscopic measurements, the effective $\gamma$ grows with the number of coupled modes, explaining rapid resolution in everyday observations.

**Experimental Manipulation:**
One can control $\gamma$ by:
- Isolation: Reducing environmental coupling (lower $\gamma$)
- Engineering: Designing specific measurement interactions
- Erasure: Removing distinguishing information from $r$

This framework extends naturally from microscopic to macroscopic scales, with the same physics governing both regimes.

---

## 8. Paradigmatic Examples

### 8.1 Double-Slit Interference under Logical Resolution

**Preparation:**  
An electron source emits particles with transverse wavefunction $\psi_{\text{in}}(y)$ incident on two slits at $y=\pm d/2$. The predisposition set $\mathcal{P}$ consists of the two path subspaces spanned by $\{\psi_L, \psi_R\}$.

**Without resolution:**  
$\mathcal{P}$ retains full path symmetry, so the outgoing state is  
$$\psi_{\text{out}} \propto \psi_L + \psi_R$$
Interference fringes appear on the screen.

**Resolution coupling:**  
Introduce a weak which-path detector modeled by $r(t)$ coupled to $\hat{O} = |L\rangle\langle L| - |R\rangle\langle R|$. The master equation  
$$\partial_t \rho = -\frac{i}{\hbar}[H,\rho] - \gamma[\hat{O},[\hat{O},\rho]]$$
suppresses the off-diagonal $\rho_{LR}$ at a rate $2\gamma$.

**Fringe visibility:**  
$$V(\gamma) = V_0 e^{-2\gamma T}$$
where $T$ is the transit time between slits and screen.  
- $\gamma \to 0$: full interference (low resolution)  
- $\gamma \gg 1/T$: no interference (max resolution)  
- Intermediate $\gamma$: partial visibility (weak measurement regime)

**Interpretation:**  
Resolution acts by eliminating the logical contradiction of being in both paths simultaneously. The resolution field $r$ carries which-path information, progressively constraining our description to match the particle's actual path.

### 8.2 Bell/EPR Correlations

Consider a singlet state: $|\psi\rangle = \frac{1}{\sqrt{2}}(|01\rangle - |10\rangle)$

**Predisposition Set:** $\mathcal{P}_{AB} = \{|01\rangle, |10\rangle\}$ — only these states are logically admissible given total spin zero.

**Resolution Process:** When Alice measures spin along $\hat{a}$, her resolution operator $R_A$ acts on the joint state. Due to entanglement, this simultaneously constrains Bob's predisposition set, explaining perfect anti-correlation without violating the 3FLL.

**CHSH Violation:** LRM reproduces the quantum prediction $S = 2\sqrt{2}$ by respecting the non-local structure of $\mathcal{P}_{AB}$ while maintaining logical consistency at each location.

### 8.3 GHZ States

For the three-qubit GHZ state: $|\psi\rangle = \frac{1}{\sqrt{2}}(|000\rangle + |111\rangle)$

LRM resolution respects the global constraint that all three qubits must be aligned, demonstrating how logical consistency can be maintained across spatially separated systems without hidden variables.

---

## 9. Born Rule and Ontological Parsimony

### 9.1 Born Rule

Two options:
1. **Postulate:** The Born measure governs resolution probabilities, inherited from QM's empirical success.
2. **Derivation:** Apply Gleason's theorem [45] restricted to $\mathcal{P}$, showing the Born rule is the unique consistent probability measure.

### 9.2 Quantifying Parsimony

LRM's ontological commitments compared to other interpretations:

| Interpretation | Ontic Entities | Postulates | Total Complexity |
|----------------|----------------|------------|------------------|
| Copenhagen | Wave function + Collapse | 5 (including measurement) | High |
| Bohmian | Wave function + Particle positions | 4 (including guidance) | Medium |
| Many-Worlds | Universal wave function | 3 (no collapse) | High (many worlds) |
| QBism | Agent experiences | 4 (including updating) | Medium |
| Relational QM [46] | Relations between systems | 4 (including relativity) | Medium |
| **LRM** | Ontic state + 3FLL | 3 (logic + Born + dynamics) | **Low** |

LRM achieves parsimony by grounding measurement in pre-existing logical constraints rather than additional postulates or entities.

---

## 10. Comparison with Other Interpretations

| Interpretation | Ontic State | Collapse | Ontic Logic | Observer Dependence | Extra Ontology |
|----------------|-------------|----------|-------------|---------------------|----------------|
| Copenhagen | Indefinite pre-measurement | Postulate | No | Yes | None |
| Bohmian | Definite at all times | Epistemic | Implicit | No | Pilot wave |
| Many-Worlds | All outcomes realized | Branching | No | No | Parallel worlds |
| QBism | Epistemic only | Bayesian update | No | Yes | Agent beliefs |
| Relational QM | Relative to observer | Relative facts | No | Yes | Relations |
| Consistent Histories [47] | Framework-dependent | Decoherence | No | Partial | History spaces |
| **LRM** | Definite at all times | Resolution endpoint | **Yes** | **No** | None |

### 10.1 Relationship to Information-Theoretic Approaches

LRM shares with QBism [48] and similar approaches [49] the view that quantum states are epistemic. However, LRM differs by:
- Maintaining observer-independent ontic states
- Grounding epistemics in logical constraints rather than subjective beliefs
- Providing a physical mechanism (resolution) for knowledge update

---

## 11. Empirical Equivalence and Experimental Tests

### 11.1 Standard Predictions

LRM reproduces all standard quantum phenomena:
- Interference patterns (double-slit, Mach-Zehnder)
- Entanglement correlations (Bell, GHZ, Werner states)
- Quantum erasure and delayed choice
- Weak measurements and weak values

### 11.2 Novel Prediction: Finite Minimum Coherence

**Theoretical Basis:** If physical constraints limit the maximum coupling between system and resolution channels, then:
$$\gamma \leq \gamma_{\max} = \frac{\lambda_{\max}^2}{2\hbar\mu^2}F_B$$

This implies a minimum coherence time:
$$\tau_{\min} = \frac{1}{2\gamma_{\max}}$$

**Experimental Protocol:**

*System:* Superconducting transmon qubit in a 3D cavity [50]

*Procedure:*
1. Prepare qubit in superposition $|\psi\rangle = \frac{1}{\sqrt{2}}(|0\rangle + |1\rangle)$
2. Couple to measurement cavity with variable strength $g$
3. Increase cavity photon number $n$ to enhance measurement rate: $\gamma = 4g^2n/\kappa$
4. Monitor qubit coherence via Ramsey interferometry
5. Plot visibility vs. $\gamma$ to test for saturation

*Expected Results:*
- Standard QM: $V \to 0$ as $\gamma \to \infty$
- LRM with $\gamma_{\max}$: $V \to V_{\min} = \exp(-2\gamma_{\max}T) > 0$

*Challenges:*
- Technical noise may mask residual coherence
- Require $\gamma_{\max} \gtrsim 10^7$ Hz to be observable
- Must distinguish from imperfect measurement efficiency

*Alternative Systems:*
- Cavity QED with single atoms [51]
- Nitrogen-vacancy centers in diamond [52]
- Trapped ions with engineered reservoirs [53]

### 11.3 Distinguishing from Decoherence

Pure decoherence preserves diagonal mixtures, while resolution selects single outcomes. Experiments tracking the full density matrix evolution could distinguish these processes by observing the transition from mixture to pure state.

---

## 12. Philosophical Implications

### 12.1 Logic in Physics

LRM's treatment of logic as ontic raises questions about the relationship between logical and physical laws:

**Classical Logic View** [54]: Logic describes valid reasoning, not physical constraints. LRM challenges this by demonstrating that no physical measurement violates logical laws.

**Quantum Logic View** [44]: Quantum mechanics requires non-Boolean logic. LRM maintains that while quantum *descriptions* use non-classical structures, the *underlying reality* obeys classical logic.

**Transcendental Argument**: The 3FLL may be necessary conditions for any coherent empirical science, explaining their apparent universality [55].

### 12.2 Implications for Quantum Foundations

LRM suggests that the measurement problem arises from conflating epistemic descriptions with ontic reality. By maintaining this distinction while grounding it in logical constraints, LRM offers a middle path between purely epistemic (QBism) and purely ontic (Many-Worlds) approaches.

---

## 13. Conclusion

The Logical Resolution Model integrates the Three Fundamental Laws of Logic directly into the ontology of physics. Quantum measurement becomes a continuous refinement of our description of a fixed ontic state, not an ontic collapse. The key advantages include:

- **Observer-independent ontology**: Reality is definite regardless of measurement
- **Ontological parsimony**: No additional worlds, particles, or collapse postulates
- **Unified framework**: Resolution explains measurement, decoherence, and erasure
- **Empirical adequacy**: Reproduces all quantum predictions
- **Testability**: Predicts finite minimum coherence under maximum resolution

By recognizing that logic constrains not just our reasoning but physical reality itself, LRM provides a principled foundation for quantum mechanics that respects both our empirical observations and our deepest intuitions about the nature of reality.

---

**Keywords:** quantum measurement, logical resolution, ontology, collapse, decoherence, symmetry breaking, quantum field theory, Three Fundamental Laws of Logic, master equation, dephasing, closed-time-path formalism, observer independence, quantum foundations.

---

## References

[1] Leggett, A. J. (2002). Testing the limits of quantum mechanics: motivation, state of play, prospects. *J. Phys.: Condens. Matter*, 14(15), R415–R451.

[2] Schlosshauer, M. (2019). Quantum decoherence. *Physics Reports*, 831, 1–57.

[3] Bohr, N. (1935). Can quantum-mechanical description of physical reality be considered complete? *Phys. Rev.*, 48(8), 696–702.

[4] Bohm, D. (1952). A Suggested Interpretation of the Quantum Theory in Terms of "Hidden" Variables I & II. *Phys. Rev.*, 85, 166–193.

[5] Everett, H. (1957). "Relative State" Formulation of Quantum Mechanics. *Rev. Mod. Phys.*, 29, 454–462.

[6] Harrigan, N., & Spekkens, R. W. (2010). Einstein, incompleteness, and the epistemic view of quantum states. *Found. Phys.*, 40, 125–157.

[7] Aspect, A., Dalibard, J., & Roger, G. (1982). Experimental Test of Bell's Inequalities Using Time‐Varying Analyzers. *Phys. Rev. Lett.*, 49(25), 1804–1807.

[8] Noether, E. (1918). Invariante Variationsprobleme. *Nachr. v. d. Ges. d. Wiss. zu Göttingen, Math-phys. Klasse*, 235–257.

[9] Kostelecký, V. A., & Russell, N. (2011). Data tables for Lorentz and CPT violation. *Rev. Mod. Phys.*, 83, 11–31.

[10] Dirac, P. A. M. (1958). *The Principles of Quantum Mechanics* (4th ed., pp. 1-15). Oxford University Press.

[11] Feynman, R. P., Leighton, R. B., & Sands, M. (1965). *The Feynman Lectures on Physics*, Vol. III, Ch. 1. Addison-Wesley.

[12] Siegman, A. E. (1986). *Lasers*, Ch. 15-17. University Science Books.

[13] Joos, E., et al. (2003). *Decoherence and the Appearance of a Classical World in Quantum Theory*, Ch. 1-3. Springer.

[14] Zurek, W. H. (2003). Decoherence, einselection, and the quantum origins of the classical. *Rev. Mod. Phys.*, 75(3), 715–775.

[15] Born, M. (1926). Zur Quantenmechanik der Stoßvorgänge. *Zeitschrift für Physik*, 37, 863–867.

[16] Weinberg, S. (1995). *The Quantum Theory of Fields*, Vol. I, Ch. 2. Cambridge University Press.

[17] Gorini, V., Kossakowski, A., & Sudarshan, E. C. G. (1976). Completely positive dynamical semigroups of N‐level systems. *J. Math. Phys.*, 17, 821–825.

[18] Lindblad, G. (1976). On the generators of quantum dynamical semigroups. *Commun. Math. Phys.*, 48(2), 119–130.

[19] Spohn, H. (1980). Kinetic equations from Hamiltonian dynamics: Markovian limits. *Rev. Mod. Phys.*, 52(3), 569–615.

[20] Peskin, M. E., & Schroeder, D. V. (1995). *An Introduction to Quantum Field Theory*, Ch. 2-4. Addison-Wesley.

[21] Zee, A. (2010). *Quantum Field Theory in a Nutshell* (2nd ed.), Ch. I.1-I.3. Princeton University Press.

[22] Townes, C. H. (1999). *How the Laser Happened: Adventures of a Scientist*, Ch. 4-5. Oxford University Press.

[23] Helm, M. (2000). Electron guns. In *Handbook of Vacuum Technology* (pp. 312-340). Wiley-VCH.

[24] Meier, F., & Zakharchenya, B. P. (1984). *Optical Orientation*, Ch. 1-2. Elsevier.

[25] Born, M., & Wolf, E. (1999). *Principles of Optics* (7th ed.), Ch. 8. Cambridge University Press.

[26] Jackson, J. D. (1998). *Classical Electrodynamics* (3rd ed.), Ch. 8-9. Wiley.

[27] Gardiner, C. W., & Zoller, P. (2004). *Quantum Noise* (3rd ed.), Ch. 1-3. Springer.

[28] Weinberg, S. (1995). *The Quantum Theory of Fields*, Vol. II, Ch. 15. Cambridge University Press.

[29] Busch, P., Lahti, P., & Mittelstaedt, P. (1996). *The Quantum Theory of Measurement* (2nd ed.), Ch. 1-2. Springer.

[30] Schlosshauer, M. (2007). *Decoherence and the Quantum-To-Classical Transition*, Ch. 2-3. Springer.

[31] Englert, B.-G. (1996). Fringe Visibility and Which-Way Information: An Inequality. *Phys. Rev. Lett.*, 77(11), 2154–2157.

[32] Zeh, H. D. (1970). On the Interpretation of Measurement in Quantum Theory. *Found. Phys.*, 1, 69–76.

[33] Caldeira, A. O., & Leggett, A. J. (1983). Quantum tunnelling in a dissipative system. *Ann. Phys.*, 149(2), 374–456.

[34] Zurek, W. H. (1981). Pointer basis of quantum apparatus: Into what mixture does the wave packet collapse? *Phys. Rev. D*, 24(6), 1516–1525.

[35] Paz, J. P., & Zurek, W. H. (1999). Environment-induced decoherence and the transition from quantum to classical. In *Coherent Matter Waves* (pp. 533-614). Springer.

[36] Walborn, S. P., et al. (2002). Double-slit quantum eraser. *Phys. Rev. A*, 65(3), 033818.

[37] Schwinger, J. (1961). Brownian motion of a quantum oscillator. *J. Math. Phys.*, 2, 407–432.

[38] Keldysh, L. V. (1964). Diagram technique for nonequilibrium processes. *Zh. Eksp. Teor. Fiz.*, 47, 1515–1527. [Sov. Phys. JETP 20, 1018 (1965)].

[39] Feynman, R. P., & Vernon, F. L. (1963). The theory of a general quantum system interacting with a linear dissipative system. *Ann. Phys.*, 24(1), 118–173.

[40] Breuer, H.-P., & Petruccione, F. (2002). *The Theory of Open Quantum Systems*, Ch. 3-4. Oxford University Press.

[41] Misra, B., & Sudarshan, E. C. G. (1977). The Zeno's paradox in quantum theory. *J. Math. Phys.*, 18(4), 756–763.

[42] Kochen, S., & Specker, E. P. (1967). The problem of hidden variables in quantum mechanics. *J. Math. Mech.*, 17, 59–87.

[43] Bell, J. S. (1964). On the Einstein Podolsky Rosen paradox. *Physics*, 1(3), 195–200.

[44] Birkhoff, G., & von Neumann, J. (1936). The logic of quantum mechanics. *Ann. Math.*, 37(4), 823–843.

[45] Gleason, A. M. (1957). Measures on the closed subspaces of a Hilbert space. *J. Math. Mech.*, 6, 885–893.

[46] Rovelli, C. (1996). Relational quantum mechanics. *Int. J. Theor. Phys.*, 35, 1637–1678.

[47] Griffiths, R. B. (1984). Consistent histories and the interpretation of quantum mechanics. *J. Stat. Phys.*, 36, 219–272.

[48] Fuchs, C. A., & Schack, R. (2013). Quantum-Bayesian coherence. *Rev. Mod. Phys.*, 85, 1693–1715.

[49] Brukner, Č. (2018). A no-go theorem for observer-independent facts. *Entropy*, 20(5), 350.

[50] Blais, A., et al. (2021). Circuit quantum electrodynamics. *Rev. Mod. Phys.*, 93, 025005.

[51] Haroche, S., & Raimond, J.-M. (2006). *Exploring the Quantum: Atoms, Cavities, and Photons*. Oxford University Press.

[52] Doherty, M. W., et al. (2013). The nitrogen-vacancy colour centre in diamond. *Phys. Rep.*, 528, 1–45.

[53] Leibfried, D., et al. (2003). Quantum dynamics of single trapped ions. *Rev. Mod. Phys.*, 75, 281–324.

[54] Quine, W. V. O. (1986). *Philosophy of Logic* (2nd ed.). Harvard University Press.

[55] Putnam, H. (1969). Is logic empirical? In *Boston Studies in the Philosophy of Science*, Vol. 5, pp. 216–241.
