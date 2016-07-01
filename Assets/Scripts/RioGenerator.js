#pragma strict

var Rio : GameObject;
var PiedrasRio : GameObject;
var alturaRio : float;
var RioTop : GameObject;
var Rana : Transform;
var distanciaRio : float;

function Start () {
	alturaRio = Rio.gameObject.renderer.bounds.size.y;
	Instantiate(Rio,Vector3(0,0,1.05),Quaternion.Euler(0,0,0));
	Instantiate(PiedrasRio,Vector3(10,0,1.05),Quaternion.Euler(0,0,0));
	Instantiate(PiedrasRio,Vector3(-10,0,1.05),Quaternion.Euler(0,0,180));
	RioTop = Instantiate(Rio,Vector3(0,alturaRio,1.05),Quaternion.Euler(0,0,0));
	Instantiate(PiedrasRio,Vector3(10,alturaRio,1),Quaternion.Euler(0,0,0));
	Instantiate(PiedrasRio,Vector3(-10,alturaRio,1),Quaternion.Euler(0,0,180));
}

function Update () {
	distanciaRio = RioTop.transform.position.y - Rana.transform.position.y;
	if(distanciaRio < alturaRio/2) {
		RioTop = Instantiate(Rio,Vector3(0,RioTop.transform.position.y + alturaRio,1.05),Quaternion.Euler(0,0,0));
		Instantiate(PiedrasRio,Vector3(10,RioTop.transform.position.y,1),Quaternion.Euler(0,0,0));
		Instantiate(PiedrasRio,Vector3(-10,RioTop.transform.position.y,1),Quaternion.Euler(0,0,180));
	}
}