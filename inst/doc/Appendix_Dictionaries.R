## ----setup, include=FALSE-----------------------------------------------------
knitr::opts_chunk$set(echo = TRUE)
library(htmlTable)

## ----tab1, echo = FALSE, eval = TRUE, comment = NA, warning = FALSE-----------
output <- matrix(c("animals", "1,021", "Category",
                   "fruits", "488", "Category",
                   "general", "370,103", "All-purpose",
                   "good", "284", "Synonym",
                   "hot", "281", "Synonym",
                   "jobs", "1,471", "Category",
                   "vegetables", "284", "Category"),
                 ncol = 3, byrow = TRUE)


htmlTable(output,
          header = c("Dictionary", "Entries", "Type"),
          caption = "Table 1. Dictionaries in SemNetDictionaries")

## ----Load dictionary, echo = TRUE, eval = FALSE, comment = NA, warning = FALSE----
#  # Check for available dictionaries
#  dictionaries()
#  # Load 'animals' dictionary
#  load.dictionaries("animals")
#  # Load all words starting with 'f'
#  load.dictionaries("f")
#  # Load multiple dictionaries
#  load.dictionaries("fruits", "vegetables")

## ----Create dictionary, echo = TRUE, eval = FALSE, comment = NA, warning = FALSE----
#  # Create a custom dictionary
#  append.dictionary("your", "words", "here",
#                    "in", "quotations", "and",
#                    "separated", "by", "commas",
#                    dictionary.name = "example",
#                    save.location = "choose")

## ----Append animals dictionary, echo = TRUE, eval = FALSE, comment = NA, warning = FALSE----
#  # Append a pre-defined dictionary
#  append.dictionary(animals.dictionary,
#                    "tasselled wobbegong",
#                    dictionary.name = "new.animals",
#                    save.location = "choose")

