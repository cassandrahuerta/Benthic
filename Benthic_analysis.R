# Date:4/17/17
# Purpose/Goal:Create Phyloseq Object

# Set working directory
setwd("~/Desktop/Benthic_Microbiome")


# Loading necessary functions
library("phyloseq")

# Load in the data
# Path to Taxonomy file
taxonomy <- "stability.trim.contigs.good.unique.good.filter.unique.precluster.pick.pick.an.unique_list.0.03.cons.taxonomy"

# Path to OTU count (shared) file 
OTU_table <- "stability.trim.contigs.good.unique.good.filter.unique.precluster.pick.pick.an.unique_list.shared"


# Put it all together into a phyloseq object 
benthic_physeq <- import_mothur(mothur_shared_file = OTU_table, 
                                mothur_constaxonomy_file = taxonomy)

# What's in our phyloseq object?
benthic_physeq

# What samples are in the phyloseq object?
sample_names(benthic_physeq)

# How to look at data within a phyloseq object?
View(tax_table(benthic_physeq))
View(otu_table(benthic_physeq)[1:10, 1:10]) # in [rows, column]


# Read in the metadata table into R 
metadata <- read.csv(file = "Metadata_Table.csv")
View(metadata)
# Replaced with 
metadata <- read.csv("Metadata.csv") 
View (metadata)


# Whats's the dimensions of the data
dim(metadata)


# LEARN:  Why the difference between 323 samples in the phyloseq object and..
# 246 in the metadta object?



taxonomy
TAX=tax_table(taxonomy)
data
OTU = otu_table(data, taxa_are_rows = TRUE)
OTU
file.choose()
otu<-read.csv("/Users/cassandrahuerta/Documents/Denef_Lab/Seq_analysis/Otu_partial.csv")
otu
OTU = otu_table(otu, taxa_are_rows = TRUE)
merge_samples(otu, data)
#
## # Make a random complex object
## OTU1 <- otu_table(matrix(sample(0:5,250,TRUE),25,10), taxa_are_rows=TRUE)
## tax1 <- tax_table(matrix("abc", 30, 8))
## map1 <- data.frame( matrix(sample(0:3,250,TRUE),25,10), 
##   matrix(sample(c("a","b","c"),150,TRUE), 25, 6) ) 
## map1 <- sample_data(map1)
## exam1 <- phyloseq(OTU1, map1, tax1)
## x <- exam1
## x <- phyloseq(exam1)
## y <- tax_table(exam1)
## merge_phyloseq(x, y)
## merge_phyloseq(y, y, y, y)
