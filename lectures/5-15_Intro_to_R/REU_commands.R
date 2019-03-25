##==============================================================================
## REU_commands.R
## REU2017: Some commands to demonstrate use of RStudio
## BY WINNIE VAN DIJK, CREATED ON 6/18/2016, EDITED 7/5/2017
##==============================================================================

## SETTING THE WORKING DIRECTORY
setwd("C:/Users/Test/Dropbox/Teaching/REU/Code/R")

# This is useful when you plan to import code or data from other files. Setting 
# the working directory tells R where to look for those files when you haven't 
# specified a complete path, and where to save output from the current session.


## CLEARING THE WORKSPACE
rm(list = ls())


## SIMPLE CALCULATIONS
1 + 1
2 * 3
2 * pi


## RUNNING CODE FROM AN .R FILE
# We could have typed this into the command line, but instead we run it by 
# selecting the relevant lines of code, and then pressing CTRL+Enter.

# Alternatively, select the lines of code you want to run and hit "Run" in the 
# upper-right corner of this part of the interface.

# Using CTRL+Shift+Enter, the code is run from the top.

# Every line starting with '#' is a 'comment', not seen as executable code by R.


## COMMAND HISTORY
# The top-right panel has a tab called 'History'. Here, you can see every line
# of code that you put to the command line. You can copy-paste from here.

# You can also pull up previous commands by placing your cursor on the command 
# line and repeatedly pressing the 'up' arrow until you find the command you 
# want.

# Using tab on the command allows command completion.


## WORKSPACE
# There is another tab called 'Environment'. This is where you can see a list of 
# objects that are in your workspace. Currently, there is nothing in our 
# workspace. Let's add some things:
x <- 1
s <- "abc"

# This is called variable assignment.

# Later, you can choose to save all the items in your workspace in a file. 
# This is convenient if some of the data objects are the result of time-consuming 
# calculations.


## HELP
# In the bottom-left panel, you can see a tab labeled 'Help'. If you click on
# it, you will a search field where you look up the purpose and syntax for a 
# given command.

# Often, it is easier to google the task that you are trying to complete. You
# should also consider forums like Stack Overflow.


## PLOTS
# This tab shows the output from command that generate graphics. For example:
x <- 1:100
y <- log(x)
plot(x,y) # scatter plot
plot(x,y,type = 'l') # line plot


## PACKAGES
# This tab shows a list of packages (extensions) that are available to you. 
# Sometimes, you will need to download and install a package before you can use 
# it. You can do this by clicking 'Install' and searching for the package name.

# Let's try installing a package that we will use later: stargazer. We can do
# this manually, or run this line of code:
install.packages("stargazer")

# To activate the package, either select it in the Packages tab, or run
library("stargazer")


## WRITING .R FILES AND SAVING YOUR CODE
# The code in this file can be save by clicking on 'File' and then 'Save' or 
# 'Save as'. You can start a new .R file by clicking on 'File' and then 
# 'New file' and then 'R Script'.


## SOLUTIONS TO EXERCISE 1.1
# (a)
sqrt(exp(exp(2)))

# (b)
pnorm(0.5, mean = 0, sd = 1)

# (c)
max(1, (sin(pi/2))^2)


## SOLUTIONS TO EXERCISE 1.2
# (a)
x <- c(1,2,3)
y <- c(4,5,6)
x
y
x <- seq(from = 1, to = 3, by = 1)
y <- seq(from = 4, to = 6, by = 1)
x <- 1:3
y <- 4:6

# (b)
x * y
x %*% y

# (c)
cbind(x, y)
rbind(x, y)

# (d)
max(x,y) # max of all the elements in x and y
pmax(x,y) # row-wise max
apply(cbind(x,y),1,max) # apply the max funcion to each row in cbind(x,y)
apply(cbind(x,y),2,max) # apply the max funcion to each column in cbind(x,y)


## SOLUTIONS TO EXERCISE 1.3
x <- 1:6

# (a)
sum(x)

# (b)
mean(x)

# (c)
x[1] <- 0
x

# (d)
y <- x + 1
y

# (e)
x[c(1,3)]
x[2:4]
x[-2]
x[x < 4]
x < 4

# (f)
x[c(1,3,5)] <- x[c(1,3,5)] + 1
x

# (g)
x[x < 4] <- x[x < 4] + 1
x

# (h)
x[7] <- 7
x[9] <- 9
x


## SOLUTIONS TO EXERCISE 1.4
A <- matrix(1:9, nrow = 3, ncol = 3, byrow = TRUE)
A <- matrix(rep(1:3,3), nrow = 3, ncol = 3, byrow = TRUE)
B <- diag(c(4,5,6))
A
B

# (a)
A * B # element-wise multiplication
A %*% B # matrix multiplication

# (b)
A[1,]
A[,1]

# (c)
t(A)
solve(A)

# (d)
A[2,2] <- 1
A

# (e)
diag(A) <- 1
A

# (f)
C <- A[1:2,]

# (g)
dim(C)
nrow(C)


## SOLUTIONS TO EXERCISE 2.2
library(readr)
county_data <- read_csv("C:/Users/Test/Downloads/nhgis0009_csv/nhgis0009_csv/nhgis0009_ds199_2013_county.csv")


## SOLUTIONS TO EXERCISE 2.3
mydata <- read_csv("C:/Users/Test/Downloads/county_data.csv")


## SOLUTIONS TO EXERCISE 2.4
# See slides


## SOLUTIONS TO EXERCISE 2.5
# (d)
dt3 <- dt[, list(weight_gain = max(weight) - min(weight), time = Time), by = Chick]
dt3[, list(mean_weight_gain = mean(weight_gain), sd_weight_gain = sd(weight_gain)), by = list(time)]

## SOLUTIONS TO EXERCISE 2.6
# (a)
library(fivethirtyeight)
library(ggthemes)
# (b)
dt <- data.table(daily_show_guests)
# (c)
dt <- dt[!is.na(dt$group),]
# (d)
dt1 <- dt[, total_appearances = .(.N), .(year,group)]
# (e)
ggplot(dt1, aes(x = year, y = total_appearances, colour = group)) + geom_line() + theme_fivethirtyeight()


## SOLUTIONS TO EXERCISE 2.7
# (a)
library(rgdal) # used to load the shapefiles
library(ggmap) # used to plot at the end
library(sp)
library(readr) # to read in data files fast
# (d)
setwd("C:/Users/Test/Downloads/")
pointdf <- read_csv(file = "Grocery_Stores_-_2013.csv") # import data
chicago <- get_map(location = "chicago", zoom = 11) # import map
ggmap(chicago) + geom_point(data = pointdf, aes(x = LONGITUDE, y = LATITUDE)) + ggtitle("Map of Chicago Grocery Stores")
# (e)
setwd("C:/Users/Test/Downloads/Boundaries - Community Areas (current)/")
overlay <- readOGR(".","geo_export_a3feb55a-afb1-4aca-839e-6882c81c8c08") # your file may have a different name
overlay <- spTransform(overlay, CRS("+proj=longlat +datum=WGS84"))
overlay <- fortify(overlay)
location <- unlist(geocode('4135 S Morgan St, Chicago, IL 60609')) + c(0,.02)
gmap <- get_map(location = location, zoom = 10, maptype = "terrain", source = "google", col = "bw")
gg <- ggmap(gmap) + geom_polygon(data = overlay, aes(x = long, y = lat, group = group), color = "red", alpha = 0)
gg
# (f)
gg <- gg + geom_point(data = pointdf, aes(x = LONGITUDE, y = LATITUDE))
gg
# (g)
pointdt <- data.table(pointdf) # convert to data.table for convenience
ca_storecount <- pointdt[, .(.N), by = `COMMUNITY AREA`] # count number of stores per community area
overlay <- readOGR(".","geo_export_a3feb55a-afb1-4aca-839e-6882c81c8c08") # your file may have a different name
overlaydata <- data.table(overlay@data) # extract the data part
overlaydata <- merge(overlaydata, ca_storecount, by.x = "area_numbe", by.y = "COMMUNITY AREA", all.x = TRUE, all.y = FALSE) # merge in the store counts
overlaydata$id <- sapply(slot(overlay, "polygons"), function(x) slot(x, "ID")) # add ids that correspond to the slot ids in overlay
overlay <- data.table(fortify(overlay))
overlay <- merge(overlay, overlaydata, by = 'id') # merge the data back in
gmap <- get_map(location = location, zoom = 10, maptype = "terrain", source = "google", col = "bw")
gg <- ggmap(gmap) + geom_polygon(data = overlay, aes(x = long, y = lat, group = group, fill = N), color = "red", alpha = 1)
gg
# (h)
gg + scale_fill_gradient(low = 'grey', high = 'red')