
# Sekvens av x-verdier
x <- seq(-10, 10, length.out = 1000)

# Beregn tettheter
df <- data.frame(
  x = x,
  student_t = dt(x / 2.5, df = 3) / 2.5,
  normal = dnorm(x, mean = 0, sd = 1)
)

# Plot begge
ggplot(df, aes(x)) +
  geom_line(aes(y = student_t, color = "student_t(3, 0, 2.5)"), size = 1.2) +
  geom_line(aes(y = normal, color = "normal(0, 1)"), linetype = "dashed", size = 1.2) +
  geom_vline(xintercept = 0, linetype = "dotted") +
  labs(
    title = "Sammenligning av priorer",
    x = "Parameterverdi",
    y = "Tetthet",
    color = "Prior"
  ) +
  theme_minimal()
