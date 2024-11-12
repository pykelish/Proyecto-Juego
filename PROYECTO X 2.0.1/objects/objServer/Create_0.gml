// Servidor - Create
if (!global.IS_SERVER) {
    instance_destroy();
    exit;
}

global.PLAYERS = [];
global.PLAYER_SERVER_ID = 0;

global.selectedCharacter = 0;
global.npcCharacter=0;
global.UPDATE_WORLD_FREQUENCY = floor(game_get_speed(gamespeed_fps) / 60);
alarm[0] = global.UPDATE_WORLD_FREQUENCY;
