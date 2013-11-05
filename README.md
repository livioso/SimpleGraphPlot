SimpleGraphPlot
===============

Simple Rscript that plots a neat graph out of a file.

Requirements:

	# 'ggplot2' is used to for plotting the graph.
	# To install ggplot2 do the following in R
	> install.packages("ggplot2");

To now plot a graph out of a file which looks like this
	
	0;0 
	1;1 
	2;4
	3;9
	4;16
	5;25
	...
	37;1369
	38;1444
	39;1521

Simply do the following

	$ Rscript SimpleGraphPlot.r Input.csv  ";" "Label for X axis" "Label for Y axis" Output.pdf

Where Input.csv is the input file with values separated by ";".

The resulting file looks like this [this](Output.pdf)