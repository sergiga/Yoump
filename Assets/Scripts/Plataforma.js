#pragma strict

function Update () {
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