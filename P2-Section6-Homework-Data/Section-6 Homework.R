getwd()
setwd("C:\\Users\\Sukumar\\Downloads\\P2-Section6-Homework-Data")
getwd()
movies <- read.csv("Section6-Homework-Data.csv")

fil <- (movies$Genre == "action") | (movies$Genre == "adventure") |(movies$Genre == "animation") |(movies$Genre == "comedy") |(movies$Genre == "drama")
fil2 <- (movies$Studio == "Buena Vista Studios") |
  (movies$Studio == "Fox") |
  (movies$Studio == "Paramount Pictures") |
  (movies$Studio == "Sony") |
  (movies$Studio == "Universal") |
  (movies$Studio == "WB") 
#Or
#fil2 <- movies$Studio %in% c("Buena Vista Studios","Fox","Paramount Pictures","Sony","Universal","WB") 
movies.modified <- movies[fil & fil2, ]
head(movies.modified)
tail(movies.modified)
#movies$Budget...mill. <- factor(movies$Budget...mill.)
#levels(movies.modified$Movie.Title)
#install.packages("extrafont")
#extrafont::loadfonts(device="win")
library(ggplot2)
windowsFonts()
library(extrafont)
font_import()
loadfonts(device = "win")
movie.plot <- ggplot(data=movies.modified, aes(x = Genre, y = Gross...US))
h <- movie.plot + geom_jitter(aes(colour=Studio, size = Budget...mill.))+ geom_boxplot(alpha = 0.6)

j<- h + xlab("Genre")+
  ylab("Gross%US")+
  ggtitle("Domestic Gross% by Genre")+
  theme(axis.title.x = element_text(colour = "Blue", size= 30, family="Comic Sans MS"),
          axis.title.y = element_text(colour = "Blue", size = 30, family="Comic Sans MS"),
        legend.title = element_text(size = 20,family="Comic Sans MS"),
        legend.text = element_text(size = 10),
        plot.title = element_text(size = 30, family="Comic Sans MS"))
#j$labels$size = "Budget $M"
j

