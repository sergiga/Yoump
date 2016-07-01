#pragma strict

var onGround : boolean;
var FrogJump : Frog_jump;
var genera : Nenufar_generator;
var mandaBuff : Toca;
var Tortuga : TortugaMov;
var rana : Transform;
var anim : Animator;
var empieza : Mov_coco;
var tipoBuff : int;
var empiezaCoco : boolean;
var plataformaSound : AudioClip;

function Start () {
	onGround = false;
	empiezaCoco = false;
	anim = gameObject.GetComponent(Animator);
}

function sonidoPlataforma (tiempoSalto : float) {
	var triggerSonido : float;
	var tiempoContador : float;
	triggerSonido = tiempoSalto - 0.170;
	tiempoContador = 0;
	while(tiempoContador < triggerSonido) {
		if(!GUItop.paused) {
			tiempoContador += Time.deltaTime;
		}
		yield WaitForSeconds(0);
	}
	if(!GUItop.finalizado) {
		audio.PlayOneShot(plataformaSound);
	}	
}

function OnCollisionEnter(nenu : Collision) {
	if(nenu.gameObject.tag == "Nenufar" || nenu.gameObject.tag == "Tortuga") {
		onGround = true;
		rana.rigidbody.useGravity = true;
		anim.ResetTrigger("Jump");
	}
	if(nenu.gameObject.tag == "Tortuga") {
		Tortuga = nenu.gameObject.GetComponent("TortugaMov");
		Tortuga.ranaEncima = true;
	}
	if(nenu.gameObject.tag == "Plataforma") {
		var salto : Vector3;
		salto.x = nenu.transform.position.x;
		salto.y = nenu.transform.position.y + 20;
		salto.z = 0.92;
		FrogJump.anim.ResetTrigger("Jump");
		FrogJump.puntosalto = salto;
		FrogJump.saltaDeTortuga = true;
	}
}

function OnCollisionStay(nenu : Collision) {
	if (nenu.gameObject.tag == "Nenufar" || nenu.gameObject.tag == "Tortuga" || nenu.gameObject.tag == "Plataforma") {
		onGround = true;
		rana.rigidbody.useGravity = true;
	}
}

function OnCollisionExit(nenu : Collision) {
	if (nenu.gameObject.tag == "Nenufar" && !empiezaCoco) {
		empiezaCoco = true;
		empieza.empezar = true;
	}
	if(nenu.gameObject.tag == "Nenufar" || nenu.gameObject.tag == "Tortuga" || nenu.gameObject.tag == "Plataforma") {
		rana.rigidbody.useGravity = false;
		onGround = false;	
	}
}

function OnTriggerEnter(buff : Collider) {
	if(buff.gameObject.tag == "Rio") {
		empieza.finAgua = true;
		rana.gameObject.renderer.sortingOrder = 0;
		GameObject.Find("Bottom").renderer.sortingOrder = 0;
		GameObject.Find("Top").renderer.sortingOrder = 0;
		rana.rigidbody.useGravity = true;
	}
	if(buff.gameObject.tag == "Buff" && FrogJump.puedeBuff) {
		tipoBuff = buff.GetComponent(EscogeBuff).buffo;
		Destroy(buff.gameObject);
		switch(tipoBuff) {
			case 0:
				mandaBuff.tocaNenufar();
				break;
			case 1:
				mandaBuff.cambioEjesApuntar();
				break;
			case 2:
				mandaBuff.vidamas();
				break;
		}
	}
}