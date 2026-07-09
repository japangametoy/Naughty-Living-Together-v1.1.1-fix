[_tb_system_call storage=system/_title_screen.ks]

[hidemenubutton]

[tb_clear_images]

[tb_keyconfig  flag="0"  ]
[tb_hide_message_window  ]
[tb_start_tyrano_code]
;回想全開放システム変数初期化
[eval exp="sf.Clear_Flag_Kaisou=0" cond="sf.Clear_Flag_Kaisou==null"]
[eval exp="sf.Clear_Flag_PureEnd=0" cond="sf.Clear_Flag_PureEnd==null"]
[eval exp="sf.Taikenban=0"]

[_tb_end_tyrano_code]

[playbgm  volume="20"  time="1000"  loop="true"  storage="PerituneMaterial_Sea_Breeze_loop.mp3"  fadein="true"  ]
[tb_start_tyrano_code]
;pureクリアで分岐
[bg  storage="タイトル01.png" cond="sf.Title_Pure_Flag != 1 ]
[bg  storage="タイトル02.png" cond="sf.Title_Pure_Flag == 1 ]

[_tb_end_tyrano_code]

*title

[tb_start_tyrano_code]
;クリッカブル
[clickable  storage="Clear_present.ks"  x="1010"  y="210"  width="25"  height="25"  target="*__クリア後入力"  _clickable_img="" cond="sf.Taikenban == 0" ]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;分岐ボタン

[button  storage="title_screen.ks"  target="*start"  graphic="はじめから01.png" enterimg="はじめから02.png" width="290" height="50" x="100"  y="360"  enterse="マウスオーバー.mp3" clickse="決定ボタンを押す41.mp3" ]
[button  storage="title_screen.ks"  target="*load"  graphic="つづきから01.png" enterimg="つづきから02.png"  width="290"  height="50"  x="100"  y="420"   enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3" ]
[button  storage="title_screen.ks"  target="*autoload"  graphic="オートロード01.png"  enterimg="オートロード02.png" width="290"  height="50"  x="100"  y="480"  enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3" ]
[button  storage="title_screen.ks"  target="*album"  graphic="アルバム01.png"  enterimg="アルバム02.png" width="290"  height="50"  x="100"  y="540"   enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3" ]

[button  storage="title_screen.ks"  target="*config"  graphic="コンフィグ01.png"  enterimg="コンフィグ02.png" width="290"  height="50"  x="100"  y="600"   enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3" ]
[button  storage="title_screen.ks"  target="*close"  graphic="ゲーム終了01.png"  enterimg="ゲーム終了02.png" width="290"  height="50"  x="100"  y="660"   enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3" ]
[_tb_end_tyrano_code]

[s  ]
*start

[cm  ]
[tb_keyconfig  flag="1"  ]
[jump  storage="scene1.ks"  target=""  ]
[s  ]
*load

[cm  ]
[showload]

[jump  target="*title"  storage=""  ]
[s  ]
*album

[tb_keyconfig  flag="1"  ]
[cm  ]
[tb_start_tyrano_code]
[jump storage="Album.ks"]
[_tb_end_tyrano_code]

*config

[cm  ]
[tb_start_tyrano_code]
[sleepgame storage="config.ks"]
[_tb_end_tyrano_code]

[jump  storage="title_screen.ks"  target="*title"  ]
[s  ]
*autoload

[cm  ]
[tb_start_tyrano_code]
[if exp="sf.system.autosave == true"]
[_tb_end_tyrano_code]

[tb_autoload  ]
[tb_start_tyrano_code]
[endif]
[_tb_end_tyrano_code]

[jump  storage="title_screen.ks"  target="*title"  ]
*close

[cm  ]
[tb_start_tyrano_code]
[close ask="true"]
[_tb_end_tyrano_code]

[jump  storage="title_screen.ks"  target="*title"  ]
