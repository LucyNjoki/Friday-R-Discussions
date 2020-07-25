# Dataframes
 
- Definition: Are special type of list where every element of the list has the same length.

- Can be created by ```read.csv()``` and ```read.table()``` when importing data into R.

- Can also be created using ```data.frame()``` function.

# Tibbles or tbl_df

- Modern reimagining of the data.frame.

- They don't the type or class of the variables; never changes the names of the variables.

- They have an enhanced ```print()``` method which makes them easier to use with large datasets containing complex objects.

- To create a tibble from an existing object: ```as_tibble()```

- To create a new tibble with ```tibble()```

### Installation

- Easiest way: ```install.packages("tidyverse")```

- or: ```install.packages("tibble)```

# Installing Packages

### From CRAN

example : ```install.packages("ggplot2", dependencies = TRUE)```

### From GitHub

```install.packages("devtools")```

example: ```devtools::install_github("Shelmith-Kariuki/rKenyaCensus")``` 
