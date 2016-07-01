#pragma strict

var Salto : Salto;
var GenerarInicio1 : GenerarInicio;
var GenerarInicio2 : GenerarInicio;
var botonSeleccionado : int;
var botonesMatriz : String[] = ["Play","Leaderboard","Stats","Options"];
var arriba : boolean;
var resetTimer : boolean;
var texturaMenu : GUIStyle;
var estiloTitulo : GUIStyle;
var moverMenus : float;
var velocidadMenus : float;
var botonVer : boolean;
var menu : boolean;
var unaVez : boolean;
function Start() {
	estiloTitulo.normal.textColor = Color.white;
	estiloTitulo.fontSize = 4*Screen.height/35;
	unaVez = false;
	moverMenus = Screen.height;
	arriba = false;
	botonVer = true;
}

function OnGUI () {
	botonSeleccionado = 100;
	GUI.Label(new Rect(Screen.width/2 - Screen.width/3,Screen.height/3 - Screen.height/8,2*Screen.width/3, Screen.height/4),"YOUMP",estiloTitulo);
	if(arriba && botonVer) {
		if(GUI.Button(new Rect(Screen.width/2 - Screen.width/8,moverMenus - Screen.height/28,Screen.width/4,Screen.height/28),"BAJAR")) {
			movimiento(100,true);
		}

	}
	if(!arriba && botonVer) {
		if(GUI.Button(new Rect(Screen.width/2 - Screen.width/8,moverMenus - Screen.height/28,Screen.width/4,Screen.height/28),"SUBIR")) {
			movimiento(100,false);
		}
	}
	GUI.Box(new Rect(0,moverMenus,Screen.width,Screen.height),"",texturaMenu);
	botonSeleccionado = GUI.SelectionGrid(new Rect (Screen.width/10, moverMenus + Screen.height/28, Screen.width - Screen.width/5, Screen.height/6 - Screen.width/10), botonSeleccionado, botonesMatriz,2);
	if(botonSeleccionado == 0 && !unaVez) {
		unaVez = true;
		Salto.saltar = true;
		GenerarInicio1.crece = true;
		GenerarInicio2.crece = true;
		desvanecer();
		movimiento(botonSeleccionado,true);
		botonVer = false;
	}
}

function movimiento(botonSeleccionado : int, direccion : boolean) {
	if(!resetTimer) {
		velocidadMenus = 0;
		resetTimer = true;
	}
	while(velocidadMenus < 1.1) { 
		if(direccion) {
			moverMenus = Mathf.Lerp(6*Screen.height/7 - Screen.height/28,Screen.height,velocidadMenus);
		}
		if(!direccion) {
			moverMenus = Mathf.Lerp(Screen.height,6*Screen.height/7 - Screen.height/28,velocidadMenus);
		}
		velocidadMenus += 4*Time.deltaTime;
		yield WaitForSeconds(0);
	}
	if(velocidadMenus > 1) {
		if(direccion) {
			arriba = false;
		}
		if(!direccion) {
			arriba = true;
		}
		resetTimer = false;
	}
}

function desvanecer() {
	var segundos : float;
	var tamano : float;
	var transparencia : float;
	segundos = 0;
	while(segundos < 1) {
		transparencia = Mathf.Lerp(1,0,segundos);
		estiloTitulo.normal.textColor.a = transparencia;
		segundos += Time.deltaTime;
		yield WaitForSeconds(0);
	}
}