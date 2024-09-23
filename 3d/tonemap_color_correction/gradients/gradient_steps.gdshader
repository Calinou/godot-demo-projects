shader_type spatial;
render_mode unshaded;

uniform vec3 my_color : source_color = vec3(1.0, 1.0, 1.0);
uniform int steps : hint_range(1, 20);

void fragment() {
	// Draw base color
	ALBEDO = my_color;
	
	if (UV.y > 0.25)
	{
		// Draw gradient
		 ALBEDO *= UV.x * float(steps);
	}
	else
	{
		// Draw step separation bars
		for (int i = 1; i < steps; i++)
		{
			float threshold = 0.002; // Bar size
			float target = float(i) / float(steps);
			if (UV.x < target + threshold && UV.x > target - threshold)
			{
				ALBEDO = vec3(0); // Bars are colored black
			}
		}
	}
}
