varying vec3 light_vec;
varying vec3 normal_vec;
varying vec4 material_color;

void main(){
	vec3 l = normalize(light_vec);
	vec3 n = normalize(normal_vec);
	float ndotl = clamp(dot(n,l), 0.0, 1.0);

	vec4 color = material_color;

	if(ndotl >0.9)
		color += 0.1; // add for brighter cell
	else if(ndotl > 0.8)
		color *= 0.8;
	else if(ndotl > 0.5)
		color *= 0.5;
	else if(ndotl >0.4)
		color *= 0.4;
	else
		color *= 0.3;

	gl_FragColor = color;
}
