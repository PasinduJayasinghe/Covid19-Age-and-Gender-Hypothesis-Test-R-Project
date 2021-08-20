      rm(list=ls())
      
      library(Hmisc)
      
      Covid19_data <- read.csv("C:/Users/Pasindu/Desktop/Covid 19 R Project/COVID19_line_list_data.csv")
      
      describe(Covid19_data)
      
      Covid19_data$death_dummy<-as.integer(Covid19_data$death !=0)
      
      sum(Covid19_data$death_dummy)/nrow(Covid19_data)
      
      dead<-subset(Covid19_data,death_dummy==1)
      
      live<-subset(Covid19_data,death_dummy==0)
      
      mean(dead$age,na.rm = TRUE)
      
      mean(live$age,na.rm = TRUE)
      
      t.test(live$age,dead$age,alternative = "two.sided",conf.level = 0.95)
      
      men<-subset(Covid19_data,gender=="male")
      
      women<-subset(Covid19_data,gender=="female")
      
      mean(men$death_dummy,na.rm = TRUE)
      
      mean(women$death_dummy,na.rm = TRUE)
      
      t.test(men$death_dummy,women$death_dummy,alternative = "two.sided",conf.level = 0.95)
