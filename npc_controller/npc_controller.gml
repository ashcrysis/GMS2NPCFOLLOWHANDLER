// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function procurando(){
if distance_to_object(obj_player) < distAggro 
{
speedhandler = true;
estado = perseguindo;



}
}

function perseguindo()
{

var _dir = point_direction(x,y, obj_player.x, obj_player.y);
hveloc = lengthdir_x(veloc, _dir);
vveloc = lengthdir_y(veloc, _dir);
 
 
 
 x+= hveloc;
 y+= vveloc;

if distance_to_object(obj_player) > distAggro 
{
 estado = procurando;
 speedhandler = false;
}
}

function dir_handler()
{
if x < xprevious
{
dir = "esquerda";
}


if y < yprevious
{
dir = "cima";
}

if y > yprevious 
{
dir = "baixo";
}

if x > xprevious
{
dir = "direita";
}




}



function anim_handler(){

	if speedhandler == false{
		switch (dir)
		{
		case "direita" :
		sprite_index = _idle_right;
		break;	
		case "esquerda" :
		sprite_index = _idle_left;
		break;
		case "cima" :
		sprite_index = idle_up;
		break;
		case "baixo":
		sprite_index = idle_down;
		break;
		}
	}
			if speedhandler == true{
				switch (dir)
				{
				case "esquerda" :
				sprite_index = _walk_left;
				break;
				case "cima" :
				sprite_index = walk_up;
				break;
				case "baixo":
				sprite_index = walk_down;
				 break;
				case "direita":
				sprite_index = _walk_right;
				break;
				}
			}

		}
	
function Ncol_check(){
if place_meeting(x + hveloc, y, obj_player){ // bloco de instruções pra detectar colisões no eixo x
while !place_meeting(x + sign(hveloc),y,obj_player){
x += sign(hveloc);

}
hveloc = 0;
}

x += hveloc; //adiciona a movimentação no eixo x

if place_meeting(x, y + vveloc, obj_player){// bloco de instruções pra detectar colisões no eixo y
while !place_meeting(x,y + sign(vveloc),obj_player){
y += sign(vveloc)

}
vveloc = 0;
}

y += vveloc; //adiciona a movimentação no eixo y
}
