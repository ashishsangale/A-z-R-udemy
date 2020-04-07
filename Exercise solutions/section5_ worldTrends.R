#importing Data
data <- read.csv(file.choose())

#spliting the dataframe into 2 dataframes
data.2013 <- data[data$Year==2013,]
data.1960 <- data[data$Year==1960,]


#adding life expectancy column and merging into main dataframme
add.1960 <- data.frame(Country = Country_Code, Life.expectancy= Life_Expectancy_At_Birth_1960)
merged.1960 <- merge(x=data.1960, y=add.1960, by.x = 'Country.Code', by.y = 'Country' )

add.2013 <- data.frame(Country = Country_Code, Life.expectancy= Life_Expectancy_At_Birth_2013)
merged.2013 <- merge(x=data.2013, y=add.2013, by.x = 'Country.Code', by.y = 'Country' )

#removing year column
merged.1960$Year = NULL
merged.2013$Year = NULL

#Visualising
qplot(data = merged.1960, x= Fertility.Rate, y= Life.expectancy,
      color= Region, size= I(5), alpha= 0.6, 
      main= 'Fertility rate vs Life expectancy 1960')

qplot(data = merged.2013, x= Fertility.Rate, y= Life.expectancy,
      color= Region, size= I(5), alpha= 0.6, 
      main= 'Fertility rate vs Life expectancy 2013')
