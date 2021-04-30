#Installing Packages

install.packages("ggplot2")
install.packages("reshape2")
install.packages("gridExtra")

#Loading packages

library("ggplot2")
library("reshape2")
library("gridExtra")

##Weeks 16 to 26##

My.Data.16to26 <-
  read.table((
    "/Users/gethinjones/Library/Mobile Documents/com~apple~CloudDocs/Biology/Year 4/Research Project/R/Frequency Plots/10 Week Stages/grouped_week_analysis_16_26.csv"
  ),
  header = T,
  sep = ",",
  check.names = F
  )

#Reshaping the data from wide to long format

data_long_16to26 <- melt(My.Data.16to26, id = "Outbreak_Week")

#Creating the multi-line graph

Frequency.Plot.Unformatted.16to26 <- ggplot(data_long_16to26,
                                            aes(x = Outbreak_Week,
                                                y = value,
                                                colour = variable)) +
  geom_line(size = 1.25, linetype = "solid")

#Plotting and formatting the graph

Frequency.Plot.Formatted.16to26 <-
  Frequency.Plot.Unformatted.16to26 +
  annotate(
    "rect",
    xmin = 16,
    xmax = 26,
    ymin = -Inf,
    ymax = Inf,
    alpha = .1
  ) +
  ylab(label = "Major / Minor Allele Frequency") +
  xlab(label = "Outbreak Week") +
  ggtitle("(A)") +
  theme_bw() +
  scale_x_continuous(breaks = scales::pretty_breaks(n = 10)) +
  ylim(0, 1) +
  scale_colour_manual(
    values = c(
      "#332288",
      "#88CCEE",
      "#44AA99",
      "#117733",
      "#999933",
      "#DDCC77",
      "#CC6677",
      "#882255",
      "#AA4499",
      "#BBBBBB"
    )
  ) +
  theme(
    panel.grid.major = element_blank(),
    panel.grid.minor = element_blank(),
    panel.background = element_blank(),
    text = element_text(size = 8),
    axis.text = element_text(size = 8),
    legend.position = "bottom",
    legend.text = element_text(size = 8),
    legend.title = element_text(size = 8),
    plot.title = element_text(size = 8)
  ) +
  guides(col = guide_legend("Marker\nPosition"))

##Weeks 27 to 37##

My.Data.27to37 <-
  read.table((
    "/Users/gethinjones/Library/Mobile Documents/com~apple~CloudDocs/Biology/Year 4/Research Project/R/Frequency Plots/10 Week Stages/grouped_week_analysis_27_37.csv"
  ),
  header = T,
  sep = ",",
  check.names = F
  )

#Reshaping the data from wide to long format

data_long_27to37 <- melt(My.Data.27to37, id = "Outbreak_Week")

#Creating the multi-line graph

Frequency.Plot.Unformatted.27to37 <- ggplot(data_long_27to37,
                                            aes(x = Outbreak_Week,
                                                y = value,
                                                color = variable)) +
  geom_line(size = 1.25, linetype = "solid")

#Plotting and formatting the graph

Frequency.Plot.Formatted.27to37 <-
  Frequency.Plot.Unformatted.27to37 +
  annotate(
    "rect",
    xmin = 27,
    xmax = 37,
    ymin = -Inf,
    ymax = Inf,
    alpha = .1
  ) +
  ylab(label = "Major / Minor Allele Frequency") +
  xlab(label = "Outbreak Week") +
  ggtitle("(B)") +
  theme_bw() +
  scale_x_continuous(breaks = scales::pretty_breaks(n = 10)) +
  ylim(0, 1) +
  scale_colour_manual(
    values = c(
      "#332288",
      "#88CCEE",
      "#44AA99",
      "#117733",
      "#999933",
      "#DDCC77",
      "#CC6677",
      "#882255",
      "#AA4499",
      "#BBBBBB"
    )
  ) +
  theme(
    panel.grid.major = element_blank(),
    panel.grid.minor = element_blank(),
    panel.background = element_blank(),
    text = element_text(size = 8),
    axis.text = element_text(size = 8),
    legend.position = "bottom",
    legend.text = element_text(size = 8),
    legend.title = element_text(size = 8),
    plot.title = element_text(size = 8)
  ) +
  guides(col = guide_legend("Marker\nPosition"))

##Weeks 38 to 48##

My.Data.38to48 <-
  read.table((
    "/Users/gethinjones/Library/Mobile Documents/com~apple~CloudDocs/Biology/Year 4/Research Project/R/Frequency Plots/10 Week Stages/grouped_week_analysis_38_48.csv"
  ),
  header = T,
  sep = ",",
  check.names = F
  )

#Reshaping the data from wide to long format

data_long_38to48 <- melt(My.Data.38to48, id = "Outbreak_Week")

#Creating the multi-line graph

Frequency.Plot.Unformatted.38to48 <- ggplot(data_long_38to48,
                                            aes(x = Outbreak_Week,
                                                y = value,
                                                color = variable)) +
  geom_line(size = 1.25, linetype = "solid")

#Plotting and formatting the graph

Frequency.Plot.Formatted.38to48 <-
  Frequency.Plot.Unformatted.38to48 +
  annotate(
    "rect",
    xmin = 38,
    xmax = 48,
    ymin = -Inf,
    ymax = Inf,
    alpha = .1
  ) +
  ylab(label = "Major / Minor Allele Frequency") +
  xlab(label = "Outbreak Week") +
  ggtitle("(C)") +
  theme_bw() +
  scale_x_continuous(breaks = scales::pretty_breaks(n = 10)) +
  ylim(0, 1) +
  scale_colour_manual(
    values = c(
      "#332288",
      "#88CCEE",
      "#44AA99",
      "#117733",
      "#999933",
      "#DDCC77",
      "#CC6677",
      "#882255",
      "#AA4499",
      "#BBBBBB"
    )
  ) +
  theme(
    panel.grid.major = element_blank(),
    panel.grid.minor = element_blank(),
    panel.background = element_blank(),
    text = element_text(size = 8),
    axis.text = element_text(size = 8),
    legend.position = "bottom",
    legend.text = element_text(size = 8),
    legend.title = element_text(size = 8),
    plot.title = element_text(size = 8)
  ) +
  guides(col = guide_legend("Marker\nPosition"))

##Weeks 49 to 59##

My.Data.49to59 <-
  read.table((
    "/Users/gethinjones/Library/Mobile Documents/com~apple~CloudDocs/Biology/Year 4/Research Project/R/Frequency Plots/10 Week Stages/grouped_week_analysis_49_59.csv"
  ),
  header = T,
  sep = ",",
  check.names = F
  )

#Reshaping the data from wide to long format

data_long_49to59 <- melt(My.Data.49to59, id = "Outbreak_Week")

#Creating the multi-line graph

Frequency.Plot.Unformatted.49to59 <- ggplot(data_long_49to59,
                                            aes(x = Outbreak_Week,
                                                y = value,
                                                color = variable)) +
  geom_line(size = 1.25, linetype = "solid")

#Plotting and formatting the graph

Frequency.Plot.Formatted.49to59 <-
  Frequency.Plot.Unformatted.49to59 +
  annotate(
    "rect",
    xmin = 49,
    xmax = 59,
    ymin = -Inf,
    ymax = Inf,
    alpha = .1
  ) +
  ##geom_vline(xintercept=c(49, 59), linetype='dashed', color='blue', size=1.25) +
  ylab(label = "Major / Minor Allele Frequency") +
  xlab(label = "Outbreak Week") +
  ggtitle("(D)") +
  theme_bw() +
  scale_x_continuous(breaks = scales::pretty_breaks(n = 10)) +
  ylim(0, 1) +
  scale_colour_manual(
    values = c(
      "#332288",
      "#88CCEE",
      "#44AA99",
      "#117733",
      "#999933",
      "#DDCC77",
      "#CC6677",
      "#882255",
      "#AA4499",
      "#BBBBBB"
    )
  ) +
  theme(
    panel.grid.major = element_blank(),
    panel.grid.minor = element_blank(),
    panel.background = element_blank(),
    text = element_text(size = 8),
    axis.text = element_text(size = 8),
    legend.position = "bottom",
    legend.text = element_text(size = 8),
    legend.title = element_text(size = 8),
    plot.title = element_text(size = 8)
  ) +
  guides(col = guide_legend("Marker\nPosition"))

#Plotting side by side

grid.arrange(
  Frequency.Plot.Formatted.16to26,
  Frequency.Plot.Formatted.27to37,
  Frequency.Plot.Formatted.38to48,
  Frequency.Plot.Formatted.49to59,
  ncol = 2
)
