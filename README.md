# EigenFaces
EigenFaces Algorithm is implemented using MATLAB. 
## Description
EigenFaces is a Computer Vision Algorithm for face recognition. It solves the face recognition problem with few linear Algebra Fundatmentals. This repository is an implementation of the algorithm.
#### Eigenvectors and Eigenvales
According to [Wikipedia](https://en.wikipedia.org/wiki/Eigenvalues_and_eigenvectors)<br/>
"In linear algebra, an eigenvector x of a linear transformation A is a nonzero vector that changes at most by a scalar factor λ when that linear transformation is applied to it. The corresponding eigenvalue is the factor by which the eigenvector is scaled."<br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Ax = λx
#### Principle Component Analysis
The PCA is used in EigenFaces algorithm to reduce the dimensions of the images to be saved. The main goal of PCA is dimensionality reduction. The idea behind it is to linearly project original data onto a lower dimensional subspace offering the principal components (eigenvectors) of maximum variance of the projected data and/or minimum distortion error from the projection. Eventually, both lead to the same result which is the best reconstruction formula. This subspace is called principal subspace.<br/>
For thorough understanding of the PCA you can refer to [ ANU’s lecture notes about PCA](https://machlearn.gitlab.io/isml2018/lectures/11a_Principal_Component_Analysis.pdf) and youtube video [Principal Components Analysis - Georgia Tech - Machine Learning](https://www.youtube.com/watch?v=kw9R0nD69OU)
#### Eigenfaces
