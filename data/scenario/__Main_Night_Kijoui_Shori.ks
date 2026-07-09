[_tb_system_call storage=system/___Main_Night_Kijoui_Shori.ks]

[camera  time="1000"  zoom="1"  wait="true"  ]
*__Backアイコン表示

[tb_start_tyrano_code]
;Backアイコン
[button name="role_button" role="auto" graphic="c_btn_auto.png" enterimg="c_btn_auto2.png" width="50"  height="50"  x="1214"  y="550"  name="H_Back_Icon" fix="true" hint="Auto"]
[button  storage="__Main_Night_Kijoui_H.ks"  target="*__途中でやめる"  graphic="やめるアイコン.png"  width="110"  height="110"  x="1165"  y="602"  name="H_Back_Icon" fix="true" cond="!tf._tb_is_replay"]

[_tb_end_tyrano_code]

[return  ]
*__射精感初期表示

[tb_start_tyrano_code]
;射精感
[free name="Syasei_Uemoji" layer=2]
[free name="Syaseikan" layer=2]

[ptext layer=2 text="Ejaculation Gauge" x=1060 y=630 size=15 bold="bold" edge="0x000000" name="Syasei_Uemoji"]
[eval exp="f.射精度 = f.H_Syaseikan + '％' "]
[ptext layer=2 text="&f.射精度" x=1060 y=650 size=40 bold="bold" edge="0x000000" width = 100 align = "right" name="Syaseikan"]
[_tb_end_tyrano_code]

[return  ]
*__射精感UP30まで

[call  storage="__Main_Night_Kijoui_Shori.ks"  target="*__射精感処理"  ]
[jump  storage="__Main_Night_Kijoui_Shori.ks"  target="*__射精感UP30まで"  cond="f.H_Syaseikan<30"  ]
[return  ]
*__射精感UP70まで

[call  storage="__Main_Night_Kijoui_Shori.ks"  target="*__射精感処理"  ]
[jump  storage="__Main_Night_Kijoui_Shori.ks"  target="*__射精感UP70まで"  cond="f.H_Syaseikan<70"  ]
[return  ]
*__射精感UP100まで

[call  storage="__Main_Night_Kijoui_Shori.ks"  target="*__射精感処理"  ]
[jump  storage="__Main_Night_Kijoui_Shori.ks"  target="*__射精感UP100まで"  cond="f.H_Syaseikan<100"  ]
[return  ]
*__射精感110まで

[call  storage="__Main_Night_Kijoui_Shori.ks"  target="*__射精感処理"  ]
[jump  storage="__Main_Night_Kijoui_Shori.ks"  target="*__射精感110まで"  cond="f.H_Syaseikan<110"  ]
[return  ]
*__射精感120まで

[call  storage="__Main_Night_Kijoui_Shori.ks"  target="*__射精感処理"  ]
[jump  storage="__Main_Night_Kijoui_Shori.ks"  target="*__射精感120まで"  cond="f.H_Syaseikan<120"  ]
[return  ]
*__射精感を0に

[tb_start_tyrano_code]
;射精感0処理
[eval exp="f.H_Syaseikan = 0"]
[eval exp="f.Sys_Seiryoku -= 1"]

[eval exp="f.射精度 = f.H_Syaseikan + '％' "]
[ptext layer=2 text="&f.射精度" x=1060 y=650 size=40 bold="bold" edge="0x000000" width = 100 align = "right" overwrite = "true" name="Syaseikan"]
[_tb_end_tyrano_code]

[return  ]
*__動き速さ

[intrandom_ko10panda  max="2"  count="1"  show_result="false"  show_style="style_a"  show_detail="false"  detail_length="10"  show_log="log_4"  var_name="tf.rand"  ]
[tb_start_tyrano_code]
;キャラのピストン速度、キャラ【画像変更】
[if exp="f.H_Sex_Speed ==2"]
[chara_mod  name="H_騎乗位"  time="0"  cross="true"  storage="chara/13/騎乗位アニメ01.png" cond="f.H_Danmen_Flag == 0"]
[chara_mod  name="H_騎乗位"  time="0"  cross="true"  storage="chara/13/騎乗位アニメ11.png" cond="f.H_Danmen_Flag == 1"]
[playse  volume="100"  time="1000"  buf="1"  storage="ピストン系/騎乗位ピストン01.mp3"  loop="true"  ]
[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/06喘ぎ声(挿入)01.mp3"  loop="true" cond="tf.rand ==1"]
[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/03喘ぎ声(前)03.mp3"  loop="true"  cond="tf.rand !=1"]

[elsif exp="f.H_Sex_Speed ==3"]
[chara_mod  name="H_騎乗位"  time="0"  cross="true"  storage="chara/13/騎乗位アニメ02.png" cond="f.H_Danmen_Flag == 0" ]
[chara_mod  name="H_騎乗位"  time="0"  cross="true"  storage="chara/13/騎乗位アニメ12.png" cond="f.H_Danmen_Flag == 1" ]
[playse  volume="100"  time="1000"  buf="1"  storage="ピストン系/騎乗位ピストン02.mp3"  loop="true"  ]
[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/06喘ぎ声(挿入)01.mp3"  loop="true" cond="tf.rand ==1"]
[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/07喘ぎ声(挿入)02.mp3"  loop="true"  cond="tf.rand !=1"]

[elsif exp="f.H_Sex_Speed ==4"]
[chara_mod  name="H_騎乗位"  time="0"  cross="true"  storage="chara/13/騎乗位アニメ03.png" cond="f.H_Danmen_Flag == 0"]
[chara_mod  name="H_騎乗位"  time="0"  cross="true"  storage="chara/13/騎乗位アニメ13.png" cond="f.H_Danmen_Flag == 1"]
[playse  volume="100"  time="1000"  buf="1"  storage="ピストン系/騎乗位ピストン03.mp3"  loop="true"  ]
[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/09喘ぎ声(挿入)04.mp3"  loop="true" cond="tf.rand ==1"]
[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/10喘ぎ声(挿入)05.mp3"  loop="true"  cond="tf.rand !=1"]

[else]
[chara_mod  name="H_騎乗位"  time="0"  cross="true"  storage="chara/13/騎乗位01.png" cond="f.H_Danmen_Flag == 0"]
[chara_mod  name="H_騎乗位"  time="0"  cross="true"  storage="chara/13/騎乗位11.png" cond="f.H_Danmen_Flag == 1"]

[endif]
[_tb_end_tyrano_code]

[return  ]
*__兄エロ技下方補正

[tb_start_tyrano_code]
;兄エロ技補正
[switch exp="f.Oni_Ero"]
[case is=0]
[eval exp="f.Ero_Local = f.Oni_Ero"]
[case is=1]
[eval exp="f.Ero_Local = f.Oni_Ero"]
[case is=2]
[eval exp="f.Ero_Local = f.Oni_Ero"]
[case is=3]
[eval exp="f.Ero_Local = f.Oni_Ero"]
[case is=4]
[eval exp="f.Ero_Local = 3.8"]
[case is=5]
[eval exp="f.Ero_Local = 4.5"]
[case is=6]
[eval exp="f.Ero_Local = 5"]
[case is=7]
[eval exp="f.Ero_Local = 5.4"]
[case is=8]
[eval exp="f.Ero_Local = 5.8"]
[case is=9]
[eval exp="f.Ero_Local = 6.2"]
[case is=10]
[eval exp="f.Ero_Local = 7"]

[endswitch]
[_tb_end_tyrano_code]

[return  ]
*__射精感処理

[tb_start_tyrano_code]
;射精感
[wait time="500" cond="f.H_Sex_Speed == 2"]
[wait time="300" cond="f.H_Sex_Speed == 3"]
[wait time="100" cond="f.H_Sex_Speed == 4"]

[eval exp="f.H_Syaseikan += 1"]
[eval exp="f.射精度 = f.H_Syaseikan + '％' "]

[ptext layer=2 text="&f.射精度" x=1060 y=650 size=40 bold="bold" edge="0x000000" width = 100 align = "right" overwrite = "true" name="Syaseikan"]

[_tb_end_tyrano_code]

[return  ]
