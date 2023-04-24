ng_connect("putnewgroundsappidhere","putnewgroundsencryptionkeyhere");

ng_initialize_medals_and_scoreboard();

ng_request_login();


sWidth = sprite_get_width(sDisclaimer);
sHeight = sprite_get_height(sDisclaimer);

sNumber = sprite_get_number(sDisclaimer);

duration = 1.5;


fadeType = 0;
fadeAlpha = 1;

fadeInSpeed = 0.05;
fadeOutSpeed = 0.05;
