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

#################################################Early#################################################

#Automatically deleting existing lfmm and bed files in the directory

if (file.exists("genotypes_early.lfmm")) {
  file.remove("genotypes_early.lfmm")
}

if (file.exists("genotypes_early.lfmm.bed")) {
  file.remove("genotypes_early.lfmm.bed")
}

#loading the covid sequences as genotypes file into R

table.early<-read.table("/Users/gethinjones/Library/Mobile Documents/com~apple~CloudDocs/Biology/Year 4/Research Project/R/PCA_Analysis/Pandemic Stages/cog_alignment.fasta_covid_variants_as_genotypes_early.txt", header = T)

#specifying row names

SNP.Markers.early<-rownames(table.early)<-table.early[,1]

#Specifying the data to import into PCAdapt

mydata.early<-table.early[,-1]

#making the table a lfmm file ready for PCAdapt

write.lfmm(mydata.early, "genotypes_early.lfmm")

#reading the lfmm into pcadapt

path.early <- "/Users/gethinjones/Library/Mobile Documents/com~apple~CloudDocs/Biology/Year 4/Research Project/R/PCA_Analysis/Pandemic Stages/genotypes_early.lfmm"
pca.early<-read.pcadapt(path.early, type = "lfmm")

x.early <- pcadapt(input = pca.early, K = 2)

#Checking for principal components using screeplot

plot(x.early, option = "screeplot")

#Plotting the PCA

Unformatted.PCA.Early<-plot(
  x.early,
  option = "scores",
  i = 1,
  j = 2,
  pop=SNP.Markers.early,
  chr.info = NULL,
  snp.info = SNP.Markers.early,
  plt.pkg = "ggplot",
  K = NULL
)

#Formatting the PCA Plot

Formatted.PCA.Early<- Unformatted.PCA.Early +
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

#################################################Middle#################################################

#Automatically deleting existing lfmm and bed files in the directory

if (file.exists("genotypes_middle.lfmm")) {
  file.remove("genotypes_middle.lfmm")
}

if (file.exists(genotypes_middle.lfmm.bed)) {
  file.remove(genotypes_middle.lfmm.bed)
}

#loading the covid sequences as genotypes file into R

table.middle<-read.table("/Users/gethinjones/Library/Mobile Documents/com~apple~CloudDocs/Biology/Year 4/Research Project/R/PCA_Analysis/Pandemic Stages/cog_alignment.fasta_covid_variants_as_genotypes_middle.txt", header = T)

#selecting marker names 

SNP.Markers.middle<-rownames(table.middle)<-table.middle[,1]

#Specifying the data to import into PCAdapt

mydata.middle<-table.middle[,-1]

#making the table a lfmm file ready for PCAdapt

write.lfmm(mydata.middle, "genotypes_middle.lfmm")

#reading the lfmm into pcadapt

path.middle <- "/Users/gethinjones/Library/Mobile Documents/com~apple~CloudDocs/Biology/Year 4/Research Project/R/PCA_Analysis/Pandemic Stages/genotypes_middle.lfmm"

pca.middle<-read.pcadapt(path.middle, type = "lfmm")

x.middle <- pcadapt(input = pca.middle, K = 2)

#Checking for principal components using screeplot

plot(x.middle, option = "screeplot")

#Plotting the PCA

PCA.Unformatted.Middle<-plot(
  x.middle,
  option = "scores",
  i = 1,
  j = 2,
  pop=SNP.Markers.middle,
  chr.info = NULL,
  snp.info = SNP.Markers.middle,
  plt.pkg = "ggplot",
  K = NULL
)

#Formatting the PCA Plot

Formatted.PCA.Middle<- PCA.Unformatted.Middle +
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

#################################################late#################################################

#Automatically deleting existing lfmm and bed files in the directory

if (file.exists("genotypes_late.lfmm")) {
  file.remove("genotypes_late.lfmm")
}

if (file.exists("genotypes_late.lfmm.bed")) {
  file.remove("genotypes_late.lfmm.bed")
}

#loading the covid sequences as genotypes file into R

table.late<-read.table("/Users/gethinjones/Library/Mobile Documents/com~apple~CloudDocs/Biology/Year 4/Research Project/R/PCA_Analysis/Pandemic Stages/cog_alignment.fasta_covid_variants_as_genotypes_late.txt", header = T)

#specifying row names

SNP.Markers.late<-rownames(table.late)<-table.late[,1]

#Specifying the data to import into PCAdapt

mydata.late<-table.late[,-1]

#making the table a lfmm file ready for PCAdapt

write.lfmm(mydata.late, "genotypes_late.lfmm")

#reading the lfmm into pcadapt

path.late <- "/Users/gethinjones/Library/Mobile Documents/com~apple~CloudDocs/Biology/Year 4/Research Project/R/PCA_Analysis/Pandemic Stages/genotypes_late.lfmm"
pca.late<-read.pcadapt(path.late, type = "lfmm")

x.late <- pcadapt(input = pca.late, K = 2)
#Checking for principal components using screeplot

plot(x.late, option = "screeplot")

#Plotting the PCA

PCA.Unformatted.late<-plot(
  x.late,
  option = "scores",
  i = 1,
  j = 2,
  pop=SNP.Markers.late,
  chr.info = NULL,
  snp.info = SNP.Markers.late,
  plt.pkg = "ggplot",
  K = NULL
)

#Formatting the PCA Plot

Formatted.PCA.Late<- PCA.Unformatted.late +
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

#################################################whole#################################################

#Automatically deleting existing lfmm and bed files in the directory

if (file.exists("genotypes_whole.lfmm")) {
  file.remove("genotypes_whole.lfmm")
}

if (file.exists("genotypes_whole.lfmm.bed")) {
  file.remove("genotypes_whole.lfmm.bed")
}

#loading the covid sequences as genotypes file into R

table.whole<-read.table("/Users/gethinjones/Library/Mobile Documents/com~apple~CloudDocs/Biology/Year 4/Research Project/R/PCA_Analysis/Pandemic Stages/cog_alignment.fasta_covid_variants_as_genotypes_whole.txt", header = T)

#specifying row names

SNP.Markers.whole<-rownames(table.whole)<-table.whole[,1]

#Specifying the data to import into PCAdapt

mydata.whole<-table.whole[,-1]

#making the table a lfmm file ready for PCAdapt

write.lfmm(mydata.whole, "genotypes_whole.lfmm")

#reading the lfmm into pcadapt

path.whole <- "/Users/gethinjones/Library/Mobile Documents/com~apple~CloudDocs/Biology/Year 4/Research Project/R/PCA_Analysis/Pandemic Stages/genotypes_whole.lfmm"
pca.whole<-read.pcadapt(path.whole, type = "lfmm")

x.whole <- pcadapt(input = pca.whole, K = 2)

#Checking for principal components using screeplot

plot(x.whole, option = "screeplot")

#Plotting the PCA

PCA.Unformatted.whole<-plot(
  x.whole,
  option = "scores",
  i = 1,
  j = 2,
  pop=SNP.Markers.whole,
  chr.info = NULL,
  snp.info = SNP.Markers.whole,
  plt.pkg = "ggplot",
  K = NULL
)

#Formatting the PCA Plot

Formatted.PCA.Whole<- PCA.Unformatted.whole +
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

grid.arrange(Formatted.PCA.Early, Formatted.PCA.Middle, Formatted.PCA.Late, Formatted.PCA.Whole, ncol=2)

ggsave("PCA_Pandemic_Stages.png", width=10, height=10, dpi=600)
