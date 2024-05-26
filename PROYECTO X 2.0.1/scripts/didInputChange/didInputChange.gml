function didInputChange(){

	//Retornamos la respuesta a: "La última acción es diferente de la acción actual"
	return input.movi != lastInput.movi || input.correr != lastInput.correr || input.salto != lastInput.salto;

}