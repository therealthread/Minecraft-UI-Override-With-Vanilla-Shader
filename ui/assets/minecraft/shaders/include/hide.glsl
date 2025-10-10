//https://github.com/therealthread/Minecraft-UI-Override-With-Vanilla-Shader/tree/main

#define CHAT_OFF 0
#define SCOREBOARD_SIDEBAR 1
#define SCOREBOARD_LIST 2
#define F3_RIGHT 3
#define F3_LEFT 4

struct UI {
    int type;
    vec4 color;
    bool visible;
    bool enabled;
};

UI makeUI(int type, vec4 color, bool visible, bool enabled) {
    UI ui;
    ui.type = type;
    ui.color = color;
    ui.visible = visible;
    ui.enabled = enabled;
    return ui;
}

vec4 applyUI(float z, UI ui, vec4 currentColor) {
    if (!ui.enabled) return currentColor;
    if (!ui.visible) return vec4(0.0, 0.0, 0.0, 0.0);

    if (ui.type == CHAT_OFF && z >= 2600.0 && z <= 2640.0) return ui.color;
    if (ui.type == SCOREBOARD_SIDEBAR && z >= 2000.0 && z <= 2040.0) return ui.color;
    if (ui.type == SCOREBOARD_LIST && z >= 2760.0 && z <= 2800.0) return ui.color;
    if (ui.type == F3_RIGHT && z >= 1760.0 && z <= 1800.0) return ui.color;
    if (ui.type == F3_LEFT && z >= 1800.0 && z <= 1840.0) return ui.color;

    return currentColor;
}
