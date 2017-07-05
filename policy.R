#install packages
install.packages('maps', repos='http://cran.us.r-project.org')
install.packages('mapdata', repos='http://cran.us.r-project.org')
install.packages('maptools', repos='http://cran.us.r-project.org')

install.packages('scales', repos='http://cran.us.r-project.org')
install.packages('mapproj', repos='http://cran.us.r-project.org')
install.packages('XML', repos='http://cran.us.r-project.org')

#load libraries
library(maps)
library(mapdata)
library(maptools)
library(scales)

# add the surrounding states, then texas with counties
map("state", xlim=c(-110,-90),ylim=c(24,40), col="gray10", fill=FALSE)
map("county", region =c('texas'), col="gray90", fill=TRUE, add=TRUE)

# basic state map of texas
map("state", region =c('texas'))

# project yourself, before you wreck yourself
map("state", xlim=c(-110,-90),ylim=c(24,40), col="gray10", fill=FALSE, proj = 'bonne', param=45)
map("county", region =c('texas'), col="gray90", fill=TRUE, add=TRUE, proj = 'bonne', param=45)

map("state", boundary = FALSE, lty = 2, add = TRUE)
