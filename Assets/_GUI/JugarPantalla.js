#pragma strict

static var tamanoBoton : float;
static var tocaJugar : boolean;

var Salto : Salto;
//var GenerarInicio1 : GenerarInicio;
//var GenerarInicio2 : GenerarInicio;
var estiloPlay : GUIStyle;
var estiloTitulo : GUIStyle;
var unaVez : boolean;

function Start() {
	tocaJugar = false;
	estiloTitulo.normal.textColor = Color.white;
	estiloTitulo.fontSize = 4*Screen.height/35;
	estiloPlay.fontSize = Screen.height/35;
	estiloPlay.normal.textColor = Color.white;
}

function OnGUI() {
	GUI.depth = 2;
	GUI.Label(new Rect(Screen.width/2 - Screen.width/3,Screen.height/3 - Screen.height/8,2*Screen.width/3, Screen.height/4),"YOUMP",estiloTitulo);
	GUI.Label(new Rect(0,0,Screen.width,Screen.height),"Touch to Play", estiloPlay);
	if(GUI.Button(new Rect(0,Screen.width/9.5,Screen.width,tamanoBoton - Screen.width/9.5),"", estiloPlay) && !unaVez && !Quit.quiereSalir) {
		unaVez = true;
		Salto.saltar = true;
//		GenerarInicio1.crece = true;
//		GenerarInicio2.crece = true;
		tocaJugar = true;
//		desvanecer();
	}
}

function desvanecer() {
	var segundos : float;
	var tamano : float;
	var transparencia : float;
	segundos = 0;
	while(segundos < 1.1) {
		transparencia = Mathf.Lerp(1,0,segundos);
		estiloPlay.normal.textColor.a = transparencia;
		estiloTitulo.normal.textColor.a = transparencia;
		segundos += 2*Time.deltaTime;
		yield WaitForSeconds(0);
	}
}