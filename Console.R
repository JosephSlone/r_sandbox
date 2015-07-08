# http://rpubs.com/thoughtfulbloke/subset

data(iris)
str(iris)
summary(iris)

plot(iris$Petal.Length, iris$Petal.Width, type="n")
points(iris$Petal.Length, iris$Petal.Width, pch=19, col=iris$Species)

plot(iris$Petal.Length, iris$Petal.Width, type="n")
points(iris$Petal.Length[iris$Species=="setosa"], iris$Petal.Width[iris$Species=="setosa"], pch=19, col=iris$Species[iris$Species=="setosa"])

criteria <- iris$Species=="setosa"
plot(iris$Petal.Length, iris$Petal.Width, type="n")
points(iris$Petal.Length[criteria], iris$Petal.Width[criteria], pch=19, col=iris$Species[criteria])

criteria <-  iris$Sepal.Width < 3.1
plot(iris$Petal.Length, iris$Petal.Width, type="n")
points(iris$Petal.Length[criteria], iris$Petal.Width[criteria], pch=19, col=iris$Species[criteria])

# One could change the criteria with various boolean operators in order to
# widen or limit the values being plotted.
#
# Using %in% as opposed to several "and" (&) operators
# criteria <- iris$Species %in% c("setosa","elephant","dingo")
#
# using or with parenthises
#
#criteria <- iris$Species=="setosa" & (iris$Sepal.Width < 3.1 | iris$Sepal.Width > 3.5)


# Subset a dataframe
rowcriteria <- iris$Species == "setosa"
columncriteria <- 1:2
summary(iris[rowcriteria, columncriteria])

# Using row names
rowcriteria <- iris$Species=="setosa"
columncriteria <- c("Petal.Length","Petal.Width")
summary(iris[rowcriteria,columncriteria])

mysubset <- iris[rowcriteria, columncriteria]  # copy the dataframe


