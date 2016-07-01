#pragma strict

var coco : Transform;
var rana : Transform;
var cocodrilo : Vector3;
var n : int;
var distanciaText : GUIText;
var distancia : int;
var parpadea : boolean;
var inset : Rect;
 
function Start() {
	parpadea = true;
	//inset = guiTexture.pixelInset;
    transform.position = Vector3.zero;
}

function OnGUI () {
	GUI.depth = 2;
//	guiTexture.pixelInset = inset;
//    inset.width = Screen.width / 9.8666666666;
//    inset.height = inset.width / 0.8133333333;
//    inset.x = -inset.width / 2;
//    inset.y = inset.height / 7.36f;
    //guiText.pixelOffset.x = (inset.width / 2) + (inset.width /6);
    //guiText.pixelOffset.y = inset.height / 1.1;
//    guiText.pixelOffset.x = 0;
//    guiText.pixelOffset.y = inset.height + (inset.height/6);
    guiText.fontSize = Screen.height / 20;
	transform.position = Vector3(0.5,0.9,1);
	distancia = rana.position.y - coco.position.y;
	distanciaText.text = ""+distancia;
}
