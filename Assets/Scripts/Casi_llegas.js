#pragma strict

var mov : Vector2;
var movernenufar : boolean = false;

function OnTriggerEnter (col : Collider) {
	mov = col.gameObject.transform.position - transform.position;
	mov = mov.normalized;
      if(col.gameObject.tag == "Nenufar" || col.gameObject.tag == "Tortuga" || col.gameObject.tag == "Plataforma") {
    	if(movernenufar) {
			col.rigidbody.velocity = mov;
			col.isTrigger = true;
		}
    }
}