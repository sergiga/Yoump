#pragma strict

var score : int;
var GUItop : GUItop;
var rana : Transform;
var estiloFuente : GUIStyle;

function Awake() {
	if(!PlayerPrefs.HasKey("HighScore")) {
    	PlayerPrefs.SetInt("HighScore",0);
    }
}

function Start() {
	score = 0;
	guiText.fontSize = Screen.width / 15;
	transform.position = Vector3(0.5,0.85,0);
}

function OnGUI () {
	GUI.depth = 1;
	guiText.text = ""+score;
	if(GUItop.paused) {
		GUItop.score = score;
		SetHighScore();
	}
}
function SetHighScore () {
    if(score > PlayerPrefs.GetInt("HighScore")) {
         PlayerPrefs.SetInt("HighScore",score);
    }
}