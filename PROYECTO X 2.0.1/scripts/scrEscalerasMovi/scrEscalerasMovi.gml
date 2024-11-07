function scrEscalerasMovi(){
if(enEscalera == true && !place_meeting(x,y,ParePara)){
	enEscalera = false;
}

if(place_meeting(x,y,ParePara) && place_meeting(x,y+1,Pared)){
	if(input.escaleraArriba){
		enEscalera = true;
		
	}
}

/*if(place_meeting(x,y+1,ParePara)){
	if(input.escaleraAbajo){
		enEscalera = true;
		
	}
}*/

if(enEscalera == true && input.escaleraArriba){
	y = y - 3;
	
	if(!place_meeting(x,y,ParePara)){
		enEscalera = false;
		while(!place_meeting(x,y+1,ParePara)){
			y+=1;
			
		}
	}
	
}

if(enEscalera == true && input.escaleraAbajo){
	var wallID, itsOK;
	itsOK = false;
	wallID = instance_place(x,y+3,Pared);
	if(wallID < 0){
		y = y + 3
	} else {
		with wallID {
			itsOK = position_meeting(x,y,ParePara)
		}
		if( itsOK == true){
			y = y + 3
		} else{
			while(!place_meeting(x,y+1,Pared)){
				y+=1
				enEscalera = false;
			}
		}
	}


}
}