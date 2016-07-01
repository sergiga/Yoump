#pragma strict

var NenufarGenerator : Nenufar_generator;
var FrogJump : Frog_jump; 
var CargarSalto : Cargar_salto;
var CasiLLegas : Casi_llegas;

var Rana : GameObject;
var ranaEncima : boolean;
var seMueve : boolean;
var duracionSprint : float;
var masCercano : Vector3;
var pausado : boolean;
var velocidad : float;

var posicionFinal : float;
var movimientoInicial : boolean;
var tortugaPreparada : boolean;
var tortugaMoviendose : boolean;

function Start() {
	NenufarGenerator = GameObject.Find("Main Camera").GetComponent("Nenufar_generator");
	FrogJump = GameObject.Find("Rana").GetComponent("Frog_jump");
	CargarSalto = GameObject.Find("Top").GetComponent("Cargar_salto");
	CasiLLegas = GameObject.Find("Rana").GetComponent("Casi_llegas");
	Rana = GameObject.Find("Rana");
	seMueve = false; 
	ranaEncima = false;
	duracionSprint = 0;
}

function Update () {
	if(movimientoInicial) {
		aparecer();
		movimientoInicial = false;
	}
	if(ranaEncima && tortugaPreparada) {
		if(!seMueve) {
			seMueve = true;
			duracionSprint = Time.time + 5;
		}
		if(GUItop.paused) {
			rigidbody.velocity = Vector3(0,0,0);
			Rana.rigidbody.velocity = Vector3(0,0,0);
			duracionSprint = duracionSprint + Time.deltaTime;
		}
		if(Time.time < duracionSprint && !GUItop.paused && !CasiLLegas.movernenufar) {
			rigidbody.velocity = Vector3(0,6,0);
			Rana.rigidbody.velocity = Vector3(0,6,0);
			Rana.transform.rotation = Quaternion.Euler(0,0,0);
			FrogJump.estaEnBuff = true;
			CargarSalto.puede_cargar = false;
			if(transform.position.y > NenufarGenerator.referenciaMax - 1){
				NenufarGenerator.crearNenufar(transform.position);
			}
		}
		else if(Time.time > duracionSprint) {
			ranaEncima = false;
			rigidbody.velocity = Vector3(0,0,0);
			Rana.rigidbody.velocity = Vector3(0,0,0);
			masCercano = encontrarNenufarCercano();
			NenufarGenerator.crearNenufar(masCercano);
			NenufarGenerator.hayBuffo = false;
			masCercano.z = 0.92;			
			FrogJump.puntosalto = masCercano;
			FrogJump.saltaDeTortuga = true;
			CargarSalto.puede_cargar = true;
			irse();		
		}
	}
	if(rigidbody.velocity.magnitude > 0 && !ranaEncima && !tortugaMoviendose)
	{
		pararGolpe();
	}
}

function aparecer() {
	var empiezaMover : boolean;
	var posicionTortuga : float;
	var posicionInicial : float;
	
	tortugaMoviendose = true;
	
	if(!empiezaMover) {
		posicionInicial = transform.position.y;
		posicionTortuga = 0;
		empiezaMover = true;
	}
	while (posicionTortuga < 1.1) {
		transform.position.y = Mathf.Lerp(posicionInicial,posicionFinal,posicionTortuga);
		transform.position.z = Mathf.Lerp(1.5,1,posicionTortuga);
		transform.localScale.x = Mathf.Lerp(0.5,1,posicionTortuga + 0.15);
		transform.localScale.y = Mathf.Lerp(0.5,1,posicionTortuga + 0.15);
		if(posicionTortuga >= 0.85) {
			gameObject.renderer.sortingOrder = 4;
		}
		posicionTortuga += 0.45*Time.deltaTime;
		yield WaitForSeconds(0);
	}
	rigidbody.velocity = Vector3.zero;
	tortugaMoviendose = false;
	tortugaPreparada = true;
}

function irse() {
	var empiezaMover : boolean;
	var posicionTortuga : float;
	var posicionInicial : float;
	
	tortugaMoviendose = true;
	
	if(!empiezaMover) {
		posicionInicial = transform.position.y;
		posicionTortuga = 0;
		empiezaMover = true;
	}
	while (posicionTortuga < 1.1) {
		transform.position.y = Mathf.Lerp(posicionInicial,posicionInicial + 30,posicionTortuga);
		transform.position.z = Mathf.Lerp(1,1.5,posicionTortuga);
		transform.localScale.x = Mathf.Lerp(1,0.5,posicionTortuga);
		transform.localScale.y = Mathf.Lerp(1,0.5,posicionTortuga);
		if(posicionTortuga >= 0.15) {
			gameObject.renderer.sortingOrder = 1;
		}
		posicionTortuga += 0.2*Time.deltaTime;
		yield WaitForSeconds(0);
	}
	Destroy(gameObject);
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

function encontrarNenufarCercano() : Vector3 {
	var distanciaMasCercana = Mathf.Infinity;
    var nenufares = GameObject.FindGameObjectsWithTag("Nenufar"); 
	var nearestObj : Transform = null;

    for (var obj : GameObject in nenufares) { 
    
        var objectPos = obj.transform.position;
        var distancia : float;
        if(objectPos.y - transform.position.y >= 0) {
        	distancia = (objectPos - transform.position).sqrMagnitude;
		} 
        if(objectPos.y - transform.position.y < 0) {
        	distancia = Mathf.Infinity;
		}
        if (distancia < distanciaMasCercana) {
            nearestObj = obj.transform;
        }
    }
    return nearestObj.position;
}