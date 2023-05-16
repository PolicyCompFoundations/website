library(UCSCXenaTools)
library(ggplot2)
library(png)

data("diamonds")

p <- ggplot(
  subset(diamonds, carat >= 2.2),
  aes(x = table, y = price, colour = cut)) +
  geom_point(alpha = 0.7, size = 0.01) + 
  geom_smooth(method = "loess", alpha = 0.09, size = 0.1, span = 1) +
  theme_bw() + 
  theme_minimal() +
  theme(axis.text = element_blank(),
        axis.title = element_blank(),
        legend.position = "none") +
  scale_color_manual(values=c("#CC79A7", "#009E73", "#F0E442", "#0072B2", "#D55E00")) 


hexSticker::sticker(
  subplot = p, s_x = 1, s_y = 1, s_width = 1.8, s_height = 1.3,
  package = "Computational Foundations", p_x = 1, p_y = 1.55, p_size = 11, h_size = 1.2,
  p_color = "#0072B2", h_fill = "white", h_color = "#0072B2",
  dpi = 420, filename = "assets/logo.png")
