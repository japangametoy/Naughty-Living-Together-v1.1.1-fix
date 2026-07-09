[_tb_system_call storage=system/_Main_Sta.ks]

*__メインステ表示

[tb_start_tyrano_code]
;初期化、コンフィグ表示
[clearfix]
[freeimage  layer="2"  ]
[layopt layer="2" visible="true" x=0 y=0]

[button name="role_button" role="save" graphic="button/save.png" enterimg="button/save2.png" x=1180 y=560]
[button name="role_button" role="load" graphic="button/load.png" enterimg="button/load2.png" x=1180 y=590]
[button name="role_button" role="sleepgame" graphic="button/config.png" enterimg="button/config2.png" x=1180 y=620 storage="config.ks"]
[button name="role_button" role="auto" graphic="button/auto.png" enterimg="button/auto2.png" x=1180 y=650]
[button name="role_button" role="title" graphic="button/title.png" enterimg="button/title2.png" x=1180 y=680]
[_tb_end_tyrano_code]

[font  size="14"  color="0xffffff"  bold="true"  face="JKG-M_3"  ]
[tb_start_tyrano_code]
;ウィンドウ枠表示
[image layer=2  time="0"  storage="default/Main_Window.png"  width="1280"  height="720" name="Status_Window" ]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;曜日変数処理
[switch exp="f.Sys_Youbi"]
[case is=0]
[eval exp="f.Sys_Youbi_Hyouji = 'Monday'"]
[case is=1]
[eval exp="f.Sys_Youbi_Hyouji = 'Tuesday'"]
[case is=2]
[eval exp="f.Sys_Youbi_Hyouji = 'Wednesday'"]
[case is=3]
[eval exp="f.Sys_Youbi_Hyouji = 'Thursday'"]
[case is=4]
[eval exp="f.Sys_Youbi_Hyouji = 'Friday'"]
[case is=5]
[eval exp="f.Sys_Youbi_Hyouji = 'Saturday'"]
[case is=6]
[eval exp="f.Sys_Youbi_Hyouji = 'Sunday'"]
[case]
[eval exp="f.Sys_Youbi_Hyouji = 'Error'"]
[endswitch]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;時間変数処理
[switch exp="f.Sys_Jikan"]
[case is=0]
[eval exp="f.Sys_Jikan_Hyouji = 'Morning'"]
[case is=1]
[eval exp="f.Sys_Jikan_Hyouji = 'Afternoon'"]
[case is=2]
[eval exp="f.Sys_Jikan_Hyouji = 'Night'"]
[case is=3]
[eval exp="f.Sys_Jikan_Hyouji = 'Midnight'"]
[case]
[eval exp="f.Sys_Jikan_Hyouji = 'Error'"]
[endswitch]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;生理　変数処理
[iscript]
f.Sys_Seiri = f.Sys_Syume % 4;
[endscript]

[switch exp="f.Sys_Seiri"]
[case is=0]
[eval exp="f.Sys_Seiri_Hyouji = 'Safe day'"]
[case is=1]
[eval exp="f.Sys_Seiri_Hyouji = 'Low risk'"]
[case is=2]
[eval exp="f.Sys_Seiri_Hyouji = 'Mid risk'"]
[case is=3]
[eval exp="f.Sys_Seiri_Hyouji = 'Risky'"]
[case]
[eval exp="f.Sys_Seiri_Hyouji = 'Error'"]
[endswitch]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;変数に文字列格納
[iscript]
f.兄名前 = f.Oni_Name1 + f.Oni_Name2 + f.Oni_Name3;
f.週目表示 = f.Sys_Syume;
f.曜日表示 = '(' + f.Sys_Youbi_Hyouji + ')';
f.時間表示 = f.Sys_Jikan_Hyouji;
f.精力表示 = f.Sys_Seiryoku + '/' + f.Sys_Seiryoku_Max;
f.疑惑表示 = f.Sys_Giwaku;
if(f.Sys_Okane > 10000000){ f.Sys_Okane = 9999999}
f.お金表示 = f.Sys_Okane.toLocaleString();
f.ファン表示 = f.Fan.toLocaleString();
f.Imo_Sougou = f.Imo_Youshi + f.Imo_Uta + f.Imo_Dance + f.Imo_Engi + f.Imo_Wajutu;
f.容姿表示 = f.Imo_Youshi;
f.歌声表示 = f.Imo_Uta;
f.踊り表示 = f.Imo_Dance;
f.演技表示 = f.Imo_Engi;
f.話術表示 = f.Imo_Wajutu;
f.好き表示 = f.Sta_Suki;
f.理性表示 = f.Sta_Risei;
f.知識表示 = f.Sta_Chisiki;
f.性欲表示 = f.Sta_Seiyoku;
f.生理表示 = '♀ '+f.Sys_Seiri_Hyouji;
[endscript]


[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;白字表示
[ptext layer="2" x="50" y="15" size="30" text="&f.週目表示" width=50 align=right name="Status_Window"]
[ptext layer="2" x="5" y="20" size="25" text="Week" name="Status_Window"]

[ptext layer="2" x="110" y="15" size="30" text="&f.曜日表示" name="Status_Window"]
[ptext layer="2" x="260" y="15" size="30" text="&f.時間表示" name="Status_Window"]
[ptext layer="2" x="380" y="20" size="25" text="&f.兄名前" name="Status_Window"]

[ptext layer="2" x="740" y="20" size="25" text="Energy" name="Status_Window"]
[ptext layer="2" x="810" y="15" size="30" text="&f.精力表示" width=50 align=right name="Status_Window"]

[ptext layer="2" x="880" y="20" size="25" text="Suspicion" name="Status_Window"]
[ptext layer="2" x="970" y="15" size="30" text="&f.疑惑表示" width=50 align=right name="Status_Window"]

[ptext layer="2" x="1030" y="20" size="25" text="Money" name="Status_Window"]
[ptext layer="2" x="990" y="15" size="30" text="&f.お金表示" width=250 align=right name="Status_Window"]
[ptext layer="2" x="1250" y="20" size="25" text="¥" name="Status_Window"]

[ptext layer="2" x="43" y="90" size="12" text="Fans" name="Status_Window"]
[ptext layer="2" x="20" y="110" size="23" text="&f.ファン表示" width=120 align=right name="Status_Window"]

[ptext layer="2" x="40" y="484" size="20" text="&f.生理表示" name="Status_Window"]

[_tb_end_tyrano_code]

[resetfont  ]
[font  size="14"  color="0x000000"  bold="true"  face="JKG-M_3"  ]
[tb_start_tyrano_code]
;黒字表示

[ptext layer="2" x="35" y="152" size="20" text="Looks"]
[ptext layer="2" x="90" y="150" size="23" text="&f.容姿表示" width=50 align=right name="Status_Window"]

[ptext layer="2" x="35" y="187" size="20" text="Vocals"]
[ptext layer="2" x="90" y="185" size="23" text="&f.歌声表示" width=50 align=right name="Status_Window"]

[ptext layer="2" x="35" y="222" size="20" text="Dance"]
[ptext layer="2" x="90" y="220" size="23" text="&f.踊り表示" width=50 align=right name="Status_Window"]

[ptext layer="2" x="35" y="257" size="20" text="Acting"]
[ptext layer="2" x="90" y="255" size="23" text="&f.演技表示" width=50 align=right name="Status_Window"]

[ptext layer="2" x="35" y="292" size="20" text="Charm"]
[ptext layer="2" x="90" y="290" size="23" text="&f.話術表示" width=50 align=right name="Status_Window"]

[ptext layer="2" x="35" y="372" size="20" text="Reason"]
[ptext layer="2" x="90" y="370" size="23" text="&f.理性表示" width=50 align=right name="Status_Window"]

[ptext layer="2" x="35" y="407" size="20" text="Affection"]
[ptext layer="2" x="90" y="405" size="23" text="&f.好き表示" width=50 align=right name="Status_Window"]

;[ptext layer="2" x="35" y="442" size="20" text="知識"]
;[ptext layer="2" x="90" y="440" size="23" text="&f.知識表示" width=50 align=right name="Status_Window"]

[ptext layer="2" x="35" y="442" size="20" text="Lust"]
[ptext layer="2" x="90" y="440" size="23" text="&f.性欲表示" width=50 align=right name="Status_Window"]


[_tb_end_tyrano_code]

[resetfont  ]
[tb_start_tyrano_code]
;ステアイコン、ヒントアイコン表示
[button  layer=2  role="sleepgame"  x="1200"  y="65"  width="60"  height="60"   graphic="ステータスアイコン12.png" enterimg="ステータスアイコン11.png" storage="Status_Window.ks" target="*__ステータスウィンドウ"   name="Status_Window" hint="Open Status" enterse="カーソル移動12.mp3"  clickse="決定ボタンを押す53.mp3"]
[button  layer=2  role="sleepgame"  x="10"  y="530"  width="60"  height="60"   graphic="ヒントアイコン12.png" enterimg="ヒントアイコン11.png" storage="Hint.ks" target="*__ヒント開始"   name="Status_Window" hint="Tutorial Explanation" enterse="カーソル移動12.mp3"  clickse="決定ボタンを押す53.mp3"]
;[button  layer=2  role="sleepgame"  x="10"  y="600"  width="60"  height="60"   graphic="攻略アイコン12.png" enterimg="攻略アイコン11.png" storage="Hint_Game.ks" target="*__攻略本開始"   name="Status_Window" hint="攻略本を読む" enterse="カーソル移動12.mp3"  clickse="決定ボタンを押す53.mp3" cond="f.my_Item[27].my_kazu >= 1"]
[button  layer=2  role="sleepgame"  x="10"  y="600"  width="60"  height="60"   graphic="攻略アイコン12.png" enterimg="攻略アイコン11.png" storage="Hint_Game.ks" target="*__攻略本開始"   name="Status_Window" hint="Read Strategy Guide" enterse="カーソル移動12.mp3"  clickse="決定ボタンを押す53.mp3"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;回想用
[call storage="Main_Sta.ks" target="*__回想用"  cond="tf._tb_is_replay == true"]
[image layer=2  time="0"  storage="default/Main_Window_Pro.png"  width="1280"  height="720" name="Status_Window" cond="tf._tb_is_replay == true"]
[_tb_end_tyrano_code]

[return  ]
*__Hメインステ表示

[font  size="14"  color="0xffffff"  bold="true"  face="JKG-M_3"  ]
[tb_start_tyrano_code]
;曜日変数処理
[switch exp="f.Sys_Youbi"]
[case is=0]
[eval exp="f.Sys_Youbi_Hyouji = 'Monday'"]
[case is=1]
[eval exp="f.Sys_Youbi_Hyouji = 'Tuesday'"]
[case is=2]
[eval exp="f.Sys_Youbi_Hyouji = 'Wednesday'"]
[case is=3]
[eval exp="f.Sys_Youbi_Hyouji = 'Thursday'"]
[case is=4]
[eval exp="f.Sys_Youbi_Hyouji = 'Friday'"]
[case is=5]
[eval exp="f.Sys_Youbi_Hyouji = 'Saturday'"]
[case is=6]
[eval exp="f.Sys_Youbi_Hyouji = 'Sunday'"]
[case]
[eval exp="f.Sys_Youbi_Hyouji = 'Error'"]
[endswitch]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;時間変数処理
[switch exp="f.Sys_Jikan"]
[case is=0]
[eval exp="f.Sys_Jikan_Hyouji = 'Morning'"]
[case is=1]
[eval exp="f.Sys_Jikan_Hyouji = 'Afternoon'"]
[case is=2]
[eval exp="f.Sys_Jikan_Hyouji = 'Night'"]
[case is=3]
[eval exp="f.Sys_Jikan_Hyouji = 'Midnight'"]
[case]
[eval exp="f.Sys_Jikan_Hyouji = 'Error'"]
[endswitch]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[free  name="Status_Window"  layer="2"  ]
[layopt layer="2" visible="true" x=0 y=0]

[iscript]
f.兄名前 = f.Oni_Name1 + f.Oni_Name2 + f.Oni_Name3;
f.週目表示 = f.Sys_Syume;
f.曜日表示 = '(' + f.Sys_Youbi_Hyouji + ')';
f.時間表示 = f.Sys_Jikan_Hyouji;
f.精力表示 = f.Sys_Seiryoku + '/' + f.Sys_Seiryoku_Max;
f.疑惑表示 = f.Sys_Giwaku;
f.お金表示 = f.Sys_Okane.toLocaleString();
[endscript]

[ptext layer="2" x="50" y="15" size="30" text="&f.週目表示" width=50 align=right name="Status_Window"]
[ptext layer="2" x="5" y="20" size="25" text="Week" name="Status_Window"]

[ptext layer="2" x="110" y="15" size="30" text="&f.曜日表示" name="Status_Window"]
[ptext layer="2" x="260" y="15" size="30" text="&f.時間表示" name="Status_Window"]
[ptext layer="2" x="380" y="20" size="25" text="&f.兄名前" name="Status_Window"]

[ptext layer="2" x="740" y="20" size="25" text="Energy" name="Status_Window"]
[ptext layer="2" x="810" y="15" size="30" text="&f.精力表示" width=50 align=right name="Status_Window"]

[ptext layer="2" x="880" y="20" size="25" text="Suspicion" name="Status_Window"]
[ptext layer="2" x="970" y="15" size="30" text="&f.疑惑表示" width=50 align=right name="Status_Window"]

[ptext layer="2" x="1030" y="20" size="25" text="Money" name="Status_Window"]
[ptext layer="2" x="990" y="15" size="30" text="&f.お金表示" width=250 align=right name="Status_Window"]
[ptext layer="2" x="1250" y="20" size="25" text="¥" name="Status_Window"]

[_tb_end_tyrano_code]

[resetfont  ]
[tb_start_tyrano_code]
;回想用
[call storage="Main_Sta.ks" target="*__回想用"  cond="tf._tb_is_replay == true"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;ウィンドウ枠表示
[image layer=2  time="0"  storage="default/Main_Window_Pro.png"  width="1280"  height="720" name="Status_Window" ]
[_tb_end_tyrano_code]

[return  ]
*__roleのみ表示

[tb_start_tyrano_code]
;初期化、コンフィグ表示
[clearfix]
[freeimage  layer="2"  ]
[layopt layer="2" visible="true" x=0 y=0]

[button name="role_button" role="save" graphic="button/save.png" enterimg="button/save2.png" x=1180 y=560]
[button name="role_button" role="load" graphic="button/load.png" enterimg="button/load2.png" x=1180 y=590]
[button name="role_button" role="sleepgame" graphic="button/config.png" enterimg="button/config2.png" x=1180 y=620 storage="config.ks"]
[button name="role_button" role="auto" graphic="button/auto.png" enterimg="button/auto2.png" x=1180 y=650]
[button name="role_button" role="title" graphic="button/title.png" enterimg="button/title2.png" x=1180 y=680]
[_tb_end_tyrano_code]

[return  ]
*__Liveステ表示

[tb_start_tyrano_code]
;初期化、コンフィグは表示しない
[clearfix]
[freeimage  layer="2"  ]
[layopt layer="2" visible="true" x=0 y=0]

[_tb_end_tyrano_code]

[font  size="14"  color="0xffffff"  bold="true"  face="JKG-M_3"  ]
[tb_start_tyrano_code]
;ウィンドウ枠表示
[image layer=2  time="0"  storage="default/Main_Window.png"  width="1280"  height="720" name="Status_Window" ]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;曜日変数処理
[switch exp="f.Sys_Youbi"]
[case is=0]
[eval exp="f.Sys_Youbi_Hyouji = 'Monday'"]
[case is=1]
[eval exp="f.Sys_Youbi_Hyouji = 'Tuesday'"]
[case is=2]
[eval exp="f.Sys_Youbi_Hyouji = 'Wednesday'"]
[case is=3]
[eval exp="f.Sys_Youbi_Hyouji = 'Thursday'"]
[case is=4]
[eval exp="f.Sys_Youbi_Hyouji = 'Friday'"]
[case is=5]
[eval exp="f.Sys_Youbi_Hyouji = 'Saturday'"]
[case is=6]
[eval exp="f.Sys_Youbi_Hyouji = 'Sunday'"]
[case]
[eval exp="f.Sys_Youbi_Hyouji = 'Error'"]
[endswitch]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;時間変数処理
[switch exp="f.Sys_Jikan"]
[case is=0]
[eval exp="f.Sys_Jikan_Hyouji = 'Morning'"]
[case is=1]
[eval exp="f.Sys_Jikan_Hyouji = 'Afternoon'"]
[case is=2]
[eval exp="f.Sys_Jikan_Hyouji = 'Night'"]
[case is=3]
[eval exp="f.Sys_Jikan_Hyouji = 'Midnight'"]
[case]
[eval exp="f.Sys_Jikan_Hyouji = 'Error'"]
[endswitch]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;生理　変数処理
[iscript]
f.Sys_Seiri = f.Sys_Syume % 4;
[endscript]

[switch exp="f.Sys_Seiri"]
[case is=0]
[eval exp="f.Sys_Seiri_Hyouji = 'Safe day'"]
[case is=1]
[eval exp="f.Sys_Seiri_Hyouji = 'Low risk'"]
[case is=2]
[eval exp="f.Sys_Seiri_Hyouji = 'Mid risk'"]
[case is=3]
[eval exp="f.Sys_Seiri_Hyouji = 'Risky'"]
[case]
[eval exp="f.Sys_Seiri_Hyouji = 'Error'"]
[endswitch]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;変数に文字列格納
[iscript]
f.兄名前 = f.Oni_Name1 + f.Oni_Name2 + f.Oni_Name3;
f.週目表示 = f.Sys_Syume;
f.曜日表示 = '(' + f.Sys_Youbi_Hyouji + ')';
f.時間表示 = f.Sys_Jikan_Hyouji;
f.精力表示 = f.Sys_Seiryoku + '/' + f.Sys_Seiryoku_Max;
f.疑惑表示 = f.Sys_Giwaku;
if(f.Sys_Okane > 10000000){ f.Sys_Okane = 9999999}
f.お金表示 = f.Sys_Okane.toLocaleString();
f.ファン表示 = f.Fan.toLocaleString();
f.Imo_Sougou = f.Imo_Youshi + f.Imo_Uta + f.Imo_Dance + f.Imo_Engi + f.Imo_Wajutu;
f.容姿表示 = f.Imo_Youshi;
f.歌声表示 = f.Imo_Uta;
f.踊り表示 = f.Imo_Dance;
f.演技表示 = f.Imo_Engi;
f.話術表示 = f.Imo_Wajutu;
f.好き表示 = f.Sta_Suki;
f.理性表示 = f.Sta_Risei;
f.知識表示 = f.Sta_Chisiki;
f.性欲表示 = f.Sta_Seiyoku;
f.生理表示 = '♀ '+f.Sys_Seiri_Hyouji;
[endscript]


[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;白字表示
[ptext layer="2" x="50" y="15" size="30" text="&f.週目表示" width=50 align=right name="Status_Window"]
[ptext layer="2" x="5" y="20" size="25" text="Week" name="Status_Window"]

[ptext layer="2" x="110" y="15" size="30" text="&f.曜日表示" name="Status_Window"]
[ptext layer="2" x="260" y="15" size="30" text="&f.時間表示" name="Status_Window"]
[ptext layer="2" x="380" y="20" size="25" text="&f.兄名前" name="Status_Window"]

[ptext layer="2" x="740" y="20" size="25" text="Energy" name="Status_Window"]
[ptext layer="2" x="810" y="15" size="30" text="&f.精力表示" width=50 align=right name="Status_Window"]

[ptext layer="2" x="880" y="20" size="25" text="Suspicion" name="Status_Window"]
[ptext layer="2" x="970" y="15" size="30" text="&f.疑惑表示" width=50 align=right name="Status_Window"]

[ptext layer="2" x="1030" y="20" size="25" text="Money" name="Status_Window"]
[ptext layer="2" x="990" y="15" size="30" text="&f.お金表示" width=250 align=right name="Status_Window"]
[ptext layer="2" x="1250" y="20" size="25" text="¥" name="Status_Window"]

[ptext layer="2" x="43" y="90" size="12" text="Fans" name="Status_Window"]
[ptext layer="2" x="20" y="110" size="23" text="&f.ファン表示" width=120 align=right name="Status_Window"]

[ptext layer="2" x="40" y="484" size="20" text="&f.生理表示" name="Status_Window"]

[_tb_end_tyrano_code]

[resetfont  ]
[font  size="14"  color="0x000000"  bold="true"  face="JKG-M_3"  ]
[tb_start_tyrano_code]
;黒字表示

[ptext layer="2" x="35" y="152" size="20" text="Looks"]
[ptext layer="2" x="90" y="150" size="23" text="&f.容姿表示" width=50 align=right name="Status_Window"]

[ptext layer="2" x="35" y="187" size="20" text="Vocals"]
[ptext layer="2" x="90" y="185" size="23" text="&f.歌声表示" width=50 align=right name="Status_Window"]

[ptext layer="2" x="35" y="222" size="20" text="Dance"]
[ptext layer="2" x="90" y="220" size="23" text="&f.踊り表示" width=50 align=right name="Status_Window"]

[ptext layer="2" x="35" y="257" size="20" text="Acting"]
[ptext layer="2" x="90" y="255" size="23" text="&f.演技表示" width=50 align=right name="Status_Window"]

[ptext layer="2" x="35" y="292" size="20" text="Charm"]
[ptext layer="2" x="90" y="290" size="23" text="&f.話術表示" width=50 align=right name="Status_Window"]

[ptext layer="2" x="35" y="372" size="20" text="Reason"]
[ptext layer="2" x="90" y="370" size="23" text="&f.理性表示" width=50 align=right name="Status_Window"]

[ptext layer="2" x="35" y="407" size="20" text="Affection"]
[ptext layer="2" x="90" y="405" size="23" text="&f.好き表示" width=50 align=right name="Status_Window"]

;[ptext layer="2" x="35" y="442" size="20" text="知識"]
;[ptext layer="2" x="90" y="440" size="23" text="&f.知識表示" width=50 align=right name="Status_Window"]

[ptext layer="2" x="35" y="442" size="20" text="Lust"]
[ptext layer="2" x="90" y="440" size="23" text="&f.性欲表示" width=50 align=right name="Status_Window"]


[_tb_end_tyrano_code]

[resetfont  ]
[tb_start_tyrano_code]
;ステアイコン、ヒントアイコン表示
[button  layer=2  role="sleepgame"  x="1200"  y="65"  width="60"  height="60"   graphic="ステータスアイコン12.png" enterimg="ステータスアイコン11.png" storage="Status_Window.ks" target="*__ステータスウィンドウ"   name="Status_Window" hint="Open Status" enterse="カーソル移動12.mp3"  clickse="決定ボタンを押す53.mp3"]
[button  layer=2  role="sleepgame"  x="10"  y="530"  width="60"  height="60"   graphic="ヒントアイコン12.png" enterimg="ヒントアイコン11.png" storage="Hint.ks" target="*__ヒント開始"   name="Status_Window" hint="Tutorial Explanation" enterse="カーソル移動12.mp3"  clickse="決定ボタンを押す53.mp3"]
;[button  layer=2  role="sleepgame"  x="10"  y="600"  width="60"  height="60"   graphic="攻略アイコン12.png" enterimg="攻略アイコン11.png" storage="Hint_Game.ks" target="*__攻略本開始"   name="Status_Window" hint="攻略本を読む" enterse="カーソル移動12.mp3"  clickse="決定ボタンを押す53.mp3" cond="f.my_Item[27].my_kazu >= 1"]
[button  layer=2  role="sleepgame"  x="10"  y="600"  width="60"  height="60"   graphic="攻略アイコン12.png" enterimg="攻略アイコン11.png" storage="Hint_Game.ks" target="*__攻略本開始"   name="Status_Window" hint="Read Strategy Guide" enterse="カーソル移動12.mp3"  clickse="決定ボタンを押す53.mp3"]
[_tb_end_tyrano_code]

[return  ]
*__メインステセーブ無

[tb_start_tyrano_code]
;初期化、コンフィグ表示
[clearfix]
[freeimage  layer="2"  ]
[layopt layer="2" visible="true" x=0 y=0]

[_tb_end_tyrano_code]

[font  size="14"  color="0xffffff"  bold="true"  face="JKG-M_3"  ]
[tb_start_tyrano_code]
;ウィンドウ枠表示
[image layer=2  time="0"  storage="default/Main_Window.png"  width="1280"  height="720" name="Status_Window" ]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;曜日変数処理
[switch exp="f.Sys_Youbi"]
[case is=0]
[eval exp="f.Sys_Youbi_Hyouji = 'Monday'"]
[case is=1]
[eval exp="f.Sys_Youbi_Hyouji = 'Tuesday'"]
[case is=2]
[eval exp="f.Sys_Youbi_Hyouji = 'Wednesday'"]
[case is=3]
[eval exp="f.Sys_Youbi_Hyouji = 'Thursday'"]
[case is=4]
[eval exp="f.Sys_Youbi_Hyouji = 'Friday'"]
[case is=5]
[eval exp="f.Sys_Youbi_Hyouji = 'Saturday'"]
[case is=6]
[eval exp="f.Sys_Youbi_Hyouji = 'Sunday'"]
[case]
[eval exp="f.Sys_Youbi_Hyouji = 'Error'"]
[endswitch]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;時間変数処理
[switch exp="f.Sys_Jikan"]
[case is=0]
[eval exp="f.Sys_Jikan_Hyouji = 'Morning'"]
[case is=1]
[eval exp="f.Sys_Jikan_Hyouji = 'Afternoon'"]
[case is=2]
[eval exp="f.Sys_Jikan_Hyouji = 'Night'"]
[case is=3]
[eval exp="f.Sys_Jikan_Hyouji = 'Midnight'"]
[case]
[eval exp="f.Sys_Jikan_Hyouji = 'Error'"]
[endswitch]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;生理　変数処理
[iscript]
f.Sys_Seiri = f.Sys_Syume % 4;
[endscript]

[switch exp="f.Sys_Seiri"]
[case is=0]
[eval exp="f.Sys_Seiri_Hyouji = 'Safe day'"]
[case is=1]
[eval exp="f.Sys_Seiri_Hyouji = 'Low risk'"]
[case is=2]
[eval exp="f.Sys_Seiri_Hyouji = 'Mid risk'"]
[case is=3]
[eval exp="f.Sys_Seiri_Hyouji = 'Risky'"]
[case]
[eval exp="f.Sys_Seiri_Hyouji = 'Error'"]
[endswitch]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;変数に文字列格納
[iscript]
f.兄名前 = f.Oni_Name1 + f.Oni_Name2 + f.Oni_Name3;
f.週目表示 = f.Sys_Syume;
f.曜日表示 = '(' + f.Sys_Youbi_Hyouji + ')';
f.時間表示 = f.Sys_Jikan_Hyouji;
f.精力表示 = f.Sys_Seiryoku + '/' + f.Sys_Seiryoku_Max;
f.疑惑表示 = f.Sys_Giwaku;
if(f.Sys_Okane > 10000000){ f.Sys_Okane = 9999999}
f.お金表示 = f.Sys_Okane.toLocaleString();
f.ファン表示 = f.Fan.toLocaleString();
f.Imo_Sougou = f.Imo_Youshi + f.Imo_Uta + f.Imo_Dance + f.Imo_Engi + f.Imo_Wajutu;
f.容姿表示 = f.Imo_Youshi;
f.歌声表示 = f.Imo_Uta;
f.踊り表示 = f.Imo_Dance;
f.演技表示 = f.Imo_Engi;
f.話術表示 = f.Imo_Wajutu;
f.好き表示 = f.Sta_Suki;
f.理性表示 = f.Sta_Risei;
f.知識表示 = f.Sta_Chisiki;
f.性欲表示 = f.Sta_Seiyoku;
f.生理表示 = '♀ '+f.Sys_Seiri_Hyouji;
[endscript]


[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;白字表示
[ptext layer="2" x="50" y="15" size="30" text="&f.週目表示" width=50 align=right name="Status_Window"]
[ptext layer="2" x="5" y="20" size="25" text="Week" name="Status_Window"]

[ptext layer="2" x="110" y="15" size="30" text="&f.曜日表示" name="Status_Window"]
[ptext layer="2" x="260" y="15" size="30" text="&f.時間表示" name="Status_Window"]
[ptext layer="2" x="380" y="20" size="25" text="&f.兄名前" name="Status_Window"]

[ptext layer="2" x="740" y="20" size="25" text="Energy" name="Status_Window"]
[ptext layer="2" x="810" y="15" size="30" text="&f.精力表示" width=50 align=right name="Status_Window"]

[ptext layer="2" x="880" y="20" size="25" text="Suspicion" name="Status_Window"]
[ptext layer="2" x="970" y="15" size="30" text="&f.疑惑表示" width=50 align=right name="Status_Window"]

[ptext layer="2" x="1030" y="20" size="25" text="Money" name="Status_Window"]
[ptext layer="2" x="990" y="15" size="30" text="&f.お金表示" width=250 align=right name="Status_Window"]
[ptext layer="2" x="1250" y="20" size="25" text="¥" name="Status_Window"]

[ptext layer="2" x="43" y="90" size="12" text="Fans" name="Status_Window"]
[ptext layer="2" x="20" y="110" size="23" text="&f.ファン表示" width=120 align=right name="Status_Window"]

[ptext layer="2" x="40" y="484" size="20" text="&f.生理表示" name="Status_Window"]

[_tb_end_tyrano_code]

[resetfont  ]
[font  size="14"  color="0x000000"  bold="true"  face="JKG-M_3"  ]
[tb_start_tyrano_code]
;黒字表示

[ptext layer="2" x="35" y="152" size="20" text="Looks"]
[ptext layer="2" x="90" y="150" size="23" text="&f.容姿表示" width=50 align=right name="Status_Window"]

[ptext layer="2" x="35" y="187" size="20" text="Vocals"]
[ptext layer="2" x="90" y="185" size="23" text="&f.歌声表示" width=50 align=right name="Status_Window"]

[ptext layer="2" x="35" y="222" size="20" text="Dance"]
[ptext layer="2" x="90" y="220" size="23" text="&f.踊り表示" width=50 align=right name="Status_Window"]

[ptext layer="2" x="35" y="257" size="20" text="Acting"]
[ptext layer="2" x="90" y="255" size="23" text="&f.演技表示" width=50 align=right name="Status_Window"]

[ptext layer="2" x="35" y="292" size="20" text="Charm"]
[ptext layer="2" x="90" y="290" size="23" text="&f.話術表示" width=50 align=right name="Status_Window"]

[ptext layer="2" x="35" y="372" size="20" text="Reason"]
[ptext layer="2" x="90" y="370" size="23" text="&f.理性表示" width=50 align=right name="Status_Window"]

[ptext layer="2" x="35" y="407" size="20" text="Affection"]
[ptext layer="2" x="90" y="405" size="23" text="&f.好き表示" width=50 align=right name="Status_Window"]

;[ptext layer="2" x="35" y="442" size="20" text="知識"]
;[ptext layer="2" x="90" y="440" size="23" text="&f.知識表示" width=50 align=right name="Status_Window"]

[ptext layer="2" x="35" y="442" size="20" text="Lust"]
[ptext layer="2" x="90" y="440" size="23" text="&f.性欲表示" width=50 align=right name="Status_Window"]


[_tb_end_tyrano_code]

[resetfont  ]
[tb_start_tyrano_code]
;ステアイコン、ヒントアイコン表示
[button  layer=2  role="sleepgame"  x="1200"  y="65"  width="60"  height="60"   graphic="ステータスアイコン12.png" enterimg="ステータスアイコン11.png" storage="Status_Window.ks" target="*__ステータスウィンドウ"   name="Status_Window" hint="Open Status" enterse="カーソル移動12.mp3"  clickse="決定ボタンを押す53.mp3"]
[button  layer=2  role="sleepgame"  x="10"  y="530"  width="60"  height="60"   graphic="ヒントアイコン12.png" enterimg="ヒントアイコン11.png" storage="Hint.ks" target="*__ヒント開始"   name="Status_Window" hint="Tutorial Explanation" enterse="カーソル移動12.mp3"  clickse="決定ボタンを押す53.mp3"]
;[button  layer=2  role="sleepgame"  x="10"  y="600"  width="60"  height="60"   graphic="攻略アイコン12.png" enterimg="攻略アイコン11.png" storage="Hint_Game.ks" target="*__攻略本開始"   name="Status_Window" hint="攻略本を読む" enterse="カーソル移動12.mp3"  clickse="決定ボタンを押す53.mp3" cond="f.my_Item[27].my_kazu >= 1"]
[button  layer=2  role="sleepgame"  x="10"  y="600"  width="60"  height="60"   graphic="攻略アイコン12.png" enterimg="攻略アイコン11.png" storage="Hint_Game.ks" target="*__攻略本開始"   name="Status_Window" hint="Read Strategy Guide" enterse="カーソル移動12.mp3"  clickse="決定ボタンを押す53.mp3"]
[_tb_end_tyrano_code]

[return  ]
*__回想用

[tb_start_tyrano_code]
;初期化、コンフィグ表示
[clearfix]
[freeimage  layer="2"  ]
[layopt layer="2" visible="true" x=0 y=0]

[button name="role_button" role="auto" graphic="button/auto.png" enterimg="button/auto2.png" x=1180 y=650]
[button name="role_button" role="title" graphic="button/title.png" enterimg="button/title2.png" x=1180 y=680]
[_tb_end_tyrano_code]

[return  ]
