Proceso metodos
	
FinProceso
//array: arreglo de orden
//L: largo del array
//k: numero de cliente
//retorna string con informacion de ingredientes
Funcion string<-ingredientes(array,L,k)
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
//array: arreglo de orden del estilo orden[X,Y,Z] con tres dimesiones
//cliente: array con nombres de clientes
//La: largo array orden
//Lc: largo de array de clientes
//metodo que despliega la información de todas las ventas hasta el momento
Funcion display(array,cliente,Lc)
	Definir i,t,tiempok,tmax como entero;
	Definir estado Como Caracter;
	i=0;
	t=0;
	tmax=0;
	Escribir "-----------------------";
	Escribir "COMIDA RAPIDA FAST FOOD";
	Escribir "-----------------------";
	Repetir
		repetir
			si cliente[i]!="null" entonces
				tiempok=time(array,La,i);
				Escribir "Pedido: ",cliente[i];
				Escribir "Hamburguesa: ", ingredientes(array,La,i);
				Escribir "cantidad: ", cantidad;
				Escribir "Tiempo de espera: ", tiempok;
				si t=tiempok Entonces
					estado="listo";
				SiNo
					estado="curso";
				FinSi
				Escribir "Estado: ",estado;
				Escribir "----------------------------------------";
			FinSi
			i=i+1;
			si tiempok>tmax entonces
				tmax=tiempok;
			FinSi
		Hasta Que i=Lc
		t=t+1;
	Hasta Que t=tmax 
FinFuncion


