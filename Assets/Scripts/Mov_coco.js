#pragma strict

var rana : Transform;
var ranaPatas : Transform;
var xsmooth : float;;
var ysmooth : float;
var targetX : float;
var GUItop : GUItop;
var animcoco : Animator;
var muere : boolean;
var finAgua : boolean;
var empezar : boolean;
//
var puntoInferiorPantalla : Vector3;
var saltando : boolean;
// Salto
var firingAngle : float;
var gravity : float;
var distance : float;
var entra : boolean;
var rot : Vector2;
var retrocediendo : boolean;
var mov : Vector2;
var puntoSalto : Vector3;
var tiempo : float;
var rotacion : float;
var mordisco : AudioClip;
var velocidad : float;
var pausado : boolean;
var muerdeUnaVez : boolean;
var distanciaCoco : float;
var dificultad : float;

function Start() {
	animcoco = gameObject.GetComponent(Animator);
	retrocediendo = false;
	entra = false;
	firingAngle = 30;
	gravity = 4.9;
	ysmooth = 3.5;
	xsmooth = 50;
	muere = false;
	finAgua = false;
	empezar = false;
	muerdeUnaVez = false;
}

function Update() {
	if(transform.position.z < 1) {
		gameObject.renderer.sortingOrder = 10;
	}
	else if(transform.position.z > 1) {
		gameObject.renderer.sortingOrder = 1;
	}
	puntoInferiorPantalla = Camera.main.ScreenToWorldPoint(Vector3(0,0,16));
	distanciaCoco = ranaPatas.renderer.bounds.min.y - transform.renderer.bounds.max.y;
	GUItop.distanciaCoco = distanciaCoco;
	if(empezar) {
		if(!finAgua) {	
			if((transform.renderer.bounds.max.y - transform.renderer.bounds.size.y/2) >= puntoInferiorPantalla.y && !saltando && !retrocediendo && !GUItop.finalizado && !GUItop.paused) {
				// SALTO.
				rigidbody.velocity = Vector3(0,0,0);
				saltando = true;
				cocodriloSalta();
				if(!GUItop.finalizado) {
					retrocediendo = true;
				}
			}
			if(!saltando && rana.position.y > transform.position.y && !retrocediendo && !GUItop.paused) {
				targetX = Mathf.Lerp(transform.position.x,rana.transform.position.x,xsmooth  * Time.deltaTime);
				rigidbody.velocity = Vector3( 0, ysmooth,0);
				transform.position = new Vector3(targetX,transform.position.y,1.5);
			}
			if(!saltando && retrocediendo && !GUItop.finalizado && !GUItop.paused) {
				rigidbody.velocity = Vector3( 0, -ysmooth * 2,0);
				if(rana.transform.position.y - transform.position.y >= 12) {
					retrocediendo = false;
				}
			}
//			if(!saltando && GUItop.finalizado) {
//				tiempo = tiempo + 0.2 * Time.deltaTime;
//				rigidbody.velocity = Vector3(0,Mathf.Lerp(2,0,tiempo),0);
//			}
		}
		if(finAgua && !saltando || !saltando && muerdeUnaVez) {
			if(!muere && finAgua){
				muere = true;
				puntoInferiorPantalla = Camera.main.ScreenToWorldPoint(Vector3(0,0,16));
				transform.position.y = puntoInferiorPantalla.y - transform.renderer.bounds.size.y;
			}
			ysmooth = 10;
			if(!GUItop.finalizado) {
				targetX = Mathf.Lerp(transform.position.x,rana.transform.position.x,xsmooth  * Time.deltaTime);
			}
			rigidbody.velocity = Vector3( 0, ysmooth,0);
			transform.position = new Vector3(targetX,transform.position.y,1.5);
			if(!saltando && GUItop.finalizado) {
				tiempo = tiempo + 0.1 * Time.deltaTime;
				rigidbody.velocity = Vector3(0,Mathf.Lerp(2,0,tiempo),0);
			}		
		}
		if(distanciaCoco < 0 && !muerdeUnaVez) {
			muerdeUnaVez = true;
			audio.PlayOneShot(mordisco);
			GameObject.Find("Bottom").renderer.enabled = false;
			GameObject.Find("Top").renderer.enabled = false;
			GUItop.finalizado = true;
		}
		if(GUItop.finalizado) {
			muerdeUnaVez = true;
		}
		if(GUItop.paused && !pausado) {
			pausado = true;
			velocidad = rigidbody.velocity.y;
			rigidbody.velocity = Vector3(0,0,0);
		}
		if(!GUItop.paused) {
			pausado = false;
		}
	}
	if(dificultad == 3) {
		dificultad = 0;
		ysmooth = ysmooth + 0.1;
		ysmooth = Mathf.Clamp(ysmooth,0,4);
	}
} 

function cocodriloSalta() {
	var projectile_Velocity : float;
	var Vx : float;
	var Vy : float;
	var flightDuration : float;
	var elapse_time : float;
	
	puntoSalto.x = transform.position.x;
	puntoSalto.y = 2*(rana.transform.position.y) - transform.position.y;
	puntoSalto.z = 1.5; 
	// Calculate distance.
	distance = new Vector3.Distance(puntoSalto,transform.position);
	// Calculate the velocity needed to throw the object to the target at specified angle.
    projectile_Velocity = distance / (Mathf.Sin(2 * firingAngle * Mathf.Deg2Rad) / gravity);
	// Extract the X & Y componenent of the velocity
	Vx = Mathf.Sqrt(projectile_Velocity) * Mathf.Cos(firingAngle * Mathf.Deg2Rad);
	Vy = Mathf.Sqrt(projectile_Velocity) * Mathf.Sin(firingAngle * Mathf.Deg2Rad);
	// Calculate flight time.
	flightDuration = distance / Vx;
	elapse_time = 0;
	// Animacion salta cocodrilo (pendiente)
//	anim.SetFloat("Speed",flightDuration);
//	anim.SetTrigger("Jump");
	while (elapse_time < flightDuration) {
		if(!GUItop.paused) {
			animcoco.speed = 1;
			rigidbody.isKinematic = false;
			transform.Translate(0, Vx * Time.deltaTime,-(Vy - (gravity * elapse_time)) * Time.deltaTime);
		}
		rot.x = Vx;
		rot.y = (-(Vy - (gravity * elapse_time)));
		rotacion = Mathf.Atan2(rot.y,rot.x) * Mathf.Rad2Deg;
		transform.rotation = Quaternion.Euler(Vector3(rotacion,0,0));
		transform.position.z = Mathf.Clamp(transform.position.z,-10,1.5);
		if(GUItop.paused) {
			animcoco.speed = 0;
			rigidbody.isKinematic = true;
			elapse_time -= Time.deltaTime;
		}
		elapse_time += Time.deltaTime;
		elapse_time = Mathf.Clamp(elapse_time,0,flightDuration);
		yield WaitForSeconds(0);
	}
	transform.position.z = 1.5;
	transform.rotation = Quaternion.Euler(Vector3(0,0,0));
	saltando = false;
}