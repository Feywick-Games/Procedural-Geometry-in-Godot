shader_type spatial;
uniform sampler2D tex : hint_albedo;
//render_mode unshaded;
//varying vec3 some_color;

void vertex() {
    //some_color = NORMAL; // Make the normal the color.
}

void fragment() {
    ALBEDO = vec3(UV.x, UV.y, 0);
}

void light() {
    //DIFFUSE_LIGHT = vec3(1,0,0); // optionally
}