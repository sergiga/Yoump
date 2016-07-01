#pragma strict

var velocidad : float;
var Camara : GameObject;
var rotacion : float;
var anguloRotacion : Vector3;

function Start() {
	Camara = GameObject.Find("Main Camera");
}

function Update() {
	anguloRotacion = Camara.transform.position - transform.position;
	rotacion = Mathf.Atan2(anguloRotacion.z,anguloRotacion.y) * Mathf.Rad2Deg;
	transform.rotation = Quaternion.Euler(rotacion + 90,0,transform.rotation.z*180);
	if(Mathf.Abs(rigidbody.velocity.x) > 0 && GUItop.paused) {		
		velocidad = rigidbody.velocity.x;
		rigidbody.velocity = Vector3(0,0,0);
	}
	if(rigidbody.velocity.x == 0 && !GUItop.paused) {
		rigidbody.velocity.x = velocidad;
	}
}

function OnTriggerEnter(col : Collider) {
	if(col.gameObject.tag == "Rana") {
		col.transform.position.z = 1.5;
		GameObject.Find("Bottom").renderer.enabled = false;
		GameObject.Find("Top").renderer.enabled = false;
		Destroy(gameObject);
		GUItop.finalizado = true;
	}
}

function OnBecameInvisible () {
	Destroy(gameObject);
}