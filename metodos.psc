Proceso metodos
	
FinProceso

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
Funcion display(array,cliente,La,Lc)
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
//array: arreglo de orden
//k: numero de cliente
//retorna string con informacion de ingredientes
Funcion string<-ingredientes(array,k)
	Definir i como entero;
	Dimension aux[7];
	Definir string, aux como caracter;
	aux[0]="Mayonesa";
	aux[1]="Lechuga";
	aux[2]="Tomate";
	aux[3]="Queso";
	aux[4]="Carne";
	aux[5]="Pollo";
	aux[6]="Lomo";
	para i<- 0 hasta 4 con paso 1 hacer
		si i<4 Entonces
			si array[i,0,k]=1 Entonces
				si string="" Entonces
					string=aux[i];
				SiNo
					string=string+", "+aux[i];
				FinSi
			FinSi
		sino
			segun array[i] hacer
				1:string=string+", "+aux[i];
				2:string=string+", "+aux[i+1];
				3:string=string+", "+aux[i+2];
			FinSegun
		FinSi
	FinPara
FinFuncion





