#How to install packages------
install.packages("tidyverse")

#call libraries
library(tidyverse)

## first Code

#Variable assignment
a <- 1
b <- 2
#Simple Arithmetic

c <- a -(b+a)

#Importing data into R
 #data()
titanic <- Titanic

#create data to a local machine
write.csv(titanic, file = "titanic.csv", row.names = F)

#read data into 
titanic_import <- read.csv(file = "titanic.csv")

#EDA - Eploratory data into R --------

glimpse(titanic_import)
View(titanic_import)

#how many male adults died

##     THE PIPE
adult <- titanic_import %>%
      filter(Sex=="Male", Survived=="No", Age == "Adult")%>%
      group_by(Sex) %>%
      summarise(number = sum(Freq))

Sum(adult$Freq)
adult
view(titanic_import%>%
       filter(Sex=="Male", Survived=="No", Age == "Adult"))

#create a dataframe with onlysex and frequency column
sex_freq <- titanic_import %>%
           select(Sex,Freq)%>%
           group_by(Sex)%>%
           summarise(number=sum(Freq))
#base R plot           
plot(sex_freq$Sex,sex_freq$number)


ggplot(data = sex_freq, aes(x=Sex, y=number, fill=Sex))+ geom_bar(stat = "identity")

View(sex_freq)
