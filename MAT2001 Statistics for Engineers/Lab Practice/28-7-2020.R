empid  = c(1,2,3,4,5,6,7,8,9,10)           # vector empid
age    = c(30,37,45,32,50,31,53,21,54,42)  # vector age
gender = c(0,1,1,0,1,0,0,1,0,1)
status = c(1,2,1,1,2,2,1,2,1,2)

# data.frame
empinfo = data.frame(empid,age,gender,status)

# factor() --> will convert the numbers provided into certain specific labels 
empinfo$gender = factor(empinfo$gender,labels=c("male","female"))   # 0-->male and 1-->female
empinfo$status = factor(empinfo$status,labels=c("staff","faculty")) # 1-->staff and 2-->faculty

# subset() --> will take a subset of data from the main frame with specific condition
genderm = subset(empinfo,empinfo$gender=='male')    # Taking the rows whose gender is male
genderf = subset(empinfo,empinfo$gender=='female')  # Taking the rows whose gender is female

# summary() --> summary statiscs of empinfo 
summary(empinfo)
summary(genderm) # Summary statiscs of male employ
summary(genderf) # Summary statiscs of female employ
summary(empinfo$age) # Summary statiscs of age

# table() 
# One way table
table1 = table(empinfo$gender)  # In gender, how many male and female are present???
table2 = table(empinfo$status)  # In status, how many staff's and faculty's are present???
# Two way table
table3 = table(empinfo$gender,empinfo$status) # gender --> row  and status --> column

## Graphical Representations in R
plot(empinfo$age,type="l",main="Age of employ",      # main --> heading
     xlab="emp id",ylab="age in years",col="red")    # type = 'l' --> type of the line 
                                                     # xlab --> X-label  and ylab --> Y-label
                                                     # col  --> color of the line
# Pie-chart for the table
table4 = table(empinfo$gender)  
pie(table4)

### barplot
table5 = table(empinfo$gender,empinfo$status)
barplot(table5,beside=T,xlim=c(1,15),ylim=c(0,5),
        col=c("blue","red"),legend=rownames(table5))

### boxplot
boxplot(empinfo$age~empinfo$status,col=c("red","blue"))

y=x
par(pch=22,col="blue")
par(mfrow=c(2,4))
opts=c("p","l","o","b","c","s","S","h")
summary(empinfo$status)

for(i in 1:length(opts))
{
heading = paste("type=",opts[i])
plot(x,y,main=heading)
lines(x,y,type=opts[i])
}


