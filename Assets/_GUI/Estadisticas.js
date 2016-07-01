#pragma strict

var MenuPrincipal : GameObject;

var moverEstadisticas : float;
var arriba : boolean;
var soloUna : boolean;
var texturaMenu : GUIStyle;
var texturaLetras : GUIStyle;
var textoTop : GUIStyle;
var textoEstadisticas : String;
var textoNumeroEstadisticas : String;

function OnEnable () {
    // Inicializacion de variables.
    textoTop.font = Resources.Load("KOMIKAX_");
	textoTop.normal.textColor = Color.white;
	textoTop.fontSize = Screen.height/25;
	
    soloUna = false;
    texturaLetras.fontSize = Screen.height/50;
    texturaLetras.normal.textColor = Color.white;
    // Subir menus.
    moverEstadisticas = Screen.height;
    movimientoEstadisticas(false, false);
}

function OnGUI() {
	GUI.depth = 1;
	GUI.Box(new Rect(0,0,Screen.width,Screen.width/9.5),"",texturaMenu);
	GUI.Label(new Rect(Screen.width/2,Screen.width/19,0,0),"STATS",textoTop);
	if(JugarPantalla.tocaJugar && !soloUna) {
		soloUna = true;
		movimientoEstadisticas(false, true);
	}
	GUI.Box(new Rect(0,moverEstadisticas,Screen.width,Screen.height),"",texturaMenu);
	if(GUI.Button(new Rect(Screen.width/30,moverEstadisticas + Screen.width/30,Screen.width/10,Screen.width/10),"ATRAS") && !JugarPantalla.tocaJugar || Input.GetKeyUp(KeyCode.Escape) && !JugarPantalla.tocaJugar) {
		movimientoEstadisticas(true, true);
	}
//	textoEstadisticas = "Games Played.................." +PlayerPrefs.GetInt("PlayedGames") +"\n \t High Score.................." +PlayerPrefs.GetInt("HighScore") +"\n \t Last Score................." +PlayerPrefs.GetInt("LastScore") +"\n Jumps............................" +PlayerPrefs.GetInt("Saltos") +"\n \t Success Jumps..........." +PlayerPrefs.GetInt("SaltosCompletados") +"\n \t Total Distance.........." +PlayerPrefs.GetInt("DistanciaRecorrida") +"m";
	textoEstadisticas = "Games Played" +"\n \t High Score" +"\n \t Last Score" +"\n Jumps" +"\n \t Success Jumps" +"\n \t Total Distance";	
	textoNumeroEstadisticas = PlayerPrefs.GetInt("PlayedGames") +"\n" +PlayerPrefs.GetInt("HighScore") +"\n" +PlayerPrefs.GetInt("LastScore") +"\n" +PlayerPrefs.GetInt("Saltos") +"\n" +PlayerPrefs.GetInt("SaltosCompletados") +"\n" +PlayerPrefs.GetInt("DistanciaRecorrida") +"m";
	GUI.Label(new Rect(Screen.width/4, moverEstadisticas + Screen.height/20,0,0), textoEstadisticas, texturaLetras);
	GUI.Label(new Rect(3*Screen.width/4, moverEstadisticas + Screen.height/20,0,0), textoNumeroEstadisticas, texturaLetras);
}

function movimientoEstadisticas(goMenu : boolean, direccion : boolean) {
	var resetTimer : boolean;
	var velocidadMenus : float;
	resetTimer = false;
	if(!resetTimer) {
		velocidadMenus = 0;
		resetTimer = true;
	}
	while(velocidadMenus < 1.1) { 
		if(direccion) {
			moverEstadisticas = Mathf.Lerp(5*Screen.height/7,Screen.height,velocidadMenus);
			JugarPantalla.tamanoBoton = moverEstadisticas;
		}
		if(!direccion) {
			moverEstadisticas = Mathf.Lerp(Screen.height,5*Screen.height/7,velocidadMenus);
			JugarPantalla.tamanoBoton = moverEstadisticas;
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