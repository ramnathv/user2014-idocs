### Installation

Slidify is not on CRAN and needs to be installed from `github` using the `devtools` package.

```r
pkgs <- c("slidify", "slidifyLibraries", "rCharts")
devtools::install_github(pkgs, "ramnathv")
```

While the installation process from `github` is relatively painless for Mac/Linux/Ubuntu users, Windows users can be made to jump through hoops. 

![hoops](http://www.fodrizzle.com/wp-content/uploads/2012/04/Invisible-Hula-Hoop.gif)

For those of you on Windows that hit a bottleneck, here is an [excellent blog post](http://thiagosilva.wordpress.com/2013/02/17/installing-slidify-on-a-windows-machine/) that takes you through an alternate installation process that has been reported to work well.

> **warning** Given that installation can be time consuming (especially on Windows), I would strongly urge everyone attending the workshop to pre-install packages beforehand. 

If you are having installation troubles, you may post it as an [issue](http://github.com/ramnathv/user2014/issues/new). Make sure to outline the exact steps you undertook, and also paste the output of your `sessionInfo()` so that it would be easier for me to help you debug. 

<style>p{text-align: justify;}</style>