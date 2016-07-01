#pragma strict

var MenuPrincipal : GameObject;

var moverOpciones : float;
var texturaMenu : GUIStyle;
var textoTop : GUIStyle;
var sonido : String;
var tutorial : String;
var cambia : boolean;
var soloUna : boolean;

function OnEnable () {
	if(PlayerPrefs.GetInt("Sonido") == 1) {
		sonido = "ON";
	}
	if(PlayerPrefs.GetInt("Sonido") == 0) {
		sonido = "OFF";
	}
	if(PlayerPrefs.GetInt("Tutorial") == 1) {
		tutorial = "YES";
	}
	if(PlayerPrefs.GetInt("Tutorial") == 0) {
		tutorial = "NO";
	}
	
	textoTop.font = Resources.Load("KOMIKAX_");
	textoTop.normal.textColor = Color.white;
	textoTop.fontSize = Screen.height/25;
	
	cambia = false;
	soloUna = false;
    moverOpciones = Screen.height;
    movimientoOpciones(false, false);
}

function OnGUI () {
	GUI.depth = 1;
	GUI.Box(new Rect(0,0,Screen.width,Screen.width/9.5),"",texturaMenu);
	GUI.Label(new Rect(Screen.width/2,Screen.width/19,0,0),"OPTIONS",textoTop);
	if(JugarPantalla.tocaJugar && !soloUna) {
		soloUna = true;
		movimientoOpciones(false, true);
	}
	GUI.Box(new Rect(0,moverOpciones,Screen.width,Screen.height),"",texturaMenu);
	if(GUI.Button(new Rect(Screen.width/30,moverOpciones + Screen.width/30,Screen.width/10,Screen.width/10),"ATRAS") && !JugarPantalla.tocaJugar || Input.GetKeyUp(KeyCode.Escape) && !JugarPantalla.tocaJugar) {
		movimientoOpciones(true, true);
	}
	if(GUI.Button(new Rect(Screen.width/6,moverOpciones + Screen.width/12, 13*Screen.width/40, 2*Screen.height/15 - Screen.width/12),"SONIDO: " +sonido) && !JugarPantalla.tocaJugar) {
		if(sonido.Contains("ON") && !cambia) {
			sonido = "OFF";
			PlayerPrefs.SetInt("Sonido",1);
			AudioListener.volume = 1;
			cambia = true;
		}
		if(sonido.Contains("OFF") && !cambia) {
			sonido = "ON";
			PlayerPrefs.SetInt("Sonido",0);
			AudioListener.volume = 0;
			cambia = true;
		}
		cambia = false;
	}
	if(GUI.Button(new Rect(61*Screen.width/120,moverOpciones + Screen.width/12, 13*Screen.width/40, 2*Screen.height/15 - Screen.width/12),"TUTORIAL: "+tutorial) && !JugarPantalla.tocaJugar) {
		if(tutorial.Contains("YES") && !cambia) {
			tutorial = "NO";
			PlayerPrefs.SetInt("Tutorial",1);
			cambia = true;
		}
		if(tutorial.Contains("NO") && !cambia) {
			tutorial = "YES";
			PlayerPrefs.SetInt("Tutorial",0);
			cambia = true;
		}
		cambia = false;
	}
	if(GUI.Button(new Rect(Screen.width/6,moverOpciones + Screen.height/7 + Screen.width/120, 13*Screen.width/40, 2*Screen.height/15 - Screen.width/12),"CREDITS") && !JugarPantalla.tocaJugar) {
	
	}
	if(GUI.Button(new Rect(61*Screen.width/120,moverOpciones + Screen.height/7 + Screen.width/120, 13*Screen.width/40, 2*Screen.height/15 - Screen.width/12),"MORE GAMES") && !JugarPantalla.tocaJugar) {
	
	}
}

function movimientoOpciones(goMenu : boolean, direccion : boolean) {
	var resetTimer : boolean;
	var velocidadMenus : float;
	resetTimer = false;
	if(!resetTimer) {
		velocidadMenus = 0;
		resetTimer = true;
	}
	while(velocidadMenus < 1.1) { 
		if(direccion) {
			moverOpciones = Mathf.Lerp(5*Screen.height/7,Screen.height,velocidadMenus);
			JugarPantalla.tamanoBoton = moverOpciones;
		}
		if(!direccion) {
			moverOpciones = Mathf.Lerp(Screen.height,5*Screen.height/7,velocidadMenus);
			JugarPantalla.tamanoBoton = moverOpciones;
		}
		velocidadMenus += 3*Time.deltaTime;
		yield WaitForSeconds(0);
	}
	resetTimer = false;
	if(goMenu) {
		MenuPrincipal.SetActive(true);
		gameObject.SetActive(false);
	}
}