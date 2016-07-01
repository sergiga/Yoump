var target : Transform;

var tamPantalla : Vector3;

function Start() {
	tamPantalla = Vector3(Screen.width,Screen.height,16);
	tamPantalla = Camera.main.ScreenToWorldPoint(tamPantalla);
}

function Update(){
 	transform.position.z = -15;
    transform.position.y = target.position.y + 4.587544;
    transform.position.x = target.position.x;
    transform.position.x = Mathf.Clamp(transform.position.x,-10.875 + tamPantalla.x, 10.875 - tamPantalla.x);
}