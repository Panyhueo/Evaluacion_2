Algoritmo Encriptacion_Segunda_Mundial
	//Diego Vald�s Arellano, David Campos, Manuel Venegas, Cristobal Pino, Thomas Orellana
	Definir firma,abecedario,firma_encriptada,mensaje,desencriptado Como Caracter
	Definir casos,lineas,contador,contador2,llave Como Entero
	//Se define el abecedario a ocupar
	abecedario<-" ABCDEFGHIJKLMNOPQRSTUVWXYZ"
	contador<-0
	contador2<-1
	firma<-"ERIC LILLO"
	Escribir "Ingresar cantidad de casos"
	Leer casos
	//Se verifica que la cantidad de casos est� en el rango permitido
	Mientras  casos>0 y casos<=50 Hacer
		Escribir "Ingresar firma"
		Leer firma_encriptada
		Para i<-6 Hasta 27 Con Paso 1 Hacer
			Si Subcadena(abecedario,i,i)<>Subcadena(Mayusculas(firma_encriptada),1,1) Entonces
				contador<-contador+1
				Si i==27 Entonces
					i<-1
				FinSi
			Sino
				i<-27
			FinSi
		FinPara
		Escribir contador
		Escribir "Ingresar cantidad de lineas a desencriptar"
		Leer lineas
		Si lineas>=3 y lineas<=10 Entonces
			Para i<-1 Hasta lineas con paso 1 Hacer
				Escribir "Ingresar linea ",i
				Leer mensaje
				Mientras contador2<=Longitud(mensaje) hacer
					Para j<-1 Hasta 27 Con Paso 1 Hacer
						Si Subcadena(mensaje,contador2,contador2)==Subcadena(abecedario,j,j) Entonces
							Si (j-contador)<0 Entonces
								Escribir Subcadena(abecedario,27-(contador-j),27-(contador-j)) sin saltar
								j<-27
							SiNo
								Si Subcadena(abecedario,j,j)==" " Entonces
									Escribir Subcadena(abecedario,28-contador,28-contador) Sin Saltar
									j<-27
								FinSi
								Escribir Subcadena(abecedario,j-contador,j-contador) Sin Saltar
							FinSi
						FinSi
					FinPara
					j<-1
					contador2<-contador2+1
				FinMientras
				contador2<-1
				Escribir " "
			FinPara
		SiNo
			Escribir "Numero fuera del rango aceptado"
		FinSi
		contador<-0
	FinMientras
FinAlgoritmo