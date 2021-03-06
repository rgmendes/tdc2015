#usando os datasets do pr�prio R....
#objetivo � confrontar idade e circunfer�ncia
#uma linha para o padr�o de crescimento de cada �rvore
Orange

#muitas linhas em um �nico gr�fico
#compara��o de v�rias s�ries de dados
dev.off() #pode ser necess�rio
arvores <- max(Orange$Tree)

# definindo o plot (com pontos)
#jpeg("PlotExample2.jpg") #adicionar dev.off no final
#pdf("PlotExample3.pdf")
plot(Orange$age, Orange$circumference, type="n", xlab="Idade (dias)",
     ylab="Circunfer�ncia (mm)" ) 
reg=lm(Orange$circumference~Orange$age)
abline(reg)


# adicionando as linhas
#um subset para cada planta...
planta <- subset(Orange, Tree==1) 
lines(planta$age, planta$circumference, type="b", lwd=1.5,
      lty=1, col="#FF0000FF", pch=18) 
planta <- subset(Orange, Tree==2) 
lines(planta$age, planta$circumference, type="b", lwd=1.5,
      lty=2, col="#CCFF00FF", pch=19) 
planta <- subset(Orange, Tree==3) 
lines(planta$age, planta$circumference, type="b", lwd=1.5,
      lty=3, col="#00FF66FF", pch=20) 
planta <- subset(Orange, Tree==4) 
lines(planta$age, planta$circumference, type="b", lwd=1.5,
      lty=4, col="#0066FFFF", pch=21) 
planta <- subset(Orange, Tree==5) 
lines(planta$age, planta$circumference, type="b", lwd=1.5,
      lty=5, col="#CC00FFFF", pch=22) 

# titulo e subtitulo
title("Crescimento", "Exemplo com n linhas - TDC 2015")

# Adicionando Legenda 
legend(118, 214, c(1,2,3,4,5), cex=0.8
       ,col=c("#FF0000FF","#CCFF00FF","#00FF66FF","#0066FFFF","#CC00FFFF")
       ,pch=c(18, 19, 20, 21, 22, 23), lty=c(1,2,3,4,5) ,title="Legenda")
#dev.off()