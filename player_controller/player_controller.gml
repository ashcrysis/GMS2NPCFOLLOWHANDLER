function controller(){
esquerda = keyboard_check(vk_left); // recebe o trigger das teclas
cima = keyboard_check(vk_up);
baixo = keyboard_check(vk_down);
direita = keyboard_check(vk_right);

hveloc = (direita - esquerda)* veloc;
vveloc = (baixo - cima)* veloc;

col_check();

if keyboard_check_pressed(ord("E"))
{

	estado = get_item;

}

}

 
function col_check(){
if place_meeting(x + hveloc, y, obj_col){ // bloco de instruções pra detectar colisões no eixo x
while !place_meeting(x + sign(hveloc),y,obj_col){
x += sign(hveloc);

}
hveloc = 0;
}

x += hveloc; //adiciona a movimentação no eixo x

if place_meeting(x, y + vveloc, obj_col){// bloco de instruções pra detectar colisões no eixo y
while !place_meeting(x,y + sign(vveloc),obj_col){
y += sign(vveloc)

}
vveloc = 0;
}

y += vveloc; //adiciona a movimentação no eixo y
}

function last_dir()
{
dirEsquerda = keyboard_check(vk_left);
dirCima = keyboard_check(vk_up);
dirBaixo = keyboard_check(vk_down);
dirDireita = keyboard_check(vk_right);

if dirEsquerda{
dir = "esquerda";
}

if dirCima{
dir = "cima";
}
    if dirBaixo{
dir = "baixo";
}

    if dirDireita{
dir = "direita";
}
}

function animation_handler(){

if (hveloc == 0 and vveloc == 0){
switch (dir)
{
case "esquerda" :
sprite_index = _side_idle;
break;
case "cima" :
sprite_index = _up_idle;
break;
case "baixo":
sprite_index = _down_idle;
break;
case "direita":
sprite_index = _right_idle;
break;

}

}
if (hveloc != 0 or vveloc != 0)
{
switch (dir)
{
case "esquerda" :
sprite_index = _side_walk;
break;
case "cima" :
sprite_index = __up_walk;
break;
case "baixo":
sprite_index = _down_walk;
break;
case "direita":
sprite_index = _right_walk;
break;

}

}
}

function get_item(){

switch (dir)
{
case "esquerda" :
sprite_index = _pick_up;
break;
case "cima" :
sprite_index = _pick_up;
break;
case "baixo":
sprite_index = _pick_up_right;
break;
case "direita":
sprite_index = _pick_up_right;
break;
}



}