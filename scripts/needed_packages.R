install.packages("brms")       # Bare f??rste gang
install.packages("cmdstanr")   # For backend (anbefales)
install.packages("parameters")
install.packages("tidybayes")
install.packages("ggplot2")
install.packages("bayestestR")
library(brms)
library(cmdstanr)
library(parameters)
library(tidybayes)
library(ggplot2)
library(bayestestR)

# Sett cmdstan som backend (kun en gang)
cmdstanr::install_cmdstan()
options(brms.backend = "cmdstanr")


