Proceso metodos
	
FinProceso
//array: arreglo de orden
//L: largo del array
//k: numero de cliente
//retorna string con informacion de ingredientes
Funcion string<-arrayToString(array,L,k)
	Definir i como entero;
	Definir string como caracter;
	para i<- 0 hasta L-1 con paso 1 hacer
		si i=0 entonces
			string=array[i];
		sino 
			si array[i]!="null" Entonces
				string=string+","+array[i,0,k];
			FinSi
		FinSi
	FinPara	
FinFuncion
//array: arreglo de orden
//L: largo del array
//k: numero de cliente
//retorna tiempo para una orden
Funcion atime<-time(array,L,k)
	Definir i,atime como entero;
	atime=0;
	para i<- 0 hasta L-1 con paso 1 hacer
		atime=atime+array[i,1,k];
	FinPara
FinFuncion
