#version 150

#moj_import <fog.glsl>

uniform sampler2D Sampler0;

uniform vec4 ColorModulator;
uniform float FogStart;
uniform float FogEnd;
uniform vec4 FogColor;
uniform float GameTime;
uniform vec2 ScreenSize;

in float vertexDistance;
in vec4 vertexColor;
in vec2 texCoord0;
in vec2 texCoord1;
in vec4 baseColor;

in vec3 vertexPosition;

out vec4 fragColor;

#moj_import <raymarching.glsl>
#moj_import <utils.glsl>
#moj_import <model_effects.glsl>

#moj_import <skyboxes/raymarching/scene.glsl>
#moj_import <skyboxes/ocean.glsl>

void main() {
    vec2 screenPosNormalized = gl_FragCoord.xy / ScreenSize;
    vec3 worldDirection = normalize(vertexPosition);
    MODEL_SHADER(1) {
        #moj_import <skyboxes/gradient.glsl>
        return;
    }
    MODEL_SHADER(2) {
        #moj_import <skyboxes/noise.glsl>
        return;
    }

    MODEL_SHADER(3) {
        #moj_import <skyboxes/animation.glsl>
        return;
    }
    MODEL_SHADER(4) {
        #moj_import <skyboxes/raymarching/render.glsl>
        return;
    }

    MODEL_SHADER(5) {
        fragColor = mainImageOcean(worldDirection);
        return;
    }
    MODEL_SHADER(6) {
        #moj_import <skyboxes/vortex.glsl>
        return;
    }



    vec4 color = texture(Sampler0, texCoord0) * vertexColor * ColorModulator;
    if (color.a < 0.1) {
        discard;
    }
    fragColor = linear_fog(color, vertexDistance, FogStart, FogEnd, FogColor);
}