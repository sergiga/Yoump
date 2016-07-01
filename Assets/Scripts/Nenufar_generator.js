#pragma strict

var Nenufar : GameObject;
var Buff : GameObject;
var Tortuga : GameObject;
var Plataforma : GameObject;
var GeneraFuego : GameObject;
var TortugaEscenaLejana : Transform;

var Rana : Transform;

var circulo : float;
var distancia : Vector3[];
var distanterior : float;
//
var posicionNenufares : Vector3[];
var posicionTortuga : int;
var matrizDistancias : Vector3[,];
//
var cantidad : int;
var valor : Vector3;
var referenciaMax : float;
var referenciaMin : float;
var noGenerarMas : boolean;
var hayBuffo : boolean;
var buffoEnEscena : boolean;
var referenciaBuffo : float;
// Fuego.
var referenciaAnterior : float;
var hayPiedrasFuego : boolean;
var posicionPiedrasLaterales : float;
var referenciaMandar : Vector3;
// Tamano pantalla en el Rio.
var pantalla : Vector3;

function Start() {
//	var primero = Instantiate(Nenufar,Vector3(0,0,1),Quaternion.Euler(Vector3(0,0,0)));
//	primero.transform.localScale = Vector3(1,1,1);
	// Ininicializacion de variables.
	referenciaMax = Camera.main.ScreenToWorldPoint(Vector3(0,Screen.height,16)).y;
	posicionNenufares = new Vector3[3];
	matrizDistancias = new Vector3[14,8];
	posicionTortuga = 100;
	hayBuffo = false;
	buffoEnEscena = false;
	//crearNenufar(Vector3(0,0,1));
}

function crearNenufar(referencia : Vector3) {
	var posicionesNoPermitidas : int[] = new int[8];
	referenciaMandar = referencia;
	referenciaBuffo = referencia.x;
	referencia.x = Mathf.Clamp(referencia.x,-5.4,5.4);
	//Debug.Log(referencia.x);
	referencia = Camera.main.WorldToScreenPoint(referencia);
	Nenufar = Resources.Load("Nenufar");
	Buff = Resources.Load("Buff");
	Tortuga = Resources.Load("Tortuga");
	Plataforma = Resources.Load("PlataformaBrinco");
	GeneraFuego = Resources.Load("GeneraFuego");	
	for(var i : int = 0; i < 12; i++){
		for(var j : int = 0; j < 8; j++) {
			matrizDistancias[i,j].x = referencia.x - Screen.width/2 + (j*Screen.width/8)+(Screen.width/16);
			matrizDistancias[i,j].y = referencia.y - Screen.height/4.21898928 + (i*Screen.height/12)+(Screen.height/24); 
			matrizDistancias[i,j].z = 16;
			matrizDistancias[i,j] = Camera.main.ScreenToWorldPoint(matrizDistancias[i,j]);
		}
	}
	referenciaMin = matrizDistancias[6,0].y;
	referencia = Camera.main.ScreenToWorldPoint(referencia);
	// Buscar tortugas en la escena y coger la mas lejana.
	var TortugasEscena = GameObject.FindGameObjectsWithTag("Tortuga");
	var distanciaTortugaLejana : float;
	buffoEnEscena = false;
	if(TortugasEscena.Length > 0) {
		buffoEnEscena = true;
		distanciaTortugaLejana = 0;
		for(var obj : GameObject in TortugasEscena) {
		
			var objectPos = obj.transform.position;
	        var distanciaTortuga = (objectPos.y - referencia.y);
	    	if (distanciaTortuga > distanciaTortugaLejana) {
	    		buffoEnEscena = true;
	   	        TortugaEscenaLejana = obj.transform;
	       	    distanciaTortugaLejana = distanciaTortuga;
	       	}
	       	if(distanciaTortuga <= 0) {
	       		buffoEnEscena = false;
	       	}
		}
	}
	// Comprobar posiciones NO permitidas para colocacion de nenufares.
	if(buffoEnEscena){
	}
	for(i = 0 ; i < 8 ; i++) {
		if(matrizDistancias[0,i].x >= 8.1) {
			posicionesNoPermitidas[i] = 1;
			hayPiedrasFuego = true;
			posicionPiedrasLaterales = 10;
		}
		else if(matrizDistancias[0,i].x <= -8.1) {
			posicionesNoPermitidas[i] = 1;
			hayPiedrasFuego = true;
			posicionPiedrasLaterales = -10;

		}
		else if(hayBuffo) {
			if(i+1 < 8) {
				if(matrizDistancias[0,i].x <= referenciaBuffo && matrizDistancias[0,i+1].x >= referenciaBuffo) { 
					posicionesNoPermitidas[i] = 1;
					posicionesNoPermitidas[i+1] = 1;
				}
			}
			if(matrizDistancias[0,i].x == referenciaBuffo) {
				posicionesNoPermitidas[i] = 1;
			}
		}
		else if(buffoEnEscena) {
			if(i+1 < 8) {
				if(matrizDistancias[0,i].x <= TortugaEscenaLejana.transform.position.x && matrizDistancias[0,i+1].x >= TortugaEscenaLejana.transform.position.x) { 
					posicionesNoPermitidas[i] = 1;
					posicionesNoPermitidas[i+1] = 1;
				}
			}
			if(i == 0 && matrizDistancias[0,i].x >= TortugaEscenaLejana.transform.position.x) {
				posicionesNoPermitidas[i] = 1;
			}
			if(i == 7 && matrizDistancias[0,i].x <= TortugaEscenaLejana.transform.position.x) {
				posicionesNoPermitidas[i] = 1;
			}
			if(matrizDistancias[0,i].x == TortugaEscenaLejana.transform.position.x) {
				posicionesNoPermitidas[i] = 1;
			}
		}
		else {
			posicionesNoPermitidas[i] = 0;
		}
	}
//	Debug.Log(posicionesNoPermitidas[0] +" " +posicionesNoPermitidas[1] +" " +posicionesNoPermitidas[2] +" " +posicionesNoPermitidas[3] +" " +posicionesNoPermitidas[4] +" " +posicionesNoPermitidas[5] +" " +posicionesNoPermitidas[6] +" " +posicionesNoPermitidas[7]);
	cantidad = Random.Range(2,4);
	if(referenciaMax >= matrizDistancias[6,0].y && referenciaMax < matrizDistancias[8,0].y) {
//		Debug.Log("ref1");
		referenciaMin = matrizDistancias[8,0].y;
		cantidad = Random.Range(2,3);
		noGenerarMas = false;
	}
	else if(referenciaMax >= matrizDistancias[8,0].y && referenciaMax < matrizDistancias[9,0].y) {
//		Debug.Log("ref2");
		referenciaMin = matrizDistancias[10,0].y;
		cantidad = 1;
		noGenerarMas = false;
	}
	else if(referenciaMax >= matrizDistancias[9,0].y) {
//		Debug.Log("ref3");
		cantidad = Random.Range(2,4);
		noGenerarMas = true;
	}
	else if(referenciaMax < matrizDistancias[6,0].y) {
//		Debug.Log("ref4");
		referenciaMin = matrizDistancias[7,0].y;
		cantidad = Random.Range(2,4);
		noGenerarMas = false;
	}
	posicionNenufares = new Vector3[cantidad];
	for(var k : int = 0; k < cantidad; k++) {
		var posicionesPermitidas = new Array();
		for(i = 0; i < cantidad; i++) {
			for(j = -1; j < 2; j++) {
				if(posicionNenufares[i].x == 0) {
					if(k != 0 && i < k) {
						posicionesNoPermitidas[0] = 1;
						posicionesNoPermitidas[1] = 1;
					}
				}
				else if(posicionNenufares[i].x == 7) {
					posicionesNoPermitidas[7] = 1;
					posicionesNoPermitidas[6] = 1;

				}
				else {
					posicionesNoPermitidas[posicionNenufares[i].x + j] = 1;
				}
			}
		}
		for(i = 0;i < 8;i++) {
			if(posicionesNoPermitidas[i] == 0) {
				posicionesPermitidas.Add(i);
			}
		}
		if(posicionesPermitidas.length > 0) {
			valor = Vector3(Random.Range(0,posicionesPermitidas.length),Random.Range(referenciaMin,matrizDistancias[10,0].y),1);
			posicionNenufares[k].x = posicionesPermitidas[valor.x];
			posicionNenufares[k].y = valor.y;
			posicionNenufares[k].z = 1;
		}
	}
	
	var comparador : int;
	var buffos : int[] = new int[3];
	var buffo : int;
	var buffoRandom : int = Random.value * 100;
	var posicionBuffo : int;
	buffos[0] = 5;
	buffos[1] = 5;
	buffos[2] = 90;	
	for (i = 0 ; i < buffos.Length ; i++) {
		comparador = comparador + buffos[i];
		if(buffoRandom <= comparador) {
			buffoRandom = 150;
			buffo = i;
		}
	}	
	if (buffo == 0 || buffo == 1) {
		posicionBuffo = Random.Range(0,cantidad);	
	}
	
	referenciaAnterior = referenciaMax;
	if(!noGenerarMas) {
		for(k = 0; k < posicionNenufares.Length; k++) {
			if(k != posicionBuffo) {
				Instantiate(Nenufar,Vector3(matrizDistancias[1,posicionNenufares[k].x].x,posicionNenufares[k].y,1),Quaternion.Euler(Vector3(0, 0, Random.Range(-360,360))));
			}
			if(k == posicionBuffo) {
				if(buffo == 0 && !hayBuffo) {
					var clon : GameObject; 
					clon = Instantiate(Tortuga,Vector3(matrizDistancias[1,posicionNenufares[k].x].x,Rana.transform.position.y - 3.5,1.5),Quaternion.Euler(Vector3(0, 0, 0)));
					var posicionInicialTortuga = clon.GetComponent(TortugaMov);
					posicionInicialTortuga.posicionFinal = posicionNenufares[k].y;
					posicionInicialTortuga.movimientoInicial = true;
				}
				if(buffo == 1 && !hayBuffo) {
					Instantiate(Plataforma,Vector3(matrizDistancias[1,posicionNenufares[k].x].x,posicionNenufares[k].y,1),Quaternion.Euler(Vector3(0, 0, 0)));
				}
				if(buffo == 2 || hayBuffo) {
					Instantiate(Nenufar,Vector3(matrizDistancias[1,posicionNenufares[k].x].x,posicionNenufares[k].y,1),Quaternion.Euler(Vector3(0, 0, Random.Range(-360,360))));
				}
			}
			if(k == 0) {
				referenciaMax = posicionNenufares[k].y;
			}
			if(k != 0 && posicionNenufares[k].y > referenciaMax) {
				referenciaMax = posicionNenufares[k].y;
			}
		}
	}
	var hayGeneradores : float;
	var numeroGeneradores : int;
	var direccion : int[];
	var posicionGeneradores : Vector3[];
	posicionGeneradores = new Vector3[2];
	direccion = new int[2];
	hayGeneradores = Random.value * 100;
	if(hayGeneradores < 80) {
		numeroGeneradores = 1;
	}
	if(hayGeneradores < 35) {
		numeroGeneradores = 2;
	}
	if(hayGeneradores >= 80) {
		numeroGeneradores = 0;
	}
	if(!hayBuffo && !buffoEnEscena && numeroGeneradores != 0) {
		var ladoGenerador : int;
		ladoGenerador = Random.Range(0,2);
		if(referenciaMin - referenciaAnterior > 3 && numeroGeneradores == 1 || referenciaMin - referenciaAnterior > 3 && referenciaMin - referenciaAnterior < 6 && numeroGeneradores == 2) {
			posicionGeneradores[0].x = matrizDistancias[0,ladoGenerador*7].x;
			posicionGeneradores[0].y = (referenciaMin + referenciaAnterior)/2;
			posicionGeneradores[0].z = 1;
			if(ladoGenerador == 0) {
				direccion[0] = -90;
			}
			if(ladoGenerador == 1) {
				direccion[0] = 90;
			}
			if(hayPiedrasFuego && posicionGeneradores[0].x > 8.3) {
				posicionGeneradores[0].x = 10;
			}
			if(hayPiedrasFuego && posicionGeneradores[0].x < -8.3) {
				posicionGeneradores[0].x = -10;
			}
			Instantiate(GeneraFuego,posicionGeneradores[0],Quaternion.Euler(Vector3(0,0,direccion[0])));
		}
		else if((referenciaMin - referenciaAnterior >= 6) && numeroGeneradores == 2) {
			var mismoLado : int;
			mismoLado = Random.Range(0,2);
			if(mismoLado == 0) {
				if(ladoGenerador == 0) {
					posicionGeneradores[0].x = matrizDistancias[0,0].x;
					posicionGeneradores[0].y = (referenciaMin + referenciaAnterior)/2 - (referenciaMin - referenciaAnterior)/8;
					posicionGeneradores[0].z = 1;
					posicionGeneradores[1].x = matrizDistancias[0,7].x;
					posicionGeneradores[1].y = (referenciaMin + referenciaAnterior)/2 + (referenciaMin - referenciaAnterior)/8;
					posicionGeneradores[1].z = 1;
					direccion[0] = -90;
					direccion[1] = 90;
					if(hayPiedrasFuego && posicionGeneradores[0].x < -8.3) {
						posicionGeneradores[0].x = -10;
					}
					if(hayPiedrasFuego && posicionGeneradores[1].x > 8.3) {
						posicionGeneradores[1].x = 10;
					}	
				}
				if(ladoGenerador == 1) {
					posicionGeneradores[0].x = matrizDistancias[0,7].x;
					posicionGeneradores[0].y = (referenciaMin + referenciaAnterior)/2 + (referenciaMin - referenciaAnterior)/8;
					posicionGeneradores[0].z = 1;
					posicionGeneradores[1].x = matrizDistancias[0,0].x;
					posicionGeneradores[1].y = (referenciaMin + referenciaAnterior)/2 - (referenciaMin - referenciaAnterior)/8;
					posicionGeneradores[1].z = 1;
					direccion[0] = 90;
					direccion[1] = -90;
					if(hayPiedrasFuego && posicionGeneradores[0].x > 8.3) {
						posicionGeneradores[0].x = 10;
					}
					if(hayPiedrasFuego && posicionGeneradores[1].x < -8.3) {
						posicionGeneradores[1].x = -10;
					}
				}
			}
			else if(mismoLado == 1) {
				posicionGeneradores[0].x = matrizDistancias[0,ladoGenerador*7].x;
				posicionGeneradores[0].y = (referenciaMin + referenciaAnterior)/2 + (referenciaMin - referenciaAnterior)/8;
				posicionGeneradores[0].z = 1;
				posicionGeneradores[1].x = matrizDistancias[0,ladoGenerador*7].x;
				posicionGeneradores[1].y = (referenciaMin + referenciaAnterior)/2 - (referenciaMin - referenciaAnterior)/8;
				posicionGeneradores[1].z = 1;
				if(ladoGenerador == 0) {
					direccion[0] = -90;
					direccion[1] = -90;
				}
				if(ladoGenerador == 1) {
					direccion[0] = 90;
					direccion[1] = 90;
				}
				if(hayPiedrasFuego && posicionGeneradores[0].x > 8.3) {
					posicionGeneradores[0].x = 10;
					posicionGeneradores[1].x = 10;
				}
				if(hayPiedrasFuego && posicionGeneradores[0].x < -8.3) {
					posicionGeneradores[0].x = -10;
					posicionGeneradores[1].x = -10;
				}
			}
			for(i = 0; i < numeroGeneradores; i++) {
				Instantiate(GeneraFuego,posicionGeneradores[i],Quaternion.Euler(Vector3(0,0,direccion[i])));
			}
		}
	}
}