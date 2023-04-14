#airquality = read.csv('path/airquality.csv',header=TRUE, sep=",")
airquality <- datasets::airquality

####Top 10 rows and last 10 rows
head(airquality,10)
tail(airquality,10)
######Columns
airquality[,c(1,2)]
airquality[,c("Ozone","Wind")]
df<-airquality[,-6]

####Descriptive statistics 

summary(airquality)
airquality$Wind
summary(airquality$Wind) 

mean(airquality$Wind,na.rm = T)
median(airquality$Wind,na.rm = T)
min(airquality$Wind,na.rm = T)
max(airquality$Wind,na.rm = T)
sd(airquality$Wind,na.rm = T)
var(airquality$Wind,na.rm = T)
range(airquality$Wind,na.rm = T)
quantile(airquality$Wind,na.rm = T)

#Skewness & Kurtosis 
library(moments)
skewness(airquality$Temp)
kurtosis(airquality$Temp)

#Charts

plot(airquality$Temp,airquality$Wind)
plot(airquality)
plot(airquality$Wind, xlab = 'Ozone Concentration', 
     ylab = 'No of Instances', main = 'Ozone levels in NY city',
     col = 'blue')

#Histogram
hist(airquality$Temp)
hist(airquality$Temp, 
     main = 'Solar Radiation values in air',
     xlab = 'Solar rad.', col='blue')

#Box plot
boxplot(airquality$Wind,main="Boxplot")
boxplot.stats(airquality$Wind)$out

#######################

##Home work
e_quakes<-datasets::quakes
###########
####Top 10 rows and last 10 rows
head(quakes,15)
tail(quakes,10)
######Columns
quakes[,c(1,2)]
quakes[,c("mag","stations")]
#query - function works
df<- quakes [,-1]

####Descriptive statistics 

summary(quakes)
quakes$mag
summary(quakes$mag) 

mean(quakes$mag,na.rm = T)
median(quakes$mag,na.rm = T)
min(quakes$mag,na.rm = T)
max(quakes$mag,na.rm = T)
sd(quakes$mag,na.rm = T)
var(quakes$mag,na.rm = T)
range(quakes$mag,na.rm = T)
quantile(quakes$mag,na.rm = T)

#Skewness & Kurtosis 
library(moments)
skewness(quakes$mag)
kurtosis(quakes$mag)

#Charts
#error during output
plot(quakes$mag,quakes$depth)
plot(quakes)
plot(quakes$mag, xlab = 'depth', 
     ylab = 'magnitude', main = 'Earthquake data',
     col = 'red')

#Histogram
hist(quakes$mag)
hist(quakes$mag, 
     main = 'magnitude of quakes',
     xlab = 'magnitude', col='blue')

#Box plot
boxplot(quakes$mag,main="Boxplot")
quantile(quakes$mag,na.rm = T)
boxplot.stats(quakes$mag)$out
















sd(quakes$mag,na.rm = T)

#var
#skewness
#kurtosis
#Density plot









