#Installing Packages

install.packages("ggplot2")
install.packages("reshape2")
install.packages("gridExtra")

#Loading packages

library("ggplot2")
library("reshape2")
library("gridExtra")

##Whole Pandemic Range##

My.Data.Whole <-
  read.table((
    "/Users/gethinjones/Library/Mobile Documents/com~apple~CloudDocs/Biology/Year 4/Research Project/R/Frequency Plots/General Pandemic Stages/grouped_week_analysis_whole.csv"
  ),
  header = T,
  sep = ",",
  check.names = F
  )

#Reshaping the data from wide to long format

data_long_whole <- melt(My.Data.Whole, id = "Outbreak_Week")

#Creating the multi-line graph

Frequency.Plot.Unformatted.Whole <- ggplot(data_long_whole,
                                           aes(x = Outbreak_Week,
                                               y = value,
                                               color = variable)) +
  geom_line(size = 1.25, linetype = "solid")

#Plotting and formatting the graph

Frequency.Plot.Formatted.Whole <- Frequency.Plot.Unformatted.Whole +
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

##Early Stage##

My.Data.early <-
  read.table(
    "/Users/gethinjones/Library/Mobile Documents/com~apple~CloudDocs/Biology/Year 4/Research Project/R/Frequency Plots/General Pandemic Stages/grouped_week_analysis_early.csv",
    header = T,
    sep = ",",
    check.names = F
  )

#Reshaping the data from wide to long format

data_long_early <- melt(My.Data.early, id = "Outbreak_Week")

#Creating the multi-line graph

Frequency.Plot.Unformatted.Early <- ggplot(data_long_early,
                                           aes(x = Outbreak_Week,
                                               y = value,
                                               color = variable)) +
  geom_line(size = 1.25, linetype = "solid")

#Plotting and formatting the graph

Frequency.Plot.Formatted.Early <- Frequency.Plot.Unformatted.Early +
  annotate(
    "rect",
    xmin = 6,
    xmax = 23,
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

##Middle Stage##

My.Data.Middle <-
  read.table(
    "/Users/gethinjones/Library/Mobile Documents/com~apple~CloudDocs/Biology/Year 4/Research Project/R/Frequency Plots/General Pandemic Stages/grouped_week_analysis_middle.csv",
    header = T,
    sep = ",",
    check.names = F
  )

#Reshaping the data from wide to long format

data_long_middle <- melt(My.Data.Middle, id = "Outbreak_Week")

#Creating the multi-line graph

Frequency.Plot.Unformatted.Middle <- ggplot(data_long_middle,
                                            aes(x = Outbreak_Week,
                                                y = value,
                                                color = variable)) +
  geom_line(size = 1.25, linetype = "solid")

#Plotting and formatting the graph

Frequency.Plot.Formatted.Middle <-
  Frequency.Plot.Unformatted.Middle +
  annotate(
    "rect",
    xmin = 24,
    xmax = 41,
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

##Late Stage##

My.Data.Late <-
  read.table(
    "/Users/gethinjones/Library/Mobile Documents/com~apple~CloudDocs/Biology/Year 4/Research Project/R/Frequency Plots/General Pandemic Stages/grouped_week_analysis_late.csv",
    header = T,
    sep = ",",
    check.names = F
  )

#Reshaping the data from wide to long format

data_long_late <- melt(My.Data.Late, id = "Outbreak_Week")

#Creating the multi-line graph

Frequency.Plot.Unformatted.Late <- ggplot(data_long_late,
                                          aes(x = Outbreak_Week,
                                              y = value,
                                              color = variable)) +
  geom_line(size = 1.25, linetype = "solid")

#Plotting and formatting the graph

Frequency.Plot.Formatted.Late <- Frequency.Plot.Unformatted.Late +
  annotate(
    "rect",
    xmin = 42,
    xmax = 59,
    ymin = -Inf,
    ymax = Inf,
    alpha = .1
  ) +
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

#Plotting the graphs side by side

grid.arrange(
  Frequency.Plot.Formatted.Whole,
  Frequency.Plot.Formatted.Early,
  Frequency.Plot.Formatted.Middle,
  Frequency.Plot.Formatted.Late,
  ncol = 2
)
