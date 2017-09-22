Proceso fastfood
	
	Definir opcion,hola como entero;
	Definir nombre como cadena;
	Repetir
		escribir "Accion requerida 1)Vender 2)Cerrar";
		Leer opcion;
		hola=vender();
		escribir hola;
		
	Hasta Que opcion=2;
	
FinProceso
Funcion orden<-vender()
	Dimension orden[7,2],mensaje[7],tiempo[6];
	Definir mensaje,nombre como cadena;
	Definir orden,i,tiempo como entero;
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
				leer orden[i,0];
				//validación
				si orden[i,0]=1 Entonces
					orden[i,1]=tiempo[i];
				FinSi
				si orden[i,0]!=1 y orden[i,0]!=0 Entonces
					Escribir "Ingrese opción válida";
				FinSi
			Hasta Que orden[i,0]=1 o orden[i,0]=0;
		FinSi
		si i=4 o i=5 entonces;
			Repetir
				Escribir mensaje[i];
				leer orden[i,0];
				//validación
				si orden[i,0]!=0 Entonces
					orden[i,1]=tiempo[i];
				FinSi
				si orden[i,0]<0 o orden[i,0]>3 Entonces
					Escribir "Ingrese opción válida";
				FinSi
				
			Hasta Que orden[i,0]>=0 y orden[i,0]<=3;
			
		FinSi
		si i=6 Entonces
			si orden[5,0]=3 Entonces
				Repetir
					Escribir mensaje[i];
					Leer orden[i,0];
				Hasta Que orden[i,0]>0
			FinSi
		FinSi
		
	FinPara
	si orden[5,0]!=0 Entonces
		Escribir "Nombre cliente";
		leer nombre;
	FinSi
FinFuncion
Funcion setPedido(array)
	
FinFuncion
	