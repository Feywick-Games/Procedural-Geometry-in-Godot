shader_type spatial;
uniform sampler2D tex : hint_albedo;
//render_mode unshaded;
//varying vec3 some_color;

void vertex() {
    //some_color = NORMAL; // Make the normal the color.
}

void fragment() {
    ALBEDO = texture(tex, UV).rgb;
}

void light() {
    //DIFFUSE_LIGHT = vec3(1,0,0); // optionally
}