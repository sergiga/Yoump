#pragma strict

var escala : float;
var Rana : GameObject;

function Start() {
	Rana = GameObject.Find("Rana");
}

function Update () {
	if(transform.localScale != Vector3(1,1,1)) {
		transform.Rotate(0,0,480*Time.deltaTime);
		escala = Mathf.Lerp(transform.localScale.x,1.1,4*Time.deltaTime);
		escala = Mathf.Clamp(escala,0,1);
		transform.localScale = new Vector3(escala,escala,escala);
	}
	if(transform.localScale == Vector3(1,1,1)) {
		transform.Rotate(0,0,0);
	}
	if(Rana.transform.position.y - transform.position.y >= 15) {
		Destroy(gameObject);
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

function OnBecameInvisible () {
	Destroy(gameObject);
}