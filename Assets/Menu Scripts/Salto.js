#pragma strict

var NenufarPrimero : Transform;

var JugarPantalla : JugarPantalla;
var GenerarInicio1 : GenerarInicio;
var GenerarInicio2 : GenerarInicio;
var firingAngle : float = 45.0f;
var gravity : float;
var distance : float;
var anim : Animator;
var saltar : boolean;
var saltaSegundo : boolean;

function Start() {
	anim = gameObject.GetComponent(Animator);
	gravity = 9.8;
	saltaSegundo = false;
}

function Update() {
	if(saltar) {
		saltar = false;
		salta(true, Vector3(NenufarPrimero.transform.position.x,NenufarPrimero.transform.position.y,0.92));
	}
	if(saltaSegundo) {
		saltaSegundo = false;
		JugarPantalla.desvanecer();
		GenerarInicio1.crece = true;
		GenerarInicio2.crece = true;
		salta(false, Vector3(0,0,0));
	}
}
function salta(primero : boolean, posicion : Vector3) {
	var projectile_Velocity : float;
	var Vx : float;
	var Vy : float;
	var flightDuration : float;
	var elapse_time : float;
	var rot : Vector3;
	var ang : float;
	// Calculate distance.
	distance = new Vector3.Distance(posicion,transform.position);
	// Calculate the velocity needed to throw the object to the target at specified angle.
    projectile_Velocity = distance / (Mathf.Sin(2 * firingAngle * Mathf.Deg2Rad) / gravity);
	// Extract the X & Y componenent of the velocity
	Vx = Mathf.Sqrt(projectile_Velocity) * Mathf.Cos(firingAngle * Mathf.Deg2Rad);
	Vy = Mathf.Sqrt(projectile_Velocity) * Mathf.Sin(firingAngle * Mathf.Deg2Rad);
	// Calculate flight time.
	flightDuration = distance / Vx;
	// Rotate projectile to face the target.
	rot = posicion - transform.position;
	ang = Mathf.Atan2(rot.x,rot.y) * Mathf.Rad2Deg;
	transform.rotation = Quaternion.Euler(Vector3(0,0, -ang));
	elapse_time = 0;
	anim.SetFloat("Speed",flightDuration);
	anim.SetTrigger("Jump");
	while (elapse_time < flightDuration) {
		transform.Translate(0, Vx * Time.deltaTime,-(Vy - (gravity * elapse_time)) * Time.deltaTime);
		if(primero) {
			transform.position.z = Mathf.Clamp(transform.position.z,-100,0.92);
		}
		if(!primero) {
			transform.position.z = Mathf.Clamp(transform.position.z,-100,1);
		}
		transform.position.x = Mathf.Clamp(transform.position.x,0,100);
		transform.position.y = Mathf.Clamp(transform.position.y,0,100);
		elapse_time += Time.deltaTime;
		elapse_time = Mathf.Clamp(elapse_time,0,flightDuration);
		yield WaitForSeconds(0);
	}
	if(!primero) {
		transform.rotation = Quaternion.Euler(Vector3(0,0,0));
		Application.LoadLevel(1);
	}
	anim.ResetTrigger("Jump");
	yield WaitForSeconds(0.1);
	if(primero) {
		saltaSegundo = true;
	}
}