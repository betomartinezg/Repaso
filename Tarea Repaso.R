#######################################
##### TAREA DE REPASO    ##############
#######################################

# REPASO -------------------------------------------------------------------

#Ejercicio 1: Repetir el ejercicio usando un "for" sin "while" pero con la condicion
c <- 0

while(c <= 10) {
  print(c)
  c <- c + 1
}

####Respuesta####

c<-0 
for(i in c){             ######se genero el bucle for donde el elemento i contuviera el vector c
 print(cbind(i<-0:10))   ###### finalmente se imprime el elemero (i) con una nueva condicion y proyectado en una columna
}


#Ejercicio 2: Extraer los nÃºmeros pares del 1 al 100 

###respuesta#####

n=100               #####intervalo de numero para la extaccion
pares=c()           #####se crearon dos vectores vacios 
impares=c()
for(i in 1:n) {if(i%%2==0) pares<-c(pares,i)  ####se creo un bucle for donde si al dividir por 2 sale 0 es PAR
else impares<-c(impares,i)}                   #### por lo contrario el numero es impar     
pares
impares

#Ejercicio 3: Modifique el siguiente cÃ³digo para que el loop rellene un vector con todos los resultados

for (i in 1:10){
  cat("Numero", i, "")
}

####respuesta#####

p<-NULL             ####se creo un vector vacio, asignandole NULL como valor
for(i in 1:10) {
  p[i]<-print(paste("numero", i))}  ####se cambio la funcion del codigo por print y paste, para que se imprimiera y se concatenara en el vector los caracteres respectivamente 


#Ejercicio 4: cargue el data "cars" y cree una nueva columna que rellene con "muy rapido" si la velocidad del modelo es mayor 15 o rellene con "muy lento" si es menor a 15

###respuesta
carrs<-cars                    #### se creo un verctor con los datos de cars que vienen incorporados por defecto
car<-as.data.frame(carrs)      #### este vector fue trasformado en un data.frame
speed<-car$speed               #### se extrajo tanto la columna de velocidad como la de distancia del data.frame     
distancia<-car$dist  
ifelse(ve<-speed>= 15, "muy rapido", "muy lento")       #### posteriormente se utilizo la función ifelse() que nos permite vectorizar if, else.
carrsfinal=cbind(speed,distancia,velocidad=(ve))        #### finalmente con la función cbind se tomo los argumentos y se combinaron en columnas y filas                   e con la función cbind 

#Ejercicio 5: Cree un dataframe con 1000 filas y 2 columnas, reste la primer columna a la segunda y cree una nueva columna con el resultado. Haga este ejercicio usando "for" y apply.

###respuesta
###for
x<-matrix(data=1:1000, nrow = 1000, ncol = 2, byrow = TRUE)      #### se creo una matrix con 1000 filas y dos columnas
df<-as.data.frame(x)                                             #### se transormo a un data.frame        
v2<-df$V2                                                        #### se extrayeron las respectivas columas de el data.frame en dos vectores
v1<-df$V1
z<-NULL
for (i in df) z[i]<-{df[,2]-df[,1]}                                   #### se creo un bucle tipo for donde se extrajo en un vextor (z) la impresion de la resta de las columna1-columna2      
dff=cbind(v1, v2, resta=(z))                                          #### gracias a la función cbind se tomo los argumentos se combinaron en columnas y filas     
###apply
resta<-function(df){df[2]-df[1]}                                      #### para la funcion apply se creo una funcióN que fuera igual a la resta de la columna2-columna1
apply(df,1,resta)                                                     #### finalmente se aplica la función apply al conjunto de datos




