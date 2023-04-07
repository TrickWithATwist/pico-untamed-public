// Resolution
#macro RES_W 1920
#macro RES_H 1080

#macro CAM_RES_W 1920
#macro CAM_RES_H 1080

camera = camera_create_view(0, 0, CAM_RES_W, CAM_RES_H);


ng_connect("putnewgroundsappidhere","putnewgroundsencryptionkeyhere");

ng_initialize_medals_and_scoreboard();

ng_request_login();
