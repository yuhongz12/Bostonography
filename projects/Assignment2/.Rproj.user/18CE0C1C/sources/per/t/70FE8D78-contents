# importing ggplot2
library(ggplot2)

#importing data
acs1216<-read.csv('ACS_1216_TRACT.csv')
bos_tracts<-read.csv('Tracts_Boston_2010_BARI.csv')
acs1216_bos<-merge(acs1216,bos_tracts,by='CT_ID_10',all.y=TRUE)
names(acs1216_bos)

## Education
summary(acs1216_bos$LessThanHS)
summary(acs1216_bos$HSGrad)
summary(acs1216_bos$SomeColl)
summary(acs1216_bos$Bach)
summary(acs1216_bos$Master)
summary(acs1216_bos$Prof)
summary(acs1216_bos$Doc)

hist_lessThanHS <- ggplot(aes(x=LessThanHS), data=acs1216_bos) + geom_histogram(bins=10)
hist_lessThanHS

hist_HSGrad <- ggplot(aes(x=HSGrad), data=acs1216_bos) + geom_histogram(bins=10)
hist_HSGrad

hist_SomeColl <- ggplot(aes(x=SomeColl), data=acs1216_bos) + geom_histogram(bins=10)
hist_SomeColl

hist_Bach <- ggplot(aes(x=Bach), data=acs1216_bos) + geom_histogram(bins=10)
hist_Bach

hist_Master <- ggplot(aes(x=Master), data=acs1216_bos) + geom_histogram(bins=10)
hist_Master

hist_Prof <- ggplot(aes(x=Prof), data=acs1216_bos) + geom_histogram(bins=10)
hist_Prof

hist_Doc <- ggplot(aes(x=Doc), data=acs1216_bos) + geom_histogram(bins=10)
hist_Doc

ggplot(aes(x=LessThanHS), data=acs1216_bos) + geom_histogram(bins=20) + xlab('% Less Than High SChool') + ylab('# of tracts')
ggplot(aes(x=HSGrad), data=acs1216_bos) + geom_histogram(bins=20) + xlab('% High SChool Graduate') + ylab('# of tracts')
ggplot(aes(x=SomeColl), data=acs1216_bos) + geom_histogram(bins=20) + xlab('% Some College') + ylab('# of tracts')
ggplot(aes(x=Bach), data=acs1216_bos) + geom_histogram(bins=20) + xlab('% bachelors Degree') + ylab('# of tracts')
ggplot(aes(x=Master), data=acs1216_bos) + geom_histogram(bins=20) + xlab('% Masters Degree') + ylab('# of tracts')
ggplot(aes(x=Prof), data=acs1216_bos) + geom_histogram(bins=20) + xlab('% Professional Degree') + ylab('# of tracts')
ggplot(aes(x=Doc), data=acs1216_bos) + geom_histogram(bins=20) + xlab('% Docorate Degree') + ylab('# of tracts')

# based on these diagrams, i noticed that the scale are different which means that I can manipulate the analysis to show one is more significant than it seems because of the scale.


# median income vs travel time
summary(acs1216_bos$MedHouseIncome)

hist_income <- ggplot(aes(x=MedHouseIncome), data=acs1216_bos) + geom_histogram(bins=20)



hist_income + geom_histogram(aes(fill=MedYrBuilt), bins=10) + scale_fill_hue(name="Neighborhood Type", labels=c("Downtown","Industrial/Institutional","Parks","Residential"))

vector_MedianYearBuilt <- c('Unknown','1940 to 1949','1950 to 1959','1960 to 1969','1970 to 1979','1980 to 1989','1990 to 1999','2000 to 2009','Prior to 1940')

hist_lessThanHS1 <- hist_lessThanHS + geom_histogram(aes(fill=MedYrBuilt), bins=10) + scale_fill_hue(name="Neighborhood Type", labels=vector_MedianYearBuilt)
hist_lessThanHS1


plot_income_lessThanHS <- ggplot(data=acs1216_bos, aes(x=LessThanHS, y=MedHouseIncome)) + geom_point() + xlab("% Less Than High School") + ylab("Median House Income") + geom_smooth(method = "lm") + geom_smooth(method = "lm")
plot_income_lessThanHS
