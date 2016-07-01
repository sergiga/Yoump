#pragma strict

var Rana : GameObject;

function Update () {
	Rana = GameObject.Find("Rana");
	if(Rana.transform.position.y > transform.position.y + 20) {
		Destroy(gameObject);
	}
}