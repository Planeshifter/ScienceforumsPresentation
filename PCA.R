library(ggplot2)
library(grid)
load(file="pcData.RData")
x = "PC1"
y = "PC2"
ggp <- ggplot(pcData, aes_string(x=x, y=y)) + geom_point(alpha=0.5)+geom_text(data=pcData[pcData$norm > 2.4 & pcData$posts > 700,],aes(label=name),position="jitter",size=3,vjust=1.2,alpha=.7)
vPCs <- data.frame(cbind(fit$rotation[,x], fit$rotation[,y]))
colnames(vPCs) <- colnames(fit$rotation[,1:2])  
multiple <- min(((max(pcData[,x]) - min(pcData[,x]))/(max(vPCs[,x])-min(vPCs[,x]))), ((max(pcData[,y]) - min(pcData[,y]))/(max(vPCs[,y])-min(vPCs[,y]))))

#Draw variable name
ggp <- ggp + coord_equal() + geom_text(data=vPCs, aes(x = fit$rotation[,"PC1"]*multiple*0.82, 
                                                      y = fit$rotation[,"PC2"]*multiple*0.82, label=category_names), size = 5, vjust=1, color="red",position="jitter")
#Draw arrow
ggp <- ggp + geom_segment(data=vPCs, aes(x = 0, y = 0, xend = fit$rotation[,"PC1"]*multiple*0.8, yend = fit$rotation[,"PC2"]*multiple*0.8), arrow = arrow(length = unit(.2, 'cm')), color = "grey30")
ggp <- ggp + theme(aspect.ratio=1) + theme_minimal()
print(ggp)
