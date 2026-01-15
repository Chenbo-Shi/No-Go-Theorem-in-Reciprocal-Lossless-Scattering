# Random Rough Surface Geometry and Mesh Files

This folder provides the **geometry model and mesh files** of the random rough surface used in the numerical simulations.
 Because the surface is generated from a stochastic process, its exact geometry is generally **not reproducible by random seeding alone**.
 Therefore, the explicit model and mesh files are provided here to ensure **reproducibility of the reported numerical results**.

------

## 📁 File Contents

```
Random-rough-surface.cfx
nas-Random-rough-surface.nas
nas-Random-rough-surface.map
stl-Random-rough-surface.stl
README.md
```

------

## 📄 File Descriptions

### `Random-rough-surface.cfx`

A project file for electromagnetic simulation using **Altair FEKO**.

- Created with:
  - Altair FEKO 2021.1-5697 (x64)
- Compatibility:
  - Can be opened with the same or newer versions of Altair FEKO
- Purpose:
  - Contains the complete simulation setup associated with the random rough surface model

------

### `nas-Random-rough-surface.nas`

A mesh file in **NASTRAN (.nas)** format.

- Contains:
  - Full triangular mesh of the random rough surface
- Can be imported into:
  - FEKO
  - Many electromagnetic solvers
  - CAD / meshing software supporting NASTRAN format

------

### `nas-Random-rough-surface.map`

A mapping file associated with the `.nas` mesh.

- Stores:
  - Surface region definitions
  - Naming and grouping information
- Used together with:
  - `nas-Random-rough-surface.nas`

------

### `stl-Random-rough-surface.stl`

A **CAD geometry file** in STL format.

- Provides the raw geometric shape of the random rough surface
- Can be opened using:
  - Most CAD software (e.g., Blender, MeshLab, SolidWorks, etc.)
  - Geometry processing and meshing tools

------

## ▶ How to Use

- For **electromagnetic simulation**:
   Open `Random-rough-surface.cfx` directly in Altair FEKO.
- For **geometry inspection or remeshing**:
   Import `stl-Random-rough-surface.stl` into any CAD or meshing software.
- For **custom simulation workflows**:
   Use `nas-Random-rough-surface.nas` together with `nas-Random-rough-surface.map`.

------

## 📄 Usage

These files are provided for **academic and research purposes**, to allow readers, editors, and reviewers to reproduce the geometry and simulation conditions used in the accompanying manuscript.

**Copyright (c) 2026 Chenbo Shi, UESTC, China.**

------

## 📬 Contact

Chenbo Shi
 University of Electronic Science and Technology of China (UESTC), China
 📧 [chenbo_shi@163.com](mailto:chenbo_shi@163.com)
