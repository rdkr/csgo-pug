all:
	mkdir -p csgo

	wget -nc -P /tmp/csgo-pug https://mms.alliedmods.net/mmsdrop/1.11/mmsource-1.11.0-git1145-linux.tar.gz
	tar xf /tmp/csgo-pug/mmsource-1.11.0-git1145-linux.tar.gz -C csgo

	wget -nc -P /tmp/csgo-pug https://sm.alliedmods.net/smdrop/1.10/sourcemod-1.10.0-git6510-linux.tar.gz
	tar xf /tmp/csgo-pug/sourcemod-1.10.0-git6510-linux.tar.gz -C csgo

	mv csgo/addons/sourcemod/plugins/nextmap.smx csgo/addons/sourcemod/plugins/disabled
	mv csgo/addons/sourcemod/plugins/fun* csgo/addons/sourcemod/plugins/disabled

	wget -nc -P /tmp/csgo-pug https://github.com/splewis/csgo-pug-setup/releases/download/2.0.5/pugsetup_2.0.5.zip
	unzip -q -o /tmp/csgo-pug/pugsetup_2.0.5.zip -d csgo

	wget -nc -P /tmp/csgo-pug https://github.com/splewis/csgo-practice-mode/releases/download/1.3.3/practicemode_1.3.3.zip
	unzip -q -o /tmp/csgo-pug/practicemode_1.3.3.zip -d csgo

	cp gamemode_competitive_server.cfg csgo/cfg/gamemode_competitive_server.cfg
	cp gamemodes_server.txt csgo/gamemodes_server.txt
	cp mapcycle.txt csgo/mapcycle.txt
	cp admins_simple.ini csgo/addons/sourcemod/configs/admins_simple.ini
