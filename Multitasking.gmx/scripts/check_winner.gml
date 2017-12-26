for(team = 0; team < o_settings.teams; team++) {
    if(scores[team] >= score_limit) {
        winner = team;
        audio_play_sound(snd_ouh,10,false);
        break;
    }
}
