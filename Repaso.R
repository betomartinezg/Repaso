##############################################
################ Repaso   ####################
##############################################

#1. if/else
#"if" funciona como un condicional, es decir, siempre que una condici�n se cumpla
#se ejecutarA! una operaci�n determinada.
#
#"else es el complemento de "if" e indica el procedimiento cuando la condici�n
#inicial no se cumpla

##Estructura

#if (condicion){
# Procedimiento si la condici�n es verdadera
#}else{
#Procedimiento si la condici�n es falda
#}

c<-(2)

if (c<=2){
  print("Mayor/igual a dos")                ### la funci�n print la utilizamos para imprimir los resultados de la condicion
} else{
  print ("Menor/igual a dos")
}

#"else if" permite usar mas de dos condiciones en una instrucci�n

c<-(6)
if(c<=2){                                             #la condicion determinara la ejecucion de else
  print("valor num�rico menor/igual a dos")
}else if (2<c & c<=5){                                # if else para condicion intermedia
  print("valor numerico entre 2 y 5")
} else if (5<c & c<8){                                #if else para condicion intermedia
  print("valor numerico entre 6 y 7")
}else{                                                # se finaliza con else
  print("Mayor/igual a 8")
}


######################################################################
# 2. for/while
# la instruccion "for" genera un bucle que repite una serie
# operaciones en numero determinado de interaciones.
#Sintaxis
#for(elemento in objeto){operaci�n}

for(i in 1:10){
  cat("Numero", i , "")             #genera una secuencia del 1 al 10 con la palabra "Numero"
}

#otro ejemplo

a<-1
b<-2

for(i in 1:5){                      #la secuencia del 1 al 5 se le suma secuencialmente 1 y 2 que fueron los vectores predeterminados
  print(a+b+i)
}

#"while" funciona de manera similar "for" pero en este caso el numero de 
#interaciones esta determinado segun una condicion, es decir, mientras una
#condici�n se cumpla el buble seguira ejecutandose

#sintasis
#while (condici�n){
#operaci�n
#}

c=0

while(c<=10){
  print(c)
  c<-c+1                 ###al eliminar print no imprime la secuencia del 1 al 10 asignada inicialmente en el argumento
}
c

####################################################################
#3.repeat/break/next
#"repeat" repite una operaci�n hasta que el usuario lo indique, suele combinarse
#con otro comandos como "break".
#break como su nombre lo indica es utilizado para detener bucles

a<-0

repeat{
  a<-a+1
  print(a)
  if(a>=10)
    break
}

#"next" es usado para saltarse ciertos valores del bucle

for(i in 1:100){
  if (i>10)
    next
  print(i)                 #no imprime los valores del 11 al 100 debido a que la funcion if y next omite o salta estos valores 
}

#5. Funciones
#una funci�n implica un grupo de instrucciones que reciben unos datos de entrada
#emplea estos datos para obtener otros valorees y retorna un resultados

#sintaxis
#myfunction<-function(arg1, arg2,...){
#statements
#return(object)
#}

Celsius_a_fahrenheit<-function(temp_C){
  temp_F <-(temp_C*1.8)+32
  return(temp_F)
}

Celsius_a_fahrenheit(30)

###############################################

huevo_cocido<-function(temperatura){
  tiempo<-0
  while(temperatura<100 && tiempo < 100){
    
    tiempo<-tiempo+1
    temperatura<-temperatura+1
  }
  
  print("su huevo estara listo en")
  print(paste("En", tiempo, "segundos 0", tiempo/60, "minutos", sep = ""))
}

huevo_cocido(20)

###############################################
#4. apply/lapply/sapply
## Esta familia de funciones es utilizada para aplicar una funci�n a cada elemento
# de una estructura de datos.
# "apply " es la m�s simple de esta s funciones y aplica una funci�n a todos los
# elementos de una matriz

#Sintaxis
#apply (MI_ MATRIZ , 1/ 2/ c( 1, 2) , Funci�n)
# Recibe tres argumentos , el primero hace refencia a la matriz a la cual quiero
# aplicar la funci�n ; el segundo es un n�mero y corresponde a la dimesi�n que
# recibir� la operaci�n 1=filas y 2=colu mnas ; el tercero es la funci�n que ser�
# aplicada. 

m<- matrix(data=(1:10), nrow=5, ncol=2)

apply(m, 1, mean)                            #1 para recibir la funcion en las filas y mean generando la funcion que sera aplicada

#"lapply" a diferencia de "apply", opera con listas, recibe una lista y devuelve 
#una lista, con el resultados

lm<-as.list(m)
lapply(lm, sqrt)                             

#"sapply" recibe una lista y devuelve un vector, con el resultado de la funci�n
#aplicada

vm<-sapply(lm, sqrt)   
str(vm)                                       #evidencia la salidad de un vector numerico



