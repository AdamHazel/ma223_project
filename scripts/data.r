# Read raw data
data <- read.csv("../data/raw_data.csv", encoding = "UTF-8")
data <- na.omit(data)

# Running checks
head(data)
str(data)
summary(data)


priorer <- c(
  
#For koeffisientene (alle X-variabler)
  set_prior("normal(0, 1)", class = "b"),
  
#For terskelverdiene ("cutpoints"):
#De separerer niv??ene i skalaen din:
  set_prior("student_t(3, 0, 2.5)", class = "Intercept")
)

# Legg til en dummy rad
dummy <- data[1, ]
dummy$Utforer <- 2
dummy$dummy_markor <- TRUE  # Marker at dette er dummy

# Legg til dummyen i data
data$dummy_markor <- FALSE
data_mod <- rbind(data, dummy)

#Kj??rer BRM med prior, og med dummydata
modell_brm <- brm(
  formula = factor(Utforer, 
                   levels = c(2, 4, 6, 8, 10), 
                   labels = c(1, 2, 3, 4, 5), 
                   ordered = TRUE) ~ Ukepenger + Skjermtid + Alder + Bedt + Aktiviteter + Godteri + Gave + Andre,
  data = data_mod,
  family = cumulative("logit"),
  prior = priorer,
  chains = 4,
  cores = 4,
  iter = 2000,
  seed = 123
)




