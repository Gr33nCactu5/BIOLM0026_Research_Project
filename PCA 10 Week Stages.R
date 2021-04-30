#Loading the packages into R

library("LEA")
library("pcadapt")
library("ggplot2")
library("gridExtra")

##Setting up the colour palette for the plots

MyPalette <- c(
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

#################################################16to26#################################################

#Automatically deleting existing lfmm and bed files in the directory


if (file.exists("genotypes_16to26.lfmm")) {
  file.remove("genotypes_16to26.lfmm")
}

if (file.exists("genotypes_16to26.lfmm.bed")) {
  file.remove("genotypes_16to26.lfmm.bed")
}

#loading the covid sequences as genotypes file into R

table.16to26 <-
  read.table(
    "/Users/gethinjones/Library/Mobile Documents/com~apple~CloudDocs/Biology/Year 4/Research Project/R/PCA_Analysis/Week Stages/cog_alignment.fasta_covid_variants_as_genotypes_16_26.txt",
    header = T
  )

#specifying row names

SNP.Markers.16to26 <- rownames(table.16to26) <- table.16to26[, 1]

#Specifying the data to import into PCAdapt

mydata.16to26 <- table.16to26[,-1]

#making the table a lfmm file ready for PCAdapt

write.lfmm(mydata.16to26, "genotypes_16to26.lfmm")

#reading the lfmm into pcadapt

path.16to26 <-
  "/Users/gethinjones/Library/Mobile Documents/com~apple~CloudDocs/Biology/Year 4/Research Project/R/PCA_Analysis/Week Stages/genotypes_16to26.lfmm"
pca.16to26 <- read.pcadapt(path.16to26, type = "lfmm")

x.16to26 <- pcadapt(input = pca.16to26, K = 5)

#Checking for principal components using screeplot

plot(x.16to26, option = "screeplot")

#Plotting the PCA

Unformatted.PCA.16to26 <- plot(
  type = "n",
  x.16to26,
  option = "scores",
  i = 1,
  j = 2,
  pop = SNP.Markers.16to26,
  chr.info = NULL,
  snp.info = SNP.Markers.16to26,
  plt.pkg = "ggplot",
  K = NULL
)

Unformatted.PCA.16to26

#Formatting the PCA Plot

Formatted.PCA.16to26 <- Unformatted.PCA.16to26 +
  ylab(label = "PC2") +
  xlab(label = "PC1") +
  ylim(-1, 1) +
  xlim(-1, 1) +
  ggtitle("(A)") +
  theme_bw() +
  geom_hline(yintercept = 0,
             size = .25,
             linetype = "dashed") +
  geom_vline(xintercept = 0,
             size = .25,
             linetype = "dashed") +
  theme(
    text = element_text(size = 8),
    panel.grid.major = element_blank(),
    panel.grid.minor = element_blank(),
    axis.text = element_text(size = 8),
    legend.position = "bottom",
    legend.text = element_text(size = 8),
    legend.title = element_text(size = 8),
    plot.title = element_text(size = 8)
  ) +
  guides(color = guide_legend(override.aes = list(size = 3))) +
  geom_point(shape = 16,
             size = 3,
             colour = MyPalette) +
  scale_colour_manual(values = MyPalette) +
  labs(color = 'Marker\nPosition')

Formatted.PCA.16to26

#################################################27to37#################################################

#Automatically deleting existing lfmm and bed files in the directory

if (file.exists("genotypes_27to37.lfmm")) {
  file.remove("genotypes_27to37.lfmm")
}

if (file.exists("genotypes_27to37.lfmm.bed")) {
  file.remove("genotypes_27to37.lfmm.bed")
}

#loading the covid sequences as genotypes file into R

table.27to37 <-
  read.table(
    "/Users/gethinjones/Library/Mobile Documents/com~apple~CloudDocs/Biology/Year 4/Research Project/R/PCA_Analysis/Week Stages/cog_alignment.fasta_covid_variants_as_genotypes_27_37.txt",
    header = T
  )

#specifying row names

SNP.Markers.27to37 <- rownames(table.27to37) <- table.27to37[, 1]

#Specifying the data to import into PCAdapt

mydata.27to37 <- table.27to37[,-1]

#making the table a lfmm file ready for PCAdapt

write.lfmm(mydata.27to37, "genotypes_27to37.lfmm")

#reading the lfmm into pcadapt

path.27to37 <-
  "/Users/gethinjones/Library/Mobile Documents/com~apple~CloudDocs/Biology/Year 4/Research Project/R/PCA_Analysis/Week Stages/genotypes_27to37.lfmm"

pca.27to37 <- read.pcadapt(path.27to37, type = "lfmm")

x.27to37 <- pcadapt(input = pca.27to37, K = 2)

#Checking for principal components using screeplot

plot(x.27to37, option = "screeplot")

#Plotting the PCA

PCA.Unformatted.27to37 <- plot(
  x.27to37,
  option = "scores",
  i = 1,
  j = 2,
  pop = SNP.Markers.27to37,
  chr.info = NULL,
  snp.info = SNP.Markers.27to37,
  plt.pkg = "ggplot",
  K = NULL
)

#Formatting the PCA Plot

Formatted.PCA.Plot.27to37 <- PCA.Unformatted.27to37 +
  ylab(label = "PC2") +
  xlab(label = "PC1") +
  ylim(-1, 1) +
  xlim(-1, 1) +
  ggtitle("(B)") +
  theme_bw() +
  geom_hline(yintercept = 0,
             size = .25,
             linetype = "dashed") +
  geom_vline(xintercept = 0,
             size = .25,
             linetype = "dashed") +
  theme(
    text = element_text(size = 8),
    panel.grid.major = element_blank(),
    panel.grid.minor = element_blank(),
    axis.text = element_text(size = 8),
    legend.position = "bottom",
    legend.text = element_text(size = 8),
    legend.title = element_text(size = 8),
    plot.title = element_text(size = 8)
  ) +
  guides(color = guide_legend(override.aes = list(size = 3))) +
  geom_point(shape = 16,
             size = 3,
             colour = MyPalette) +
  scale_colour_manual(values = MyPalette) +
  labs(color = 'Marker\nPosition')

#################################################38to48#################################################

#Automatically deleting existing lfmm and bed files in the directory

if (file.exists("genotypes_38to48.lfmm")) {
  file.remove("genotypes_38to48.lfmm")
}

if (file.exists("genotypes_38to48.lfmm.bed")) {
  file.remove("genotypes_38to48.lfmm.bed")
}

#loading the covid sequences as genotypes file into R

table.38to48 <-
  read.table(
    "/Users/gethinjones/Library/Mobile Documents/com~apple~CloudDocs/Biology/Year 4/Research Project/R/PCA_Analysis/Week Stages/cog_alignment.fasta_covid_variants_as_genotypes_38_48.txt",
    header = T
  )

#specifying row names

SNP.Markers.38to48 <- rownames(table.38to48) <- table.38to48[, 1]

#Specifying the data to import into PCAdapt

mydata.38to48 <- table.38to48[,-1]

#making the table a lfmm file ready for PCAdapt

write.lfmm(mydata.38to48, "genotypes_38to48.lfmm")

#reading the lfmm into pcadapt

path.38to48 <-
  "/Users/gethinjones/Library/Mobile Documents/com~apple~CloudDocs/Biology/Year 4/Research Project/R/PCA_Analysis/Week Stages/genotypes_38to48.lfmm"
pca.38to48 <- read.pcadapt(path.38to48, type = "lfmm")

x.38to48 <- pcadapt(input = pca.38to48, K = 2)

#Checking for principal components using screeplot

plot(x.38to48, option = "screeplot")

#Plotting the PCA

PCA.Unformatted.38to48 <- plot(
  x.38to48,
  option = "scores",
  i = 1,
  j = 2,
  pop = SNP.Markers.38to48,
  chr.info = NULL,
  snp.info = SNP.Markers.38to48,
  plt.pkg = "ggplot",
  K = NULL
)

#Formatting the PCA Plot

Formatted.PCA.Plot.38to48 <- PCA.Unformatted.38to48 +
  ylab(label = "PC2") +
  xlab(label = "PC1") +
  ylim(-1, 1) +
  xlim(-1, 1) +
  ggtitle("(C)") +
  theme_bw() +
  geom_hline(yintercept = 0,
             size = .25,
             linetype = "dashed") +
  geom_vline(xintercept = 0,
             size = .25,
             linetype = "dashed") +
  theme(
    text = element_text(size = 8),
    panel.grid.major = element_blank(),
    panel.grid.minor = element_blank(),
    axis.text = element_text(size = 8),
    legend.position = "bottom",
    legend.text = element_text(size = 8),
    legend.title = element_text(size = 8),
    plot.title = element_text(size = 8)
  ) +
  guides(color = guide_legend(override.aes = list(size = 3))) +
  geom_point(shape = 16,
             size = 3,
             colour = MyPalette) +
  scale_colour_manual(values = MyPalette) +
  labs(color = 'Marker\nPosition')

#################################################49to59#################################################

#Automatically deleting existing lfmm and bed files in the directory

if (file.exists("genotypes_49to59.lfmm")) {
  file.remove("genotypes_49to59.lfmm")
}

if (file.exists("genotypes_49to59.lfmm.bed")) {
  file.remove("genotypes_49to59.lfmm.bed")
}

#loading the covid sequences as genotypes file into R

table.49to59 <-
  read.table(
    "/Users/gethinjones/Library/Mobile Documents/com~apple~CloudDocs/Biology/Year 4/Research Project/R/PCA_Analysis/Week Stages/cog_alignment.fasta_covid_variants_as_genotypes_49_59.txt",
    header = T
  )

#specifying row names

SNP.Markers.49to59 <- rownames(table.49to59) <- table.49to59[, 1]

#Specifying the data to import into PCAdapt

mydata.49to59 <- table.49to59[,-1]

#making the table a lfmm file ready for PCAdapt

write.lfmm(mydata.49to59, "genotypes_49to59.lfmm")

#reading the lfmm into pcadapt

path.49to59 <-
  "/Users/gethinjones/Library/Mobile Documents/com~apple~CloudDocs/Biology/Year 4/Research Project/R/PCA_Analysis/Week Stages/genotypes_49to59.lfmm"
pca.49to59 <- read.pcadapt(path.49to59, type = "lfmm")

x.49to59 <- pcadapt(input = pca.49to59, K = 2)

#Checking for principal components using screeplot

plot(x.49to59, option = "screeplot")

#Plotting the PCA

PCA.Unformatted.49to59 <- plot(
  x.49to59,
  option = "scores",
  i = 1,
  j = 2,
  pop = SNP.Markers.49to59,
  chr.info = NULL,
  snp.info = SNP.Markers.49to59,
  plt.pkg = "ggplot",
  K = NULL
)

#Formatting the PCA Plot

Formatted.PCA.Plot.49to59 <- PCA.Unformatted.49to59 +
  ylab(label = "PC2") +
  xlab(label = "PC1") +
  ylim(-1, 1) +
  xlim(-1, 1) +
  ggtitle("(D)") +
  theme_bw() +
  geom_hline(yintercept = 0,
             size = .25,
             linetype = "dashed") +
  geom_vline(xintercept = 0,
             size = .25,
             linetype = "dashed") +
  theme(
    text = element_text(size = 8),
    panel.grid.major = element_blank(),
    panel.grid.minor = element_blank(),
    axis.text = element_text(size = 8),
    legend.position = "bottom",
    legend.text = element_text(size = 8),
    legend.title = element_text(size = 8),
    plot.title = element_text(size = 8)
  ) +
  guides(color = guide_legend(override.aes = list(size = 3))) +
  geom_point(shape = 16,
             size = 3,
             colour = MyPalette) +
  scale_colour_manual(values = MyPalette) +
  labs(color = 'Marker\nPosition')

#Plotting PCAs side by side

grid.arrange(
  Formatted.PCA.16to26,
  Formatted.PCA.Plot.27to37,
  Formatted.PCA.Plot.38to48,
  Formatted.PCA.Plot.49to59,
  ncol = 2
)
