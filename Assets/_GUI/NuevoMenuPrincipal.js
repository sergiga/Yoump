#pragma strict

// Menus.
var Stats : GameObject;
var Salir : GameObject;
var Opciones : GameObject;

var moverMenus : float;
var texturaMenu : GUIStyle;
var estiloTitulo : GUIStyle;
var textoTop : GUIStyle;
var arriba : boolean;
var soloUna : boolean;
var arrancaJuego : boolean;

function Awake() {
	// Comprobacion de existencia de prefabs.
	if(!PlayerPrefs.HasKey("Sonido")) {
    	PlayerPrefs.SetInt("Sonido",1);
    }
    if(!PlayerPrefs.HasKey("Tutorial")) {
    	PlayerPrefs.SetInt("Tutorial",1);
    }
	if(!PlayerPrefs.HasKey("Saltos")) {
    	PlayerPrefs.SetInt("Saltos",0);
    }
    if(!PlayerPrefs.HasKey("SaltosCompletados")) {
    	PlayerPrefs.SetInt("SaltosCompletados",0);
    }
    if(!PlayerPrefs.HasKey("DistanciaRecorrida")) {
    	PlayerPrefs.SetInt("DistanciaRecorrida",0);
    }
    if(!PlayerPrefs.HasKey("LastScore")) {
    	PlayerPrefs.SetInt("LastScore",0);
    }
    if(!PlayerPrefs.HasKey("PlayedGames")) {
    	PlayerPrefs.SetInt("PlayedGames",0);
    }
    if(!PlayerPrefs.HasKey("HighScore")) {
    	PlayerPrefs.SetInt("HighScore",0);
    }
    arrancaJuego = true;
    arriba = false;
}

function OnEnable () {
	textoTop.font = Resources.Load("KOMIKAX_");
	textoTop.normal.textColor = Color.white;
	textoTop.fontSize = Screen.height/25;
	
	estiloTitulo.normal.textColor = Color.white;
	estiloTitulo.fontSize = 4*Screen.height/35;
	// Subir Menu Principal.
	soloUna = false;
	moverMenus = Screen.height;
	JugarPantalla.tamanoBoton = moverMenus;
	if(!arrancaJuego) {
		arriba = false;	
		movimientoMenuPrincipal(100, false);
	}
	if(arrancaJuego) {
		arrancaJuego = false;
	}
}

function OnGUI () {
	GUI.depth = 1;
	GUI.Box(new Rect(0,0,Screen.width,Screen.width/9.5),"",texturaMenu);
	GUI.Label(new Rect(Screen.width/2,Screen.width/19,0,0),"MAIN MENU",textoTop);
	if(JugarPantalla.tocaJugar && !soloUna) {
		soloUna = true;
		movimientoMenuPrincipal(100, true);
	}
	if(arriba) {
		if(GUI.Button(new Rect(Screen.width/2 - Screen.width/6,moverMenus - Screen.height/14,Screen.width/3,Screen.height/14),"BAJAR") && !Quit.quiereSalir && !JugarPantalla.tocaJugar) {
			movimientoMenuPrincipal(100, true);
		}

	}
	if(!arriba) {
		if(GUI.Button(new Rect(Screen.width/2 - Screen.width/6,moverMenus - Screen.height/14,Screen.width/3,Screen.height/14),"SUBIR") && !Quit.quiereSalir && !JugarPantalla.tocaJugar) {
			movimientoMenuPrincipal(100, false);
		}
	}
	GUI.Box(new Rect(0,moverMenus,Screen.width,Screen.height),"",texturaMenu);
	if(GUI.Button(new Rect(Screen.width/10,moverMenus + Screen.width/12, 47*Screen.width/120, 2*Screen.height/15 - Screen.width/12),"STATS") && !JugarPantalla.tocaJugar) {
		movimientoMenuPrincipal(0, true);
	}
	if(GUI.Button(new Rect(61*Screen.width/120,moverMenus + Screen.width/12, 47*Screen.width/120, 2*Screen.height/15 - Screen.width/12),"OPTIONS") && !JugarPantalla.tocaJugar) {
		movimientoMenuPrincipal(1, true);
	}
	if(GUI.Button(new Rect(Screen.width/10,moverMenus + Screen.height/7 + Screen.width/120, 47*Screen.width/120, 2*Screen.height/15 - Screen.width/12),"LEADERBOARD") && !JugarPantalla.tocaJugar) {
	
	}
	if(GUI.Button(new Rect(61*Screen.width/120,moverMenus + Screen.height/7 + Screen.width/120, 47*Screen.width/120, 2*Screen.height/15 - Screen.width/12),"QUIT") && !JugarPantalla.tocaJugar) {
		Salir.SetActive(true);
	}	
	if(Input.GetKeyUp(KeyCode.Escape) && !Quit.quiereSalir && !JugarPantalla.tocaJugar) {
		Salir.SetActive(true);
	}
}

function movimientoMenuPrincipal(boton : int ,direccion : boolean) {
	var resetTimer : boolean;
	var velocidadMenus : float;
	resetTimer = false;
	if(!resetTimer) {
		velocidadMenus = 0;
		resetTimer = true;
	}
	while(velocidadMenus < 1.1) { 
		if(direccion && arriba) {
			moverMenus = Mathf.Lerp(5*Screen.height/7,Screen.height,velocidadMenus);
			JugarPantalla.tamanoBoton = moverMenus;
		}
		if(!direccion && !arriba) {
			moverMenus = Mathf.Lerp(Screen.height,5*Screen.height/7,velocidadMenus);
			JugarPantalla.tamanoBoton = moverMenus;
		}
		velocidadMenus += 3*Time.deltaTime;
		yield WaitForSeconds(0);
	}
	if(direccion) {
		arriba = false;
	}
	if(!direccion) {
		arriba = true;
	}
	if(boton == 0) {
		Stats.SetActive(true);
		gameObject.SetActive(false);
	}
	if(boton == 1) {
		Opciones.SetActive(true);
		gameObject.SetActive(false);
	}
}