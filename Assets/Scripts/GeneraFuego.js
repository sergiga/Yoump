#pragma strict

var NenufarGenerator : Nenufar_generator;
var Proyectil : GameObject;
var posicionProyectil : Vector3;
var direccion : int;
var proyectilClon : GameObject;
var invocarOtraVez : boolean;
var tiempoTranscurrido : float;

function Start() {
	invocarOtraVez = true;
	Proyectil = Resources.Load("Bala");
	NenufarGenerator = GameObject.Find("Main Camera").GetComponent("Nenufar_generator");
}

function Update() {
	if(NenufarGenerator.referenciaMandar.x - transform.position.x > 0) {
		direccion = -90;
		posicionProyectil.x = transform.position.x + 0.7;
	}
	if(NenufarGenerator.referenciaMandar.x - transform.position.x < 0) {
		direccion = 90;
		posicionProyectil.x = transform.position.x - 0.7;
	}
	posicionProyectil.y = transform.position.y;
	posicionProyectil.z = 1;
	if(GUItop.paused || GUItop.finalizado) {
		invocarOtraVez = true;
	}
	if(!GUItop.paused && !GUItop.finalizado && invocarOtraVez) {
		invocarOtraVez = false;
	}
	tiempoTranscurrido += Time.deltaTime;
	if(invocarOtraVez) {
		tiempoTranscurrido -= Time.deltaTime;
	}
	if(tiempoTranscurrido >= 1) {
		LaunchProjectile();
		tiempoTranscurrido = 0;
	}
}

function LaunchProjectile() {
	proyectilClon = Instantiate(Proyectil,posicionProyectil,Quaternion.Euler(Vector3(0,0,direccion)));
	if(direccion == -90) {
		proyectilClon.rigidbody.velocity = Vector3(4,0,0); 
	}
	if(direccion == 90) {
		proyectilClon.rigidbody.velocity = Vector3(-4,0,0); 
	}
}

function OnBecameInvisible () {
	Destroy(gameObject);
}