#pragma strict

var rana : Transform;
var pos : Vector3;
var referencia : Vector3;
var pos_inicial : Vector3;
var pos_final : Vector3;
var pos_norm : Vector3;
var pos_rana : Vector3;
var moveSpeed : float = 0.1f;
var hit: RaycastHit;
var ray : Ray;
var puede_cargar : boolean;
var puede_saltar : OnGroundCheck;
// Check toca rana.
var circulo : float;
var radio : float;
var dedo : Vector3;

function Start() {
	radio = 0.8;
}
function Update () { 
	
	if(Input.GetMouseButtonDown(0) && puede_saltar.onGround && !GUItop.paused && GUItop.finalizado) {
		dedo = Input.mousePosition;
		dedo.z = 16;
		dedo = Camera.main.ScreenToWorldPoint(dedo);
		circulo = Mathf.Pow(dedo.x - transform.position.x,2) + Mathf.Pow(dedo.y - transform.position.y,2);
		if(circulo < Mathf.Pow(radio,2)) {
			referencia = rana.position;
			referencia.z = 0.9164808;
			puede_cargar = true;
		}
	}
	if(Input.GetMouseButton(0) && puede_saltar.onGround && puede_cargar && !GUItop.paused && GUItop.finalizado) {
		pos_inicial = Camera.main.WorldToScreenPoint(rana.position);
		pos_inicial.z = 0.9164808;		
        pos_final = Input.mousePosition;
        pos_final.z = 0.9164808;
        pos = pos_final - pos_inicial;
        pos.z = 0.9164808;
        pos = Vector3.ClampMagnitude(pos,Screen.height/6);
        pos_rana = transform.position;
        if(pos.y <= 0){
        	pos_norm.x = referencia.x + pos.x * 0.002;
        	pos_norm.y = referencia.y + pos.y * 0.002;
        	pos_norm.z = 0.9164808;
        	transform.position = Vector3.Lerp(pos_rana, pos_norm, moveSpeed);
        }
        if(pos.y > 0) {
        	pos_norm.x = referencia.x + pos.x * 0.002;
        	pos_norm.y = pos_rana.y;
        	pos_norm.z = 0.9164808;
        	transform.position = Vector3.Lerp(pos_rana, pos_norm, moveSpeed);
        }
    }
	if(Input.GetMouseButtonUp(0) && puede_saltar.onGround && puede_cargar && !GUItop.paused && GUItop.finalizado) {
		transform.position = rana.position;
		puede_cargar = false;
	}
	if(GUItop.paused || GUItop.finalizado) {
		transform.position = rana.position;
		puede_cargar = false;
	}
}
