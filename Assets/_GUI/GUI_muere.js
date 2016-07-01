#pragma strict

var paused : boolean;
var textoScore : GUIStyle;
var fondoCaja : GUIStyle;

function Start() {
	textoScore.normal.textColor = Color.white;
}
function OnGUI() {
    if(paused == true) {
    	//Time.timeScale = 0;
//    	GUI.Box(new Rect(Screen.width/4,Screen.height/2 - Screen.height/4,Screen.width/2,Screen.height/4),"Best score: " +PlayerPrefs.GetInt("HighScore"),textoBotones);
//    	GUI.Box(new Rect(Screen.width/4,Screen.height/2 - Screen.height/4,Screen.width/2,Screen.height/4),"MUERES");
//      if(GUI.Button(new Rect((Screen.width/2)-(Screen.width/4),(Screen.height/2)-(Screen.height/40), Screen.width/2, Screen.height/20),"Retry",textoBotones)) {
//        	//Time.timeScale = 1;
//        	paused = false;
//        	Application.LoadLevel(0);
//      }
		GUI.BeginGroup(new Rect(Screen.width/4,Screen.height/2 - Screen.height/8,Screen.width/2,Screen.height/4), fondoCaja);
			GUI.Label(new Rect(Screen.width/4,(3*Screen.height/20 - 3*Screen.width/32)/2,0,0),"2",textoScore);
			if(GUI.Button(new Rect(Screen.width/16,Screen.height/4 - 3*Screen.width/32 - 2*Screen.height/20,6*Screen.width/16,Screen.height/20),"Menu")) {
        		paused = false;
        		Application.LoadLevel(0);
        	}
        	if(GUI.Button(new Rect(Screen.width/16,Screen.height/4 - Screen.width/16 - Screen.height/20,6*Screen.width/16,Screen.height/20),"Retry")) {
        		paused = false;
        		Application.LoadLevel(0);
        	}			
		GUI.EndGroup();
    }
}