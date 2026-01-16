# Random Rough Surface — Eigenchannel Analysis (Data & MATLAB Scripts)

This folder contains MATLAB scripts and datasets for analyzing eigenchannels of a **random rough surface**, including radiation pattern visualization and asymmetry measures for both **lossless** and **lossy** cases.
 These materials are provided to support the **reproducibility and transparency** of the results reported in the accompanying manuscript currently under review.

------

## 📁 File Contents

```
Asym_of_Channels.m
Random_Rough_Surface_Lossless.mlx
Random_Rough_Surface_Lossy.mlx
Channel_Lossless.mat
Channel_Lossy.mat
Err.mat
```

------

## 📄 Script Files

### 1. `Random_Rough_Surface_Lossless.mlx`

MATLAB Live Script for visualizing eigenchannel radiation patterns of a random rough surface in the **lossless case**.

- Surface condition:
  - Perfect electric conductor (PEC), equivalent to
    - Surface impedance: $Z_s = 0$
- Loads data from: `Channel_Lossless.mat`
- Features:
  - 3D radiation pattern visualization using `surf`
  - Supports plotting multiple eigenchannels
  - Configurable visualization type (`D`, `RCS`, or `|E|`)
  - Adjustable viewing angle, colormap, and figure styling

------

### 2. `Random_Rough_Surface_Lossy.mlx`

MATLAB Live Script for visualizing eigenchannel radiation patterns of a random rough surface in the **lossy case**.

- Loss mechanism:
  - Finite surface impedance
    - $Z_s=100\ \Omega$
- Loads data from: `Channel_Lossy.mat`
- Otherwise identical in structure and usage to the lossless script, enabling direct comparison between the two cases.

------

### 3. `Asym_of_Channels.m`

MATLAB script for plotting the **asymmetry measure of the first 50 eigenchannels**.

- Loads data from: `Err.mat`
- Plots:
  - Asymmetry measure versus eigenchannel index (1–50)
  - Comparison between two cases (e.g., lossless vs. lossy)
- Uses logarithmic y-axis (`semilogy`)
- Figure formatting follows publication-style conventions (Times New Roman, LaTeX labels, annotations)

------

## 📦 Data Files

### `Channel_Lossless.mat`

Dataset for the **lossless case** (PEC surface, $Z_s = 100\ \ Omega$).

Expected variables include:

- `obs` : observation angles
  - `obs(:,2)` = θ (degrees)
  - `obs(:,3)` = φ (degrees)
- `rE1`, `rE2`, `rE3`, …
  - Complex electric-field samples for each eigenchannel
  - Each variable has size `N × 3` (field components)

------

### `Channel_Lossy.mat`

Dataset for the **lossy case**, corresponding to:

- Surface impedance:
  - $Z_s= 100\ \Omega$

Contains the same variable structure as `Channel_Lossless.mat`.

------

### `Err.mat`

Dataset containing the asymmetry measure for multiple eigenchannels.

- Variable:
  - `err` : matrix where each column corresponds to a different physical case
    - Typically:
      - `err(:,1)` → lossless case ($Z_s = 0$)
      - `err(:,2)` → lossy case ($Z_s=100\ \Omega$)

Used by:

- `Asym_of_Channels.m`

------

## ▶ How to Run

1. Place all files in the same directory.
2. Open MATLAB and set the current folder to this directory.
3. Run any of the following:

### Radiation patterns (Live Scripts)

Open and run:

```
Random_Rough_Surface_Lossless.mlx
```

or

```
Random_Rough_Surface_Lossy.mlx
```

Then click **Run All** in the Live Editor.

### Asymmetry measure plot

Run from command window:

```
Asym_of_Channels
```

------

## 💻 Requirements

- MATLAB R2020a or newer recommended (for Live Script support)
- No external toolboxes or third-party functions required

------

## 📄 Usage

These scripts and datasets are provided for **academic and review purposes**, to allow readers, editors, and reviewers to reproduce the numerical results and figures reported in the accompanying manuscript.

**Copyright (c) 2026 Chenbo Shi, UESTC, China.**

------

## 📬 Contact

For questions, comments, or collaboration requests:

**Chenbo Shi** University of Electronic Science and Technology of China (UESTC) 📧 **[chenbo_shi@163.com](mailto:chenbo_shi@163.com)**
