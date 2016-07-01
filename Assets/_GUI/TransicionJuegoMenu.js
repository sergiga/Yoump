#pragma strict

var NenufaresIniciales : GameObject;

var texturaTransicion : GUIStyle;
var transparencia : float;
var nivel : int;
var transicion : boolean;

function Start() {
	DontDestroyOnLoad(gameObject);
}

function OnEnable () {
	transparencia = 0;
	nivel = 100;
	transicion = false;
	NenufaresIniciales = GameObject.Find("Nenufares iniciales");
}

function OnGUI() {
	if(nivel != 100 && !transicion) {
		transicion = true;
		transicionMenu(nivel);
	}
	GUI.depth = 0;
	GUI.color.a = transparencia;
	GUI.Box(new Rect(0,0,Screen.width,Screen.height), "", texturaTransicion);
}

function transicionMenu (level : int) {
	var tiempoTransicion : float;
	tiempoTransicion = 0;
	while(tiempoTransicion < 1.1) {
		transparencia = Mathf.Lerp(0,1,tiempoTransicion);
		tiempoTransicion += 2*Time.deltaTime;
		yield WaitForSeconds(0);
	}
	if(level == 0) {
		Destroy(NenufaresIniciales.gameObject);
	}
	if(level == 1) {
		Destroy(gameObject);
	}
	Application.LoadLevel(level);
	transicionCargarMenu();
}

function transicionCargarMenu() {
	var tiempoTransicion : float;
	tiempoTransicion = 0;
	while(tiempoTransicion < 1.1) {
		transparencia = Mathf.Lerp(1,0,tiempoTransicion);
		tiempoTransicion += 6*Time.deltaTime;
		yield WaitForSeconds(0);
	}
	if(Application.loadedLevel == 0) {
		Destroy(gameObject);
	}
	gameObject.SetActive(false);
}