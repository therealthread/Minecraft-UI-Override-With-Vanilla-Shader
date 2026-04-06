//https://github.com/therealthread/

#moj_import <anemys.glsl>

vec4 runUI(float z, vec4 baseColor)
{

    UI uiChat = UI(CHAT_OFF, vec4(0., 0., 0., .5), true, true);
    UI uiScoreboardSidebar = UI(SCOREBOARD_SIDEBAR, vec4(0., 0., 0., 0.), true, true);
    UI uiScoreboardList = UI(SCOREBOARD_LIST, vec4(0., 0., 0., .5), true, true);
    UI uiF3Right = UI(F3_RIGHT, vec4(0., 0., 0., .5), true, true);
    UI uiF3Left = UI(F3_LEFT, vec4(0., 0., 0., .5), true, true);

    vec4 result = baseColor;
    result = applyUI(z, uiChat, result);
    result = applyUI(z, uiScoreboardSidebar, result);
    result = applyUI(z, uiScoreboardList, result);
    result = applyUI(z, uiF3Right, result);
    result = applyUI(z, uiF3Left, result);
    return result;
}
