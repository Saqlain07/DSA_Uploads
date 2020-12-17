# Its time that we load data in R.
# Most common way to get data is reading comma separated values(CSV)

# Reading CSVs
theUrl = "http://www.jaredlander.com/data/Tomato%20First.csv"
tomato = read.table(file=theUrl, header=TRUE, sep =",")
head(tomato)

#It might be tempting to use read.csv but that is more trouble than it is worth, and all it does is call read.table with some arguments preset.

# Sometimes CSVs(or tab delimited files) are poorly built, where the cell separator has been used inside a cell.
# In this case read.csv2(or read.delim2)should be used instead of read.table.

# Reading Excel Data - Not worth the Effort.
# Unfortunately, it is difficult to read Excel data into R - Requires additional packages to be installed.
# Convert into CSV and read.

# Reading Text Files
Sample_Data = read.table("F:\\IMT\\Term 2\\DSA\\My_Work\\sample.txt",header=TRUE,sep="")
head(Sample_Data)

#R Binary Files
# save the tomato data.frame to Disk
save(tomato, file="F:/IMT/Term 2/DSA/My_Work/tomato.rdata")
# remove tomato from memory
rm(tomato)

# Check if it still exists
head(tomato)
# read it from the rdata file
load("F:/IMT/Term 2/DSA/My_Work/tomato.rdata")
head(tomato)

# Read data from anywhere in the Disk/Computer
myData = read.csv(file.choose()) # No working directory setup is needed.
