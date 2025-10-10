//https://github.com/therealthread/Minecraft-UI-Override-With-Vanilla-Shader/tree/main

UI uiChat = makeUI(CHAT_OFF, vec4(1.00, 0.00, 0.67, 0.5), true, true);
UI uiScoreboardSidebar = makeUI(SCOREBOARD_SIDEBAR, vec4(0.00, 0.67, 1.00, 0.5), true, true);
UI uiScoreboardList = makeUI(SCOREBOARD_LIST, vec4(0.00, 0.00, 0.00, 0.5), true, true);
UI uiF3Right = makeUI(F3_RIGHT, vec4(0.00, 1.00, 0.53, 0.5), true, true);
UI uiF3Left = makeUI(F3_LEFT, vec4(1.00, 1.05, 0.30, 0.5), true, true);

vec4 runUI(float z, vec4 baseColor) {
    vec4 result = baseColor;
    result = applyUI(z, uiChat, result);
    result = applyUI(z, uiScoreboardSidebar, result);
    result = applyUI(z, uiScoreboardList, result);
    result = applyUI(z, uiF3Right, result);
    result = applyUI(z, uiF3Left, result);
    return result;
}

