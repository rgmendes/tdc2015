#fazendo um gr�fico em linhas com o crescimento da 
#popula��o do chile 
countries["Chile", 1:5]

#plot simples
plot(c(2005,2006,2007,2008,2009),countries["Chile", 1:5]/1000000)
#plot com mais informa��es
plot(c(2005,2006,2007,2008,2009),countries["Chile", 1:5]/1000000,main="Popula��o",xlab="Anos",ylab="Popula��o",type="o")
#lines(countries["Australia", 1:5]/1000000)#,col=red)
