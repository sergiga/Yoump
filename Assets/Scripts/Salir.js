#pragma strict

function Update () {
	if (Input.GetKeyUp(KeyCode.Escape))
		Application.Quit();
}