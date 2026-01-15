# Reproducibility Package — Numerical Models, Data, and Scripts

This repository contains the complete set of **models, numerical data, and MATLAB scripts** used to generate the results reported in the accompanying manuscript currently under review.
 All materials are organized to facilitate **reproducibility, transparency, and independent verification** of the computational results.

The package includes:

- Geometry and simulation models
- Raw numerical simulation outputs
- Post-processing scripts
- Processed data and figure-generation utilities

------

## 📁 Directory Structure

```
Models/
Data of Scattering amplitude/
Data & Figs/
```

------

## 📂 Models

This folder contains the **geometric models and simulation project files** used in the numerical studies.

Includes:

- Random rough surface geometry (STL, NASTRAN mesh, FEKO project file)
- Simulation-ready models used to generate the raw electromagnetic data

These files are provided because the underlying geometries (e.g., random surfaces) are not trivially reproducible from random seeds alone.

------

## 📂 Data of Scattering amplitude

This folder contains the **raw numerical simulation data**.

Includes:

- Scattering amplitude dyadic (S-dyadic)
- Corresponding T-matrix data
- Separate datasets for:
  - Tensor-permittivity cone (reciprocal and non-reciprocal cases)
  - Random rough surface (lossless and lossy cases)

These datasets represent the **primary numerical outputs** of the simulations and serve as the input for all subsequent analyses.

------

## 📂 Data & Figs

This folder contains the **post-processing scripts and processed datasets** used to reproduce the figures and quantitative results.

Includes:

- MATLAB scripts (`.m`) and Live Scripts (`.mlx`)
- Data files used for visualization (e.g., asymmetry measures, eigenchannel fields)
- Scripts for:
  - UV asymmetry maps
  - Eigenchannel radiation patterns
  - Asymmetry statistics across multiple modes

Running the provided scripts reproduces the figures reported in the manuscript.

------

## ▶ How to Use This Package

A typical workflow is:

1. **Inspect models**
    → `Models/`
2. **Access raw simulation outputs**
    → `Data of Scattering amplitude/`
3. **Run analysis and reproduce figures**
    → `Data & Figs/`

Each subdirectory contains its own `README.md` with detailed instructions.

------

## 💻 Requirements

- MATLAB R2019b or newer (recommended for full compatibility with `.mlx` files)
- No external toolboxes or third-party functions required for the provided scripts

------

## 📄 Usage Statement

This repository is provided for **academic and review purposes**, in support of the manuscript currently under consideration for publication.
 The materials are intended to allow readers, editors, and reviewers to reproduce and verify the reported results.

**Copyright (c) 2026 Chenbo Shi, UESTC, China.**

------

## 📬 Contact

Chenbo Shi
 University of Electronic Science and Technology of China (UESTC), China
 📧 [chenbo_shi@163.com](mailto:chenbo_shi@163.com)