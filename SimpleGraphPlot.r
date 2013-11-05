#!/usr/bin/env Rscript

# we want a cool looking graph :-)
library('ggplot2')

args <- commandArgs(trailingOnly = TRUE)

df <- read.delim(file.path(args[1]),
	sep = args[2],
   	stringsAsFactors = FALSE,
    header = FALSE, 
    na.strings = "")

# rename columns 
names(df) = c("DataX", "DataY") 
       
# quickly summarize the data 
# (avg, min, max, etc)
summary(df)

# print the first entries
# of the data set
head(df)       

dfplot <- ggplot(df, aes(x = DataX, y = DataY)) + geom_line() + geom_point() + xlab(args[3]) + ylab(args[4]) 

# save the plot as wherever specified
ggsave(plot = dfplot,
       filename = args[5])
