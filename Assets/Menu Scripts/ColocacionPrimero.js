#pragma strict

var posicionNenufar : Vector3;
var Rana : Transform;
var recolocar : boolean;

function Start () {
	posicionNenufar = Camera.main.ScreenToWorldPoint(Vector3(135*Screen.width/164,314*Screen.height/525,16));
	transform.position = posicionNenufar;
//	Rana.transform.position = Vector3(posicionNenufar.x,posicionNenufar.y,0.92);
}

function Update () {
	if(Application.loadedLevel == 1 && recolocar) {
		recolocar = false;
		transform.position = posicionNenufar;
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