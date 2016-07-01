#pragma strict

var buffo :int;
var buffSprite : Sprite[];
var escala : float;
var objetivo : float = 2;
var velocidadEscala : float;
// Semaforo
var tiempos : float[];
var cambioSprite : float;
var cambioBuff : boolean;
var k : int;
var hitray: RaycastHit;
var Nenufar : Transform;

//function Awake () {
//	var comparador : int;
//	var buffos : int[] = new int[4];
//	var buffoRandom : int = Random.value * 100;
//	buffSprite = Resources.LoadAll.<Sprite>("Buffos");	
//	buffos[0] = 10;
//	buffos[1] = 10;
//	buffos[2] = 10;
//	buffos[3] = 70;
//	
//	transform.localScale = Vector3(0.1,0.1,0.1);
//	comparador = 0;
//	for (var i : int = 0 ; i < buffos.Length ; i++) {
//		comparador = comparador + buffos[i];
//		if(buffoRandom <= comparador) {
//			buffoRandom = 150;
//			buffo = i;
//		}
//	}
//	switch (buffo) {
//		case 0:
//			gameObject.GetComponent(SpriteRenderer).sprite = buffSprite[0];
//			break;
//		case 1:
//			gameObject.GetComponent(SpriteRenderer).sprite = buffSprite[1];
//			break;
//		case 2:
//			gameObject.GetComponent(SpriteRenderer).sprite = buffSprite[2];	
//			break;
//		default:
//			Destroy(gameObject);
//			break;
//	}
//			
//}

function Awake() {
	k = Random.Range(0,3);
	cambioBuff = true;
	tiempos = new float[3];
	buffSprite = Resources.LoadAll.<Sprite>("Buffos");	
	transform.localScale = Vector3(0.1,0.1,0.1);
	for(var i : int = 0; i < 3; i++) {
		tiempos[i] = Random.Range(0.5,2.0);
	}
	gameObject.GetComponent(SpriteRenderer).sprite = buffSprite[k];
	buffo = k;
	var rayo = new Ray (Vector3(transform.position.x,transform.position.y,0), Vector3.forward);
	if (Physics.Raycast(rayo, hitray)) {
		if(hitray.rigidbody.tag == "Nenufar") {
			Nenufar = hitray.transform;		
		}
		else {
			Destroy(gameObject);
		}				
	}
	else {
			Destroy(gameObject);
	}
}

function Update() {
	transform.position = Nenufar.transform.position;
	if(transform.localScale.x <= 1) {
		objetivo = 2;
		velocidadEscala = 0.8;
	}
	if(transform.localScale.x == 1.3) {
		objetivo = 0;
		velocidadEscala = 0.2;
	}
	escala = Mathf.Lerp(transform.localScale.x,objetivo,velocidadEscala*Time.deltaTime);
	escala = Mathf.Clamp(escala,0,1.3);
	transform.localScale = new Vector3(escala,escala,escala);
	
	if(cambioBuff){
		cambioBuff = false;
		cambioSprite = Time.time + tiempos[k];
	}
	if(Time.time >= cambioSprite) {
		k++;
		if(k == 3) {
			k = 0;
		}
		gameObject.GetComponent(SpriteRenderer).sprite = buffSprite[k];
		buffo = k;
		cambioBuff = true;
	}	
}

function OnBecameInvisible () {
	Destroy(gameObject);
}