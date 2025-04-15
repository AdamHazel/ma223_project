install.packages("brms")       # Bare f??rste gang
install.packages("parameters")
install.packages("tidybayes")
install.packages("ggplot2")
install.packages("bayestestR")
install.packages("cmdstanr", repos = c("https://mc-stan.org/r-packages/", getOption("repos")))
library(brms)
library(cmdstanr)
library(parameters)
library(tidybayes)
library(ggplot2)
library(bayestestR)
library(gt)

# Sett cmdstan som backend (kun en gang)
cmdstanr::install_cmdstan()
options(brms.backend = "cmdstanr")


