#adapted from example in ArchLinux wiki
setwd("~/r") # define a start up working directory
.First <- function(){
message("Welcome")
}                                                       
options(digits = 12)  # number of digits to print. Default is 7, max is 15
options(stringsAsFactors = FALSE)
options(show.signif.stars = FALSE)
error = quote(dump.frames("${R_HOME_USER}/testdump", TRUE))
## Default repo, if not using R-studio or other handlers
local({r <- getOption("repos")
       r["CRAN"] <- "http://cran.r-project.org" 
       options(repos=r)
})
