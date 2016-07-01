#pragma strict

static var quiereSalir : boolean;

var estiloFondo : GUIStyle;
var textoMenu : GUIStyle;
var botonSeleccionadoQuit : int;
var botonesMatriz : String[] = ["YES","NO"];

function OnEnable() {
	quiereSalir = true;
	estiloFondo.normal.textColor = Color.white;	
	botonSeleccionadoQuit = 100;
}

function OnGUI() {
	GUI.depth = 0;
	GUI.BeginGroup(new Rect(Screen.width/4,Screen.height/2 - Screen.height/8,Screen.width/2,Screen.height/6), estiloFondo);
		GUI.Label(new Rect(Screen.width/4,(3*Screen.height/20 - 3*Screen.width/32)/2,0,0),"You want \n to quit?",estiloFondo);
		botonSeleccionadoQuit = GUI.SelectionGrid(new Rect (Screen.width/32, 3*Screen.height/24 - Screen.height/40, Screen.width/2 - Screen.width/16, Screen.height/20), botonSeleccionadoQuit, botonesMatriz,2);
		GUI.EndGroup();
	if(botonSeleccionadoQuit == 0) {
		botonSeleccionadoQuit = 100;
		Application.Quit();
	}
	if(botonSeleccionadoQuit == 1) {
		botonSeleccionadoQuit = 100;
		quiereSalir = false;
		gameObject.SetActive(false);
	}
}