# a package is a bunch of functions that's imported into r to
# make data manipulation easier.
# Tidyverse package makes things easier
install.packages("tidyverse")
library(tidyverse)
#when you install a package you have to put it into your library.
#focusing on dplyr packages
install.packages("dplyr")
library(tidyverse)
##Ugly way
iris
iris_new <- iris
iris_new$sepal_size <- rowMeans(iris[, c("Sepal.Length","Sepal.Width")])
head(iris_new)
##Tidyverse Way
##using dplyr package from tidyverse
## introducing "%>%" Pipe
sqr
head(iris_new)
iris_1st_6 <- iris_new 

iris_1st_6 %>%
  rowwise() %>%
  mutate(Sigourney_Weaver = mean(c(Sepal.Length, Sepal.Width))) %>%
  filter(Species == "setosa")

library(dplyr)
##running probability on R-studio.
## 0=1 1=2
rbinom(n = 1, size =1, prob = .5)
##How to make a list
George_Lopez <- c("funny","comedy","nick@night")
Hollywood <- list(George_Lopez)
#How to Index
Hollywood[1]
stuff <- list("bike","hat","Eagle")
stuff[bike]
##How to make a List
The_NightMan_Commeth <- list("Charlie","Dee","Dennis","Frank")
The_NightMan_Commeth[2]
The_NightMan_Commeth[1]
The_NightMan_Commeth[3]
?data_frame()
##How to make a Data frame
BecauseOf_The_Implication <- data.frame("Dennis Reynold's Victims" = c(1, 2, 4, 8, 9, 10), "Dennis Reynold's Survivors " = c(3, 4, 4, 5))
BecauseOf_The_Implication
starwars
##How to make a vector
c("horse","bacon","lead")
##This is how you make a matrix, Place a vector c(") inside of
##matrix then comma , describe dimensions with nrow and ncol.
matrix(c("Trump","Obama",1,"Nixon","Lincoln","Truman"), nrow = 2, ncol=3)
Rick_N_Morty <- 0
Dexter <-10000
Dexter > Rick_N_Morty
Rick_N_Morty > Dexter
ThanksGivingAllyear_round <- data_frame("TurkeyLegs_Eaten_daily"= c(1,3,5,3,2,5,2)) 
ThanksGivingAllyear_round

ToothGrowth %>%
  head()
#create a new column
ToothGrowth %>%
  mutate(len_rounded = round("len", 6)) %>%
  head()
##select specific column
ToothGrowth %>%
  select(len, supp) %>%
  head()
#filter column
ToothGrowth %>%
  filter(len == 6.4)
#rename() column
ToothGrowth %>%
  rename(Supplement = supp) %>%
  # reduce data to one or more summary statistic
  ToothGrowth %>%
  group_by_(supp,dose) %>%
  summarize(mean = mean(len)) %>%
  head()
#tell r that any function from now on will be done in each group indivisually  

ToothGrowth 
# tell r that any function from now on will be done on each row indivsually.

iris %>%
  # whatever function comes after this, do it per row
  rowwise() %>%
  mutate(petal_size=mean(c(Petal.Length,Petal.Width))) %>%
  head
# puts rows in order numeric
ToothGrowth %>%
  arrange(len) %>%
  head
head
# puts rows in order alphabetically
ToothGrowth %>%
  arrange(supp) %>%
  head
# arrange rows descending
ToothGrowth %>%
  arrange(des(supp)) %>%
  head
# keep only unique rows and can specify Columns wanted
ChickWeight %>%
  distinct(Chick, Diet) %>%
  head

ToothGrowth %>%
  head()

ToothGrowth %>%
  #assign new values to old values of a column
  ## recode(column_to_recode, old_value = new _value)
  mutate((supp_recode = recode(supp, "VC" = "AA"))) %>%
  head()

install.packages("swirl")
library(swirl)   
swirl()  
install_course("Getting_and_Cleaning_Data")

swirl()
#| -- Typing skip() allows you to skip the current question.
#| -- Typing play() lets you experiment with R on your own; swirl will ignore what you
#| -- UNTIL you type nxt() which will regain swirl's attention.
#| -- Typing bye() causes swirl to exit. Your progress will be saved.
#| -- Typing main() returns you to swirl's main menu.
#| -- Typing info() displays these options again.

# data-set followed by the columns to select columns from data-set.
# Variable means Columns in this context.
# tibble is a fancy data frame that shows us rows and columns, with extra features.
# choose specific columns depending on order.
# select(data=x,column 1,column 2,column 3)
# remove columns and return everything else.
# select(data=x,-column1,-column2)
#-5:20 gives a vector from -5 to 20,-5 -4 -3 -2 -1  0  1  2  3  4  5  6 .......
# Use filter(cran, package == "swirl") to select all rows for which the package
# variable is equal to "swirl"
# specify in a column you want a value or character,filter(cran,package == "swirl")
# comma and '&' ampersand has the same meaning when using filter. comma separate arguments.
# you can use comparison (><) to filter columns in data set
# filter(cran,column <="3.0.2",column =="IN")
# NA means missing data
# is.na() tells you if it's true that you have missing data.
# ! contradicts what's after it
# Colon : gives you everything in between an interval/range of 2 numbers or columns.
# so, 2:-2 would be 2,1,0,-1,-2, starting and ending with the number to display interval.
#-(Data set, Column 1:Column 2) removes interval of columns.
# dim() gives the dimensions of the data set.
# -(5:20) makes the range opposite to it's sign them negative. -5,-6,-7...,-19,-20.
# to order the ROWS of cran2 so that ip_id is in ascending order (from small
# to large), type arrange(cran2, ip_id).
# To do the same, but in descending order, change the second argument to
# desc(ip_id)-----exmpl: arrange(cran2,desc(ip_id))
# Arrange alphabetically package column and other column numerically
# because the first column chosen is priority --arrange(cran2,package,ip_id)
# changing size of column mutate(cran3, size_mb = size / 2^20).
# Args lists arguments of function.
# how to (subset) get a data set's certain column's --
# and rows-- *cran[1:30, c("size","package")]* 
# how to create dataframe, 
# my_dataframe <- data.frame("column 1" = c(1, 2), "column 2" = c(3, 4))
# colnames() to call data frame columns rownames() to call data frame rows.
# my_mixed_matrix coerce data from matrix while matrix() doesn't.so characters are designed 
# for my mixed matrix. matrix() is just numerical, 
# how to make matrix. matrix(data = c(1, 2, 3, 4, 5, 6), nrow = 2, ncol = 3)
# assign it to my_mixed_matrix to coerce data and characterize it.
# In mutate you can create new columns that are an alteration by
# manipulating it with simple operations, the column is prioritized first. 
# of the columns selected. mutate(cran3, size_mb = size / 2^20, size_gb = size_mb / 2^10)
# 0.769/2^10,"^" is the exponent.
# mutate(cran3, correct_size = size + 1000) will create one new column that
# is equal to the original sizes plus 1000.
# *mutate says what data set you want to add a column to.*
# how to summarize getting the mean of a specific column and assign it
# to an object. summarize(cran, avg_bytes = mean(size))
# summarize-summarize(), collapses the dataset
# to a single row
# as.tibble() turns vector into data-set.
# dbl and Int is numeric.
# r studio is set to put things in scientific notation, while tibble()
# makes it easier by showing the whole value.
# Substitutes data input
# mutate(starwars, sex_recoded = recode(sex, "none" = "not applicable"))
mutate(starwars, sex_recoded = recode(sex, "none" = "not applicable"))
# rename function changes name
# rename(starwars, "height_cn", "mass_mg" = "mass")
# *Arrange Details*second column is arranged either ascending/descending in groups in arrange 
# based on the groups of the first column in the arrange function.
# no group in the first column then there is no change to the second.
# distinct gives unique rows
# -1 to 1 shows  correlation range and .5/-.5 or greater shows strong correlation.
# correlation coefficient shows strength of relationship relative to line 
# to best represent data.
summarize(starwars, mean_height = mean(height, na.rm = TRUE), 
          mean_mass = mean(mass, na.rm=TRUE),
          sd_height = sd(height, na.rm= TRUE), 
          (correlation_height_mass = cor(height,mass, use="complete.obs")))
# complete obs is used to find correlation with na
# cannot get the mean of missing data, this removes the na.
# mean(column, na.rm = True) however not for correlation function.
# logical operators go into filter
# *Learning more piping*
# functions operate(formatted) like *Function_name(.data = your_data, function arguments)
select(starwars, name, species, homeworld)
# remove column(-(column1:Column2))
# you can combine functions with piping
species_means <- starwars %>%
  select(name,species,height) %>%
  filter(height < 125) %>% 
  group_by(species) %>% 
  summarize(mean=mean(height,na.rm=TRUE))
species_means
# go straight to mutate to make columns when piping a data-set.
# mean of height for each group separately
# dplyr:: is not in your library
# gets rid of na in a column
# filter(iris, !is.na(Species)

# SD, measures of central tendency (mean/meadian/mode)
## sd()
## SD = conceptually, the mean distance of every data point from the average of all the data points.
# SD = same as unit of data and variability of y-axis.

## mean()
## median()
## no mode()
## *no built in function for mode*
## hist() creates histogram
## sum()
## sample(data-set=column,size=x)

# hist(iris$Sepal.Width)
# density()% plot
# z-score ( how many standard deviations from the mean
# (All data values individually (from the Frequencies groups) - mean of data values /sd of data values)
# the amount of data values (frequency) is indicated on the y-axis and the value
# given to the data is indicated on the x-axis

# Histograms can be displayed as polygons if preferable.

# normal distribution
# mean is always in the center for normal curve.

# correlation (Pearson's r coefficient) gives relation between 2 var

iris %>%
  summarize(correlation = cor(Sepal.Length, Sepal.Width))  

# The reason why statistics exist: sampling variability (make accurate estimations
# the mean of the sample is never as accurate as the mean of the population)

# range
# Range()returns min/max
# min()  value
# max() value
# scales of measurement (nominal, ordinal, ratio, interval)
# internal/ratio = numeric in r (numeric includes integer and double)
# nominal = factor
# ordinal = ordered factor

is.factor(iris$Species)
is.ordered(iris$Species)

iris2 <- iris
iris2$Species <- factor(iris$Species, ordered = TRUE)
levels(iris2$Species)
------------------------------------------------------------------------------------
  ##R-Mark down##
  # The YAML helps you specify global options for your document.
  # can add table of contents.
  # uses the markdown language into r
  # pound sign indicates level and creates header
  # **Bold**
  # *Italics*
  # Must type code into code chunk, three back-ticks creates chunks to run functions in
  # put r in brace to indicate you're running in r. put a label and close. 
  #```{r Bancon}
  #  "Chicken soup for the soul"
#``
# {r Bacon, echo= true(show)/false(hide)} can show and hide your code
# all coding including assignments is separate to r-studio and
# r markdown.
# tidy(data) %>%
# huxtable() gives your info neatly with all statistics falling into column.
# in addition to theme article
# this is what your title should look like for the program to operate correctly.
---
  title: "Sigourney_ Weaver"
author: "Christian T. Barden"
date: "8/16/2021"
output: 
  html_document:
  toc: true
---
  #//////////////////////////////////////////////////////////////////////////////#
  
  # factor is ordinal/nominal
  # $ is equal to = (depend) 
  
  # Functions to coerce your data to data type: 
  # as.numeric(), as.character(), as.factor()
  
  # na.rm means remove na for function with mean and separate with commas
  # mean functions don't work with na in data set'and filter for row
  # normal distribution

# Sub-setting means to filter out data by rows and columns

# p(probability value)-score : quantifies the impact of sampling variability
# the prob of getting a correlation as large or larger than the one we have. assuming
# that the null hypothesis is true and population correlation= 0
correlation <- cor.test(iris$Sepal.Width, iris$Sepal.Length)
library(broom)
tidy(correlation)

## t-score glorified z score.

# python has a different syntax compared to r but if you 
# master r you know 65 percent of python.
---------------------------------------------------------------------------------------
  
  ## Analog data has more detail than digital data in bytes of information##
  ## this would in effect show more "bin"s of information (data in bytes) for analog compared to digital.##
  ## when converting from Analog to digital you actually lose information because digital##
  ## data isn't able the catch the entire detail of data in analog.##
  
  # violin plot has a smooth histogram which is the shape and the wider the
  # Y-axis the more spread out the distribution.
  # geoms (geometry) : add plot elements
  # scales: behavior X and Y axes
  # ggplot() creates plots with plot layers. (This is like a plot sandwich)
## Creating Violin Plot##
bob <- ggplot(iris, aes(x = Species, y = Sepal.Width, fill = Species))+ ##aestetics##
  geom_violin(show.legend = FALSE) +
  geom_jitter(show.legend = FALSE) + 
  labs(title = "A Violin Plot")+ #(Plus sign works as pipe)#
  theme_classic()+
  theme(plot.title = element_text(hjust =  0.5))
bob
## continuous variable: can take on any value
## how to tell?
## 1. philosophical: judgment about nature of variable
## 2. data format: should be numeric if continuous
----------------------------------------------------------
  ## Histogram## one continuous## one interval/ratio variable ##
  #Histogram==Frequency, Bins are the number of bars#
  ggplot(starwars,aes(height))+
  geom_histogram(bins=10)

## Box and whisker plots## For nominal and ordinal data/ one continuous and categorical ##
ggplot(starwars,aes(x = gender,y = height))+
  geom_boxplot()

# box plot does show mean unless they are equivalent from normally distributed data.
#////////Gives info on density of data. The line in middle of box shows median 50th percentile^^^
#there are 4 quartiles in box plot

#### Bar plots ## For nominal and ordinal data/ one continuous and categorical##
ggplot(starwars, aes(x = gender,y = height))+
  geom_bar(stat = "summary")

#one categorical and one continuous
ggplot(iris,aes(x= Species))+
  geom_bar(stat = "count")

## scatter plots ##
ggplot(starwars, aes(x = mass, y = height))+
  geom_point()+
  geom_smooth()

## Density plot ##
ggplot(iris, aes(x = Sepal.Width)) +
  geom_density()

##Point Plot With means
ggplot(iris,aes(x= Species, y = Sepal.Width))+
  geom_point(stat = "summary")

## Grouped BoxPlot
ggplot(iris,aes(x= Species, y = Sepal.Width))+
  geom_boxplot()

## Violin Plot(The Wider the more common the value on y-axis)
## up and down tells you about the range and resembles smooth
## box plots.
ggplot(iris,aes(x= Species, y = Sepal.Width))+
  geom_violin()

## Scatter plot (two continuous variables)+++++
## Showing trend relative to a line##
## Color Affects points and lines
ggplot(iris,aes(x= Sepal.Length, y= Sepal.Width))+ ##Like the global plot setting, you can apply the aeastetic here too.
  geom_point(position = "jitter")+
  geom_smooth(method = "loess")

#Loess is a type of regression

### Adding Aesthetics
## color can affect points and lines
ggplot(iris,aes(x= Sepal.Length, y= Sepal.Width))+
  geom_point(position = "jitter",aes(color = Species))+
  geom_smooth(method = "loess", aes(color = Species))

# fill: surface area in plotting device(box-plot)

ggplot(iris,aes(x= Sepal.Length, y= Sepal.Width, fill = Species)) +
  geom_boxplot()+
  labs(y= "Sepal Width", title = "Guns N' Roses")+ ##Changes y axis and gives title
  
  #The theme() function will help you edit anything on the plot.
  
  theme_classic()+
  
  theme(plot.title = element_text(hjust = 0.5)) #(0-1 is the range of the horizontal page, the number indicates the position you want the title)

# rowwise() creates new rows.

## position = "jitter" is used to separate points with the same coordinate.##
## geom_smooth creates trend line in correlation data.
---------------------------------------------------------------
  # aesthetics control how your variables are plotted
  # geom_ shows options of plot types
  # bins are the number of bars and show variability in histogram
  # (Review)standard deviation finds variability in the data-set meaning there's a
  # diverse set of numbers
  # the point of the bar plot is not even the bar it's where the bar ends
  # so you can also use a dot plot instead of a bar graph.
  # COLUMNS ARE CONSIDERED INDEPENDENT VARIABLES
  stat_regline_equation(x = 3, y = 7)

Asprinstuff <- data.frame( 'Absorbance' = c(.737,.565,.454,.387,.212), 'Asprin_Concentration_mg.L' = c(2.5,2.0,1.5,1.0,.5))
ggplot(Asprinstuff,aes('Asprin_Concentration_mg.L','Absorbance' )+ 
         geom_point()+
         geom_smooth()
       lm(Asprin)
       
       Asprinstuff <- data.frame( 'Absorbance' = c(.737,.565,.454,.387,.212), 'Asprin_Concentration_mg' = c(2.5,2.0,1.5,1.0,.5))
       ggplot(Asprinstuff,aes(x = Asprin_Concentration_mg, y = Absorbance )
              geom_point()+
                geom_smooth(method = "lm")
              
              
              Cornsz <- data.frame("Days" = c(0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25),"Korny" <- c(0,0,0,0,0,0,0,0,0,0,0,0,0,0,.5,1.2,2.5,3.4,4.5,6,6.5,6.8,7.6,8.3,8.8,9.5),"Average_10Salt" = c(0,0, 0,0,0,0,0,0,0,0,.5,
                                                                                                                                                                                                                                 2,2.5,2.75,3,4,5,5.8,6.0,6.5,7,7.5,8,8.5,9,9.4))
              
              PaconL <- data.frame("Corny" <- c(0,0,0,0,0,0,1.111,2,4.6), "Days" <- c(0,1,2,3,4,5,6,7,8))                                                                                                                        
              
              Beanz%>%
                group_by(Half_Teaspoon_Sugar,Control,One_Fourth_Teaspoon_Sugar) -> beacon
              
              beacon
              dichard <- data.frame("Korny" <- c(0,0,0,0,0,0,0,0,0,0,0,0,0,0,.5,1.2,2.5,3.4,4.5,6,6.5,6.8,7.6,8.3,8.8,9.5), "Days" <- c(0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25))          
              
              
              
              
              ggplot()+
                geom_line(data = Cornsz, mapping = aes(x = Days, y = Average_10Salt ), color = 'blue')+
                geom_point(data = Cornsz, mapping = aes(x = Days, y = Average_10Salt ), color = 'blue')+
                geom_line(data = PaconL, mapping = aes(x = Days, y = Corny ), color = 'red')+
                geom_point(data = PaconL, mapping = aes(x = Days, y = Corny ), color = 'red')+
                geom_line(data = Cornsz, mapping = aes(x = Days, y = Korny ), color = 'green')+
                geom_point(data = Cornsz, mapping = aes(x = Days, y = Korny ), color = 'green')+
                labs(y = "Growth of Corn Stalk In Centimeters", x = "Days of Growth- Red ( 1st-Trial ), Blue ( 2nd-Trial ), Green ( Dana's )", title = "Corn Stalk Growth with 10% Intrusion")+
                theme(plot.title = element_text(hjust = 0.5))
              
              print(iris)
              