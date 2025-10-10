# Minecraft-UI-Override-With-Vanilla-Shader
A modular GLSL shader system for customizing and selectively hiding Minecraft's in-game UI elements. Supports fine-grained control over visibility, color, and activation of components like chat, scoreboard, tablist, and debug overlays (F3).

![](https://github.com/therealthread/Minecraft-UI-Override-With-Vanilla-Shader/blob/main/ui.png?raw=true)

```glsl
UI uiScoreboardList = makeUI(SCOREBOARD_LIST, vec4(0.00, 0.00, 0.00, 0.0), true, true);
UI name = makeUI(type, color (vec4), visible, enabled);
```
