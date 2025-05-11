# Octave Gaussian Elimination

This repository contains an implementation of **Naive Gaussian Elimination** in Octave for solving systems of linear equations of the form `Ax = b`.

## 📂 Files Included

- `NaiveGauss.m`  
  A function that implements the Naive Gaussian Elimination method with back-substitution.

- `TestGauss.m`  
  A test script that constructs a specific matrix `A` where `a_ij = min(i, j)` and computes the corresponding `b` vector such that the solution is `x = [1; 1; ...; 1]`. It verifies the correctness of the algorithm.

- `TestGauss_output.txt`  
  Output from running the test script showing the computed solution and confirmation message.

## 🧮 Method Summary

**Naive Gaussian Elimination** performs two main steps:
1. **Forward Elimination**: Converts the matrix into upper triangular form.
2. **Back Substitution**: Solves for unknowns starting from the bottom row.

No pivoting is performed in this version. This algorithm assumes that the matrix is non-singular and that no zero pivot occurs.

## 🧪 Example Test

The system tested has:

- A structured matrix `A` where `a_ij = min(i, j)`
- A known solution `x = [1, 1, ..., 1]`
- A computed vector `b` from `A * x`

The script verifies that the solver recovers the correct solution within a small tolerance.

## 🛠️ Requirements

- GNU Octave (recommended)
- Compatible with MATLAB (basic syntax only)

## ✅ Usage

1. Open Octave.
2. Navigate to the folder:
   ```octave
   cd 'your/project/folder'
