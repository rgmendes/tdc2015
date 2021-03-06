#dataset mtcars
mtcars$mpg

#histograma em sua forma mais simples...
range(mtcars$mpg)
hist(mtcars$mpg)

#com um n�mero de "bins" diferente
hist(mtcars$mpg, breaks=10, col="blue")

#adicionando uma curva normal
#Em estat�stica e probabilidade, a distribui��o normal, 
#tamb�m conhecida como Distribui��o de Gauss ou Curva de Bell, 
#� uma observa��o sobre a dispers�o de dados em diferentes ocorr�ncias
dev.off()
x <- mtcars$mpg 
hst<-hist(x, breaks=10, col="blue", xlab="Milhas X Gal�o", 
        main="Histograma com Curva Normal") 

#distribui��o normal, tamb�m conhecida como 
#Distribui��o de Gauss ou Curva de Bell, 
#� uma observa��o sobre a dispers�o de dados 
#em diferentes ocorr�ncias, mais 
#reconhecida em valores aleat�rios
#no r... a curva normal � obtida pela fun��o dnorm
#curva normal precisa de x e y
#x � o range de consumo
#y � o conumo em si analisado pela fun��o dnorm 
#que recebe a s�rie de dados, m�dia(mean) e o desvio padr�o(sd) 
#densidade e distribui��o...
xnorm <- seq(min(x),max(x),length=40) 
ynorm <- dnorm(xnorm,mean=mean(x),sd=sd(x)) 

#dnorm gera valores abaixo de zero... 
#ynorm X a diferen�a entre os dois primeiros pontos (h$mids) = +-2
#vezes o comprimento da s�rie  (32) que d� 64...
ynorm <- ynorm*64 
lines(xnorm, ynorm, col="red", lwd=2)



