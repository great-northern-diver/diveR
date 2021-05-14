# Easily Install and Load Interactive Data Visualization Tools

## diveR  <img src="man/figures/logo.png" align="right" width="120" />

[![Build Status](https://travis-ci.com/great-northern-diver/diveR.svg?branch=master)](https://travis-ci.com/great-northern-diver/diveR) 
[![CRAN\_Status\_Badge](http://www.r-pkg.org/badges/version/diveR)](https://cran.r-project.org/package=diveR)


`diveR` is the `looniverse` of `loon` related packages, the **great northern diver** being another name (chiefly British) for the **Common loon** (chiefly North American).


Together the packages of the `diveR` suite provides data analytic tools for  **d**irect **i**nteractive **v**isual **e**xploration in **R**.

These tools work with and complement those of the `tidyverse` suite, completing the graphics grammar of `ggplot2` to provide a **grammar of interactive graphics**. The suite provides many visual tools designed for moderately (100s of variables) high dimensional data analysis, through `zenplots` and novel tools in `loon`, and extends the `ggplot2` grammar to provide parallel coordinates, Andrews plots, and arbitrary glyphs through `ggmulti`.

The  `diveR` suite gathers together and installs all these related packages (documentation in links):

- [loon](http://great-northern-diver.github.io/loon/)

  This is the backbone package that provides the interactive graphics.
   
- [loon.data](http://great-northern-diver.github.io/loon.data/)

  Provides a rich collection of data sets to illustrate interactive graphics.  It also includes several artificial data sets constructed for teaching purposes.
  
- [zenplots](http://great-northern-diver.github.io/zenplots/)

  Extends 
  
  - the base `graphics` package
  - the `grid` graphics package
  - the `loon` interactive graphics package
  
  to allow for the layout of alternating 1d and 2d plots.
  
  Provides compact displays for high dimensional data 
  (e.g., where pairs plots would be too small to be informative).

- [ggmulti](http://great-northern-diver.github.io/ggmulti/)

  Extends the grammar of the  `ggplot2` package to accommodate displays such as parallel coordinate and Andrews function plots for high dimensional data.
  
- [loon.ggplot](http://great-northern-diver.github.io/loon.ggplot/)

  Provides a bridge between the elegant but static displays of `ggplot2` and the interactive direct manipulation graphics of `loon`
  
  Extends `ggplot2` to provide a **grammar of interactive graphics**
  
  
- [loon.shiny](http://great-northern-diver.github.io/loon.shiny/)

  Enables loon plots and loon style interaction (e.g., brushing, linked plots, panning, zooming, etc., as well as a shiny version of loon inspectors) to be incorporated into a shiny application (including an RMarkdown file). 

- [loon.tourr](http://great-northern-diver.github.io/loon.tourr/)

  Enables interactive multivariate data tours with loon plots.  Builds on the 
  tour engine of the
  [tourr]( https://CRAN.R-project.org/package=tourr) `R` package. 
