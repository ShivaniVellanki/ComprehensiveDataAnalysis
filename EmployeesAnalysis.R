#library(vcd) 
#install.packages("pacman")
#pacman::p_load(party,rio,tidyverse)
#represents the data which shows the percentage of employees working CT,FL,FT,PT table(salarydf$employment_type)/605 percent<-table(salarydf$employment_type)/605
percent
barplot(percent*100, ylim = c(0,100),
        xlab="employment type",col = c("yellow","red","green","blue"), border = "black")
#represents the data which shows the percentage of company's size that are #large, medium, small(L,M,S respectively) table(salarydf$company_size)/605 percent<-table(salarydf$company_size)/605
percent
barplot(percent*100, ylim = c(0,100),
        xlab = "company size", col = c("grey","yellow","blue"), border = "black")
#represents the data which shows the percentage of employee's experience level #i.e. EN,EX,MI,SE
table(salarydf$experience_level)/605 percent<-table(salarydf$experience_level)/605
percent
barplot(percent*100, ylim = c(0,100),
        xlab = "experience level", col =c("red","pink","green","yellow"), border ="black")
#represents the data which shows the percentage of the data scientist employees who have, #worked in 3 consecutive years i.e. 2020,2021 and 2022
table(salarydf$work_year)/605
percent<-table(salarydf$work_year)/605
percent
barplot(percent*100, ylim = c(0,100),
        xlab ="work year", col = c("green","gray","yellow"), border = "green")
#the data represents mean of the salary in the 3 consecutive years, 2020, 2021 and 2022. Mean_SalaryInUSD <-c(106303.8485,118236.3529,131129.5652) work_year<-c(2020,2021,2022)
options(scipen=5)
barplot(Mean_SalaryInUSD,xlab="Year", ylab="Mean Salary", ylim=c(0,160000),
        main="Mean Salaries In 2020,2021,2022", names.arg=work_year,col=c("yellow","red","purple"),border="red")
#the data represents the minimum salary of the data scientist, data engineer and data analyst Min_SalaryInUSD <-c(2859,4000,6072)
job_title<-c("Data Scientist","Data Engineer","Data Analyst")
options(scipen=5)
barplot(Min_SalaryInUSD,xlab="Job Title",
        ylab="Minimum Salary",
        ylim=c(0,7000),
        main="Minimum Salaries Of a Data Scientist,Data Engineer,Data Analyst", names.arg=job_title,col=c("maroon","pink","green"),border="red")
#the data represents the mean salary of the data scientist, data engineer and data analyst Mean_SalaryInUSD <-c(92893.06186,112725,92893.06186)
job_title<-c("Data Scientist","Data Engineer","Data Analyst")
options(scipen=5)
barplot(Mean_SalaryInUSD,xlab="Job Title",
        ylab="Mean Salary",
        ylim=c(0,120000),
        main="Mean Salaries Of a Data Scientist,Data Engineer,Data Analyst", names.arg=job_title,col=c("green","magenta","brown"),border="red")
#the data represents the maximum salary of the data scientist, data engineer and data analyst Max_SalaryInUSD <-c(412000,324000,200000)
job_title<-c("Data Scientist","Data Engineer","Data Analyst")
options(scipen=5)
barplot(Max_SalaryInUSD,xlab="Job Title",
        ylab="Maximum Salary",
        ylim=c(0,500000),
        main="Maximum Salaries Of a Data Scientist,Data Engineer,Data Analyst", names.arg=job_title,col=c("yellow","gray","green"),border="red")
#the data represents the minimum salary of large, medium and small companies Min_SalaryInUSD <-c(5882,4000,2859)
company_size<-c("L","M","S")
options(scipen=5)
barplot(Min_SalaryInUSD,xlab="company size",
        ylab="Mean Salary",
        ylim=c(0,7000),
        main="Minimum Salaries Of Large(L), Medium(M) and Small(S) Companies", names.arg=company_size,col=c("pink","brown","magenta"),border="red")
#the data represents the mean salary of large, medium and small companies Mean_SalaryInUSD <-c(119242.9949,116905.4663,77632.6747) company_size<-c("L","M","S")

options(scipen=5) barplot(Mean_SalaryInUSD,xlab="company size",
                          ylab="Mean Salary",
                          ylim=c(0,140000),
                          main="Mean Salaries Of Large(L), Medium(M) and Small(S) Companies", names.arg=company_size,col=c("blue","red","yellow"),border="red")
#the data represents the maximum salary of large, medium and small companies Max_SalaryInUSD <-c(600000,450000,416000) company_size<-c("L","M","S")
options(scipen=5)
barplot(Max_SalaryInUSD,xlab="Company Size",
        ylab="Mean Salary",
        ylim=c(0,700000),
        main="Maximum Salaries Of Large(L), Medium(M) and Small(S) Companies", names.arg=company_size,col=c("gray","yellow","green"),border="red")
#DataScientistStats
#the data represents the statistics of subset data scientist dataSciDF <- subset(salarydf, job_title =="Data Scientist",
select = c(job_title, salary_in_usd,work_year)) dataSciDF
a<-mean(dataSciDF$salary_in_usd) a median(dataSciDF$salary_in_usd) sd(dataSciDF$salary_in_usd) summary(dataSciDF)
data_scientist
hist(data_scientist$work_year,ylim = c(0,100), main = "") #DataAnalystStats#the data represents the statistics of subset data analyst
dataAnalystDF2 <- subset(salarydf, job_title =="Data Analyst", select = c(job_title, salary_in_usd, salary,work_year))
dataAnalystDF2 b<-mean(dataAnalystDF2$salary_in_usd) b median(dataAnalystDF2$salary_in_usd) sd(dataAnalystDF2$salary_in_usd) summary(dataAnalystDF2)
hist(data_analyst$work_year,ylim = c(0,100), main = "")