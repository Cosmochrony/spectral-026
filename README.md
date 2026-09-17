This repository contains the source of the **O26 Cosmochrony paper**  
*Quadratic Completion of Admissible Spectral Pairs
via Binary-Icosahedral Representation*.

This work extends the **spectral admissibility sub-programme** by providing
the first **representation-theoretic interpretation of the pair observable**
introduced and numerically validated in **O16–O25**.

It addresses the next structural question after **O25**:

> Is the pair observable σpair an intrinsic quadratic object,
> and does it arise from a canonical Hermitian structure?

## Quick Summary

σpair is not merely a product of two observables.

It behaves as the pullback of a Hermitian quadratic form.

More precisely:

- its growth matches a Hilbert–Schmidt norm (proved)
- its structure is consistent with a rank-one matrix construction
- it may arise from a canonical representation-theoretic sector (conjectural)

This turns σpair from a constructed observable into a candidate **intrinsic norm**.

## Context

**O16–O25** provide the inputs:

- the structurally motivated candidate observable is the canonical pair quantity  
  $\sigma_{\mathrm{pair}}^{\mathrm{can}}(n)$ (its fibre reading is the open bridge of O18)
- the reference value $\delta_{\mathrm{pair}} \approx 7.44$ lies in the historical
  phenomenological window $[7.4, 10.6]$
- vertical fibre structure does not change the observable rank (**O24**)
- the pair statistic concentrates across conjugate pairs at fixed $q$ (**O25**)

The further prescription $\beta^*=1/(\delta_{\mathrm{pair}}+1/2)$ is not a native
Heisenberg growth law. It combines the fixed-degree pair observable with a changing-degree
LPS equation and is retained only as a phenomenological comparison.

However:

- σpair remained a **bilinear construction**
- no intrinsic quadratic interpretation was available
- no representation-theoretic embedding was identified

This defines the scope of **O26**.

## Core Result

The paper establishes that:

> The pair observable σpair behaves as the pullback of a Hermitian quadratic form
> on a representation space, with a precise dictionary linking Weil blocks to
> rank-one matrix coefficients.

Three levels of identification are introduced:

- **Level I (proved):** exponent equivalence
- **Level II (structural):** identification modulo normalisation
- **Level III (conjectural):** canonical representation-theoretic realisation

## Main Structural Results

### 1. Dictionary between Weil blocks and matrix coefficients

*Result.* Each conjugate pair {c, q−c} defines a rank-one operator:

$$
\widetilde{M}_n = v_c^{(n)} \otimes \overline{v_{q-c}^{(n)}}
$$

with:

$$
\|\widetilde{M}_n\|_{\mathrm{HS}}^2 \sim \sigma_{\mathrm{pair}}(n)
$$

Thus:

- σpair corresponds to a **Hilbert–Schmidt norm**
- the observable is naturally quadratic

### 2. Growth equivalence (Level I)

*Result.* The exponent satisfies:

$$
\delta_{\mathrm{pair}} = \delta_{\mathrm{HS}}
$$

Thus:

- σpair and the matrix norm share identical scaling
- the identification is **rigorously established**

### 3. Quotient identification (Level II)

*Result.* Up to normalisation:

$$
\sigma_{\mathrm{pair}}(n) \approx \|\widetilde{M}_n\|_{\mathrm{HS}}^2
$$

Thus:

- σpair is the pullback of a quadratic form
- remaining freedom is purely **pipeline normalisation**

### 4. Canonical identification (Level III)

*Conjecture.* There exists an irrep ρ of 2I such that:

- $v_c^{(n)} \in V_\rho$
- $\widetilde{M}_n \in \mathrm{End}(V_\rho)$
- σpair equals the canonical norm up to universal factors

Candidate:

- spin-$\tfrac{1}{2}$ sector (dimension 2)
- ambient space $\mathrm{End}(V_\rho)$, of dimension 4

*Proposition (symmetric-square bound).* Under the involution-equivariance condition
$\Phi(v_{q-c}^{(n)}) = \overline{\Phi(v_c^{(n)})}$ of the embedding, each Level III product is
$u u^{\mathsf T}$ with $u = \Phi(v_c^{(n)})$, so the trajectory spans at most
$\mathrm{Sym}^2(V_\rho)$, of dimension 3 when $\dim_{\mathbb C} V_\rho = 2$. The rank-four target is
excluded under that contract; other embeddings and constructions are not refuted.

### 5. Diagnostics via effective dimension

*Result.* The paper states diagnostics based on:

- covariance rank of $\widetilde{M}_n$
- universality across pairs
- exponent stability

Thus:

- involution compatibility of $\widetilde{M}_n$ holds by construction and is not a discriminating test
- the conjugate-pair covariance computable from O25 data is formed in the measured carrier
  $H_{\mathrm{eff}}$, not in $\mathrm{End}(V_\rho)$: O29 finds a modal rank three, with seed-sensitive
  single-sample exceptions above it; no measured rank, modal or exceptional, is a rank in
  $\mathrm{End}(V_\rho)$; the modal rank is compatible with the adjoint carrier
  $H_{\mathrm{eff}} \simeq \mathfrak{su}(2)$, itself conditional on
  O23's supplied carrier and O27's admissible-saturation hypothesis, and no carrier identification
- under the embedding's involution-equivariance condition the rank-four target is excluded
  (symmetric-square bound above)
- a representation-selection test of $V_\rho$ remains open: it requires an independent observable

## Foundational Chain from the Substrate

The derivation is fully internal:

Born–Infeld admissibility  
$\to$ pair observable (O16–O21)  
$\to$ projection locking (O22)  
$\to$ conditional rank-three carrier (O23 Theorem 3.1, supplied spinor carrier)  
$\to$ rank stability (O24)  
$\to$ numerical validation (O25)  
$\to$ quadratic completion (O26)

The carrier selection and the fibre identification (O18 Problem 2.8) are supplied hypotheses.

## Mathematical Role of O26

**O26** provides the structural completion of the observable:

- identifies σpair as a quadratic object
- links it to Hilbert–Schmidt geometry
- introduces a representation-theoretic embedding
- formulates a hierarchy of identification levels
- provides diagnostic criteria and states their scope

More precisely, the paper:

- constructs a dictionary between Weil blocks and matrix coefficients
- proves exponent equivalence (Level I)
- isolates normalisation freedom (Level II)
- proposes a canonical embedding (Level III)
- defines rank diagnostics and bounds what they can decide

## Epistemic Structure of the Paper

### Established input

- pair observable (**O16–O21**)
- conjugation identity and normalisation (**O17–O19**; fibre identification open, O18)
- projection locking (**O22**)
- conditional rank-three carrier (**O23** Theorem 3.1, supplied spinor carrier)
- rank stability (**O24**)
- numerical validation (**O25**)

### New results

- matrix dictionary construction
- Hilbert–Schmidt identification
- Level I proof
- Level II structural equivalence
- Level III conjecture
- diagnostic criteria, with the symmetric-square bound on the Level III rank target

### Remaining open problems

- validation of Level III
- identification of the correct irrep
- embedding of $v_c^{(n)}$ into $V_\rho$
- large-q stability of the modal carrier rank in $H_{\mathrm{eff}}$
- analytical derivation of the sector

## Interpretation of the Result

The conceptual shift is:

- previous view: σpair is a product
- O26: σpair is a **quadratic norm**

Thus:

- the observable is intrinsic, not constructed
- quadratic structure emerges from projection
- representation theory becomes physically relevant

## Structural Role of O26

**O26** completes the observable hierarchy:

- **O16**: pair observable
- **O17–O19**: conjugation identity and normalisation
- **O20–O21**: persistence
- **O22**: projection locking
- **O23**: conditional threshold dimension (supplied carrier)
- **O24**: rank stability
- **O25**: numerical validation
- **O26**: quadratic completion

Thus:

- the observable is identified
- its scaling is validated
- its structure is interpreted

## What O26 Adds

- quadratic interpretation of σpair
- dictionary with matrix coefficients
- Hilbert–Schmidt framework
- representation-theoretic embedding
- diagnostics of the measured carrier and a bound on the Level III rank target
- bridge between spectral data and representation theory

## Outcome

The spectral admissibility framework is now:

- structurally grounded (**O24**)
- numerically validated (**O25**)
- geometrically interpreted (**O26**)

The observable is:

- stable
- intrinsic
- quadratic
- potentially representation-theoretic

## Residual Open Problems

### Representation selection

Identify the correct irrep ρ of 2I.

### Level III validation

Construct an observable that measures $\mathrm{End}(V_\rho)$ directly; the conjugate-pair
covariance of Test 4 measures the carrier $H_{\mathrm{eff}}$ instead (O29), and under the embedding's
involution-equivariance condition a rank-four target is excluded.

### Embedding

Construct the explicit map:

$$
v_c^{(n)} \mapsto V_\rho
$$

### Large-q regime

Check the stability of the modal carrier rank in $H_{\mathrm{eff}}$ at larger primes.

### Analytical derivation

Derive the representation structure from admissibility.

## Status

The programme is now:

- structurally closed (**O24**)
- numerically validated (**O25**)
- geometrically lifted (**O26**)
- ready for representation-theoretic resolution

## Repository Structure

```text
paper/
├── out/      # Compiled O26 PDF
├── tex/      # LaTeX sources
└── README.md
```

# Citation

If you reference this work, please cite:

J. Beau
*Quadratic Completion of Admissible Spectral Pairs via Binary-Icosahedral Representation*,
Zenodo, 2026. DOI: [10.5281/zenodo.19488845](https://doi.org/10.5281/zenodo.19488845)

# Acknowledgements

Portions of the derivations, conceptual synthesis, structural organisation,
and editorial refinement benefited from iterative interactions with large
language models used as analytical assistants.

All theoretical results, computations, and interpretations remain the sole
responsibility of the author.

# Contributions

This repository is intended as a research reference.

Critical feedback, independent verification, and further analysis of:

- pair observables
- quadratic structures
- representation selection
- admissible sectors
- Hilbert–Schmidt dynamics

are welcome.

Please open an issue to discuss conceptual points, technical details, or
possible extensions.
