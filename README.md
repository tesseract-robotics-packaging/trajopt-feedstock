About trajopt-pkg
=================

Home: https://github.com/tesseract-robotics/trajopt

Package license: BSD-2-Clause

Feedstock license: [BSD-3-Clause](https://github.com/tesseract-robotics/trajopt-feedstock/blob/master/LICENSE.txt)

Summary: Trajectory Optimization Motion Planner

Current build status
====================


<table>
</table>

Current release info
====================

| Name | Downloads | Version | Platforms |
| --- | --- | --- | --- |
| [![Conda Recipe](https://img.shields.io/badge/recipe-trajopt-green.svg)](https://anaconda.org/tesseract-robotics/trajopt) | [![Conda Downloads](https://img.shields.io/conda/dn/tesseract-robotics/trajopt.svg)](https://anaconda.org/tesseract-robotics/trajopt) | [![Conda Version](https://img.shields.io/conda/vn/tesseract-robotics/trajopt.svg)](https://anaconda.org/tesseract-robotics/trajopt) | [![Conda Platforms](https://img.shields.io/conda/pn/tesseract-robotics/trajopt.svg)](https://anaconda.org/tesseract-robotics/trajopt) |
| [![Conda Recipe](https://img.shields.io/badge/recipe-trajopt--ifopt-green.svg)](https://anaconda.org/tesseract-robotics/trajopt-ifopt) | [![Conda Downloads](https://img.shields.io/conda/dn/tesseract-robotics/trajopt-ifopt.svg)](https://anaconda.org/tesseract-robotics/trajopt-ifopt) | [![Conda Version](https://img.shields.io/conda/vn/tesseract-robotics/trajopt-ifopt.svg)](https://anaconda.org/tesseract-robotics/trajopt-ifopt) | [![Conda Platforms](https://img.shields.io/conda/pn/tesseract-robotics/trajopt-ifopt.svg)](https://anaconda.org/tesseract-robotics/trajopt-ifopt) |
| [![Conda Recipe](https://img.shields.io/badge/recipe-trajopt--sco-green.svg)](https://anaconda.org/tesseract-robotics/trajopt-sco) | [![Conda Downloads](https://img.shields.io/conda/dn/tesseract-robotics/trajopt-sco.svg)](https://anaconda.org/tesseract-robotics/trajopt-sco) | [![Conda Version](https://img.shields.io/conda/vn/tesseract-robotics/trajopt-sco.svg)](https://anaconda.org/tesseract-robotics/trajopt-sco) | [![Conda Platforms](https://img.shields.io/conda/pn/tesseract-robotics/trajopt-sco.svg)](https://anaconda.org/tesseract-robotics/trajopt-sco) |
| [![Conda Recipe](https://img.shields.io/badge/recipe-trajopt--sqp-green.svg)](https://anaconda.org/tesseract-robotics/trajopt-sqp) | [![Conda Downloads](https://img.shields.io/conda/dn/tesseract-robotics/trajopt-sqp.svg)](https://anaconda.org/tesseract-robotics/trajopt-sqp) | [![Conda Version](https://img.shields.io/conda/vn/tesseract-robotics/trajopt-sqp.svg)](https://anaconda.org/tesseract-robotics/trajopt-sqp) | [![Conda Platforms](https://img.shields.io/conda/pn/tesseract-robotics/trajopt-sqp.svg)](https://anaconda.org/tesseract-robotics/trajopt-sqp) |
| [![Conda Recipe](https://img.shields.io/badge/recipe-trajopt--utils-green.svg)](https://anaconda.org/tesseract-robotics/trajopt-utils) | [![Conda Downloads](https://img.shields.io/conda/dn/tesseract-robotics/trajopt-utils.svg)](https://anaconda.org/tesseract-robotics/trajopt-utils) | [![Conda Version](https://img.shields.io/conda/vn/tesseract-robotics/trajopt-utils.svg)](https://anaconda.org/tesseract-robotics/trajopt-utils) | [![Conda Platforms](https://img.shields.io/conda/pn/tesseract-robotics/trajopt-utils.svg)](https://anaconda.org/tesseract-robotics/trajopt-utils) |
| [![Conda Recipe](https://img.shields.io/badge/recipe-vhacd-green.svg)](https://anaconda.org/tesseract-robotics/vhacd) | [![Conda Downloads](https://img.shields.io/conda/dn/tesseract-robotics/vhacd.svg)](https://anaconda.org/tesseract-robotics/vhacd) | [![Conda Version](https://img.shields.io/conda/vn/tesseract-robotics/vhacd.svg)](https://anaconda.org/tesseract-robotics/vhacd) | [![Conda Platforms](https://img.shields.io/conda/pn/tesseract-robotics/vhacd.svg)](https://anaconda.org/tesseract-robotics/vhacd) |

Installing trajopt-pkg
======================

Installing `trajopt-pkg` from the `tesseract-robotics` channel can be achieved by adding `tesseract-robotics` to your channels with:

```
conda config --add channels tesseract-robotics
conda config --set channel_priority strict
```

Once the `tesseract-robotics` channel has been enabled, `trajopt, trajopt-ifopt, trajopt-sco, trajopt-sqp, trajopt-utils, vhacd` can be installed with:

```
conda install trajopt trajopt-ifopt trajopt-sco trajopt-sqp trajopt-utils vhacd
```

It is possible to list all of the versions of `trajopt` available on your platform with:

```
conda search trajopt --channel tesseract-robotics
```




Updating trajopt-pkg-feedstock
==============================

If you would like to improve the trajopt-pkg recipe or build a new
package version, please fork this repository and submit a PR. Upon submission,
your changes will be run on the appropriate platforms to give the reviewer an
opportunity to confirm that the changes result in a successful build. Once
merged, the recipe will be re-built and uploaded automatically to the
`tesseract-robotics` channel, whereupon the built conda packages will be available for
everybody to install and use from the `tesseract-robotics` channel.
Note that all branches in the tesseract-robotics/trajopt-pkg-feedstock are
immediately built and any created packages are uploaded, so PRs should be based
on branches in forks and branches in the main repository should only be used to
build distinct package versions.

In order to produce a uniquely identifiable distribution:
 * If the version of a package **is not** being increased, please add or increase
   the [``build/number``](https://docs.conda.io/projects/conda-build/en/latest/resources/define-metadata.html#build-number-and-string).
 * If the version of a package **is** being increased, please remember to return
   the [``build/number``](https://docs.conda.io/projects/conda-build/en/latest/resources/define-metadata.html#build-number-and-string)
   back to 0.

Feedstock Maintainers
=====================

* [@johnwason](https://github.com/johnwason/)

