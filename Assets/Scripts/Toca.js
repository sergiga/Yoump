#pragma strict

// tocaNenufar.
var duracionBuff : float;
var buffFrog : Frog_jump;
var movernenufar : Casi_llegas;
var base : OnGroundCheck;
var salta : boolean = true;
var pos_nenufar : Transform;
var wp : Vector3;
var incompatibles : boolean[];

function Start() {
	incompatibles = new boolean[3];
	for(var i : int = 0 ; i < incompatibles.Length; i++) {
		incompatibles[i] = false;
	}
}

// Moverse con solo tocar.

function tocaNenufar() {
	for(var i : int = 0 ; i < incompatibles.Length; i++) {
		if(i != 0) {
			incompatibles[i] = true;
		}
		else {
			incompatibles[i] = false;
		}
	}	
	duracionBuff = Time.time + 10;
	while(Time.time <= duracionBuff && !incompatibles[0]) {		
		buffFrog.buffToca = true;	
		if(Input.GetMouseButtonUp(0) && !salta) {
			salta = true;
		}
	yield WaitForSeconds(0);
	}
	buffFrog.buffToca = false;
}

// Cambair eje X salto.

function cambioEjesApuntar() {
	for(var i : int = 0 ; i < incompatibles.Length; i++) {
		if(i != 1) {
			incompatibles[i] = true;
		}
		else {
			incompatibles[i] = false;
		}
	}
	duracionBuff = Time.time +10;
	while (Time.time <= duracionBuff && !incompatibles[1]) {
		buffFrog.invertirEjes = true;
	yield WaitForSeconds(0);	
	}
	buffFrog.invertirEjes = false;
}

// Vida mas.

function vidamas() {
	if(buffFrog.vidas < 3) {
		buffFrog.vidas++;
	}
}