# Tensor-Permittivity Cone — UV Asymmetry Data & MATLAB Scripts

This folder contains MATLAB scripts and datasets used to generate the UV asymmetry maps of eigenchannels for a tensor-permittivity cone, including both **reciprocal** and **non-reciprocal** material cases.
 These materials are provided to support the **reproducibility and transparency** of the results reported in the accompanying manuscript currently under review.

------

## 📁 File Contents

```
TensorCone_Reciprocal.m
TensorCone_Nonreciprocal.m
UV_repo.mat
UV_non_repo.mat
```

### 1. `TensorCone_Reciprocal.m`

MATLAB script for visualizing the UV asymmetry maps of eigenchannels in the **reciprocal case**.

Features:

- Loads data from `UV_repo.mat`
- Generates UV scatter maps for eigenchannels **1, 3, and 7**
- Uses a shared horizontal colorbar
- Visualization parameters (color limits, ticks, marker size, layout) are configurable within the script

------

### 2. `TensorCone_Nonreciprocal.m`

MATLAB script for visualizing the UV asymmetry maps of eigenchannels in the **non-reciprocal case**.

Features:

- Loads data from `UV_non_repo.mat`
- Generates UV scatter maps for eigenchannels **1, 3, and 7**
- Uses only MATLAB built-in functions (no external dependencies)
- Allows per-channel color scaling consistent with the figures reported in the manuscript

------

### 3. `UV_repo.mat`

Dataset corresponding to the **reciprocal case**, containing:

- `u`, `v` : UV coordinates
  - typically defined as
    - `u = sin(θ) cos(φ)`
    - `v = sin(θ) sin(φ)`
- `X1`, `X3`, `X7` : asymmetry metrics for eigenchannels 1, 3, and 7

------

### 4. `UV_non_repo.mat`

Dataset corresponding to the **non-reciprocal case**, with the same variable structure as `UV_repo.mat`.

------

## ▶ How to Run

1. Place all four files in the same directory.
2. Open MATLAB and set the current folder to this directory.
3. Run either script:

```
TensorCone_Reciprocal
```

or

```
TensorCone_Nonreciprocal
```

The figures used in the manuscript can be reproduced directly.

------

## 💻 Requirements

- MATLAB R2019b or newer (for built-in `turbo` colormap support)
- No additional toolboxes or third-party functions required

------

## 📄 Usage and Availability

These scripts and datasets are provided for **academic and review purposes**, in support of the manuscript currently under consideration for publication.
 They are intended to enable reviewers and editors to reproduce the reported results.

**Copyright (c) 2026 Chenbo Shi, UESTC, China.**

------

## 📬 Contact

For questions, comments, or collaboration requests:

**Chenbo Shi** University of Electronic Science and Technology of China (UESTC) 📧 **[chenbo_shi@163.com](mailto:chenbo_shi@163.com)**