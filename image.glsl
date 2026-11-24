// My next shader
// Change anything, or clear it and start fresh.
void mainImage( out vec4 fragColor, in vec2 fragCoord )
{
  vec2 uv = fragCoord / iResolution.xy;

  vec3 sun = vec3(1.0, 0.6, 0.2);
  vec3 sky = vec3(0.1, 0.08, 0.3);

  float t = iTime * 0.5;
  float bend = sin(uv.x * 10.0) * 0.1;
  float h = uv.y + bend;

  vec3 col = mix(sun, sky, smoothstep(0.0, 1.0, h));
  col *= 0.8 + 0.2 * sin(h * 60.0 - t * 9.0);
  fragColor = vec4(col, 1.0);
}
