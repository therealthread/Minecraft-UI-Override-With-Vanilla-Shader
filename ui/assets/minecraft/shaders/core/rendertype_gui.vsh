//https://github.com/therealthread/Minecraft-UI-Override-With-Vanilla-Shader/tree/main

#version 150

#moj_import <hide.glsl>
#moj_import <config.glsl>

in vec3 Position;
in vec4 Color;

uniform mat4 ModelViewMat;
uniform mat4 ProjMat;

out vec4 vertexColor;

void main() {
    gl_Position = ProjMat * ModelViewMat * vec4(Position, 1.0);
    vertexColor = runUI(Position.z, Color);
}
