
evaluate <- function (funcion,argumento){
  result<-switch(
          funcion,
          suma=sum(argumento),
          promedio=mean(argumento),
          minimo=floor(argumento),
          desviacion=sd(argumento)
  )
  return(result)
}

