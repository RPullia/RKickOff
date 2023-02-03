#to install ggplot package run install.packages("ggplot2") in the console or use the Packages tab

# importing packages: datasets, ggplot2
library(datasets)
library(ggplot2)

#uploading mtcars dataset
data("mtcars")

#visualizing dataset
View(mtcars)

#view first 5 rows
head(mtcars, 5)

#create scatterplot of displacement (disp) and miles per gallon (mpg)
ggplot(aes(x=disp, y=mpg), data=mtcars)+
  geom_point()+
  ggtitle("displacement vs miles per gallon")+
  labs(x = "Displacement", y= "Miles per gallon")

#make vs attribute a factor
mtcars$vs <- as.factor(mtcars$vs)

#create a box plot of the distribution for v-shaped (vs=0) and straight (vs=1) engine 
ggplot(aes(x=vs, y=mpg, fill = vs), data = mtcars)+
  geom_boxplot(alpha=0.3)+ 
  theme(legend.position = "none")

#histogram of weight wt
ggplot(aes(x=wt), data=mtcars)+
  geom_histogram(binwidth = 0.5)