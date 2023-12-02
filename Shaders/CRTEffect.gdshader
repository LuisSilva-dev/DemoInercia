shader_type canvas_item;

uniform float curTime;

void vertex() {
	// Called for every vertex the material is visible on.
}

void fragment() {
	// mod(abs(2*x*sin(time)), x/2)
	vec2 uv = SCREEN_UV;//(SCREEN_UV - 0.5) / vec2(SCREEN_PIXEL_SIZE.x / SCREEN_PIXEL_SIZE.y, 1.0);
	float x = (sin(curTime)+1.0);
 	float wacky = mod(abs(sin(curTime)*x*sin(uv.x*2.0+curTime)), x/2.0);
	float numoflines = 100.0;
	float line = sin(uv.y*PI*numoflines-curTime*10.0);
	COLOR = vec4(line/(1.6-cos(curTime)/2.0), 0.0, line/(2.2-sin(curTime)/2.0), 1.0);
	//COLOR = vec4(uv.x, uv.y, 0.0, 1.0);
}

void light() {
	// Called for every pixel for every light affecting the CanvasItem.
}
