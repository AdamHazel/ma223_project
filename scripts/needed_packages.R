install.packages("brms")       # Bare f??rste gang
install.packages("cmdstanr")   # For backend (anbefales)
library(brms)
library(cmdstanr)

# Sett cmdstan som backend (kun en gang)
cmdstanr::install_cmdstan()
options(brms.backend = "cmdstanr")
