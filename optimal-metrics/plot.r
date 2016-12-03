#!/usr/bin/Rscript

library(ggplot2)

args <- commandArgs(trailingOnly=TRUE)

if (length(args) < 1) {
  cat("usage: plot.r <file name>\n")
  quit()
}

df <- read.csv(args[1], header = TRUE, sep = " ")

pdf(paste(args[1], ".pdf", sep=""))

p <- ggplot(data=df, 
	aes(x=bitrate, 
	y=change))
 
p <- p + geom_point()
p <- p + ggtitle("Maximum bitrate that can be achieved for a certain number of changes")

print(p)