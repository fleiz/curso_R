#- Generar un script en R con tareas complejas implementadas mediante funciones
rm(list=ls())

boring_function <- function(x) {
  paste('valor de x:',x)
}

#- Mostramos codigo de la función
boring_function
#- Ejecutamos funcion
print(boring_function('test'))

#- Ahora vamos a replicar la funcionalidad de la funcion mean(), creando nuestra propia función que haga lo mismo que mean()
my_mean <- function(my_vector) 
{
  sum(my_vector)/length(my_vector)
}

my_vector <- c(2,4,5,30)
my_mean( my_vector  )

## Calculadora
# Program make a simple calculator that can add, subtract, multiply and divide using functions
fn_add <- function(x, y) {
  return(x + y)
}
fn_subtract <- function(x, y) {
  return(x - y)
}
fn_multiply <- function(x, y) {
  return(x * y)
}
fn_divide <- function(x, y) {
  return(x / y)
}

?readline
# take input from the user
#rm(list=ls())

print(paste("Selecione la operación:","1.Adicion,","2.Sustracción,","3.Multiplicación,","4.División", sep=" "))
option_selected = readline(prompt="Ingrese opción [1/2/3/4]: ")
option_selected = as.integer(option_selected)
num1 = readline(prompt="Ingresar primer digito: ")
num1 = as.integer(num1)
num2 = readline(prompt="Ingresar segundo digito: ")
num2 = as.integer(num2)
operator <- switch(option_selected,"+,","-","*","/")
operation <- switch(option_selected,"Adicion,","Sustracción","Multiplicación","División")
print(paste('operator:',operator)) 
result <- switch(
                option_selected,
                fn_add(num1, num2),
                fn_subtract(num1, num2),
                fn_multiply(num1, num2),
                fn_divide(num1, num2)
                )
print(paste("Operación:",operation,'::',num1, operator, num2, "=", round(result,4)))

