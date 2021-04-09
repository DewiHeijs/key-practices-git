#-----R Script for Key Practices Course----------------####
# Date: 01-04-2021
# Author: Dewi Heijs
# Filename: Session4.R
# Description: Homework session 5 - Updated formatting
# Project: Key Practices Course MPI
#------------------------------------------------------###

# Set the working directory and load the data, e.g.:
setwd("directory")
data <- read.delim("data.csv", header = TRUE, sep = ",")

#-----Library Declarations-----------------------------####
# Set up your project by loading your packages, e.g.:
library(package)

#-----Data Adjustment----------------------------------####
# Make variables ready to work on, e.g.:
data <- data %>%
  select(ppID, condition, trial, RT) %>%
  mutate(condition = as.factor(condition),
         target = as.factor(target))
data <- na.omit(data)

#-----Data Exploration---------------------------------####
# Explore the data, e.g.:
summary(data)

#-----Main Analysis------------------------------------####
# Analysis (can be a simple analysis), e.g. a one-way ANOVA, within-subjects:
anovaRTbyCategory <- aov(RT ~category+error(ppID/category),
                         data = analysis_anova)
summary(anovaRTbyCategory)