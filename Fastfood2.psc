Proceso Fastfood
	//auxiliares para iniciar programa
	//opcion: 
	//contador: 
	//i: 
	Definir opcion,contador,i como entero;
	//se puede tener 5 clientes a la vez
	//clientes[] guarda los nombres de los clientes
	//se inicia con valor null
	Dimension clientes[5];
	Definir clientes Como Caracter;
	//inicializar array clientes con null
	para i <- 0 hasta 4 Con Paso 1 hacer 
		clientes[i]="null";
	FinPara
	//arreglo para los pedidos de los clientes
	//indice1: ingredientes y pago;
	//indice2: tiempos de preparación
	//indice3: numero de cliente al que corresponde el pedido
	Dimension orden[7,2,5];
	Definir orden Como Entero;
	//inicializar array orden con ceros
	inicializarM(orden,7,2,5);
	Repetir
		contador=0;
		Repetir
			Escribir "1)vender 0)cerrar";
			Leer opcion;
			si opcion!=1 y opcion!=0 Entonces
				Escribir "escriba opción valida";
			FinSi
			si opcion=1 Entonces
				vender(orden,clientes,contador);
				contador=contador+1;
			FinSi
		Hasta Que opcion=0 o contador=5 //correspondiente al numero de clientes
		//agregar opcion para hacer display de informacion con otra opcion: 2)mostrar informacion
	Hasta Que opcion=0;
	escribirArrayN(clientes,5);
	escribirTablaNx2xM(orden,7,5);
FinProceso
//hace un display de información que contiene un array pedido
Funcion display(unPedido)
	
FinFuncion
Funcion escribirArrayN(array,N)
	Definir i como entero;
	i=0;
	Repetir
		Escribir array[i];
		i=i+1;
	Hasta Que i=N
FinFuncion
Funcion vender(orden,cliente,k)
	Dimension mensaje[7],tiempo[6];
	Definir mensaje,nombre como cadena;
	Definir i,tiempo como entero;
	mensaje[0]="¿Quiere mayonesa? 1)si 0)no";
	mensaje[1]="¿Quiere lechuga? 1)si 0)no";
	mensaje[2]="¿Quiere tomate? 1)si 0)no";
	mensaje[3]="¿Quiere queso? 1)si 0)no";
	mensaje[4]="¿Quiere carne, pollo o lomo? 1)carne 2)pollo 3)lomo 0)nada";
	mensaje[5]="Que medio de pago usa: 1)tarjeta 2)redcompra 3)efectivo 0)cancelar pedido";
	mensaje[6]="Ingrese efectivo";
	tiempo[0]=2;
	tiempo[1]=2;
	tiempo[2]=3;
	tiempo[3]=2;
	tiempo[4]=3;
	tiempo[5]=5;
	//Arreglo para una hamburguesa de un cliente
	Para i <- 0 hasta 6 Con Paso 1 Hacer
		si i<4 entonces
			Repetir
				Escribir mensaje[i];
				leer orden[i,0,k];
				//validación
				si orden[i,0,k]=1 Entonces
					orden[i,1,k]=tiempo[i];
				FinSi
				si orden[i,0,k]!=1 y orden[i,0,k]!=0 Entonces
					Escribir "Ingrese opción válida";
				FinSi
			Hasta Que orden[i,0,k]=1 o orden[i,0,k]=0;
		FinSi
		si i=4 o i=5 entonces;
			Repetir
				Escribir mensaje[i];
				leer orden[i,0,k];
				//validación
				si orden[i,0,k]!=0 Entonces
					orden[i,1,k]=tiempo[i];
				FinSi
				si orden[i,0,k]<0 o orden[i,0,k]>3 Entonces
					Escribir "Ingrese opción válida";
				FinSi
				
			Hasta Que orden[i,0,k]>=0 y orden[i,0,k]<=3;
			
		FinSi
		si i=6 Entonces
			si orden[5,0,k]=3 Entonces
				Repetir
					Escribir mensaje[i];
					Leer orden[i,0,k];
				Hasta Que orden[i,0,k]>0
			FinSi
		FinSi
		
	FinPara
	si orden[5,0]!=0 Entonces
		Escribir "Nombre cliente";
		leer nombre;
		cliente[k]=nombre;
		para i<-0 hasta 6 con paso 1 Hacer
			orden[i,2]=k;
		FinPara
	FinSi	
FinFuncion
Funcion escribirTablaNx2xM(array,N,M)
	Definir i,j como entero;
	i=0;
	j=0;
	para j<-0 hasta M-1 con paso 1 hacer
		escribir "CLIENTE ",j;
		para i<-0 hasta N-1 con paso 1 hacer
			Escribir array[i,0,j]," ",array[i,0,j]," ",array[i,0,j];
		FinPara
		
	FinPara
	
FinFuncion
//sean x, y, z dimensiones
//inicializa con ceros
Funcion inicializarM(M,x,ye,z)
	Definir i,j,k como enteros;
	k=0;
	j=0;
	i=0;
	para k<-0 hasta z-1 con paso 1 hacer
		para j<-0 hasta ye-1 con paso 1 hacer
			para i<-0 hasta x-1 con paso 1 hacer
				M[i,j,k]=0;
			FinPara
		FinPara
	FinPara
FinFuncion
	