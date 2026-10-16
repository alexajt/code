library(tidyverse)

# had a delicious chicken-bacon ranch flatbread at Barn by the Bay

hist_p <- ggplot(diamonds, aes(x = carat)) +
  geom_histogram(binwidth = 0.1, fill = "darkgrey", color = "white") +
  labs(
    title = "Distribution of Diamond Carat Weight",
    subtitle = "Most diamonds weigh less than 1 carat, with fewer stones at higher weights.",
    x = "Carat weight",
    y = "Number of diamonds",
    caption = "Source: ggplot2 diamonds dataset"
  ) +
  theme_grey()

ggsave(plot = hist_p, file = "diamonds.png")
