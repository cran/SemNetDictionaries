## ----setup, include=FALSE-----------------------------------------------------
knitr::opts_chunk$set(echo = TRUE)
library(htmlTable)
library(SemNetDictionaries)

## ----tab1, echo = FALSE, eval = TRUE, comment = NA, warning = FALSE-----------
n_monikers <- function(name)
{
    length(load.monikers(name, vector = FALSE))
}

output <- matrix(c("animals", length(animals.dictionary), n_monikers("animals"), "Category",
                   "fruits", length(fruits.dictionary), n_monikers("fruits"), "Category",
                   "general", length(general.dictionary), "-", "All-purpose",
                   "good", length(good.dictionary), n_monikers("good"), "Synonym",
                   "hot", length(hot.dictionary), n_monikers("hot"), "Synonym",
                   "jobs", length(jobs.dictionary), n_monikers("jobs"), "Category",
                   "vegetables", length(vegetables.dictionary), n_monikers("vegetables"), "Category"),
                 ncol = 4, byrow = TRUE)


htmlTable(output,
          header = c("Dictionary", "Entries", "Monikers", "Type"),
          caption = "Table 1. Dictionaries in SemNetDictionaries (monikers are the number of words that have variants)")

## ----Load dictionary, echo = TRUE, eval = FALSE, comment = NA, warning = FALSE----
# # Check for available dictionaries
# dictionaries()
# # Load 'animals' dictionary
# load.dictionaries("animals")
# # Load all words starting with 'f'
# load.dictionaries("f")
# # Load multiple dictionaries
# load.dictionaries("fruits", "vegetables")

## ----Load monikers, echo = TRUE, eval = TRUE, comment = NA, warning = FALSE----
# Variants as a vector (names are the target word, numbered when there is more than one variant)
head(load.monikers("animals"))

# Variants of each word as a list
load.monikers("animals", vector = FALSE)[c("alligator", "binturong")]

## ----Create dictionary, echo = TRUE, eval = FALSE, comment = NA, warning = FALSE----
# # Create a custom dictionary
# append.dictionary("your", "words", "here",
#                   "in", "quotations", "and",
#                   "separated", "by", "commas",
#                   dictionary.name = "example",
#                   save.location = "choose")

## ----Append animals dictionary, echo = TRUE, eval = FALSE, comment = NA, warning = FALSE----
# # Append a pre-defined dictionary
# append.dictionary(animals.dictionary,
#                   "tasselled wobbegong",
#                   dictionary.name = "new.animals",
#                   save.location = "choose")

