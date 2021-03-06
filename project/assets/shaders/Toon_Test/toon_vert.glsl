uniform vec3 light_position;
varying vec3 light_vec;
varying vec3 normal_vec;
varying vec4 material_color;

void main(){
	vec3 vert =(gl_ModelViewMatrix * gl_Vertex).xyz;
	light_vec = (gl_ModelViewMatrix* vec4(light_position,1.0)).xyz - vert;
	normal_vec = gl_NormalMatrix *gl_Normal;
	material_color = gl_Color;
	gl_Position = ftransform();
}
