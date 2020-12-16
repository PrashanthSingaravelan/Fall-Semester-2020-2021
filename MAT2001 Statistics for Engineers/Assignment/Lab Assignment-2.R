xl   = c(0,100,200,300,400,500,600)
freq = c(10,6,9,16,4,24,27)
xu   = c(100,200,300,400,500,600,700)
mid  = (xl+xu)/2 # Mid value of xl

# Mean
Ef   = sum(freq)  
Efx  = freq*mid
mean = sum(Efx/Ef)
cat("Mean : ",mean)

## Median
cf = cumsum(freq)
median_class = min(which(cf>N/2))
Lower_limit  = xl[median_class]
m = cf[median_class-1]
c = xl[2]-xl[1]
f = freq[median_class]
median = Lower_limit + ((sum(freq)/2-m)/f)*c 
cat("Median : ",median)

# Mode 
mode = (3*median) - (2*mean)

Mean_deviation_about_mean = sum(freq*abs(mid-mean))/sum(freq)
cat("Mean deviation about mean : ",Mean_deviation_about_mean)

Mean_deviation_about_median = sum(freq*abs(mid-median))/sum(freq)
cat('Mean deviation about median : ',Mean_deviation_about_median)

Mean_deviation_about_mode = sum(freq*abs(mid-mode))/sum(freq)
cat('Mean deviation about mode : ',Mean_deviation_about_mode)

cat('Coefficient of Mean deviation about mean/mean     : ',Mean_deviation_about_mean/mean)
cat('Coefficient of Mean deviation about median/median : ',Mean_deviation_about_median/median)
cat('Coefficient of Mean deviation about mode/mode     : ',Mean_deviation_about_mode/mode)

## Quartile deviation
q1 = min(which(cf>sum(freq)/4))
fql = freq[ql]
cfl = cf[ql-1]
l   = mid[q1]-c/2
quart = l+((sum(freq)/4 - cfl)/fql)*c
q3  = min(which(cf>3*sum(freq)/4))
fq3 = freq[q3]
cf2 = cf[q3-1]
l   = mid[q3]-c/2
quart3 = l+(((3*sum(freq)/4)-cf2)/fq3)*c
qd = (quart3-quart)/2
cat('1st quartile : ',quart)
cat('3rd quartile : ',quart3)
cat('Quartile deviation : ',qd)

coefficient_quartile_deviation = (quart3-quart)/(quart3+quart)
cat('Coefficient of quartile deviation : ',coefficient_quartile_deviation)

a  = c(mid-mean)
b  = a^2
F  = freq*b
c  = sum(F)
d = c/sum(freq)
e = sqrt(d)
cat('Standard deviation : ',e)



