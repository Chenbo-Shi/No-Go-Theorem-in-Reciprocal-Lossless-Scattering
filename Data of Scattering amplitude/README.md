# Numerical Simulation Data — S-Dyadic and T-Matrix Results

This folder contains the **raw numerical simulation data** used in the study, including the **scattering amplitude dyadic (S-dyadic)** and the corresponding **T-matrix** results.
 These datasets are provided to support the **reproducibility and transparency** of the numerical results reported in the accompanying manuscript.

The files correspond to the two numerical models introduced previously:

- Tensor-permittivity cone
- Random rough surface

------

## 📁 File Contents

```
Cone_tesorpsilon_Reciprocal.mat
Cone_tesorpsilon_Nonreciprocal.mat
Rough_surface_Lossless.mat
Rough_surface_Lossy.mat
```

------

## 📄 File Descriptions

### `Cone_tesorpsilon_Reciprocal.mat`

Raw numerical data for the **tensor-permittivity cone (reciprocal case)**.

- Contains:
  - Scattering amplitude dyadic (**Sdyadic**)
  - Corresponding **T-matrix**
- Used to generate:
  - UV asymmetry maps
  - Eigenchannel analysis for the reciprocal cone case

------

### `Cone_tesorpsilon_Nonreciprocal.mat`

Raw numerical data for the **tensor-permittivity cone (non-reciprocal case)**.

- Contains:
  - Scattering amplitude dyadic (**Sdyadic**)
  - Corresponding **T-matrix**
- Used to generate:
  - UV asymmetry maps
  - Eigenchannel analysis for the non-reciprocal cone case

------

### `Rough_surface_Lossless.mat`

Raw numerical data for the **random rough surface (lossless case)**.

- Physical condition:
  - Perfect electric conductor (PEC), equivalent to
     $Zs=0$
- Contains:
  - Scattering amplitude dyadic (**Sdyadic**)
  - Corresponding **T-matrix**
- Used in:
  - Eigenchannel radiation pattern analysis
  - Asymmetry evaluation for the lossless rough surface

------

### `Rough_surface_Lossy.mat`

Raw numerical data for the **random rough surface (lossy case)**.

- Physical condition:
  - Finite surface impedance
     $Zs=100\,\Omega$
- Contains:
  - Scattering amplitude dyadic (**Sdyadic**)
  - Corresponding **T-matrix**
- Used in:
  - Eigenchannel radiation pattern analysis
  - Asymmetry evaluation for the lossy rough surface

------

## 📄 Data Structure (General)

Each `.mat` file includes:

- `Sdyadic`
  - Scattering amplitude dyadic data obtained from numerical simulations
- `Tmatrix` (or equivalent naming depending on the dataset)
  - Corresponding transition matrix representation

These quantities serve as the **raw numerical outputs** from which all post-processed figures and analyses in the accompanying scripts are derived.

------

## ▶ Usage

These files are not standalone scripts, but **input datasets** for the accompanying MATLAB scripts in the reproducibility package.
 They can also be used independently for further analysis of scattering properties, eigenchannels, or related theoretical investigations.

------

## 📄 Usage Statement

These datasets are provided for **academic and research purposes**, to allow readers, editors, and reviewers to reproduce and verify the numerical results reported in the accompanying manuscript.

**Copyright (c) 2026 Chenbo Shi, UESTC, China.**

------

## 📬 Contact

Chenbo Shi
 University of Electronic Science and Technology of China (UESTC), China
 📧 [chenbo_shi@163.com](mailto:chenbo_shi@163.com)
