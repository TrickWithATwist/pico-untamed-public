if (fadeType == 0) fadeAlpha = max( 0, fadeAlpha-0.05 );
if (fadeType == 1) fadeAlpha = min( 1, fadeAlpha+0.05 );

if (fadeType == 1 && fadeAlpha == 1) && (audio_group_is_loaded(audiogroup_music)) room_goto_next();
