#pragma strict

static var paused : boolean;
static var finalizado : boolean;

var ColocacionPrimero : ColocacionPrimero;
var GenerarInicio : GenerarInicio;
var FrogJump : Frog_jump;

var Transicion : GameObject;

var myBackgroundStyle : GUIStyle;
var nenufarGris : Texture2D;
var nenufarVerde : Texture2D;
var dibujoCoco : Texture2D;
var sonidoOn : Texture2D;
var sonidoOff : Texture2D;
var Nenufar : GameObject;
//var NenufaresIniciales : GameObject;
var tamNenufar : Vector3;
var distanciaCoco : int;
var textoMarcador : GUIStyle;
var textoMenu : GUIStyle;
var textoMaxScore : GUIStyle;
var sonidoStyle : GUIStyle;
var textoScore : GUIStyle;
var textoReanudar : GUIStyle;
var score : int;
var scoreTextoPoner : int;
var scoreMaxTexto : int;
var registrarScore : boolean;
var mostrarFinalizado : boolean;
var maxParpadea : boolean;
var saltaMenuPause : boolean;
var mostrarReanudar : boolean;
var setDistance : boolean;
var i : int;

function Start() {
    paused = false;
    finalizado = false;
    maxParpadea = false;
    setDistance = false;
    registrarScore = false;
    mostrarFinalizado = true;
    score = 0;
	saltaMenuPause = false;
	//guiText.fontSize = Screen.height/20;
	transform.position = Vector3(0.5,1,0);
	// Texto Marcador.
	textoMarcador.font = Resources.Load("KOMIKAX_");
	textoMarcador.normal.textColor = Color.white;
	textoMarcador.fontSize = Screen.height/25;
	// Texto Marcador.
	textoMaxScore.font = Resources.Load("KOMIKAX_");
	textoMaxScore.normal.textColor = Color.white;
	textoMaxScore.fontSize = Screen.height/35;
	// Texto Menu.
	textoMenu.font = Resources.Load("KOMIKAX_");
	textoMenu.normal.textColor = Color.white;
	textoMenu.fontSize = Screen.height/25;
	// Texto ScoreFinal
	textoScore.font = Resources.Load("KOMIKAX_");
	textoScore.normal.textColor = Color.black;
	textoScore.fontSize = Screen.height/15;
	// Texto Reanudar
	textoReanudar.normal.textColor = Color.white;
	// Encontrar los nenufares iniciales del menu.
//	NenufaresIniciales = GameObject.Find("Nenufares iniciales");
}

function OnGUI() {
	GUI.depth = 1;
	GUI.Box(new Rect(0,0,Screen.width,Screen.width/9.5),"",myBackgroundStyle);
	// VIDAS.
	if(FrogJump.vidas == 0) {
		GUI.Label(new Rect(Screen.width/50,0,Screen.width/10,Screen.width/10),nenufarGris);
		GUI.Label(new Rect(Screen.width/50+Screen.width/10,0,Screen.width/10,Screen.width/10),nenufarGris);
		GUI.Label(new Rect(Screen.width/50+Screen.width/5,0,Screen.width/10,Screen.width/10),nenufarGris);
	}
	if(FrogJump.vidas == 1) {
		GUI.Label(new Rect(Screen.width/50,0,Screen.width/10,Screen.width/10),nenufarVerde);
		GUI.Label(new Rect(Screen.width/50+Screen.width/10,0,Screen.width/10,Screen.width/10),nenufarGris);
		GUI.Label(new Rect(Screen.width/50+Screen.width/5,0,Screen.width/10,Screen.width/10),nenufarGris);
	}
	if(FrogJump.vidas == 2) {
		GUI.Label(new Rect(Screen.width/50,0,Screen.width/10,Screen.width/10),nenufarVerde);
		GUI.Label(new Rect(Screen.width/50+Screen.width/10,0,Screen.width/10,Screen.width/10),nenufarVerde);
		GUI.Label(new Rect(Screen.width/50+Screen.width/5,0,Screen.width/10,Screen.width/10),nenufarGris);
	}
	if(FrogJump.vidas >= 3) {
		GUI.Label(new Rect(Screen.width/50,0,Screen.width/10,Screen.width/10),nenufarVerde);
		GUI.Label(new Rect(Screen.width/50+Screen.width/10,0,Screen.width/10,Screen.width/10),nenufarVerde);
		GUI.Label(new Rect(Screen.width/50+Screen.width/5,0,Screen.width/10,Screen.width/10),nenufarVerde);
	}
	// MARCADOR COCODRILO.
	GUI.Label(new Rect(Screen.width/2 - Screen.width/10,0,Screen.width/10,Screen.width/10),dibujoCoco);
	GUI.Label(new Rect(Screen.width/2,Screen.width/21,0,0),""+distanciaCoco,textoMarcador);
	distanciaCoco = Mathf.Clamp(distanciaCoco,0,500);
	// SCORE.
	if(!finalizado) {
		GUI.Label(new Rect(Screen.width/2,Screen.height/8,0,0), "" +score, textoScore);
	}
	// MENU. 
	if(GUI.Button(new Rect(Screen.width - Screen.width/3,0,Screen.width/5,Screen.width/11),"MENU",textoMenu) || Input.GetKeyUp(KeyCode.Escape)) {
		if(!paused) {
			paused = true;
			saltaMenuPause = true;
	    }
 	}
 	if(saltaMenuPause) {
		GUI.BeginGroup(new Rect(Screen.width/4,Screen.height/2 - Screen.height/8,Screen.width/2,Screen.height/4), myBackgroundStyle);
		GUI.Label(new Rect(Screen.width/4,(3*Screen.height/20 - 3*Screen.width/32)/2,0,0),"Paused",textoMenu);
		if(GUI.Button(new Rect(Screen.width/16,Screen.height/4 - 3*Screen.width/32 - 2*Screen.height/20,6*Screen.width/16,Screen.height/20),"Menu")) {
        	paused = false;
        	saltaMenuPause = false;
//        	Destroy(NenufaresIniciales.gameObject);
//        	Application.LoadLevel(0);
			Transicion.SetActive(true);
			Transicion.GetComponent(TransicionJuegoMenu).nivel = 0;
       	}
       	if(GUI.Button(new Rect(Screen.width/16,Screen.height/4 - Screen.width/16 - Screen.height/20,6*Screen.width/16,Screen.height/20),"Resume")) {
			reanudar();
       	}			
		GUI.EndGroup(); 	
 	}
 	if(mostrarReanudar) {
 		GUI.Label(new Rect(Screen.width/2,Screen.height/2,0,0),""+i,textoReanudar);
 	}
	// SONIDO.
	if(AudioListener.volume == 1) {
		if(GUI.Button(new Rect(Screen.width - Screen.width/10,Screen.width/50,Screen.width/14,Screen.width/14),sonidoOn,sonidoStyle)) {
			AudioListener.volume = 0;
		}
	}
	if(AudioListener.volume == 0) {
		if(GUI.Button(new Rect(Screen.width - Screen.width/10,Screen.width/50,Screen.width/14,Screen.width/14),sonidoOff,sonidoStyle)) {
			AudioListener.volume = 1;
		}
	}
	// SE MURIO LA RANA	
	if(finalizado && mostrarFinalizado) {
//		if(score > PlayerPrefs.GetInt("HighScore")) {
//        	PlayerPrefs.SetInt("HighScore",score);
//        	PlayerPrefs.SetInt("LastScore",score);
//        	scoreTextoPoner = "New record! " +score;
//        	nuevoRecord = true;
//    	}
//		if(!nuevoRecord) {
//			PlayerPrefs.SetInt("LastScore",score);
//			scoreTextoPoner = "Score " +score;
//		}
		// Distancia total recorrida (estadisticas).
		if(!setDistance) {
			setDistance = true;
			var distanciaTotal : float;
			distanciaTotal = PlayerPrefs.GetInt("DistanciaRecorrida");
			distanciaTotal = distanciaTotal + parseInt(FrogJump.gameObject.transform.position.y);
			PlayerPrefs.SetInt("DistanciaRecorrida",distanciaTotal);
		}
		if(!registrarScore) {
			registrarScore = true;
			registroScore();
		}
		
		GUI.BeginGroup(new Rect(Screen.width/4,Screen.height/2 - Screen.height/8,Screen.width/2,Screen.height/4), myBackgroundStyle);
			GUI.Label(new Rect(Screen.width/4,(3*Screen.height/20 - 3*Screen.width/32)/4,0,0), "Score " +scoreTextoPoner, textoMaxScore);
			GUI.Label(new Rect(Screen.width/4,3*(3*Screen.height/20 - 3*Screen.width/32)/4,0,0), "Best " +scoreMaxTexto, textoMaxScore);
			if(GUI.Button(new Rect(Screen.width/16,Screen.height/4 - 3*Screen.width/32 - 2*Screen.height/20,6*Screen.width/16,Screen.height/20),"Menu")) {
        		mostrarFinalizado = false;
				Transicion.SetActive(true);
				Transicion.GetComponent(TransicionJuegoMenu).nivel = 0;
        	}
        	if(GUI.Button(new Rect(Screen.width/16,Screen.height/4 - Screen.width/16 - Screen.height/20,6*Screen.width/16,Screen.height/20),"Retry")) {
        		finalizado = false;
        		GenerarInicio = GameObject.Find("Nenufar1").GetComponent("GenerarInicio");
        		GenerarInicio.recolocar = true;
        		GenerarInicio = GameObject.Find("Nenufar2").GetComponent("GenerarInicio");
        		GenerarInicio.recolocar = true;
        		ColocacionPrimero = GameObject.Find("Nenufar3").GetComponent("ColocacionPrimero");
        		ColocacionPrimero.recolocar = true;
				Transicion.SetActive(true);
				Transicion.GetComponent(TransicionJuegoMenu).nivel = 1;
	       	}			
		GUI.EndGroup();
	}	
}

function registroScore() {
	var nuevoRecord : boolean = false;
	var velocidadScore : float;
	PlayerPrefs.SetInt("HighScore",0);
	score = 12;
	velocidadScore = score/10;
	scoreMaxTexto = PlayerPrefs.GetInt("HighScore");
	if(score > scoreMaxTexto) {
		PlayerPrefs.SetInt("HighScore",score);
	}
	for(var i : int = 0; i <= score ; i++) {
		scoreTextoPoner = i;
		if(scoreMaxTexto <= scoreTextoPoner) {
			nuevoRecord = true;
		}
		if(nuevoRecord) {
			scoreMaxTexto = i;
		}
		yield WaitForSeconds(velocidadScore);
		
	}
	if(nuevoRecord) {
		maxParpadea = true;
		newBestParpadea();
	}
}

function newBestParpadea() {
	var transparenciaMax : int;
	transparenciaMax = 1;
	
	while(maxParpadea) {
	
		if(transparenciaMax == 1) {
			textoMaxScore.normal.textColor.a = 0;
		}
		if(transparenciaMax == 0) {
			textoMaxScore.normal.textColor.a = 1;
		}
		transparenciaMax++;
		if(transparenciaMax == 2) {
			transparenciaMax = 0;
		}	
		yield WaitForSeconds(0.5);
	}
	
}

function reanudar() {
	saltaMenuPause = false;
	var segundos : float;
	var tamano : float;
	var transparencia : float;
	for(i = 3; i > 0; i--) {
		segundos = 0;
		while(segundos < 1) {
			tamano = Mathf.Lerp(8,5,segundos);
			textoReanudar.fontSize = Screen.height/tamano;
			transparencia = Mathf.Lerp(0.8,1,segundos);
			textoReanudar.normal.textColor.a = transparencia;
			segundos += Time.deltaTime;
			mostrarReanudar = true;
			yield WaitForSeconds(0);
		}
	}
	mostrarReanudar = false;
	paused = false;
}