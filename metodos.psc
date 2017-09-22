Proceso metodos
	
FinProceso

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

Funcion atime<-time(array,L,k)
	Definir i,atime como entero;
	atime=0;
	para i<- 0 hasta L-1 con paso 1 hacer
		atime=atime+array[i,1,k];
	FinPara
FinFuncion
