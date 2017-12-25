for(team = 0; team < o_settings.teams; team++) {
    if(scores[team] >= score_limit) {
        winner = team;
        break;
    }
}
