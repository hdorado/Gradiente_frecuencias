
library(ggplot2)

dirFol <- "//dapadfs/workspace_cluster_6/TRANSVERSAL_PROJECTS/MADR/COMPONENTE_2/Plagas_Y_Enfermedades/Andres_Aguilar/CSV/"

setwd(dirFol)

basePyricul <- read.csv("DataBasebyYear.csv")

tablaConteo <- as.data.frame(with(basePyricul,table(PEDIGREE,AÑO)))

tablaConteo$PEDIGREE <- factor(tablaConteo$PEDIGREE,levels= names(sort(table(basePyricul$PEDIGREE),decreasing = F )))



#GRADIENTE DE ESCALA PARA CONTEOS

windows()

varConteo <- ggplot(tablaConteo, aes(y=factor(PEDIGREE), x=factor(AÑO),fill=Freq))+geom_tile() + scale_fill_gradient(low="white", high="darkgreen", space="Lab")

varConteo + ylab("Variedad") + xlab("AÑO")

with(creaDataBase,table(variedad,campania))

