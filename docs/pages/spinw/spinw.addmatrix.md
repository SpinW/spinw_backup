---
{title: spinw.addmatrix method, link: spinw.addmatrix, summary: adds new matrix that
    can be assigned to spins in the Hamiltonian, keywords: sample, sidebar: sw_sidebar,
  permalink: spinw_addmatrix.html, folder: spinw, mathjax: 'true'}

---

### Syntax

`addmatrix(obj,Name,Value)`

### Description



### Examples

crystal.ADDMATRIX('value',eye(3))
Adds a diagonal matrix, that can describe Heisenberg interaction.

### Input Arguments

`obj`
: [spinw](spinw.html) object.

### Name-Value Pair Arguments

`value`
: The value of the matrix, dimensions are  [3 3 nJ], default value is
  eye(3). If the given value is scalar, a diagonal matrix is
  generated with the given value in its diagonal. If the given
  value is a 3 element vector, a DM interaction matrix is created
  according to the following rule:
  DM = [0 Dz -Dy;-Dz 0 Dx;Dy -Dx 0].

`mat`
: Alternative option name to 'value'.

`label`
: Label for plotting, strings in a cell, dimensions are [1 nJ],
  default value is 'matI', where I is the index of the matrix.

`color`
: Color for plotting, either a matrix with dimensions are  [3 nJ]
  that contains color RGB codes (0-255), or string with the name
  of the color (for multiple matrix the string have to be packed
  into a cell. Default color is a random color from the color.dat
  file.

### Output Arguments

The obj output will contain the added matrix in the obj.matrix field.

### See Also

[spinw](spinw.html) \| [swplot.color](swplot_color.html)
