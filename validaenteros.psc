Proceso validarEnteros
	Definir a como caracter;
	leer a;
	Escribir validarEntero(a);
FinProceso
//num: numero ingresado como caracter
Funcion bool<-validarEntero(num)
	Definir bool como logico;
	Definir i,j Como Entero;
	i=0;
	Definir aux,auxnum como caracter;
	Para j<-0 hasta Longitud(num)-1 Con Paso 1 Hacer
		i=0;
		Repetir
			aux=subcadena(num,j,j);
			auxnum=convertiratexto(i);
			Escribir aux," ",auxnum;
			si aux=auxnum entonces
				bool=Verdadero;
				si j!=longitud(num)-1 Entonces
					j=j+1;
					i=0;
				SiNo
					i=10;
				FinSi				
			SiNo
				bool=Falso;
				i=i+1;
			FinSi
			Escribir i;
		Hasta Que i=10
		si ~bool Entonces
			j=Longitud(num);
		FinSi
	FinPara
FinFuncion
//resetea valores de un pedido cancelado
Funcion resetear(array,k)
	Definir i Como Entero;
	para i<-0 hasta 8 Con Paso 1 Hacer
		array[i,0,k]=0;
		array[i,1,k]=0;
	FinPara
FinFuncion
