var alive = 0;

for(i = 0; i < instance_number(o_mover); i++) {
    if (instance_find(o_mover,i).state != state_sleep) {
        alive++;
    }
}

if(alive <= 2) {
    o_level.game_over = true;
    with(o_level) {
        for(team = 0; team < o_settings.teams; team++) {
            if(scores[team] >= score_limit) {
                winner = team;
                audio_play_sound(snd_ouh,10,false);
                break;
            }
        }
    }
}



