/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

#region //Verificar si está saltando o cayendo

if vspeed > 0
{
	fall = true;
}
else
{
	fall = false;
}

if vspeed < 0
{
	up = true;
}
else
{
	up = false;
}

#endregion

#region //Gravedad
if place_free(x, y+1)
{
	gravity = 1;
}
else
{
	gravity = 0;
}

if vspeed >= 20 {vspeed = 20;} //Limitar la velocidad vertical
#endregion

#region //Movimientos y Salto

var derecha = keyboard_check(vk_right); //Presionar flecha derecha
var izquierda = keyboard_check(vk_left); //Presionar flecha izquierda
if derecha izquierda =false;
if izquierda derecha =false;
var s = keyboard_check_pressed(vk_space); //Presionar espacio

if s && !place_free(x,y+1) {
	sprite_index = spr_player_jump;
	vspeed = -salto;
	image_speed = 1;
}

if derecha && place_free(x+v, y){
	x+=v; //Moverlo
	
	if fall
		sprite_index = spr_player_fall;
	else
		if up
			sprite_index = spr_player_jump;
		else
			sprite_index = spr_player_walk;
	image_speed = 1;
	image_xscale = 1;
}

if izquierda && place_free(x-v, y){
	x-=v;
	if fall
		sprite_index = spr_player_fall;
	else
		if up
			sprite_index = spr_player_jump;
		else
			sprite_index = spr_player_walk;
	image_speed = 1;
	image_xscale = -1;
}

#endregion

if !keyboard_key
{
	if fall == true
		sprite_index = spr_player_fall;
	else
		if up
			sprite_index = spr_player_jump;
	else
		sprite_index = spr_player_stand;
		
	image_speed = 0;
	image_index= 0;
}