#scale vs ordinal tests
#Descriptive statistics for scale data
head(mtcars)
dt<-mtcars$mpg
attach(mtcars)-to get the all variables attach is used.
length(mpg)
#one sample test- t-test or wilcoxon test
#shapiro. test (sample size should be from 3-5000)
#for testing the normality we use #shapiro-wilks test & kolmogorov-smirnov test
#jarque-bera test,Anderson-darlington test,lillifor's test
#shapiro.test()
#NH:Data is normal
#AH:Data is not normal
#testing normality
shapiro.test(mpg)
Interpretation:# As p value > 0.05, accept null hypothesis and proceed
for one sampe t-test which is a parametric test.
#t.test() for 1 sample,2 sample,and paired sample
mpg-these are the mileages in the data set.
#1.State the hypothesis
# NH:mu<=15mpg
# AH:mu>15mpg
#2. determine the LOS (Alpha-type Ierror)=0.05(5%)
#. choose the test
# As p-value>0.05,accept NH and proceed for one sample t-test
#4. compute the test
t.test (mpg,mu=15,alternative='greater')
INTERPRETATION: as p value is <0.05 reject the null hypothesis ,accept the alternative hypothesis.
shapiro.test(wt)
shapiro.test(drat)
shapiro.test(hp)
#As p value is <0.05,reject NH and conclude that data is not normal.
#proceed for equivalent non parametric test for one sample
#wilcoxon signed rank test
#wilcox.test()
The other name for mann whitney u-test is wilcoxon rank sum test
hp
#NH: mu<=100
#AH: mu>100
#2.LOS=5%
#3.choose the test-as data is normal,proceed for WSRT
#4.Compute the test
wilcox.test(hp,mu=100,alternative='greater')
INTERPRETATION: As p value is 
NOTE:exactRankTests package - wilcox.exact
exact tests are used when we have ties in the data.
install.packages("exactRankTests")
library(exactRankTest)
ls("package:exactRankTests")
wilcoxon.exact(hp,mu=100,alternative='greater')
#Two sample tests-independent sample t-test vs Mann-whitney
#Two Assumptions-1.Normality 2.Homogenity-equality in variences.
#impact of vs on mpg
#1.state the hypothesis
#NH:there is no impact of vs on mpg
    (mu(vsE)=mu(sE))
#AH:there is an impact of vs on mpg
     (mu(vsE)#mu(sE))
#2.LOS=5%
#3. choose the test
#by meeting the assumptions, decide the test
#Ass.1.Testing normality
mpg
vs
#subset()
vmpg<-subset(mpg,vs==0)
vmpg
smpg<-subset(mpg,vs==1)
smpg
#test normality of vmpg and smpg
shapiro.test(vmpg)
shapiro.test(smpg)
if both are normal we go for independent sample test
short cut method:
library(rsatix)
mtcars %>% group_by(vs) %>% shapiro_test(mpg)
#2.Homogenity
#NH:variances are equal (homogenity)
#AH:variances are not eual(hetergenity)
#two tests -bartletts test and levenes test
 











