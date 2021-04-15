#Installing Packages

install.packages("ggplot2")
install.packages("reshape2")
install.packages("gridExtra")

#Loading packages

library("ggplot2")
library("reshape2")
library("gridExtra")

##Weeks 16 to 26##

My.Data.16to26<-read.table(("/Users/gethinjones/Library/Mobile Documents/com~apple~CloudDocs/Biology/Year 4/Research Project/R/Frequency Plots/10 Week Stages/grouped_week_analysis_16_26.csv"), header = T, sep = ",", check.names = F)

#Reshaping the data from wide to long format

data_long_16to26 <- melt(My.Data.16to26, id = "Outbreak_Week")

#Creating the multi-line graph

Frequency.Plot.Unformatted.16to26<-ggplot(data_long_16to26,
                                         aes(x = Outbreak_Week,
                                             y = value,
                                             color = variable)) +
  geom_line(size = .75, linetype = "solid")

#Plotting and formatting the graph

Frequency.Plot.Formatted.16to26<- Frequency.Plot.Unformatted.16to26 + 
  scale_color_discrete(name = "Marker Position") + 
  ylab(label = "Major / Minor Allele Frequency") + 
  xlab(label = "Outbreak Week") +
  ggtitle("Weeks 16 - 26") +
  theme_bw() +
  scale_x_continuous(breaks = scales::pretty_breaks(n = 10)) +
  ylim(0, 1) +
  theme(panel.grid.major = element_blank(),
        panel.grid.minor = element_blank(),
        panel.background = element_blank(),
        text = element_text(size = 11),
        axis.text = element_text(size = 11),
        legend.text = element_text(size = 11),
        legend.title = element_text(size = 11),
        plot.title = element_text(size = 11, hjust = 0.5))

##Weeks 27 to 37##

My.Data.27to37<-read.table(("/Users/gethinjones/Library/Mobile Documents/com~apple~CloudDocs/Biology/Year 4/Research Project/R/Frequency Plots/10 Week Stages/grouped_week_analysis_27_37.csv"), header = T, sep = ",", check.names = F)

#Reshaping the data from wide to long format

data_long_27to37 <- melt(My.Data.27to37, id = "Outbreak_Week")

#Creating the multi-line graph

Frequency.Plot.Unformatted.27to37<-ggplot(data_long_27to37,
                                          aes(x = Outbreak_Week,
                                              y = value,
                                              color = variable)) +
  geom_line(size = .75, linetype = "solid")

#Plotting and formatting the graph

Frequency.Plot.Formatted.27to37<- Frequency.Plot.Unformatted.27to37 + 
  scale_color_discrete(name = "Marker Position") + 
  ylab(label = "Major / Minor Allele Frequency") + 
  xlab(label = "Outbreak Week") +
  ggtitle("Weeks 27 - 37") +
  theme_bw() +
  scale_x_continuous(breaks = scales::pretty_breaks(n = 10)) +
  ylim(0, 1) +
  theme(panel.grid.major = element_blank(),
        panel.grid.minor = element_blank(),
        panel.background = element_blank(),
        text = element_text(size = 11),
        axis.text = element_text(size = 11),
        legend.text = element_text(size = 11),
        legend.title = element_text(size = 11),
        plot.title = element_text(size = 11, hjust = 0.5))

##Weeks 38 to 48##

My.Data.38to48<-read.table(("/Users/gethinjones/Library/Mobile Documents/com~apple~CloudDocs/Biology/Year 4/Research Project/R/Frequency Plots/10 Week Stages/grouped_week_analysis_38_48.csv"), header = T, sep = ",", check.names = F)

#Reshaping the data from wide to long format

data_long_38to48 <- melt(My.Data.38to48, id = "Outbreak_Week")

#Creating the multi-line graph

Frequency.Plot.Unformatted.38to48<-ggplot(data_long_38to48,
                                          aes(x = Outbreak_Week,
                                              y = value,
                                              color = variable)) +
  geom_line(size = .75, linetype = "solid")

#Plotting and formatting the graph

Frequency.Plot.Formatted.38to48<- Frequency.Plot.Unformatted.38to48 + 
  scale_color_discrete(name = "Marker Position") + 
  ylab(label = "Major / Minor Allele Frequency") + 
  xlab(label = "Outbreak Week") +
  ggtitle("Weeks 38 - 48") +
  theme_bw() +
  scale_x_continuous(breaks = scales::pretty_breaks(n = 10)) +
  ylim(0, 1) +
  theme(panel.grid.major = element_blank(),
        panel.grid.minor = element_blank(),
        panel.background = element_blank(),
        text = element_text(size = 11),
        axis.text = element_text(size = 11),
        legend.text = element_text(size = 11),
        legend.title = element_text(size = 11),
        plot.title = element_text(size = 11, hjust = 0.5))

##Weeks 49 to 59##

My.Data.49to59<-read.table(("/Users/gethinjones/Library/Mobile Documents/com~apple~CloudDocs/Biology/Year 4/Research Project/R/Frequency Plots/10 Week Stages/grouped_week_analysis_49_59.csv"), header = T, sep = ",", check.names = F)

#Reshaping the data from wide to long format

data_long_49to59 <- melt(My.Data.49to59, id = "Outbreak_Week")

#Creating the multi-line graph

Frequency.Plot.Unformatted.49to59<-ggplot(data_long_49to59,
                                          aes(x = Outbreak_Week,
                                              y = value,
                                              color = variable)) +
  geom_line(size = .75, linetype = "solid")

#Plotting and formatting the graph

Frequency.Plot.Formatted.49to59<- Frequency.Plot.Unformatted.49to59 + 
  scale_color_discrete(name = "Marker Position") + 
  ylab(label = "Major / Minor Allele Frequency") + 
  xlab(label = "Outbreak Week") +
  ggtitle("Weeks 49 - 59") +
  theme_bw() +
  scale_x_continuous(breaks = scales::pretty_breaks(n = 10)) +
  ylim(0, 1) +
  theme(panel.grid.major = element_blank(),
        panel.grid.minor = element_blank(),
        panel.background = element_blank(),
        text = element_text(size = 11),
        axis.text = element_text(size = 11),
        legend.text = element_text(size = 11),
        legend.title = element_text(size = 11),
        plot.title = element_text(size = 11, hjust = 0.5))

#Plotting side by side

grid.arrange(Frequency.Plot.Formatted.16to26, Frequency.Plot.Formatted.27to37, Frequency.Plot.Formatted.38to48, Frequency.Plot.Formatted.49to59, ncol=2)



