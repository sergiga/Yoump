#pragma strict

// Update
var rana : Transform;
var fly : Transform;
var anim : Animator;
var base : OnGroundCheck;
var movernenufar : Casi_llegas;
var generaNenufar : Nenufar_generator;
var movCoco : Mov_coco;
var ray : Ray;
var hit: RaycastHit;
var hit2 : RaycastHit;
var puede_saltar : boolean;
var puede_saltar_tocando : boolean;
var pos_rana : Vector3;
var puntosalto : Vector3;
//var pos_nenufar : Transform;
var saltaFuera : boolean;

// rana_rot
var mouse_position : Vector3;
var rot : Vector2;
var potenciatotal : Vector2;
var ang : float;
var centro_mosca : Vector3;
var c_mosca : Vector3;
var radio_mosca : Vector2;
var pos_mosca : Vector2;
var mosca : Vector3;
var moveSpeed : float = 0.1f;

// New jump
var firingAngle : float = 45.0f;
var gravity : float;
var distance : float;
var posicionParado : Vector3;
var paradoSaltando : boolean;
// graveda normal 9.8!!!!!
var saltoSound : AudioClip;

// Check dedo toca frog.
var circulo : float;
var radio : float;
var dedo : Vector3;
//Score.
var GUItop : GUItop;
// Buffs.
var buffToca : boolean = false;
var invertirEjes : boolean = false;
var vidas : int;
var Nenufarvida : GameObject;
var puedeBuff : boolean;
var saltaDeTortuga : boolean;
var saltaPlataforma : boolean;
var estaEnBuff : boolean;
var contadorVidas : int;
// Estadisticas.
var saltos : int;
var partidas : int;

function Start() {
	anim = gameObject.GetComponent(Animator);
	radio = 0.8;
	gravity = 9.8;
	saltaDeTortuga = false;
	vidas = 0;
	partidas = PlayerPrefs.GetInt("PlayedGames");
	partidas = partidas + 1;
	PlayerPrefs.SetInt("PlayedGames",partidas);
	// Poner Sonido.
	if(PlayerPrefs.GetInt("Sonido") == 1) {
		AudioListener.volume = 1;
	}
	if(PlayerPrefs.GetInt("Sonido") == 0) {
		AudioListener.volume = 0;
	}
}

function Update() {
	base = gameObject.GetComponentInChildren(OnGroundCheck);
	if(base.onGround) {
		rigidbody.freezeRotation = true;
		if(!saltaDeTortuga && !estaEnBuff) {
			if(Input.GetMouseButtonDown(0) && !GUItop.paused && !GUItop.finalizado) {
				dedo = Input.mousePosition;
				dedo.z = 16;
				dedo = Camera.main.ScreenToWorldPoint(dedo);
				circulo = Mathf.Pow(dedo.x - transform.position.x,2) + Mathf.Pow(dedo.y - transform.position.y,2);
				if(circulo < Mathf.Pow(radio,2) && !buffToca) {
					puede_saltar = true;
					pos_rana = Camera.main.WorldToScreenPoint(rana.position);
					rana_rot();
				}
				if(buffToca) {
					puede_saltar_tocando = true;
					puntosalto = dedo;
					puntosalto.z = 0;
				}
			}
			if((Input.GetMouseButtonUp(0) && puede_saltar && !GUItop.paused && !GUItop.finalizado) || (Input.GetMouseButtonDown(0) && buffToca && puede_saltar_tocando)) {
				puede_saltar = false;
				puede_saltar_tocando = false;
				audio.PlayOneShot(saltoSound);
				var ray2 = new Ray (puntosalto, Vector3.forward);
					if (Physics.Raycast(ray2, hit2) && puntosalto.y > (transform.position.y + 1)) {
						if(hit2.rigidbody.tag == "Nenufar" || hit2.rigidbody.tag == "Plataforma") {
							if(hit2.rigidbody.tag == "Plataforma") {
								saltaPlataforma = true; 
								Nenufarvida = Resources.Load("Nenufar");
								Instantiate(Nenufarvida,Vector3(hit2.transform.position.x,hit2.transform.position.y + 20,1),Quaternion.Euler(Vector3(0, 0, Random.Range(-360,360))));
								generaNenufar.hayBuffo = true;
								generaNenufar.crearNenufar(Vector3(hit2.transform.position.x,hit2.transform.position.y + 20,1));								 
							}
							generaNenufar.crearNenufar(hit2.transform.position);
							puntosalto = hit2.transform.position;
							puntosalto.z = 0.92; 
							saltaFuera = false;
							puedeBuff = true;
							salta(puntosalto,saltaFuera);
						}
						if(hit2.rigidbody.tag == "Tortuga") {
							generaNenufar.hayBuffo = true;
							generaNenufar.crearNenufar(hit2.transform.position);
							puntosalto = hit2.transform.position;
							puntosalto.z = 0.92; 
							saltaFuera = false;
							puedeBuff = true;
							salta(puntosalto,saltaFuera);
						}
					}
					else if(puntosalto.y > (transform.position.y + 1)) {
						puntosalto.z = 1.6;
						if(vidas > 0) {
							generaNenufar.crearNenufar(Vector3(puntosalto.x,puntosalto.y,1));
						}
						saltaFuera = true;
						puedeBuff = false;
						salta(puntosalto,saltaFuera);
					}	
				fly.gameObject.SetActive(false);
			}
			if(GUItop.paused || GUItop.finalizado) {
				fly.gameObject.SetActive(false);
			}
		}
		else if(saltaDeTortuga) {
			estaEnBuff = false;
			saltaDeTortuga = false;
			saltaFuera = false;
			puedeBuff = true;
			salta(puntosalto,saltaFuera);
			generaNenufar.hayBuffo = false;
		}
	}
}

function rana_rot() {
	while (Input.GetMouseButton(0) && !GUItop.paused && !GUItop.finalizado && puede_saltar) {
		mouse_position = Input.mousePosition;
		if(!invertirEjes) {
			rot = pos_rana - mouse_position;
		}
		if(invertirEjes) {
			rot.x = mouse_position.x - pos_rana.x;
			rot.y = pos_rana.y - mouse_position.y;
		}
		potenciatotal = Vector3.ClampMagnitude(rot,Screen.height/6);
		ang = Mathf.Atan2(potenciatotal.x,potenciatotal.y) * Mathf.Rad2Deg;
		if(ang >= -90 && ang <= 90) {
			transform.rotation = Quaternion.Euler(Vector3(0, 0, -ang));
		}
		if(ang < -90) {
			transform.rotation = Quaternion.Euler(Vector3(0, 0, 90));		
		} 
		if(ang > 90) {
			transform.rotation = Quaternion.Euler(Vector3(0, 0, -90));		
		}
		centro_mosca = pos_rana + (potenciatotal * 5); centro_mosca.z = 16; c_mosca = Camera.main.ScreenToWorldPoint(centro_mosca);
		fly.gameObject.SetActive(true);
		fly.transform.Translate((c_mosca - fly.transform.position) * moveSpeed *Time.deltaTime);
		fly.transform.position.x = Mathf.Clamp(fly.transform.position.x,-8.1,8.1);
		puntosalto = fly.transform.position;
		puntosalto.z = 0;
		yield WaitForSeconds (0);
	}
}

function salta(posicion : Vector3 , saltaFuera : boolean) {

	var projectile_Velocity : float;
	var Vx : float;
	var Vy : float;
	var flightDuration : float;
	var elapse_time : float;

	Nenufarvida = Resources.Load("Nenufar");
	if(vidas == 0 && posicion.z == 1.6) {
		movernenufar.movernenufar = true;
	}
	if(vidas > 0) {
		encontrarNenufarCercano();
		posicion.z = 0.92;
	}
	
	// Calculate distance.
	distance = new Vector3.Distance(posicion,rana.position);
	// Calculate the velocity needed to throw the object to the target at specified angle.
    projectile_Velocity = distance / (Mathf.Sin(2 * firingAngle * Mathf.Deg2Rad) / gravity);
	// Extract the X & Y componenent of the velocity
	Vx = Mathf.Sqrt(projectile_Velocity) * Mathf.Cos(firingAngle * Mathf.Deg2Rad);
	Vy = Mathf.Sqrt(projectile_Velocity) * Mathf.Sin(firingAngle * Mathf.Deg2Rad);
	// Calculate flight time.
	flightDuration = distance / Vx;
	if(saltaPlataforma) {
		base.sonidoPlataforma(flightDuration);
		saltaPlataforma = false;
	}
	// Rotate projectile to face the target.
	rot = posicion - transform.position;
	ang = Mathf.Atan2(rot.x,rot.y) * Mathf.Rad2Deg;
	transform.rotation = Quaternion.Euler(Vector3(0,0, -ang));
	elapse_time = 0;
	anim.SetFloat("Speed",flightDuration);
	anim.SetTrigger("Jump");
	while (elapse_time < flightDuration && !GUItop.finalizado) {
		if(vidas > 0 && elapse_time > flightDuration/10 && saltaFuera) {
			saltaFuera = false;
			Instantiate(Nenufarvida,Vector3(puntosalto.x,puntosalto.y,1),Quaternion.Euler(Vector3(0, 0, Random.Range(-360,360))));
			vidas--;
		}
		if(!GUItop.paused) {
			anim.speed = 1;
			transform.Translate(0, Vx * Time.deltaTime,-(Vy - (gravity * elapse_time)) * Time.deltaTime);
		}
		if(posicion.z == 0.92) {
			transform.position.z = Mathf.Clamp(transform.position.z,-100,0.92);
		}
		if(GUItop.paused) {
			if(!paradoSaltando) {
				paradoSaltando = true;
				posicionParado = transform.position;
			}
			anim.speed = 0;
			transform.position = posicionParado;
			elapse_time -= Time.deltaTime;
		}
		elapse_time += Time.deltaTime;
		elapse_time = Mathf.Clamp(elapse_time,0,flightDuration);
		yield WaitForSeconds(0);
	}
	if(posicion.z == 0.92) {
		movCoco.dificultad++;
		GUItop.score++;
		contadorVidas++;
		if(contadorVidas == 10) {
			vidas++;
			vidas = Mathf.Clamp(vidas,0,3);
			contadorVidas = 0;
		}
		saltos = PlayerPrefs.GetInt("SaltosCompletados");
		saltos = saltos + 1;
		PlayerPrefs.SetInt("SaltosCompletados",saltos);
	}
	saltos = PlayerPrefs.GetInt("Saltos");
	saltos = saltos + 1;
	PlayerPrefs.SetInt("Saltos",saltos);
	paradoSaltando = false;
	fly.transform.position = posicion;
}   

function encontrarNenufarCercano() {
	var distanciaMasCercana = Mathf.Infinity;
    var nenufares = GameObject.FindGameObjectsWithTag("Nenufar");
    var tortugas = GameObject.FindGameObjectsWithTag("Tortuga");
    var plataformas = GameObject.FindGameObjectsWithTag("Plataforma");
    var nearestObj : Transform = null;
	var objectPos : Vector3;
	var distancia : float;
	
    for (var obj1 : GameObject in nenufares) { 
    
        objectPos = obj1.transform.position;
        distancia = (objectPos - puntosalto).sqrMagnitude;
 
        if (distancia < distanciaMasCercana) {
            nearestObj = obj1.transform;
            distanciaMasCercana = distancia;
        }
    }
    if(tortugas != null) {
    	for(var obj2 : GameObject in tortugas) {
    		objectPos = obj2.transform.position;
        	distancia = (objectPos - puntosalto).sqrMagnitude;
 
	        if (distancia < distanciaMasCercana) {
    	        nearestObj = obj2.transform;
        	    distanciaMasCercana = distancia;
        	}
    	}
    }
    if(plataformas != null) {
    	for(var obj3 : GameObject in plataformas) {
    		objectPos = obj3.transform.position;
        	distancia = (objectPos - puntosalto).sqrMagnitude;
 
	        if (distancia < distanciaMasCercana) {
    	        nearestObj = obj3.transform;
        	    distanciaMasCercana = distancia;
        	}
    	}
    }
 	if((nearestObj.position - puntosalto).sqrMagnitude < 2) {
 		var mov : Vector2 = nearestObj.position - puntosalto;
 		mov = mov.normalized;
 		nearestObj.rigidbody.velocity = mov*2;
 	}
}
