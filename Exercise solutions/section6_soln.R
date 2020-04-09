#importing Data

data <- read.csv(file.choose())

library(ggplot2)

#filtering Dataframe

filtered <- data$Genre %in% c("action","adventure","animation","comedy","drama") 

filter2 <- data$Studio %in% c("Buena Vista Studios", "Fox", "Paramount Pictures", "Sony", "Universal", "WB")

newdata <- data[filtered & filter2,]

#aes layers
plots <- ggplot(data = newdata, aes(x=Genre, y=Gross...US))
#adding geometries
newPlot <- plots + geom_jitter(aes(size = Budget...mill., colour= Studio)) +
  geom_boxplot(alpha = 0.5, outlier.color = NA)
  
#

newPlot <- newPlot +
  xlab("Genre") +
  ylab('Gross % US') +
  ggtitle('Domestic Gross % by Genre')

#Themeing

newPlot <- newPlot +
  theme(
    axis.title.x = element_text(color = "Blue", size = 30),
    axis.title.y = element_text(color = "Blue", size = 30),
    axis.text.x = element_text(size = 20),
    axis.text.y = element_text(size = 20),
    plot.title = element_text(size = 40),
    legend.title = element_text(size = 20),
    legend.text = element_text(size = 20),
    text = element_text(family = "Comic Sans MS")
    
  )

newPlot$labels$size <- "Budget$M"
newPlot
