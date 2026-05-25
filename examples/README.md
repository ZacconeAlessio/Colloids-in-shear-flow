# Examples

This folder contains example scripts reproducing the main results of the published papers on colloidal microstructure under shear flow.

The examples use the MATLAB routines contained in the `src/` directory and provide ready-to-run workflows for generating radial/pair distribution functions (RDFs/PCFs) for interacting colloidal particles subject to simple shear flow.

---

# Structure

## `reproduce_PRE_2019/`

Reproduction scripts for:

L. Banetta and A. Zaccone

*Radial distribution function of Lennard-Jones fluids in shear flows from intermediate asymptotics*

Physical Review E 99, 052606 (2019)

### Available scripts

- `run_LJ_compression.m`
  Computes the radial distribution function in the compressional sectors of the shear flow for Lennard-Jones interacting particles.

- `run_LJ_extension.m`
  Computes the radial distribution function in the extensional sectors of the shear flow for Lennard-Jones interacting particles.

### Physical model

- Smoluchowski diffusion-convection equation
- Intermediate asymptotics
- Boundary-layer matching
- Lennard-Jones interaction potential
- Hydrodynamic interactions
- Lubrication forces

---

## `reproduce_CPS_2020/`

Reproduction scripts for:

L. Banetta and A. Zaccone

*Pair correlation function of charge-stabilized colloidal systems under sheared conditions*

Colloid and Polymer Science 298, 761–771 (2020)

### Available scripts

- `run_Yukawa_compression.m`
  Computes the pair correlation function in the compressional sectors for Yukawa/Debye-Hückel interacting particles.

- `run_Yukawa_extension.m`
  Computes the pair correlation function in the extensional sectors for Yukawa/Debye-Hückel interacting particles.

### Physical model

- Smoluchowski diffusion-convection equation
- Intermediate asymptotics
- Boundary-layer matching
- Yukawa (Debye-Hückel) interaction potential
- Hydrodynamic interactions
- Lubrication forces

---

# Usage

Before running the examples, ensure MATLAB can access the `src/` directory.

Each script already contains:

```matlab
addpath('../../src')
