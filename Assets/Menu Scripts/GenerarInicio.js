#pragma strict

var escala : float;
var tiempo : float;
var crece : boolean;
var recolocar : boolean;
var posicionPrimeros : Vector3;

function Start() {
	posicionPrimeros = transform.position;
}

function Update() {
	if(transform.localScale != Vector3(1,1,1) && crece) {
		tiempo += Time.deltaTime;
		transform.Rotate(0,0,480*Time.deltaTime);
		escala = Mathf.Lerp(0.1,1.1,tiempo);
		escala = Mathf.Clamp(escala,0,1);
		transform.localScale = new Vector3(escala,escala,escala);
	}
	if(transform.localScale == Vector3(1,1,1)) {
		transform.Rotate(0,0,0);
	}
	if(Application.loadedLevel == 1 && recolocar) {
		recolocar = false;
		transform.position = posicionPrimeros;
	}
	if(rigidbody.velocity.magnitude > 0)
	{
		pararGolpe();
	}
}

function pararGolpe () {
	var golpeDuracion = Time.time + 1.5;
	while (Time.time <= golpeDuracion) {
		yield WaitForSeconds(0);
	}
	collider.isTrigger = false;
	rigidbody.velocity = Vector3(0,0,0);
}