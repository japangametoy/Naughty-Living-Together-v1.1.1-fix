[_tb_system_call storage=system/___Main_Haisin_H.ks]

[call  storage="_Array_.ks"  target="*__配列宣言"  ]
[call  storage="_Array_Kaihatu.ks"  target="*__開発配列初期化"  ]
[tb_start_tyrano_code]
[eval exp="f.talks[45].read = true"]
[eval exp="f.talks[45].flag = true"]
[eval exp="f.talks[47].read = true"]
[eval exp="f.talks[47].flag = true"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[freeimage  layer="1"  ]
[layopt layer="1" visible="true" x=0 y=0]

[_tb_end_tyrano_code]

[tb_eval  exp="f.Sys_Syume=20"  name="Sys_Syume"  cmd="="  op="t"  val="20"  val_2="undefined"  ]
[tb_eval  exp="f.Imo_Uta=150"  name="Imo_Uta"  cmd="="  op="t"  val="150"  val_2="undefined"  ]
[tb_eval  exp="f.Imo_Dance=50"  name="Imo_Dance"  cmd="="  op="t"  val="50"  val_2="undefined"  ]
[tb_eval  exp="f.Imo_Engi=67"  name="Imo_Engi"  cmd="="  op="t"  val="67"  val_2="undefined"  ]
[tb_eval  exp="f.Imo_Wajutu=100"  name="Imo_Wajutu"  cmd="="  op="t"  val="100"  val_2="undefined"  ]
[tb_eval  exp="f.Haisin_Hfirst_Flag=111"  name="Haisin_Hfirst_Flag"  cmd="="  op="t"  val="111"  val_2="undefined"  ]
[tb_eval  exp="f.Sys_Seiryoku=3"  name="Sys_Seiryoku"  cmd="="  op="t"  val="3"  val_2="undefined"  ]
[tb_eval  exp="f.Tre_Up=1"  name="Tre_Up"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
*__配信開始

[mask  time="300"  effect="fadeIn"  color="0x000000"  ]
[jump  storage="Tutorial.ks"  target="*__配信チュートリアル"  cond="f.Haisin_Hfirst_Flag==0"  ]
*__チュートリアル戻り先

[tb_start_tyrano_code]
;メインステ初期化
[clearfix]
[freeimage  layer="2"  ]
[layopt layer="2" visible="true" x=0 y=0]
[_tb_end_tyrano_code]

[tb_eval  exp="f.Haisin_H_Flag=0"  name="Haisin_H_Flag"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_start_tyrano_code]
;BGM再生
[playbgm  volume="30"  time="1000"  loop="true"  storage="PerituneMaterial_Cafe_Seaside.mp3" restart = false ]

[_tb_end_tyrano_code]

[tb_eval  exp="f.Live_Combo=0"  name="Live_Combo"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_image_hide  time="0"  ]
[call  storage="Main_Sta.ks"  target="*__Hメインステ表示"  ]
[chara_hide_all  time="0"  wait="false"  ]
[chara_show  name="H_配信_顔"  time="0"  wait="true"  storage="chara/33/配信01.png"  width="370"  height="660"  left="440"  top="60"  reflect="false"  ]
[individual_image  layer="1"  zindex="1"  storage="default/配信Hカット補助/配信コメント01.png"  width="370"  height="660"  name="コメント"  x="440"  y="60"  ]
[individual_image  layer="1"  zindex="1"  storage="default/配信Hカット補助/配信ハート.png"  width="370"  height="660"  name="ハート"  x="440"  y="60"  ]
[chara_mod  name="H_配信_顔"  time="0"  cross="true"  storage="chara/33/配信01.png"  ]
[individual_image  layer="1"  zindex="1"  storage="default/配信Hカット/配信カット01.png"  width="400"  height="300"  x="30"  y="380"  _clickable_img=""  name="配信カット"  ]
[tb_eval  exp="f.Fan_Live=0"  name="Fan_Live"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.Money_Live=0"  name="Money_Live"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.Giwaku_Live=0"  name="Giwaku_Live"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.Live_Time=0"  name="Live_Time"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.H_Haisin_Come_Flag=0"  name="H_Haisin_Come_Flag"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.H_Haisin_SeiyokuDown_Flag=0"  name="H_Haisin_SeiyokuDown_Flag"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[bg  time="0"  method="crossfade"  storage="スキンシップ01.png"  ]
[mask_off  time="300"  effect="fadeOut"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
・・・Concert stream starting!![p]
[_tb_end_text]

[tb_hide_message_window  ]
*__ライブ戻り位置

[call  storage="Main_Sta.ks"  target="*__Hメインステ表示"  ]
[tb_start_tyrano_code]
;ライブコメントを変更
[if exp="f.H_Haisin_Come_Flag == 0 && f.Haisin_H_Flag ==1"]
[free layer=1 name="コメント" time=500 wait = false]
[image  layer="1"  zindex="1"  storage="default/配信Hカット補助/配信コメント11.png"  width="370"  height="660"  name="コメント"  x="440"  y="60" ]
[eval exp="f.H_Haisin_Come_Flag =1"]
[elsif exp=f.H_Haisin_Come_Flag == 1 && f.Haisin_H_Flag ==2"]
[free layer=1 name="コメント" time=500 wait = false]
[image  layer="1"  zindex="1"  storage="default/配信Hカット補助/配信コメント12.png"  width="370"  height="660"  name="コメント"  x="440"  y="60" ]
[eval exp="f.H_Haisin_Come_Flag =2"]
[endif]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;アップ数字文字クリア
[free layer=2 name="Fan_Plus"]
[free layer=2 name="Giwaku_Plus"]
[free layer=2 name="Money_Plus"]

[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;ライブのアップ総量　常時表示文字　クリア
[free layer=1 name="fan_kazu"]
[free layer=1 name="giwaku_kazu"]
[free layer=1 name="money_kazu"]

[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[free layer=1 name="live_window"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;ライブ窓
[image layer=1 time="0"  storage="default/ライブ窓.png"  width="450"  height="320"  x="825"  y="185"  name="live_window"  ]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;ゲージ表示初期表示
[image layer="1" storage="default/ゲージ2.png" x=880 y=280 width="&f.Live_Time" height=10 name="line"]
[_tb_end_tyrano_code]

[font  size="18"  color="0xffffff"  face="JKG-M_3"  bold="true"  ]
[tb_start_tyrano_code]
;ライブ中のファン表示
[iscript]
f.ライブファン表示 = f.Fan_Live.toLocaleString();
[endscript]

[ptext layer="1" x="850" y="220" size="25" text="Fans" bold="bold" edge="0x000000" name="fan_kazu"]
[ptext layer="1" x="950" y="220" size="25" text="&f.ライブファン表示" width=150 align=right bold="bold" edge="0x000000" name="fan_kazu"]
[ptext layer="1" x="1110" y="220" size="25" text="People" bold="bold" edge="0x000000" name="fan_kazu"]

[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;ライブ中の疑惑と金表示
[iscript]
f.ライブファン表示 = f.Fan_Live.toLocaleString();
f.ライブマネー表示 = f.Money_Live.toLocaleString();

[endscript]

[ptext layer="1" x="860" y="70" size="25" text="Suspicion" bold="bold" edge="0x000000" name="giwaku_kazu"]
[ptext layer="1" x="910" y="70" size="25" text="&f.Giwaku_Live" width=50 align=right bold="bold" edge="0x000000" name="giwaku_kazu"]
[ptext layer="1" x="970" y="70" size="25" text="P" bold="bold" edge="0x000000" name="giwaku_kazu"]

[ptext layer="1" x="1000" y="70" size="25" text="Money" bold="bold" edge="0x000000" name="money_kazu"]
[ptext layer="1" x="1060" y="70" size="25" text="&f.ライブマネー表示" width=150 align=right bold="bold" edge="0x000000" name="money_kazu"]
[ptext layer="1" x="1220" y="70" size="25" text="¥" bold="bold" edge="0x000000" name="money_kazu"]

[_tb_end_tyrano_code]

[resetfont  ]
[jump  storage="__Main_Haisin_H.ks"  target="*__時間切れ"  cond="f.Live_Time>359"  ]
[tb_start_tyrano_code]
;ランダム生成
[getrand var="f.Live_Randam_1" min="0" max="100"]
[getrand var="f.Live_Randam_2" min="0" max="100"]
[getrand var="f.Live_Randam_3" min="0" max="100"]

[iscript]
f.Live_array = [f.Live_Randam_1,f.Live_Randam_2,f.Live_Randam_3];
[endscript]

[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;カード出現確率設定
[if exp="f.Haisin_H_Flag ==0"]

[for name=f.i from=0 to=2]
[if exp="f.Live_array[f.i] >= 21 && f.Live_array[f.i]  < 25"]
[eval exp="f.Live_array[f.i]  = 0"]
[elsif exp="f.Live_array[f.i]  >= 25 && f.Live_array[f.i]  < 29"]
[eval exp="f.Live_array[f.i]  = 1"]
[elsif exp="f.Live_array[f.i]  >= 29 && f.Live_array[f.i]  < 33"]
[eval exp="f.Live_array[f.i]  = 2"]
[elsif exp="f.Live_array[f.i]  >= 33 && f.Live_array[f.i]  < 37"]
[eval exp="f.Live_array[f.i]  = 4"]
[elsif exp="f.Live_array[f.i]  >= 37 && f.Live_array[f.i]  < 41"]
[eval exp="f.Live_array[f.i]  = 5"]
[elsif exp="f.Live_array[f.i]  >= 41 && f.Live_array[f.i]  < 45"]
[eval exp="f.Live_array[f.i]  = 6"]
[elsif exp="f.Live_array[f.i]  >= 45 && f.Live_array[f.i]  < 49"]
[eval exp="f.Live_array[f.i]  = 7"]
[elsif exp="f.Live_array[f.i]  >= 49 && f.Live_array[f.i]  < 53"]
[eval exp="f.Live_array[f.i]  = 8"]
[elsif exp="f.Live_array[f.i]  >= 53 && f.Live_array[f.i]  < 57"]
[eval exp="f.Live_array[f.i]  = 9"]
[elsif exp="f.Live_array[f.i]  >= 57 && f.Live_array[f.i]  < 61"]
[eval exp="f.Live_array[f.i]  = 10"]
[elsif exp="f.Live_array[f.i]  >= 61 && f.Live_array[f.i]  < 65"]
[eval exp="f.Live_array[f.i]  = 11"]
[elsif exp="f.Live_array[f.i]  >= 65 && f.Live_array[f.i]  < 69"]
[eval exp="f.Live_array[f.i]  = 12"]
[elsif exp="f.Live_array[f.i]  >= 69 && f.Live_array[f.i]  < 73"]
[eval exp="f.Live_array[f.i]  = 13"]
[elsif exp="f.Live_array[f.i]  >= 73 && f.Live_array[f.i]  < 77"]
[eval exp="f.Live_array[f.i]  = 14"]
[elsif exp="f.Live_array[f.i]  >= 77 && f.Live_array[f.i]  < 81"]
[eval exp="f.Live_array[f.i]  = 15"]
[elsif exp="f.Live_array[f.i]  >= 81 && f.Live_array[f.i]  < 85"]
[eval exp="f.Live_array[f.i]  = 16"]
[elsif exp="f.Live_array[f.i]  >= 85 && f.Live_array[f.i]  < 89"]
[eval exp="f.Live_array[f.i]  = 17"]
[elsif exp="f.Live_array[f.i]  >= 89 && f.Live_array[f.i]  < 93"]
[eval exp="f.Live_array[f.i]  = 18"]
[elsif exp="f.Live_array[f.i]  >= 93 && f.Live_array[f.i]  < 97"]
[eval exp="f.Live_array[f.i]  = 19"]
[elsif exp="f.Live_array[f.i]  >= 97 && f.Live_array[f.i]  <= 100"]
[eval exp="f.Live_array[f.i]  = 20"]
[endif]
[nextfor]

;パンツ脱いだ後
[elsif exp="f.Haisin_H_Flag ==1"]

[for name=f.i from=0 to=2]
[if exp="f.Live_array[f.i] >= 26 && f.Live_array[f.i]  < 29"]
[eval exp="f.Live_array[f.i]  = 0"]
[elsif exp="f.Live_array[f.i]  >= 29 && f.Live_array[f.i]  < 32"]
[eval exp="f.Live_array[f.i]  = 1"]
[elsif exp="f.Live_array[f.i]  >= 32 && f.Live_array[f.i]  < 35"]
[eval exp="f.Live_array[f.i]  = 2"]
[elsif exp="f.Live_array[f.i]  >= 35 && f.Live_array[f.i]  < 38"]
[eval exp="f.Live_array[f.i]  = 4"]
[elsif exp="f.Live_array[f.i]  >= 38 && f.Live_array[f.i]  < 41"]
[eval exp="f.Live_array[f.i]  = 5"]
[elsif exp="f.Live_array[f.i]  >= 41 && f.Live_array[f.i]  < 44"]
[eval exp="f.Live_array[f.i]  = 6"]
[elsif exp="f.Live_array[f.i]  >= 44 && f.Live_array[f.i]  < 47"]
[eval exp="f.Live_array[f.i]  = 7"]
[elsif exp="f.Live_array[f.i]  >= 47 && f.Live_array[f.i]  < 50"]
[eval exp="f.Live_array[f.i]  = 8"]
[elsif exp="f.Live_array[f.i]  >= 50 && f.Live_array[f.i]  < 53"]
[eval exp="f.Live_array[f.i]  = 9"]
[elsif exp="f.Live_array[f.i]  >= 53 && f.Live_array[f.i]  < 56"]
[eval exp="f.Live_array[f.i]  = 10"]
[elsif exp="f.Live_array[f.i]  >= 56 && f.Live_array[f.i]  < 59"]
[eval exp="f.Live_array[f.i]  = 11"]
[elsif exp="f.Live_array[f.i]  >= 59 && f.Live_array[f.i]  < 62"]
[eval exp="f.Live_array[f.i]  = 12"]
[elsif exp="f.Live_array[f.i]  >= 62 && f.Live_array[f.i]  < 65"]
[eval exp="f.Live_array[f.i]  = 13"]
[elsif exp="f.Live_array[f.i]  >= 65 && f.Live_array[f.i]  < 68"]
[eval exp="f.Live_array[f.i]  = 14"]
[elsif exp="f.Live_array[f.i]  >= 68 && f.Live_array[f.i]  < 71"]
[eval exp="f.Live_array[f.i]  = 15"]
[elsif exp="f.Live_array[f.i]  >= 71 && f.Live_array[f.i]  < 74"]
[eval exp="f.Live_array[f.i]  = 16"]
[elsif exp="f.Live_array[f.i]  >= 74 && f.Live_array[f.i]  < 77"]
[eval exp="f.Live_array[f.i]  = 17"]
[elsif exp="f.Live_array[f.i]  >= 77 && f.Live_array[f.i]  < 80"]
[eval exp="f.Live_array[f.i] = 18" cond="!f.talks[47].flag || !f.talks[47].read"]
[eval exp="f.Live_array[f.i] = 26" cond="f.talks[47].flag && f.talks[47].read"]

[elsif exp="f.Live_array[f.i]  >= 80 && f.Live_array[f.i]  < 83"]
[eval exp="f.Live_array[f.i] = 19" cond="!f.talks[47].flag || !f.talks[47].read"]
[eval exp="f.Live_array[f.i] = 27" cond="f.talks[47].flag && f.talks[47].read"]

[elsif exp="f.Live_array[f.i]  >= 83 && f.Live_array[f.i]  < 86"]
[eval exp="f.Live_array[f.i]  = 20"]
[elsif exp="f.Live_array[f.i]  >= 86 && f.Live_array[f.i]  < 89"]
[eval exp="f.Live_array[f.i]  = 21"]
[elsif exp="f.Live_array[f.i]  >= 89 && f.Live_array[f.i]  < 92"]
[eval exp="f.Live_array[f.i]  = 22"]
[elsif exp="f.Live_array[f.i]  >= 92 && f.Live_array[f.i]  < 95"]
[eval exp="f.Live_array[f.i]  = 23"]
[elsif exp="f.Live_array[f.i]  >= 95 && f.Live_array[f.i]  < 98"]
[eval exp="f.Live_array[f.i]  = 24"]
[elsif exp="f.Live_array[f.i]  >= 98 && f.Live_array[f.i]  <= 100"]
[eval exp="f.Live_array[f.i]  = 25"]

[endif]
[nextfor]

;パンツ脱いで時間が180以上
[elsif exp="f.Haisin_H_Flag ==2"]

[for name=f.i from=0 to=2]
[if exp="f.Live_array[f.i]  == 26"]
[eval exp="f.Live_array[f.i] = 18" cond="!f.talks[47].flag || !f.talks[47].read"]
[elsif exp="f.Live_array[f.i]  == 27"]
[eval exp="f.Live_array[f.i] = 19" cond="!f.talks[47].flag || !f.talks[47].read"]
[elsif exp="f.Live_array[f.i]  == 31"]
[eval exp="f.Live_array[f.i] = 0" cond="!f.talks[45].flag || !f.talks[45].read || f.Sys_Seiryoku == 0"]
[elsif exp="f.Live_array[f.i]  == 32"]
[eval exp="f.Live_array[f.i] = 0" cond="!f.talks[45].flag || !f.talks[45].read|| f.Sys_Seiryoku == 0"]
[elsif exp="f.Live_array[f.i]  == 33"]
[eval exp="f.Live_array[f.i] = 0" cond="!f.talks[45].flag || !f.talks[45].read|| f.Sys_Seiryoku == 0"]

[elsif exp="f.Live_array[f.i] >= 34 && f.Live_array[f.i]  < 35"]
[eval exp="f.Live_array[f.i]  = 0"]
[elsif exp="f.Live_array[f.i]  >= 35 && f.Live_array[f.i]  < 38"]
[eval exp="f.Live_array[f.i]  = 1"]
[elsif exp="f.Live_array[f.i]  >= 38 && f.Live_array[f.i]  < 41"]
[eval exp="f.Live_array[f.i]  = 2"]
[elsif exp="f.Live_array[f.i]  >= 41 && f.Live_array[f.i]  < 44"]
[eval exp="f.Live_array[f.i]  = 4"]
[elsif exp="f.Live_array[f.i]  >= 44 && f.Live_array[f.i]  < 46"]
[eval exp="f.Live_array[f.i]  = 5"]
[elsif exp="f.Live_array[f.i]  >= 46 && f.Live_array[f.i]  < 48"]
[eval exp="f.Live_array[f.i]  = 6"]
[elsif exp="f.Live_array[f.i]  >= 48 && f.Live_array[f.i]  < 49"]
[eval exp="f.Live_array[f.i]  = 7"]
[elsif exp="f.Live_array[f.i]  >= 49 && f.Live_array[f.i]  < 51"]
[eval exp="f.Live_array[f.i]  = 8"]
[elsif exp="f.Live_array[f.i]  >= 51 && f.Live_array[f.i]  < 52"]
[eval exp="f.Live_array[f.i]  = 9"]
[elsif exp="f.Live_array[f.i]  >= 52 && f.Live_array[f.i]  < 53"]
[eval exp="f.Live_array[f.i]  = 10"]
[elsif exp="f.Live_array[f.i]  >= 53 && f.Live_array[f.i]  < 55"]
[eval exp="f.Live_array[f.i]  = 11"]
[elsif exp="f.Live_array[f.i]  >= 55 && f.Live_array[f.i]  < 56"]
[eval exp="f.Live_array[f.i]  = 12"]
[elsif exp="f.Live_array[f.i]  >= 56 && f.Live_array[f.i]  < 57"]
[eval exp="f.Live_array[f.i]  = 13"]
[elsif exp="f.Live_array[f.i]  >= 57 && f.Live_array[f.i]  < 59"]
[eval exp="f.Live_array[f.i]  = 14"]
[elsif exp="f.Live_array[f.i]  >= 59 && f.Live_array[f.i]  < 60"]
[eval exp="f.Live_array[f.i]  = 15"]
[elsif exp="f.Live_array[f.i]  >= 60 && f.Live_array[f.i]  < 61"]
[eval exp="f.Live_array[f.i]  = 16"]
[elsif exp="f.Live_array[f.i]  >= 61 && f.Live_array[f.i]  < 63"]
[eval exp="f.Live_array[f.i]  = 17"]
[elsif exp="f.Live_array[f.i]  >= 63 && f.Live_array[f.i]  < 64"]
[eval exp="f.Live_array[f.i] = 18" cond="!f.talks[47].flag || !f.talks[47].read"]
[eval exp="f.Live_array[f.i] = 26" cond="f.talks[47].flag && f.talks[47].read"]

[elsif exp="f.Live_array[f.i]  >= 64 && f.Live_array[f.i]  < 65"]
[eval exp="f.Live_array[f.i] = 19" cond="!f.talks[47].flag || !f.talks[47].read"]
[eval exp="f.Live_array[f.i] = 27" cond="f.talks[47].flag && f.talks[47].read"]

[elsif exp="f.Live_array[f.i]  >= 65 && f.Live_array[f.i]  < 67"]
[eval exp="f.Live_array[f.i]  = 20"]
[elsif exp="f.Live_array[f.i]  >= 67 && f.Live_array[f.i]  < 68"]
[eval exp="f.Live_array[f.i]  = 21"]
[elsif exp="f.Live_array[f.i]  >= 68 && f.Live_array[f.i]  < 69"]
[eval exp="f.Live_array[f.i]  = 22"]
[elsif exp="f.Live_array[f.i]  >= 69 && f.Live_array[f.i]  < 71"]
[eval exp="f.Live_array[f.i]  = 23"]
[elsif exp="f.Live_array[f.i]  >= 71 && f.Live_array[f.i]  < 72"]
[eval exp="f.Live_array[f.i]  = 24"]
[elsif exp="f.Live_array[f.i]  >= 72 && f.Live_array[f.i]  < 76"]
[eval exp="f.Live_array[f.i]  = 25"]
[elsif exp="f.Live_array[f.i]  >= 76 && f.Live_array[f.i]  < 80"]
[eval exp="f.Live_array[f.i]  = 28"]
[elsif exp="f.Live_array[f.i]  >= 80 && f.Live_array[f.i]  < 84"]
[eval exp="f.Live_array[f.i]  = 29"]
[elsif exp="f.Live_array[f.i]  >= 84 && f.Live_array[f.i]  < 89"]
[eval exp="f.Live_array[f.i]  = 30"]
[elsif exp="f.Live_array[f.i]  >= 89 && f.Live_array[f.i]  < 93"]
[eval exp="f.Live_array[f.i] = 0" cond="!f.talks[45].flag || !f.talks[45].read || f.Sys_Seiryoku == 0"]
[eval exp="f.Live_array[f.i] = 31" cond="f.talks[45].flag && f.talks[45].read && f.Sys_Seiryoku > 0"]

[elsif exp="f.Live_array[f.i]  >= 93 && f.Live_array[f.i]  < 97"]
[eval exp="f.Live_array[f.i] = 2" cond="!f.talks[45].flag || !f.talks[45].read || f.Sys_Seiryoku == 0"]
[eval exp="f.Live_array[f.i] = 32" cond="f.talks[45].flag && f.talks[45].read && f.Sys_Seiryoku > 0"]

[elsif exp="f.Live_array[f.i]  >= 97 && f.Live_array[f.i]  <= 100"]
[eval exp="f.Live_array[f.i] = 4" cond="!f.talks[45].flag || !f.talks[45].read || f.Sys_Seiryoku == 0"]
[eval exp="f.Live_array[f.i] = 33" cond="f.talks[45].flag && f.talks[45].read && f.Sys_Seiryoku > 0"]

[endif]
[nextfor]

[endif]
[_tb_end_tyrano_code]

[playse  volume="100"  time="1000"  buf="1"  storage="カードディール02.mp3"  ]
[wait  time="50"  ]
[tb_start_tyrano_code]
;ライブカード選択肢表示

[if exp="f.Haisin_H_Flag ==0"]

[button  storage="__Main_Haisin_H.ks"  target="*__ライブ処理_1"  graphic="&f.Haisin_Card[f.Live_array[0] ].file"  width="120"  height="150"  x="850"  y="380"  _clickable_img=""  name="Live_image1" enterse="カーソル移動12.mp3" exp="f.i=0"]
[anim name="Live_image1" time=300 top=330 effect="easeOutQuart"]

[button  storage="__Main_Haisin_H.ks"  target="*__ライブ処理_1"  graphic="&f.Haisin_Card[f.Live_array[1] ].file"  width="120"  height="150"  x="990"  y="380"  _clickable_img=""  name="Live_image2" enterse="カーソル移動12.mp3" exp="f.i=1"]
[anim name="Live_image2" time=700 top=330 effect="easeOutQuart"]

[button  storage="__Main_Haisin_H.ks"  target="*__ライブ処理_1"  graphic="&f.Haisin_Card[f.Live_array[2] ].file"  width="120"  height="150"  x="1130"  y="380"  _clickable_img=""  name="Live_image3" enterse="カーソル移動12.mp3" exp="f.i=2"]
[anim name="Live_image3" time=1000 top=330 effect="easeOutQuart"]

;パンツ脱ぎ
[elsif exp="f.Haisin_H_Flag ==1"]

[button  storage="__Main_Haisin_H.ks"  target="*__ライブ処理_1"  graphic="&f.Haisin_Card_Pantu[f.Live_array[0] ].file"  width="120"  height="150"  x="850"  y="380"  _clickable_img=""  name="Live_image1" enterse="カーソル移動12.mp3" exp="f.i=0"]
[anim name="Live_image1" time=300 top=330 effect="easeOutQuart"]

[button  storage="__Main_Haisin_H.ks"  target="*__ライブ処理_1"  graphic="&f.Haisin_Card_Pantu[f.Live_array[1] ].file"  width="120"  height="150"  x="990"  y="380"  _clickable_img=""  name="Live_image2" enterse="カーソル移動12.mp3" exp="f.i=1"]
[anim name="Live_image2" time=700 top=330 effect="easeOutQuart"]

[button  storage="__Main_Haisin_H.ks"  target="*__ライブ処理_1"  graphic="&f.Haisin_Card_Pantu[f.Live_array[2] ].file"  width="120"  height="150"  x="1130"  y="380"  _clickable_img=""  name="Live_image3" enterse="カーソル移動12.mp3" exp="f.i=2"]
[anim name="Live_image3" time=1000 top=330 effect="easeOutQuart"]

;パンツ脱ぎ　時間180以上
[elsif exp="f.Haisin_H_Flag ==2"]

[button  storage="__Main_Haisin_H.ks"  target="*__ライブ処理_1"  graphic="&f.Haisin_Card_Finish[f.Live_array[0] ].file"  width="120"  height="150"  x="850"  y="380"  _clickable_img=""  name="Live_image1" enterse="カーソル移動12.mp3" exp="f.i=0"]
[anim name="Live_image1" time=300 top=330 effect="easeOutQuart"]

[button  storage="__Main_Haisin_H.ks"  target="*__ライブ処理_1"  graphic="&f.Haisin_Card_Finish[f.Live_array[1] ].file"  width="120"  height="150"  x="990"  y="380"  _clickable_img=""  name="Live_image2" enterse="カーソル移動12.mp3" exp="f.i=1"]
[anim name="Live_image2" time=700 top=330 effect="easeOutQuart"]

[button  storage="__Main_Haisin_H.ks"  target="*__ライブ処理_1"  graphic="&f.Haisin_Card_Finish[f.Live_array[2] ].file"  width="120"  height="150"  x="1130"  y="380"  _clickable_img=""  name="Live_image3" enterse="カーソル移動12.mp3" exp="f.i=2"]
[anim name="Live_image3" time=1000 top=330 effect="easeOutQuart"]

[endif]
[_tb_end_tyrano_code]

[s  ]
*__ライブ処理_1

[tb_start_tyrano_code]
[cm]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;表情、下半身画像変更
[if exp="f.Haisin_H_Flag ==0"]

[switch exp="f.Haisin_Card[f.Live_array[f.i]].id"]
[case is=0]
[chara_mod  name="H_配信_顔"  time="0"  cross="false"  storage="chara/33/配信02.png"  ]
[individual_image  layer="1"  zindex="1"  storage="default/配信Hカット/配信カット01.png"  width="400"  height="300"  x="30"  y="380"  name="配信カット"]
[case is=1]
[chara_mod  name="H_配信_顔"  time="0"  cross="false"  storage="chara/33/配信02.png"  ]
[individual_image  layer="1"  zindex="1"  storage="default/配信Hカット/配信カット01.png"  width="400"  height="300"  x="30"  y="380"  name="配信カット"]
[case is=2]
[chara_mod  name="H_配信_顔"  time="0"  cross="false"  storage="chara/33/配信02.png"  ]
[individual_image  layer="1"  zindex="1"  storage="default/配信Hカット/配信カット41.png"  width="400"  height="300"  x="30"  y="380"  name="配信カット"]
[case is=3]
[chara_mod  name="H_配信_顔"  time="0"  cross="false"  storage="chara/33/配信02.png"  ]
[individual_image  layer="1"  zindex="1"  storage="default/配信Hカット/配信カット41.png"  width="400"  height="300"  x="30"  y="380"  name="配信カット"]
[case is=4]
[chara_mod  name="H_配信_顔"  time="0"  cross="false"  storage="chara/33/配信02.png"  ]
[individual_image  layer="1"  zindex="1"  storage="default/配信Hカット/配信カット21.png"  width="400"  height="300"  x="30"  y="380"  name="配信カット"]
[case is=5]
[chara_mod  name="H_配信_顔"  time="0"  cross="false"  storage="chara/33/配信02.png"  ]
[individual_image  layer="1"  zindex="1"  storage="default/配信Hカット/配信カット21.png"  width="400"  height="300"  x="30"  y="380"  name="配信カット"]
[case is=6]
[chara_mod  name="H_配信_顔"  time="0"  cross="false"  storage="chara/33/配信03.png"  ]
[individual_image  layer="1"  zindex="1"  storage="default/配信Hカット/配信カット02.png"  width="400"  height="300"  x="30"  y="380"  name="配信カット"]
[case is=7]
[chara_mod  name="H_配信_顔"  time="0"  cross="false"  storage="chara/33/配信03.png"  ]
[individual_image  layer="1"  zindex="1"  storage="default/配信Hカット/配信カット02.png"  width="400"  height="300"  x="30"  y="380"  name="配信カット"]
[case is=8]
[chara_mod  name="H_配信_顔"  time="0"  cross="false"  storage="chara/33/配信04.png"  ]
[individual_image  layer="1"  zindex="1"  storage="default/配信Hカット/配信カット22.png"  width="400"  height="300"  x="30"  y="380"  name="配信カット"]
[case is=9]
[chara_mod  name="H_配信_顔"  time="0"  cross="false"  storage="chara/33/配信04.png"  ]
[individual_image  layer="1"  zindex="1"  storage="default/配信Hカット/配信カット22.png"  width="400"  height="300"  x="30"  y="380"  name="配信カット"]
[case is=10]
[chara_mod  name="H_配信_顔"  time="0"  cross="false"  storage="chara/33/配信05.png"  ]
[individual_image  layer="1"  zindex="1"  storage="default/配信Hカット/配信カット23.png"  width="400"  height="300"  x="30"  y="380"  name="配信カット"]
[case is=11]
[chara_mod  name="H_配信_顔"  time="0"  cross="false"  storage="chara/33/配信05.png"  ]
[individual_image  layer="1"  zindex="1"  storage="default/配信Hカット/配信カット23.png"  width="400"  height="300"  x="30"  y="380"  name="配信カット"]
[case is=12]
[chara_mod  name="H_配信_顔"  time="0"  cross="false"  storage="chara/33/配信22.png"  ]
[individual_image  layer="1"  zindex="1"  storage="default/配信Hカット/配信カット42.png"  width="400"  height="300"  x="30"  y="380"  name="配信カット"]
[case is=13]
[chara_mod  name="H_配信_顔"  time="0"  cross="false"  storage="chara/33/配信22.png"  ]
[individual_image  layer="1"  zindex="1"  storage="default/配信Hカット/配信カット42.png"  width="400"  height="300"  x="30"  y="380"  name="配信カット"]
[case is=14]
[chara_mod  name="H_配信_顔"  time="0"  cross="false"  storage="chara/33/配信24.png"  ]
[individual_image  layer="1"  zindex="1"  storage="default/配信Hカット/配信カット43.png"  width="400"  height="300"  x="30"  y="380"  name="配信カット"]
[case is=15]
[chara_mod  name="H_配信_顔"  time="0"  cross="false"  storage="chara/33/配信24.png"  ]
[individual_image  layer="1"  zindex="1"  storage="default/配信Hカット/配信カット43.png"  width="400"  height="300"  x="30"  y="380"  name="配信カット"]
[case is=16]
[chara_mod  name="H_配信_顔"  time="0"  cross="false"  storage="chara/33/配信21.png"  ]
[individual_image  layer="1"  zindex="1"  storage="default/配信Hカット/配信カット44.png"  width="400"  height="300"  x="30"  y="380"  name="配信カット"]
[case is=17]
[chara_mod  name="H_配信_顔"  time="0"  cross="false"  storage="chara/33/配信21.png"  ]
[individual_image  layer="1"  zindex="1"  storage="default/配信Hカット/配信カット44.png"  width="400"  height="300"  x="30"  y="380"  name="配信カット"]
[case is=18]
[chara_mod  name="H_配信_顔"  time="0"  cross="false"  storage="chara/33/配信11.png"  ]
[individual_image  layer="1"  zindex="1"  storage="default/配信Hカット/配信カット11.png"  width="400"  height="300"  x="30"  y="380"  name="配信カット"]
[case is=19]
[chara_mod  name="H_配信_顔"  time="0"  cross="false"  storage="chara/33/配信12.png"  ]
[individual_image  layer="1"  zindex="1"  storage="default/配信Hカット/配信カット11.png"  width="400"  height="300"  x="30"  y="380"  name="配信カット"]
[case is=20]
[chara_mod  name="H_配信_顔"  time="0"  cross="false"  storage="chara/33/配信12.png"  ]
[individual_image  layer="1"  zindex="1"  storage="default/配信Hカット/配信カット11.png"  width="400"  height="300"  x="30"  y="380"  name="配信カット"]

[endswitch]

[elsif exp="f.Haisin_H_Flag ==1"]

[switch exp="f.Haisin_Card_Pantu[f.Live_array[f.i]].id"]
[case is=0]
;[chara_mod  name="H_配信_顔"  time="0"  cross="false"  storage="chara/33/配信12.png"  ]
[individual_image  layer="1"  zindex="1"  storage="default/配信Hカット/配信カット11.png"  width="400"  height="300"  x="30"  y="380"  name="配信カット"]
[case is=1]
;[chara_mod  name="H_配信_顔"  time="0"  cross="false"  storage="chara/33/配信12.png"  ]
[individual_image  layer="1"  zindex="1"  storage="default/配信Hカット/配信カット11.png"  width="400"  height="300"  x="30"  y="380"  name="配信カット"]
[case is=2]
;[chara_mod  name="H_配信_顔"  time="0"  cross="false"  storage="chara/33/配信12.png"  ]
[individual_image  layer="1"  zindex="1"  storage="default/配信Hカット/配信カット51.png"  width="400"  height="300"  x="30"  y="380"  name="配信カット"]
[case is=3]
;[chara_mod  name="H_配信_顔"  time="0"  cross="false"  storage="chara/33/配信12.png"  ]
[individual_image  layer="1"  zindex="1"  storage="default/配信Hカット/配信カット51.png"  width="400"  height="300"  x="30"  y="380"  name="配信カット"]
[case is=4]
;[chara_mod  name="H_配信_顔"  time="0"  cross="false"  storage="chara/33/配信12.png"  ]
[individual_image  layer="1"  zindex="1"  storage="default/配信Hカット/配信カット31.png"  width="400"  height="300"  x="30"  y="380"  name="配信カット"]
[case is=5]
;[chara_mod  name="H_配信_顔"  time="0"  cross="false"  storage="chara/33/配信12.png"  ]
[individual_image  layer="1"  zindex="1"  storage="default/配信Hカット/配信カット31.png"  width="400"  height="300"  x="30"  y="380"  name="配信カット"]
[case is=6]
[chara_mod  name="H_配信_顔"  time="0"  cross="false"  storage="chara/33/配信23.png"  ]
[individual_image  layer="1"  zindex="1"  storage="default/配信Hカット/配信カット12.png"  width="400"  height="300"  x="30"  y="380"  name="配信カット"]
[case is=7]
[chara_mod  name="H_配信_顔"  time="0"  cross="false"  storage="chara/33/配信23.png"  ]
[individual_image  layer="1"  zindex="1"  storage="default/配信Hカット/配信カット12.png"  width="400"  height="300"  x="30"  y="380"  name="配信カット"]
[case is=8]
[chara_mod  name="H_配信_顔"  time="0"  cross="false"  storage="chara/33/配信31.png"  ]
[individual_image  layer="1"  zindex="1"  storage="default/配信Hカット/配信カット32.png"  width="400"  height="300"  x="30"  y="380"  name="配信カット"]
[case is=9]
[chara_mod  name="H_配信_顔"  time="0"  cross="false"  storage="chara/33/配信31.png"  ]
[individual_image  layer="1"  zindex="1"  storage="default/配信Hカット/配信カット32.png"  width="400"  height="300"  x="30"  y="380"  name="配信カット"]
[case is=10]
[chara_mod  name="H_配信_顔"  time="0"  cross="false"  storage="chara/33/配信32.png"  ]
[individual_image  layer="1"  zindex="1"  storage="default/配信Hカット/配信カット32.png"  width="400"  height="300"  x="30"  y="380"  name="配信カット"]
[case is=11]
[chara_mod  name="H_配信_顔"  time="0"  cross="false"  storage="chara/33/配信33.png"  ]
[individual_image  layer="1"  zindex="1"  storage="default/配信Hカット/配信カット33.png"  width="400"  height="300"  x="30"  y="380"  name="配信カット"]
[case is=12]
[chara_mod  name="H_配信_顔"  time="0"  cross="false"  storage="chara/33/配信33.png"  ]
[individual_image  layer="1"  zindex="1"  storage="default/配信Hカット/配信カット33.png"  width="400"  height="300"  x="30"  y="380"  name="配信カット"]
[case is=13]
[chara_mod  name="H_配信_顔"  time="0"  cross="false"  storage="chara/33/配信32.png"  ]
[individual_image  layer="1"  zindex="1"  storage="default/配信Hカット/配信カット33.png"  width="400"  height="300"  x="30"  y="380"  name="配信カット"]
[case is=14]
[chara_mod  name="H_配信_顔"  time="0"  cross="false"  storage="chara/33/配信51.png"  ]
[individual_image  layer="1"  zindex="1"  storage="default/配信Hカット/配信カット52.png"  width="400"  height="300"  x="30"  y="380"  name="配信カット"]
[call  storage="__Main_Night_Option.ks"  target="*__お触り単発弱"  ]
[case is=15]
[chara_mod  name="H_配信_顔"  time="0"  cross="false"  storage="chara/33/配信51.png"  ]
[individual_image  layer="1"  zindex="1"  storage="default/配信Hカット/配信カット52.png"  width="400"  height="300"  x="30"  y="380"  name="配信カット"]
[call  storage="__Main_Night_Option.ks"  target="*__お触り単発弱"  ]
[case is=16]
[chara_mod  name="H_配信_顔"  time="0"  cross="false"  storage="chara/33/配信52.png"  ]
[individual_image  layer="1"  zindex="1"  storage="default/配信Hカット/配信カット52.png"  width="400"  height="300"  x="30"  y="380"  name="配信カット"]
[call  storage="__Main_Night_Option.ks"  target="*__お触り単発弱"  ]
[case is=17]
[chara_mod  name="H_配信_顔"  time="0"  cross="false"  storage="chara/33/配信41.png"  ]
[individual_image  layer="1"  zindex="1"  storage="default/配信Hカット/配信カット53.png"  width="400"  height="300"  x="30"  y="380"  name="配信カット"]
[call  storage="__Main_Night_Option.ks"  target="*__お触り単発弱"  ]
[case is=18]
[chara_mod  name="H_配信_顔"  time="0"  cross="false"  storage="chara/33/配信42.png"  ]
[individual_image  layer="1"  zindex="1"  storage="default/配信Hカット/配信カット53.png"  width="400"  height="300"  x="30"  y="380"  name="配信カット"]
[call  storage="__Main_Night_Option.ks"  target="*__お触り単発弱"  ]
[case is=19]
[chara_mod  name="H_配信_顔"  time="0"  cross="false"  storage="chara/33/配信43.png"  ]
[individual_image  layer="1"  zindex="1"  storage="default/配信Hカット/配信カット53.png"  width="400"  height="300"  x="30"  y="380"  name="配信カット"]
[call  storage="__Main_Night_Option.ks"  target="*__お触り単発弱"  ]
[case is=20]
[chara_mod  name="H_配信_顔"  time="0"  cross="false"  storage="chara/33/配信53.png"  ]
[individual_image  layer="1"  zindex="1"  storage="default/配信Hカット/配信カット54.png"  width="400"  height="300"  x="30"  y="380"  name="配信カット"]
[call  storage="__Main_Night_Option.ks"  target="*__お触り単発弱"  ]
[case is=21]
[chara_mod  name="H_配信_顔"  time="0"  cross="false"  storage="chara/33/配信53.png"  ]
[individual_image  layer="1"  zindex="1"  storage="default/配信Hカット/配信カット54.png"  width="400"  height="300"  x="30"  y="380"  name="配信カット"]
[call  storage="__Main_Night_Option.ks"  target="*__お触り単発弱"  ]
[case is=22]
[chara_mod  name="H_配信_顔"  time="0"  cross="false"  storage="chara/33/配信52.png"  ]
[individual_image  layer="1"  zindex="1"  storage="default/配信Hカット/配信カット54.png"  width="400"  height="300"  x="30"  y="380"  name="配信カット"]
[call  storage="__Main_Night_Option.ks"  target="*__お触り単発弱"  ]
[case is=23]
[chara_mod  name="H_配信_顔"  time="0"  cross="false"  storage="chara/33/配信62.png"  ]
[individual_image  layer="1"  zindex="1"  storage="default/配信Hカット/配信カット55.png"  width="400"  height="300"  x="30"  y="380"  name="配信カット"]
[call  storage="__Main_Night_Option.ks"  target="*__お触り単発強"  ]
[case is=24]
[chara_mod  name="H_配信_顔"  time="0"  cross="false"  storage="chara/33/配信62.png"  ]
[individual_image  layer="1"  zindex="1"  storage="default/配信Hカット/配信カット55.png"  width="400"  height="300"  x="30"  y="380"  name="配信カット"]
[call  storage="__Main_Night_Option.ks"  target="*__お触り単発強"  ]
[case is=25]
[chara_mod  name="H_配信_顔"  time="0"  cross="false"  storage="chara/33/配信62.png"  ]
[individual_image  layer="1"  zindex="1"  storage="default/配信Hカット/配信カット55.png"  width="400"  height="300"  x="30"  y="380"  name="配信カット"]
[call  storage="__Main_Night_Option.ks"  target="*__お触り単発強"  ]
[case is=26]
[chara_mod  name="H_配信_顔"  time="0"  cross="false"  storage="chara/33/配信61.png"  ]
[individual_image  layer="1"  zindex="1"  storage="default/配信Hカット/配信カット71.png"  width="400"  height="300"  x="30"  y="380"  name="配信カット"]
[call  storage="__Main_Night_Option.ks"  target="*__お触り単発強"  ]
[case is=27]
[chara_mod  name="H_配信_顔"  time="0"  cross="false"  storage="chara/33/配信61.png"  ]
[individual_image  layer="1"  zindex="1"  storage="default/配信Hカット/配信カット71.png"  width="400"  height="300"  x="30"  y="380"  name="配信カット"]
[call  storage="__Main_Night_Option.ks"  target="*__お触り単発強"  ]

[endswitch]

[elsif exp="f.Haisin_H_Flag ==2"]

[switch exp="f.Haisin_Card_Finish[f.Live_array[f.i]].id"]
[case is=0]
;[chara_mod  name="H_配信_顔"  time="0"  cross="false"  storage="chara/33/配信12.png"  ]
[individual_image  layer="1"  zindex="1"  storage="default/配信Hカット/配信カット11.png"  width="400"  height="300"  x="30"  y="380"  name="配信カット"]
[case is=1]
;[chara_mod  name="H_配信_顔"  time="0"  cross="false"  storage="chara/33/配信12.png"  ]
[individual_image  layer="1"  zindex="1"  storage="default/配信Hカット/配信カット11.png"  width="400"  height="300"  x="30"  y="380"  name="配信カット"]
[case is=2]
;[chara_mod  name="H_配信_顔"  time="0"  cross="false"  storage="chara/33/配信12.png"  ]
[individual_image  layer="1"  zindex="1"  storage="default/配信Hカット/配信カット51.png"  width="400"  height="300"  x="30"  y="380"  name="配信カット"]
[case is=3]
;[chara_mod  name="H_配信_顔"  time="0"  cross="false"  storage="chara/33/配信12.png"  ]
[individual_image  layer="1"  zindex="1"  storage="default/配信Hカット/配信カット51.png"  width="400"  height="300"  x="30"  y="380"  name="配信カット"]
[case is=4]
;[chara_mod  name="H_配信_顔"  time="0"  cross="false"  storage="chara/33/配信12.png"  ]
[individual_image  layer="1"  zindex="1"  storage="default/配信Hカット/配信カット31.png"  width="400"  height="300"  x="30"  y="380"  name="配信カット"]
[case is=5]
;[chara_mod  name="H_配信_顔"  time="0"  cross="false"  storage="chara/33/配信12.png"  ]
[individual_image  layer="1"  zindex="1"  storage="default/配信Hカット/配信カット31.png"  width="400"  height="300"  x="30"  y="380"  name="配信カット"]
[case is=6]
[chara_mod  name="H_配信_顔"  time="0"  cross="false"  storage="chara/33/配信23.png"  ]
[individual_image  layer="1"  zindex="1"  storage="default/配信Hカット/配信カット12.png"  width="400"  height="300"  x="30"  y="380"  name="配信カット"]
[case is=7]
[chara_mod  name="H_配信_顔"  time="0"  cross="false"  storage="chara/33/配信23.png"  ]
[individual_image  layer="1"  zindex="1"  storage="default/配信Hカット/配信カット12.png"  width="400"  height="300"  x="30"  y="380"  name="配信カット"]
[case is=8]
[chara_mod  name="H_配信_顔"  time="0"  cross="false"  storage="chara/33/配信31.png"  ]
[individual_image  layer="1"  zindex="1"  storage="default/配信Hカット/配信カット32.png"  width="400"  height="300"  x="30"  y="380"  name="配信カット"]
[case is=9]
[chara_mod  name="H_配信_顔"  time="0"  cross="false"  storage="chara/33/配信31.png"  ]
[individual_image  layer="1"  zindex="1"  storage="default/配信Hカット/配信カット32.png"  width="400"  height="300"  x="30"  y="380"  name="配信カット"]
[case is=10]
[chara_mod  name="H_配信_顔"  time="0"  cross="false"  storage="chara/33/配信32.png"  ]
[individual_image  layer="1"  zindex="1"  storage="default/配信Hカット/配信カット32.png"  width="400"  height="300"  x="30"  y="380"  name="配信カット"]
[case is=11]
[chara_mod  name="H_配信_顔"  time="0"  cross="false"  storage="chara/33/配信33.png"  ]
[individual_image  layer="1"  zindex="1"  storage="default/配信Hカット/配信カット33.png"  width="400"  height="300"  x="30"  y="380"  name="配信カット"]
[case is=12]
[chara_mod  name="H_配信_顔"  time="0"  cross="false"  storage="chara/33/配信33.png"  ]
[individual_image  layer="1"  zindex="1"  storage="default/配信Hカット/配信カット33.png"  width="400"  height="300"  x="30"  y="380"  name="配信カット"]
[case is=13]
[chara_mod  name="H_配信_顔"  time="0"  cross="false"  storage="chara/33/配信32.png"  ]
[individual_image  layer="1"  zindex="1"  storage="default/配信Hカット/配信カット33.png"  width="400"  height="300"  x="30"  y="380"  name="配信カット"]
[case is=14]
[chara_mod  name="H_配信_顔"  time="0"  cross="false"  storage="chara/33/配信51.png"  ]
[individual_image  layer="1"  zindex="1"  storage="default/配信Hカット/配信カット52.png"  width="400"  height="300"  x="30"  y="380"  name="配信カット"]
[case is=15]
[chara_mod  name="H_配信_顔"  time="0"  cross="false"  storage="chara/33/配信51.png"  ]
[individual_image  layer="1"  zindex="1"  storage="default/配信Hカット/配信カット52.png"  width="400"  height="300"  x="30"  y="380"  name="配信カット"]
[case is=16]
[chara_mod  name="H_配信_顔"  time="0"  cross="false"  storage="chara/33/配信52.png"  ]
[individual_image  layer="1"  zindex="1"  storage="default/配信Hカット/配信カット52.png"  width="400"  height="300"  x="30"  y="380"  name="配信カット"]
[call  storage="__Main_Night_Option.ks"  target="*__お触り単発弱"  ]
[case is=17]
[chara_mod  name="H_配信_顔"  time="0"  cross="false"  storage="chara/33/配信41.png"  ]
[individual_image  layer="1"  zindex="1"  storage="default/配信Hカット/配信カット53.png"  width="400"  height="300"  x="30"  y="380"  name="配信カット"]
[call  storage="__Main_Night_Option.ks"  target="*__お触り単発弱"  ]
[case is=18]
[chara_mod  name="H_配信_顔"  time="0"  cross="false"  storage="chara/33/配信42.png"  ]
[individual_image  layer="1"  zindex="1"  storage="default/配信Hカット/配信カット53.png"  width="400"  height="300"  x="30"  y="380"  name="配信カット"]
[call  storage="__Main_Night_Option.ks"  target="*__お触り単発弱"  ]
[case is=19]
[chara_mod  name="H_配信_顔"  time="0"  cross="false"  storage="chara/33/配信43.png"  ]
[individual_image  layer="1"  zindex="1"  storage="default/配信Hカット/配信カット53.png"  width="400"  height="300"  x="30"  y="380"  name="配信カット"]
[call  storage="__Main_Night_Option.ks"  target="*__お触り単発弱"  ]
[case is=20]
[chara_mod  name="H_配信_顔"  time="0"  cross="false"  storage="chara/33/配信53.png"  ]
[individual_image  layer="1"  zindex="1"  storage="default/配信Hカット/配信カット54.png"  width="400"  height="300"  x="30"  y="380"  name="配信カット"]
[call  storage="__Main_Night_Option.ks"  target="*__お触り単発弱"  ]
[case is=21]
[chara_mod  name="H_配信_顔"  time="0"  cross="false"  storage="chara/33/配信53.png"  ]
[individual_image  layer="1"  zindex="1"  storage="default/配信Hカット/配信カット54.png"  width="400"  height="300"  x="30"  y="380"  name="配信カット"]
[call  storage="__Main_Night_Option.ks"  target="*__お触り単発弱"  ]
[case is=22]
[chara_mod  name="H_配信_顔"  time="0"  cross="false"  storage="chara/33/配信52.png"  ]
[individual_image  layer="1"  zindex="1"  storage="default/配信Hカット/配信カット54.png"  width="400"  height="300"  x="30"  y="380"  name="配信カット"]
[call  storage="__Main_Night_Option.ks"  target="*__お触り単発弱"  ]
[case is=23]
[chara_mod  name="H_配信_顔"  time="0"  cross="false"  storage="chara/33/配信62.png"  ]
[individual_image  layer="1"  zindex="1"  storage="default/配信Hカット/配信カット55.png"  width="400"  height="300"  x="30"  y="380"  name="配信カット"]
[call  storage="__Main_Night_Option.ks"  target="*__お触り単発強"  ]
[case is=24]
[chara_mod  name="H_配信_顔"  time="0"  cross="false"  storage="chara/33/配信62.png"  ]
[individual_image  layer="1"  zindex="1"  storage="default/配信Hカット/配信カット55.png"  width="400"  height="300"  x="30"  y="380"  name="配信カット"]
[call  storage="__Main_Night_Option.ks"  target="*__お触り単発強"  ]
[case is=25]
[chara_mod  name="H_配信_顔"  time="0"  cross="false"  storage="chara/33/配信62.png"  ]
[individual_image  layer="1"  zindex="1"  storage="default/配信Hカット/配信カット55.png"  width="400"  height="300"  x="30"  y="380"  name="配信カット"]
[call  storage="__Main_Night_Option.ks"  target="*__お触り単発強"  ]
[case is=26]
[chara_mod  name="H_配信_顔"  time="0"  cross="false"  storage="chara/33/配信61.png"  ]
[individual_image  layer="1"  zindex="1"  storage="default/配信Hカット/配信カット71.png"  width="400"  height="300"  x="30"  y="380"  name="配信カット"]
[call  storage="__Main_Night_Option.ks"  target="*__お触り単発強"  ]
[case is=27]
[chara_mod  name="H_配信_顔"  time="0"  cross="false"  storage="chara/33/配信61.png"  ]
[individual_image  layer="1"  zindex="1"  storage="default/配信Hカット/配信カット71.png"  width="400"  height="300"  x="30"  y="380"  name="配信カット"]
[call  storage="__Main_Night_Option.ks"  target="*__お触り単発強"  ]
[case is=28]
[chara_mod  name="H_配信_顔"  time="0"  cross="false"  storage="chara/33/配信71.png"  ]
[individual_image  layer="1"  zindex="1"  storage="default/配信Hカット/配信カット61.png"  width="400"  height="300"  x="30"  y="380"  name="配信カット"]
[call  storage="__Main_Night_Option.ks"  target="*__お触り単発強"  ]
[case is=29]
[chara_mod  name="H_配信_顔"  time="0"  cross="false"  storage="chara/33/配信71.png"  ]
[individual_image  layer="1"  zindex="1"  storage="default/配信Hカット/配信カット61.png"  width="400"  height="300"  x="30"  y="380"  name="配信カット"]
[call  storage="__Main_Night_Option.ks"  target="*__お触り単発強"  ]
[case is=30]
[chara_mod  name="H_配信_顔"  time="0"  cross="false"  storage="chara/33/配信71.png"  ]
[individual_image  layer="1"  zindex="1"  storage="default/配信Hカット/配信カット61.png"  width="400"  height="300"  x="30"  y="380"  name="配信カット"]
[call  storage="__Main_Night_Option.ks"  target="*__お触り単発強"  ]
[case is=31]
[chara_mod  name="H_配信_顔"  time="0"  cross="false"  storage="chara/33/配信72.png"  ]
[individual_image  layer="1"  zindex="1"  storage="default/配信Hカット/配信カット挿入.png"  width="400"  height="300"  x="30"  y="380"  name="配信カット"]
[call  storage="__Main_Night_Option.ks"  target="*__お触り単発強"  ]
[case is=32]
[chara_mod  name="H_配信_顔"  time="0"  cross="false"  storage="chara/33/配信72.png"  ]
[individual_image  layer="1"  zindex="1"  storage="default/配信Hカット/配信カット挿入.png"  width="400"  height="300"  x="30"  y="380"  name="配信カット"]
[call  storage="__Main_Night_Option.ks"  target="*__お触り単発強"  ]
[case is=33]
[chara_mod  name="H_配信_顔"  time="0"  cross="false"  storage="chara/33/配信72.png"  ]
[individual_image  layer="1"  zindex="1"  storage="default/配信Hカット/配信カット挿入.png"  width="400"  height="300"  x="30"  y="380"  name="配信カット"]
[call  storage="__Main_Night_Option.ks"  target="*__お触り単発強"  ]

[endswitch]

[endif]
[_tb_end_tyrano_code]

[intrandom_ko10panda  max="5"  count="1"  show_result="false"  show_style="style_a"  show_detail="false"  detail_length="1"  show_log="log_4"  var_name="tf.rand"  tweak="10"  ]
[tb_start_tyrano_code]
;ファン数獲得　総合力×カード効果×週目
[eval exp="f.Tre_Up = Math.floor(f.Imo_Sougou * f.Haisin_Card[f.Live_array[f.i]].rise * f.Sys_Syume/60 * tf.rand*0.1)" cond="f.Haisin_H_Flag ==0"]
[eval exp="f.Tre_Up = Math.floor(f.Imo_Sougou * f.Haisin_Card_Pantu[f.Live_array[f.i]].rise * f.Sys_Syume/50 * tf.rand*0.1)" cond="f.Haisin_H_Flag ==1"]
[eval exp="f.Tre_Up = Math.floor(f.Imo_Sougou * f.Haisin_Card_Finish[f.Live_array[f.i]].rise * f.Sys_Syume/40 * tf.rand*0.1)" cond="f.Haisin_H_Flag ==2"]

[_tb_end_tyrano_code]

[call  storage="Tre_Sta_Up.ks"  target="*__ライブファン数UP"  ]
[tb_start_tyrano_code]
;疑惑処理
[eval exp="f.Tre_Up = f.Haisin_Card[f.Live_array[f.i]].giwaku" cond="f.Haisin_H_Flag ==0"]
[eval exp="f.Tre_Up = f.Haisin_Card_Pantu[f.Live_array[f.i]].giwaku" cond="f.Haisin_H_Flag ==1"]
[eval exp="f.Tre_Up = f.Haisin_Card_Finish[f.Live_array[f.i]].giwaku" cond="f.Haisin_H_Flag ==2"]

[_tb_end_tyrano_code]

[call  storage="Tre_Sta_Up.ks"  target="*__ライブ疑惑UP"  ]
[intrandom_ko10panda  max="10"  count="1"  show_result="false"  show_style="style_a"  show_detail="false"  detail_length="1"  show_log="log_4"  var_name="tf.rand"  tweak="20"  ]
[tb_start_tyrano_code]
;お金処理　効果×ランダム数×週目
[eval exp="f.Tre_Up = Math.floor(f.Haisin_Card[f.Live_array[f.i]].rise * f.Sys_Syume/10 * tf.rand)" cond="f.Haisin_H_Flag ==0"]
[eval exp="f.Tre_Up = Math.floor(f.Haisin_Card_Pantu[f.Live_array[f.i]].rise * f.Sys_Syume/10 * tf.rand)" cond="f.Haisin_H_Flag ==1"]
[eval exp="f.Tre_Up = Math.floor(f.Haisin_Card_Finish[f.Live_array[f.i]].rise * f.Sys_Syume/10 * tf.rand)" cond="f.Haisin_H_Flag ==2"]


[_tb_end_tyrano_code]

[call  storage="Tre_Sta_Up.ks"  target="*__ライブお金UP"  ]
[tb_start_tyrano_code]
;ライブ時間アップ処理
[eval exp="f.Live_Time += f.Haisin_Card[f.Live_array[f.i] ].time * 6" cond="f.Haisin_H_Flag ==0"]
[eval exp="f.Live_Time += f.Haisin_Card_Pantu[f.Live_array[f.i] ].time * 6" cond="f.Haisin_H_Flag ==1"]
[eval exp="f.Live_Time += f.Haisin_Card_Finish[f.Live_array[f.i] ].time * 6" cond="f.Haisin_H_Flag ==2"]


[_tb_end_tyrano_code]

[call  storage="Tre_Bar.ks"  target="*__Live時間バー増減処理"  ]
[tb_start_tyrano_code]
;パンツ脱ぎ移行 flag＝１はパンツ脱ぎ　flag=2は絶頂か挿入移行
[if exp="f.Haisin_H_Flag ==0"]

[if exp="f.Live_array[f.i] >= 18 && f.Live_array[f.i] <=20"]
[eval exp="f.Haisin_H_Flag = 1"]
[endif]

[elsif exp="f.Haisin_H_Flag ==1"]

[if exp="f.Live_Time >= 180"]
[eval exp="f.Haisin_H_Flag = 2"]
[endif]

[endif]


[_tb_end_tyrano_code]

[jump  storage="__Main_Haisin_H.ks"  target="*__ライブ戻り位置"  ]
[s  ]
*__時間切れ

[tb_start_tyrano_code]
;えっち移行　ジャンプ
[if exp="f.Haisin_H_Flag ==2"]

[jump target="*__いかせる" cond="f.Haisin_Card_Finish[f.Live_array[f.i]].id == 28 || f.Haisin_Card_Finish[f.Live_array[f.i]].id == 29 || f.Haisin_Card_Finish[f.Live_array[f.i]].id == 30 "]
[jump target="*__挿入する" cond="f.Haisin_Card_Finish[f.Live_array[f.i]].id == 31 || f.Haisin_Card_Finish[f.Live_array[f.i]].id == 32 || f.Haisin_Card_Finish[f.Live_array[f.i]].id == 33 "]

[endif]

[_tb_end_tyrano_code]

*__えっち処理終了

[tb_show_message_window  ]
[tb_start_text mode=1 ]
Stream finished![p]
[_tb_end_text]

[tb_hide_message_window  ]
[stopse  time="1000"  buf="0"  ]
[stopse  time="1000"  buf="1"  ]
[stopse  time="1000"  buf="2"  ]
[stopse  time="1000"  buf="3"  ]
[call  storage="Main_Sta.ks"  target="*__メインステ表示"  ]
*__挿入からの合流

[tb_start_tyrano_code]
;開発回数カウント
[eval exp="f.Kaihatu_Count[2].kazu += 1"]
[eval exp="f.Kaihatu_Count[3].kazu += 1"]
[_tb_end_tyrano_code]

[tb_eval  exp="f.Tre_Up=f.Fan_Live"  name="Tre_Up"  cmd="="  op="h"  val="Fan_Live"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__ファン数UP"  ]
[tb_start_tyrano_code]
;挿入かいかせるで性欲ダウン
[eval exp="f.Tre_Up = 100" cond="f.H_Haisin_SeiyokuDown_Flag == 1"]
[call storage="Tre_Sta_Up.ks" target="*__性欲DOWN" cond="f.H_Haisin_SeiyokuDown_Flag == 1"]

[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;疑惑がマイナスの時　0に補正
[eval exp="f.Giwaku_Live = 0" cond="f.Giwaku <= 0"]
[_tb_end_tyrano_code]

[tb_eval  exp="f.Tre_Up=f.Giwaku_Live"  name="Tre_Up"  cmd="="  op="h"  val="Giwaku_Live"  val_2="undefined"  ]
[tb_start_tyrano_code]
;疑惑がマイナスの場合ゼロに
[eval exp="f.Tre_Up = 0" cond="f.Tre_Up <= 0"]
[_tb_end_tyrano_code]

[call  storage="Tre_Sta_Up.ks"  target="*__疑惑UP"  ]
[tb_eval  exp="f.Tre_Up=f.Money_Live"  name="Tre_Up"  cmd="="  op="h"  val="Money_Live"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__お金UP"  ]
[call  storage="Main_Sta.ks"  target="*__メインステ表示"  ]
[call  storage="H_Kaihatu_Upshori.ks"  target="*__開発アップ処理"  ]
[call  storage="_Array_Kaihatu.ks"  target="*__開発配列初期化"  ]
[tb_eval  exp="f.H_Haisin_cutbutton=0"  name="H_Haisin_cutbutton"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.H_Haisin_SeiyokuDown_Flag=0"  name="H_Haisin_SeiyokuDown_Flag"  cmd="="  op="t"  val="0"  ]
[mask  time="300"  effect="fadeIn"  color="0x000000"  ]
[bg  time="0"  method="crossfade"  storage="BG_Black.png"  ]
[tb_image_hide  time="0"  ]
[jump  storage="__Main_Kyuuka.ks"  target="*___イベント終了時間経過"  ]
[s  ]
*__いかせる

[tb_eval  exp="f.H_Haisin_SeiyokuDown_Flag=1"  name="H_Haisin_SeiyokuDown_Flag"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_start_tyrano_code]
;始めては無条件飛び
[if exp="f.Haisin_Hfirst_Flag == 1 || f.Haisin_Hfirst_Flag == 101" ]
[eval exp="f.Haisin_Hfirst_Flag += 10"]
[jump target="*__いかせる選択"]
[endif]
[_tb_end_tyrano_code]

[font  size="18"  color="0x000000"  face="JKG-M_3"  bold="true"  ]
[tb_start_tyrano_code]
;シーン見るかの選択肢
[glink  color="btn_05_black"  storage="__Main_Haisin_H.ks"  size="25"  x="510"  y="200"  width="250"  height="50"  text="Watch the scene"  target="*__いかせる選択" enterse="マウスオーバー.mp3"  clickse="決定ボタンを押す53.mp3" ]
[glink  color="btn_05_black"  storage="__Main_Haisin_H.ks"  size="25"  x="510"  y="300"  width="250"  height="50"  text="Skip" target="*__えっち処理終了" enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3" ]

[_tb_end_tyrano_code]

[resetfont  ]
[s  ]
*__いかせる選択

[delete_individual_image  layer="1"  name="配信カット"  ]
[individual_image  layer="1"  zindex="1"  storage="default/配信Hカット/配信カット61.png"  width="400"  height="300"  x="30"  y="250"  _clickable_img=""  name="配信カット"  ]
[tb_start_tyrano_code]
[free layer=1 name="コメント" time=500 wait = false]
[image  layer="1"  zindex="1"  storage="default/配信Hカット補助/配信コメント13.png"  width="370"  height="660"  name="コメント"  x="440"  y="60" ]

[_tb_end_tyrano_code]

[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/吐息02.mp3"  loop="true"  ]
[playbgm  volume="40"  time="1000"  loop="true"  storage="PerituneMaterial_Enchanter3_Celesta_loop.mp3"  fadein="true"  ]
[call  storage="Main_Sta.ks"  target="*__roleのみ表示"  ]
[call  storage="Main_Sta.ks"  target="*__Hメインステ表示"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Mmh[heart]・・・hah・・・hah・・・[p]
#
[emb exp="f.Imo_Name"] continues the broadcast, pretending to be calm while I eat her out intensely[p]
I slide my slightly rough tongue back and forth over her clit[p]
[_tb_end_text]

[call  storage="__Main_Night_Option.ks"  target="*__お触り単発弱"  ]
[chara_mod  name="H_配信_顔"  time="0"  cross="false"  storage="chara/33/配信31.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Nnnh[heart]!![p]
[_tb_end_text]

[chara_mod  name="H_配信_顔"  time="600"  cross="false"  storage="chara/33/配信33.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Eh?[p]
I・・・I'm fine, totally fine[p]
#
She talks to the viewers through the screen[p]
Pretending to be calm while her pussy twitches[p]
Excited by the situation, I decide to give her even more pleasure[p]
I kiss her clit, taking it lightly into my mouth and sucking on it[p]
[_tb_end_text]

[individual_image  layer="1"  zindex="1"  storage="default/配信Hカット/配信カット71.png"  width="400"  height="300"  x="30"  y="250"  _clickable_img=""  name="配信カット"  ]
[chara_mod  name="H_配信_顔"  time="0"  cross="false"  storage="chara/33/配信52.png"  ]
[call  storage="__Main_Night_Option.ks"  target="*__お触り単発弱"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Nnn[heart]・・・[p]
#
[_tb_end_text]

[chara_mod  name="H_配信_顔"  time="0"  cross="false"  storage="chara/33/配信33.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
・・・Yeah[p]
#
[emb exp="f.Imo_Name"] desperately tries to keep it together, her body trembling[p]
-Pop・・・Kiss[p]
I lick her clit gently to keep the noise to a minimum[p]
[emb exp="f.Imo_Name"]'s body shakes[p]
#&f.Imo_Name
O-Oh, is that so?[p]
#
She tries to continue a casual conversation while bringing up viewer comments[p]
[_tb_end_text]

[chara_mod  name="H_配信_顔"  time="0"  cross="false"  storage="chara/33/配信43.png"  ]
[call  storage="__Main_Night_Option.ks"  target="*__お触り単発弱"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Mmh[heart]・・・[p]
#
[_tb_end_text]

[chara_mod  name="H_配信_顔"  time="0"  cross="false"  storage="chara/33/配信33.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
・・・That's ama・・・zing[p]
#
The comments get rowdy over how erotic this is[p]
Did I go too far・・・what should I do?[p]
[_tb_end_text]

[tb_hide_message_window  ]
[font  size="18"  color="0x000000"  face="JKG-M_3"  bold="true"  ]
[tb_start_tyrano_code]
;シーン見るかの選択肢
[glink  color="btn_05_black"  storage="__Main_Haisin_H.ks"  size="25"  x="100"  y="100"  width="250"  height="50"  text="Make her cum 70%"  target="*__いかせる選択続行" enterse="マウスオーバー.mp3"  clickse="決定ボタンを押す53.mp3" ]
[glink  color="btn_05_black"  storage="__Main_Haisin_H.ks"  size="25"  x="100"  y="150"  width="250"  height="50"  text="Leave it for now" target="*__えっち処理終了" enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3" ]

[_tb_end_tyrano_code]

[resetfont  ]
[s  ]
*__いかせる選択続行

[call  storage="__Main_Haisin_H_Option.ks"  target="*__ライブステアップ"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#
I suck on her clit, licking it sloppily with my tongue and saliva[p]
At the same time, I coat my hand in the juices flowing from her pussy and caress her slit[p]

[_tb_end_text]

[chara_mod  name="H_配信_顔"  time="0"  cross="false"  storage="chara/33/配信43.png"  ]
[call  storage="__Main_Night_Option.ks"  target="*__お触り単発弱"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Ah[heart]・・・Mmh[heart]・・・[p]
#
[_tb_end_text]

[chara_mod  name="H_配信_顔"  time="0"  cross="false"  storage="chara/33/配信42.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
・・・Hah・・・hah[p]
S-Sorry, I might be feeling a little under the weather[p]
#
[_tb_end_text]

[call  storage="__Main_Night_Option.ks"  target="*__お触り単発弱"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Mmh[heart]・・・[p]
#
I bury my face in [emb exp="f.Imo_Name"]'s crotch, making obscene wet sucking sounds just inside my mouth[p]
Her soft thighs clamp around my face, and I feel her tensing up with pleasure[p]
[_tb_end_text]

[chara_mod  name="H_配信_顔"  time="0"  cross="false"  storage="chara/33/配信43.png"  ]
[call  storage="__Main_Night_Option.ks"  target="*__お触り単発弱"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Mmh[heart]・・・Mmh[heart]・・・[p]
#
[_tb_end_text]

[chara_mod  name="H_配信_顔"  time="600"  cross="false"  storage="chara/33/配信72.png"  ]
[call  storage="__Main_Night_Option.ks"  target="*__お触り単発強"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Mmh[heart]・・Nnnhー[heart][heart][p]
#
[emb exp="f.Imo_Name"]'s body spasms violently[p]
Her body goes limp, and I feel the sensation of [emb exp="f.Imo_Name"] cumming on my tongue[p]
[_tb_end_text]

*__いかせるやめた先

[tb_show_message_window  ]
[chara_mod  name="H_配信_顔"  time="600"  cross="false"  storage="chara/33/配信31.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Hah・・hah・・[p]
U-Um, I'm going to end the stream here for today[p]
#
[_tb_end_text]

[chara_mod  name="H_配信_顔"  time="0"  cross="false"  storage="chara/33/配信51.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
S-Sorry, I'll stream again later[p]
#
She waves at the screen with a smile from the waist up[p]
Down below, I still have my face buried there, continuing to slurp on her clit[p]
[emb exp="f.Imo_Name"] cuts the stream with trembling hands[p]
[_tb_end_text]

[chara_hide_all  time="1000"  wait="true"  ]
[delete_individual_image  layer="1"  name="コメント"  ]
[delete_individual_image  layer="1"  name="ハート"  ]
[stopse  time="1000"  buf="3"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
G-Geez![p]
[emb exp="f.Oni_Name3"]！！[p]
Doing naughty stuff・・・is・・no fair・・[p]
Mmh・・・mmh[heart][p]
#
-Schlup・・・Schlup・・[p]
#&f.Imo_Name
Nnnh[heart]・・・Ah[heart][p]
H-Hey・・Ah[heart]Ah[heart]Ah[heart][p]
Jeez!!![p]
Ah[heart][heart][heart]・・・[p]
Aaahhh[heart][heart][heart]!![p]
#
・・・After making [emb exp="f.Imo_Name"] cum like that, I got a proper scolding[p]
・・・[p]
Later, it seemed we managed to fool the viewers[p]
And it was well-received, with people saying it was kinda erotic[p]
[_tb_end_text]

[tb_hide_message_window  ]
[jump  storage="__Main_Haisin_H.ks"  target="*__えっち処理終了"  ]
*__挿入する

[tb_eval  exp="f.H_Haisin_SeiyokuDown_Flag=1"  name="H_Haisin_SeiyokuDown_Flag"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.Sys_Seiryoku-=1"  name="Sys_Seiryoku"  cmd="-="  op="t"  val="1"  val_2="undefined"  ]
[tb_start_tyrano_code]
;始めては無条件飛び
[if exp="f.Haisin_Hfirst_Flag == 1 || f.Haisin_Hfirst_Flag == 11" ]
[eval exp="f.Haisin_Hfirst_Flag += 100"]
[jump target="*__えっちする選択"]
[endif]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;シーン見るかの選択肢
[glink  color="btn_05_black"  storage="__Main_Haisin_H.ks"  size="25"  x="510"  y="200"  width="250"  height="50"  text="Watch the scene"  target="*__えっちする選択" enterse="マウスオーバー.mp3"  clickse="決定ボタンを押す53.mp3" ]
[glink  color="btn_05_black"  storage="__Main_Haisin_H.ks"  size="25"  x="510"  y="300"  width="250"  height="50"  text="Quickie sex" target="*__省略する" enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3" ]

[_tb_end_tyrano_code]

[s  ]
[chara_show  name="H_配信_顔"  time="0"  wait="true"  storage="chara/33/配信72.png"  width="370"  height="660"  left="440"  top="60"  reflect="false"  ]
*__えっちする選択

[tb_replay_start  ]
[tb_start_tyrano_code]
;回想用
[bg  time="0"  method="crossfade"  storage="スキンシップ01.png" cond="tf._tb_is_replay == true"]
[chara_show  name="H_配信_顔"  time="0"  wait="true"  storage="chara/33/配信72.png"  width="370"  height="660"  left="440"  top="60"  reflect="false" cond="tf._tb_is_replay == true"]

[_tb_end_tyrano_code]

[tb_eval  exp="f.H_Haisin_cutbutton=0"  name="H_Haisin_cutbutton"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[delete_individual_image  layer="1"  name="配信カット"  ]
[individual_image  layer="1"  zindex="1"  storage="default/配信Hカット/配信カットえっち01.png"  width="400"  height="300"  x="30"  y="250"  _clickable_img=""  name="配信カット"  ]
[tb_start_tyrano_code]
[free layer=1 name="コメント" time=500 wait = false]
[image  layer="1"  zindex="1"  storage="default/配信Hカット補助/配信コメント13.png"  width="370"  height="660"  name="コメント"  x="440"  y="60" ]

[_tb_end_tyrano_code]

[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/吐息01.mp3"  loop="true"  ]
[playbgm  volume="30"  time="1000"  loop="true"  storage="PerituneMaterial_Enchanter3_Celesta_loop.mp3"  fadein="true"  ]
[call  storage="Main_Sta.ks"  target="*__roleのみ表示"  ]
[call  storage="Main_Sta.ks"  target="*__Hメインステ表示"  ]
[tb_start_tyrano_code]
[button target="*__配信カット消去ボタン"  graphic="配信カットボタン.png"  x="100"  y="100"  fix=true  exp="f.H_Haisin_cutbutton = 1" enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3" ]
[_tb_end_tyrano_code]

[tb_show_message_window  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Mmmmm[heart][heart]!!![p]
Mmm[heart]・・・[p]
[_tb_end_text]

[chara_mod  name="H_配信_顔"  time="600"  cross="false"  storage="chara/33/配信42.png"  ]
[tb_start_text mode=1 ]
Haa・・haa・・・[p]
#
Because she looked down when I inserted it, worried comments are flowing[p]
[_tb_end_text]

[chara_mod  name="H_配信_顔"  time="0"  cross="false"  storage="chara/33/配信33.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
I-I'm fine, I was sitting seiza style, so my legs started hurting[p]
Ehehe[heart][p]
#
Her pussy is warm after insertion, gently squeezing and wrapping around my dick that's buried to the base[p]
Maybe she's nervous, the folds inside her pussy are wriggling, caressing my member[p]
Just being inside her feels incredibly good[p]
[emb exp="f.Imo_Name"] is trying to continue her stream[p]
I slowly move up and down without being noticed[p]
[_tb_end_text]

[chara_mod  name="H_配信_顔"  time="0"  cross="false"  storage="chara/33/配信アニメ11.png"  ]
[tb_start_tyrano_code]
[individual_image  layer="1"  zindex="1"  storage="default/配信Hカット/配信カットアニメ01_8.png"  width="400"  height="300"  x="30"  y="250" name="配信カット"  cond="f.H_Haisin_cutbutton == 0"]

[_tb_end_tyrano_code]

[playse  volume="100"  time="1000"  buf="1"  storage="ピストン系/配信H01.mp3"  loop="true"  ]
[call  storage="__Main_Night_Option.ks"  target="*__お触り単発弱"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Mmm!?[p]
Mmm[heart]・・・haa[heart]・・・haa[heart]・・・[p]
#
[_tb_end_text]

[chara_mod  name="H_配信_顔"  time="0"  cross="false"  storage="chara/33/配信アニメ01.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
R-right, my legs are getting numb, so I'm changing position[p]
#
ーsquish・・squish[p]
Slowly, slowly moving up and down[p]
Every time I thrust deep, I grind the head of my dick in circles[p]
[_tb_end_text]

[chara_mod  name="H_配信_顔"  time="0"  cross="false"  storage="chara/33/配信アニメ11.png"  ]
[call  storage="__Main_Night_Option.ks"  target="*__お触り単発弱"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Ah[heart]・・haa・・・mmm[heart][heart][p]
#
[_tb_end_text]

[chara_mod  name="H_配信_顔"  time="0"  cross="false"  storage="chara/33/配信アニメ01.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Oww, the numbness in my legs won't go away・・・ maybe・・・ mmm[heart][p]
I'll talk while・・・ mmm[heart]・・・ lifting my hips a bit[p]
#
She continues streaming, desperately trying not to show it on her face[p]
The comment section is filled with comments saying "That's erotic!"[p]
[emb exp="f.Imo_Name"] glances at those comments, her face turning bright red from embarrassment[p]
Ugh・・・ this is too erotic・・・[p]
I thrust into the pussy of this idol streamer who's desperately holding back, basking in a sense of superiority[p]

[_tb_end_text]

[tb_start_tyrano_code]
[keyframe name=tateyure]
[frame p=25% y=-10 ]
[frame p=75% y= 0]
[endkeyframe]

; [kanim][wa] 定義したキーフレームアニメーションをさっそく適用し、その完了を待ちます。
[kanim name="H_配信_顔" keyframe=tateyure time=1200 count=infinite easing = ease]
[kanim name="コメント" keyframe=tateyure time=1200 count=infinite easing = ease]
[kanim name="ハート" keyframe=tateyure time=1200 count=infinite easing = ease]
[wa]

; [stop_kanim] キーフレームアニメーションを切っておきます。
;[stop_kanim name=H_配信_顔]

[_tb_end_tyrano_code]

[chara_mod  name="H_配信_顔"  time="0"  cross="false"  storage="chara/33/配信アニメ22.png"  ]
[tb_start_tyrano_code]
[individual_image  layer="1"  zindex="1"  storage="default/配信Hカット/配信カットアニメ02_15.png"  width="400"  height="300"  x="30"  y="250" name="配信カット"  cond="f.H_Haisin_cutbutton == 0"]

[_tb_end_tyrano_code]

[playse  volume="100"  time="1000"  buf="1"  storage="ピストン系/配信H02.mp3"  loop="true"  ]
[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/吐息03.mp3"  loop="true"  ]
[call  storage="__Main_Night_Option.ks"  target="*__お触り単発弱"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Ah[heart][heart][heart]・・・[p]
#
[_tb_end_text]

[chara_mod  name="H_配信_顔"  time="0"  cross="false"  storage="chara/33/配信アニメ32.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
・・・mmm!![p]
#
Because I thrust upward, an obscene voice leaks out that sounds like a moan no matter how you listen to it[p]
The screen shakes slightly in time with my thrusts[p]
[_tb_end_text]

[chara_mod  name="H_配信_顔"  time="0"  cross="false"  storage="chara/33/配信アニメ02.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
・・・ah, no, geez[p]
My legs are numb, th-this is trouble・・・ mmm[heart]・・・[p]
#
She forcibly covers up the moan that slipped out[p]
The comment section is flowing at an incredible speed[p]
Ugh・・・ her pussy is tightening・・・[p]
She must be tensing up from embarrassment[p]
But showing that she's aroused, her lower body is soaking wet with love juices[p]
I keep rubbing her G-spot with the head of my dick in a sticky, slow manner[p]

[_tb_end_text]

[chara_mod  name="H_配信_顔"  time="0"  cross="false"  storage="chara/33/配信アニメ12.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
S-sorry, I'm going to do some stretching to get rid of the numbness in my legs・・・[p]
#
To cover it up, she pretends to be stretching[p]
Even while talking, her hips are moving slowly[p]
ーsquish・・・ squish・・・[p]
Squish・・・ squish・・[p]
Her lower body continues to make obscene sounds, though at a very low volume[p]
[_tb_end_text]

[chara_mod  name="H_配信_顔"  time="0"  cross="false"  storage="chara/33/配信アニメ32.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Mmm[heart]・・mmm[heart]・・・[p]
Mmmm[heart][heart]・・・ haa・・・ haa・・・[p]
#
Every time I push my dick in, her body moves up and down and the screen shakes a lot[p]
[emb exp="f.Imo_Name"] is desperately suppressing her moans[p]
#&f.Imo_Name
Mmm[heart]・・mmmm[heart][heart]・・・[p]
#
[_tb_end_text]

[chara_mod  name="H_配信_顔"  time="0"  cross="false"  storage="chara/33/配信アニメ22.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Ah[heart][p]
#
I don't know if she's fooling the viewers, but my hips are gradually getting bolder[p]
After pressing against her G-spot with the head of my dick and grinding past it[p]
When I pull my hips back, I hook the ridge of my dick against her G-spot, rubbing against her pussy walls with a wet squelch.[p]
Then, a small pop[heart] rings out.[p]
[_tb_end_text]

[tb_start_tyrano_code]
[keyframe name=tateyure]
[frame p=25% y=-20 ]
[frame p=75% y= 0]
[endkeyframe]

; [kanim][wa] 定義したキーフレームアニメーションをさっそく適用し、その完了を待ちます。
[kanim name="H_配信_顔" keyframe=tateyure time=750 count=infinite easing = ease]
[kanim name="コメント" keyframe=tateyure time=750 count=infinite easing = ease]
[kanim name="ハート" keyframe=tateyure time=750 count=infinite easing = ease]
[wa]

[_tb_end_tyrano_code]

[chara_mod  name="H_配信_顔"  time="0"  cross="false"  storage="chara/33/配信アニメ23.png"  ]
[tb_start_tyrano_code]
[individual_image  layer="1"  zindex="1"  storage="default/配信Hカット/配信カットアニメ03_24.png"  width="400"  height="300"  x="30"  y="250" name="配信カット"  cond="f.H_Haisin_cutbutton == 0"]

[_tb_end_tyrano_code]

[playse  volume="100"  time="1000"  buf="1"  storage="ピストン系/配信H03.mp3"  loop="true"  ]
[call  storage="__Main_Night_Option.ks"  target="*__お触り単発強"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Ahahh[heart][heart][heart][heart][heart][p]
#
[_tb_end_text]

[chara_mod  name="H_配信_顔"  time="0"  cross="false"  storage="chara/33/配信アニメ13.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Aahh[heart][p]
Ahh[heart] ・・・I, I'm・・・ the numbness in my legs・・・ is mostly・・・[p]
Nngh[heart][heart] ・・・maybe it's getting better・・・[p]
Ahh[heart] ・・Ahh[heart][heart]・・[p]
#
[emb exp="f.Imo_Name"] is moving her hips on her own.[p]
#&f.Imo_Name
Hahh・・・ hahh・・ nngh[heart][heart][p]
Ahh[heart] ・・Ahh[heart] ・・・Ahh[heart][p]
#
It's hard to call this stretching, but the viewers are getting incredibly excited by these lewd sighs.[p]
I'm fucking a pure and innocent idol being watched by thousands.[p]
The excitement from this sense of superiority makes me feel my sperm rising right to the edge.[p]
[_tb_end_text]

[chara_mod  name="H_配信_顔"  time="600"  cross="false"  storage="chara/33/配信72.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Nngh[heart][heart][heart][p]
Nnh[heart]!![p]
#
As [emb exp="f.Imo_Name"] trembles and shakes her hips through her climax, I push the head of my dick deep against her womb.[p]
[emb exp="f.Imo_Name"]'s hips are spasming so much she can't even lift her head anymore.[p]

[_tb_end_text]

[chara_mod  name="H_配信_顔"  time="600"  cross="false"  storage="chara/33/配信アニメ03.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
But・・・ a little more・・・ nnh[heart]・・・[p]
・・・I'll try・・・ doing some・・・ intense stretching exercises・・・ okay[heart][p]
#
[_tb_end_text]

[tb_show_message_window  ]
[tb_start_tyrano_code]
[keyframe name=tateyure]
[frame p=25% y=-30 ]
[frame p=75% y= 0]
[endkeyframe]

; [kanim][wa] 定義したキーフレームアニメーションをさっそく適用し、その完了を待ちます。
[kanim name="H_配信_顔" keyframe=tateyure time=400 count=infinite easing = ease]
[kanim name="コメント" keyframe=tateyure time=400 count=infinite easing = ease]
[kanim name="ハート" keyframe=tateyure time=400 count=infinite easing = ease]
[wa]

[_tb_end_tyrano_code]

[chara_mod  name="H_配信_顔"  time="0"  cross="false"  storage="chara/33/配信アニメ34.png"  ]
[tb_start_tyrano_code]
[individual_image  layer="1"  zindex="1"  storage="default/配信Hカット/配信カットアニメ04_45.png"  width="400"  height="300"  x="30"  y="250" name="配信カット"  cond="f.H_Haisin_cutbutton == 0"]

[_tb_end_tyrano_code]

[playse  volume="100"  time="1000"  buf="1"  storage="ピストン系/配信H04.mp3"  loop="true"  ]
[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/16喘ぎ声(挿入我慢)01.mp3"  loop="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Nnh[heart][heart][heart]!?[p]
#
[_tb_end_text]

[chara_mod  name="H_配信_顔"  time="0"  cross="false"  storage="chara/33/配信アニメ14.png"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Nnh[heart][p]
#
To reach my finish, I thrust hard up into [emb exp="f.Imo_Name"]'s pussy.[p]
The screen shakes, and our bodies move up and down.[p]
Trying to humiliate [emb exp="f.Imo_Name"] even more, who can't look at the screen at all out of shame, I pound hard against her womb.[p]
#&f.Imo_Name
Ahh[heart] ・・Hahh・・・ Ahh[heart] ・・Hahh hahh・・・[p]
Ahh[heart] ・・・Ann[heart][heart] ・・・Aahh[heart][heart][heart][p]
#
Her voice is leaking out, teetering on a line where it's doubtful she's fooling anyone.[p]
But that danger is what excites me・・・ and [emb exp="f.Imo_Name"].[p]
In front of the viewers, while streaming・・・ I want to breed her!![p]
I want to defile this beautiful girl known for her purity in front of a huge crowd・・・ by injecting my sperm inside her pussy!![p]
--squelch・・・ squelch[p]

[_tb_end_text]

[chara_mod  name="H_配信_顔"  time="0"  cross="false"  storage="chara/33/配信72.png"  ]
[call  storage="__Main_Night_Option.ks"  target="*__お触り単発弱"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Haahh[heart] ・・Ahahh[heart][p]
Nnh・・・ Nnnggh[heart][p]
#
Her face bright red, [emb exp="f.Imo_Name"] is trying her best to endure it.[p]
Overwhelmed by shame, she keeps her head down and desperately tries to hold back her moans.[p]
#&f.Imo_Name
Nnh[heart] ・・・Nnnu[heart] ・・Ahh[heart]・・・[p]
Ahh[heart] ・・・Ahh[heart] ・・・Ahh[heart] ・・・Ahh[heart][heart][heart][p]
#
I show it off to the viewers.[p]
I'll make them realize I'm the one who truly loves her!![p]
[emb exp="f.Imo_Name"] is mine!![p]
I can't suppress my desire to conquer.[p]
I can feel the sperm rising up my shaft.[p]
I'm going to ram my seed deep into [emb exp="f.Imo_Name"]'s dripping wet pussy and breed her!![p]
#&f.Imo_Name
Nngh nngh[heart]!! ・・・Nngh nngh[heart]!![p]
Nngh oohh[heart][heart][heart]!![p]
#
I triumph over the faceless viewers.[p]
Bet you're jealous.[p]
The idol you guys are in love with・・・ is straddling my dick right now and loving it[p]
The beautiful girl on the screen is happily thrusting on my dick[p]
I'll impregnate her right in front of your eyes[p]
Watch closely as I pour every last drop of cum into your idol[p]
Be jealous・・・ I'm cumming!![p]
Get pregnant!![p]
I'm cumming・・・ Get pregnant!!![p]
[_tb_end_text]

[chara_mod  name="H_配信_顔"  time="0"  cross="false"  storage="chara/33/配信アニメ24.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Nnngh[heart]・・・ Nngh[heart][p]
Agh[heart][heart][heart]・・・ Nnghoh[heart][heart][heart][heart][heart][p]
[_tb_end_text]

[tb_hide_message_window  ]
[l  ]
[tb_hide_message_window  ]
[tb_start_tyrano_code]
[clearfix]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;回想モード用ジャンプ
[jump target="*__中で出す" cond="tf._tb_is_replay == true"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;シーン見るかの選択肢
[glink  color="btn_05_black"  storage="__Main_Haisin_H.ks"  size="25"  x="100"  y="100"  width="250"  height="50"  text="Cum inside"  target="*__中で出す" enterse="マウスオーバー.mp3"  clickse="決定ボタンを押す53.mp3" ]
[glink  color="btn_05_black"  storage="__Main_Haisin_H.ks"  size="25"  x="100"  y="150"  width="250"  height="50"  text="Cum outside" target="*__外で出す" enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3" ]

[_tb_end_tyrano_code]

[s  ]
*__中で出す

[chara_mod  name="H_配信_顔"  time="0"  cross="false"  storage="chara/33/配信72.png"  ]
[tb_start_tyrano_code]
; [stop_kanim] キーフレームアニメーションを切っておきます。
[stop_kanim name=H_配信_顔]
[stop_kanim name=ハート]
[stop_kanim name=コメント]

[_tb_end_tyrano_code]

[stopse  time="1000"  buf="1"  ]
[stopse  time="1000"  buf="3"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="えっち系/射精音02.mp3"  ]
[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/絶頂声のみ04.mp3"  ]
[tb_start_tyrano_code]
[individual_image  layer="1"  zindex="1"  storage="default/配信Hカット/配信カット射精.png"  width="400"  height="300"  x="30"  y="250" name="配信カット"  cond="f.H_Haisin_cutbutton == 0"]

[_tb_end_tyrano_code]

[wait  time="3000"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Nnnnngh[heart][heart][heart][heart][heart]!!![p]
#
-Squirt[heart]・・・ Spurt[heart]・・・[p]
Spurt[heart]・・・ Spurt[heart]・・・[p]
I shoot every last drop of my cum[p]

[_tb_end_text]

[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/吐息01.mp3"  loop="true"  ]
[chara_mod  name="H_配信_顔"  time="0"  cross="false"  storage="chara/33/配信71.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Ah[heart]・・・ Ahn[heart][p]
#
[emb exp="f.Imo_Name"] must have realized I came inside her, as she went limp and lowered her hips onto my dick[p]
Joined all the way to the base, I make the cum gurgle and churn inside her so it doesn't leak out[p]
#&f.Imo_Name
Mmh[heart]・・・[p]
#
[_tb_end_text]

[chara_mod  name="H_配信_顔"  time="600"  cross="false"  storage="chara/33/配信42.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Hah・・・ hah・・・[p]
Hah・・・ hah・・・[p]
#
She pants heavily for a while[p]

[_tb_end_text]

[chara_mod  name="H_配信_顔"  time="0"  cross="false"  storage="chara/33/配信51.png"  ]
[stopse  time="1000"  buf="3"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Uuugh, I exercised too much[heart][p]
I'm tired~[p]
I think I might have let out some weird noises[p]
Sorry[p]
#
She somehow manages to cover it up and talks to the viewers[p]
The viewers are・・・[p]

[_tb_end_text]

[tb_start_tyrano_code]
;回想モード用ジャンプ
[jump target="*__失敗" cond="tf._tb_is_replay == true"]
[_tb_end_tyrano_code]

[call  storage="__Main_Night_Option.ks"  target="*__妊娠判定"  ]
[tb_start_tyrano_code]
;中だし回数プラスカウント
[eval exp="f.Sex_Count[3].bestcount += 1"]
[eval exp="f.Sex_Count[4].count += 1"]
[_tb_end_tyrano_code]

[jump  storage="__Main_Haisin_H.ks"  target="*__成否処理"  ]
*__外で出す

[chara_mod  name="H_配信_顔"  time="0"  cross="false"  storage="chara/33/配信72.png"  ]
[tb_start_tyrano_code]
; [stop_kanim] キーフレームアニメーションを切っておきます。
[stop_kanim name=H_配信_顔]
[stop_kanim name=ハート]
[stop_kanim name=コメント]

[_tb_end_tyrano_code]

[stopse  time="1000"  buf="1"  ]
[stopse  time="1000"  buf="3"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="えっち系/射精音02.mp3"  ]
[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/絶頂声のみ04.mp3"  ]
[tb_start_tyrano_code]
[individual_image  layer="1"  zindex="1"  storage="default/配信Hカット/配信カット外だし.png"  width="400"  height="300"  x="30"  y="250" name="配信カット"  cond="f.H_Haisin_cutbutton == 0"]

[_tb_end_tyrano_code]

[wait  time="2000"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Nnnnngh[heart][heart][heart][heart][heart]!!![p]
#
-Squirt[heart]・・・ Spurt[heart]・・・[p]
Spurt[heart]・・・ Spurt[heart]・・・[p]
I pull my dick out and shoot every last drop of cum onto [emb exp="f.Imo_Name"]'s skirt[p]
[_tb_end_text]

[chara_mod  name="H_配信_顔"  time="0"  cross="false"  storage="chara/33/配信71.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Ah[heart]・・・ Mmh[heart]・・・[p]
Mmh[heart]・・・[p]
#
[emb exp="f.Imo_Name"] must have realized I came, as she relaxed and lowered her hips[p]
#&f.Imo_Name
Hah・・・ hah・・・[p]
Hah・・・ hah・・・[p]
#
She pants heavily face down for a while[p]
[_tb_end_text]

[stopse  time="1000"  buf="3"  ]
[chara_mod  name="H_配信_顔"  time="0"  cross="false"  storage="chara/33/配信42.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Uuugh, I exercised too much[heart][p]
I'm tired~[p]
I think I might have let out some weird noises[p]
Sorry[heart][p]
#
She somehow manages to cover it up and talks to the viewers[p]
The viewers are・・・[p]
[_tb_end_text]

[jump  storage="__Main_Haisin_H.ks"  target="*__成否処理"  ]
*__成否処理

[call  storage="__Main_Haisin_H_Option.ks"  target="*__ライブステアップ挿入"  ]
[tb_start_tyrano_code]
;成功失敗テキスト
[jump target="*__失敗" cond="tf.rand > 7"]

[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
#
Were raving about it[p]
Phew[p]
It seems they thought I was really exercising[p]
Comments calling it erotic are flying back and forth[p]
But some might have been suspicious[p]
I have to be careful not to overdo it[p]
[_tb_end_text]

[jump  storage="__Main_Haisin_H.ks"  target="*__成否処理後"  ]
*__失敗

[tb_start_text mode=1 ]
#
Were suspicious[p]
・・・This is・・・[p]
I might have overdone it[p]
Comments calling it erotic are flying back and forth[p]
I don't think it's completely exposed, but I have to be careful[p]
[_tb_end_text]

[stopse  time="1000"  buf="3"  ]
*__成否処理後

[tb_start_text mode=1 ]
#
[emb exp="f.Imo_Name"] continues the stream as if nothing happened, just as she is[p]
[_tb_end_text]

[chara_mod  name="H_配信_顔"  time="0"  cross="false"  storage="chara/33/配信33.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Right, right, so anyway![p]
#
・・・[p]
[emb exp="f.Imo_Name"] kept talking for over 10 minutes from there and ended the broadcast[p]

[_tb_end_text]

[delete_individual_image  layer="1"  name="配信カット"  ]
[delete_individual_image  layer="1"  name="コメント"  ]
[delete_individual_image  layer="1"  name="ハート"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
Stream finished![p]
[_tb_end_text]

[tb_hide_message_window  ]
[stopse  time="1000"  buf="0"  ]
[stopse  time="1000"  buf="1"  ]
[stopse  time="1000"  buf="2"  ]
[stopse  time="1000"  buf="3"  ]
[tb_start_tyrano_code]
;回想用BGM変更
[playbgm volume="20"  time="1000"  loop="true"  storage="PerituneMaterial_Sea_Breeze_loop.mp3" cond="tf._tb_is_replay == true" ]
[_tb_end_tyrano_code]

*__回想解放用

[tb_replay  id="配信H"  ]
[jump  storage="Live_H.ks"  target="*__回想解放用"  cond="sf.Clear_Flag_Kaisou==1"  ]
[call  storage="Main_Sta.ks"  target="*__メインステ表示"  ]
[tb_start_tyrano_code]
;sex回数プラスカウント
[eval exp="f.Sex_Count[1].bestcount += 1"]
[eval exp="f.Sex_Count[5].count += 1"]
[eval exp="f.Sex_Count[7].bestcount += 1"]

[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;開発回数プラスカウント
[eval exp="f.Kaihatu_Count[2].kazu += 1"]
[eval exp="f.Kaihatu_Count[3].kazu += 1"]

[_tb_end_tyrano_code]

[jump  storage="__Main_Haisin_H.ks"  target="*__挿入からの合流"  ]
*__省略する

[tb_hide_message_window  ]
[delete_individual_image  layer="1"  name="配信カット"  ]
[tb_start_tyrano_code]
[button target="*__配信カット消去ボタン"  graphic="配信カットボタン.png"  x="100"  y="100"  fix=true  exp="f.H_Haisin_cutbutton = 2" enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3" ]
[_tb_end_tyrano_code]

[chara_mod  name="H_配信_顔"  time="0"  cross="false"  storage="chara/33/配信アニメ02.png"  ]
[tb_start_tyrano_code]
[individual_image  layer="1"  zindex="1"  storage="default/配信Hカット/配信カットアニメ02_15.png"  width="400"  height="300"  x="30"  y="250" name="配信カット"  cond="f.H_Haisin_cutbutton == 0"]

[_tb_end_tyrano_code]

[playse  volume="100"  time="1000"  buf="1"  storage="ピストン系/配信H02.mp3"  loop="true"  ]
[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/吐息03.mp3"  loop="true"  ]
[tb_start_tyrano_code]
[free layer=1 name="コメント" time=500 wait = false]
[image  layer="1"  zindex="1"  storage="default/配信Hカット補助/配信コメント13.png"  width="370"  height="660"  name="コメント"  x="440"  y="60" ]

[_tb_end_tyrano_code]

[l  ]
[chara_mod  name="H_配信_顔"  time="0"  cross="false"  storage="chara/33/配信アニメ13.png"  ]
[tb_start_tyrano_code]
[individual_image  layer="1"  zindex="1"  storage="default/配信Hカット/配信カットアニメ03_24.png"  width="400"  height="300"  x="30"  y="250" name="配信カット"  cond="f.H_Haisin_cutbutton == 0"]

[_tb_end_tyrano_code]

[playse  volume="100"  time="1000"  buf="1"  storage="ピストン系/配信H03.mp3"  loop="true"  ]
[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/02喘ぎ声(前)02.mp3"  loop="true"  ]
[l  ]
[chara_mod  name="H_配信_顔"  time="0"  cross="false"  storage="chara/33/配信アニメ14.png"  ]
[tb_start_tyrano_code]
[individual_image  layer="1"  zindex="1"  storage="default/配信Hカット/配信カットアニメ04_45.png"  width="400"  height="300"  x="30"  y="250" name="配信カット"  cond="f.H_Haisin_cutbutton == 0"]

[_tb_end_tyrano_code]

[playse  volume="100"  time="1000"  buf="1"  storage="ピストン系/配信H04.mp3"  loop="true"  ]
[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/06喘ぎ声(挿入)01.mp3"  loop="true"  ]
[l  ]
[chara_mod  name="H_配信_顔"  time="0"  cross="false"  storage="chara/33/配信アニメ24.png"  ]
[tb_start_tyrano_code]
[individual_image  layer="1"  zindex="1"  storage="default/配信Hカット/配信カットアニメ04_45.png"  width="400"  height="300"  x="30"  y="250" name="配信カット"  cond="f.H_Haisin_cutbutton == 0"]

[_tb_end_tyrano_code]

[playse  volume="100"  time="1000"  buf="1"  storage="ピストン系/配信H04.mp3"  loop="true"  ]
[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/06喘ぎ声(挿入)01.mp3"  loop="true"  ]
[tb_start_tyrano_code]
[clearfix]
[_tb_end_tyrano_code]

[l  ]
[tb_start_tyrano_code]
;シーン見るかの選択肢
[glink  color="btn_05_black"  storage="__Main_Haisin_H.ks"  size="25"  x="100"  y="100"  width="250"  height="50"  text="Cum inside"  target="*__省略中出し" enterse="マウスオーバー.mp3"  clickse="決定ボタンを押す53.mp3" ]
[glink  color="btn_05_black"  storage="__Main_Haisin_H.ks"  size="25"  x="100"  y="150"  width="250"  height="50"  text="Cum outside" target="*__省略外出し" enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3" ]

[_tb_end_tyrano_code]

[s  ]
*__省略中出し

[chara_mod  name="H_配信_顔"  time="0"  cross="false"  storage="chara/33/配信43.png"  ]
[stopse  time="1000"  buf="1"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="えっち系/射精音02.mp3"  ]
[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/絶頂声のみ04.mp3"  ]
[tb_start_tyrano_code]
[individual_image  layer="1"  zindex="1"  storage="default/配信Hカット/配信カット射精.png"  width="400"  height="300"  x="30"  y="250" name="配信カット"  cond="f.H_Haisin_cutbutton == 0"]

[_tb_end_tyrano_code]

[wait  time="3000"  ]
[chara_mod  name="H_配信_顔"  time="1000"  cross="false"  storage="chara/33/配信31.png"  ]
[call  storage="__Main_Night_Option.ks"  target="*__妊娠判定"  ]
[tb_start_tyrano_code]
;中だし回数プラスカウント
[eval exp="f.Sex_Count[3].bestcount += 1"]
[eval exp="f.Sex_Count[4].count += 1"]
[_tb_end_tyrano_code]

[jump  storage="__Main_Haisin_H.ks"  target="*__省略射精後合流"  ]
*__省略外出し

[chara_mod  name="H_配信_顔"  time="0"  cross="false"  storage="chara/33/配信42.png"  ]
[stopse  time="1000"  buf="1"  ]
[stopse  time="1000"  buf="3"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="えっち系/射精音02.mp3"  ]
[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/絶頂声のみ04.mp3"  ]
[tb_start_tyrano_code]
[individual_image  layer="1"  zindex="1"  storage="default/配信Hカット/配信カット外だし.png"  width="400"  height="300"  x="30"  y="250" name="配信カット"  cond="f.H_Haisin_cutbutton == 0"]

[_tb_end_tyrano_code]

[wait  time="2000"  ]
[chara_mod  name="H_配信_顔"  time="1000"  cross="false"  storage="chara/33/配信33.png"  ]
*__省略射精後合流

[tb_show_message_window  ]
[tb_start_text mode=1 ]
Stream finished![p]
[_tb_end_text]

[tb_hide_message_window  ]
[delete_individual_image  layer="1"  name="配信カット"  ]
[delete_individual_image  layer="1"  name="コメント"  ]
[delete_individual_image  layer="1"  name="ハート"  ]
[stopse  time="1000"  buf="0"  ]
[stopse  time="1000"  buf="1"  ]
[stopse  time="1000"  buf="2"  ]
[stopse  time="1000"  buf="3"  ]
[tb_start_tyrano_code]
;sex回数プラスカウント
[eval exp="f.Sex_Count[1].bestcount += 1"]
[eval exp="f.Sex_Count[5].count += 1"]
[eval exp="f.Sex_Count[7].bestcount += 1"]

[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;開発回数プラスカウント
[eval exp="f.Kaihatu_Count[2].kazu += 1"]
[eval exp="f.Kaihatu_Count[3].kazu += 1"]

[_tb_end_tyrano_code]

[call  storage="Main_Sta.ks"  target="*__メインステ表示"  ]
[jump  storage="__Main_Haisin_H.ks"  target="*__挿入からの合流"  ]
*__配信カット消去ボタン

[delete_individual_image  layer="1"  name="配信カット"  ]
[tb_start_tyrano_code]
[clearfix]
[_tb_end_tyrano_code]

[jump  storage="__Main_Haisin_H.ks"  target="*__回想用ジャンプ"  cond="sf.Clear_Flag_Kaisou!=0"  ]
[font  size="18"  color="0xffffff"  face="JKG-M_3"  bold="true"  ]
[tb_start_tyrano_code]
;ライブ中のファン表示
[iscript]
f.ライブファン表示 = f.Fan_Live.toLocaleString();
[endscript]

[ptext layer="1" x="850" y="220" size="25" text="Fans" bold="bold" edge="0x000000" name="fan_kazu"]
[ptext layer="1" x="950" y="220" size="25" text="&f.ライブファン表示" width=150 align=right bold="bold" edge="0x000000" name="fan_kazu"]
[ptext layer="1" x="1110" y="220" size="25" text="People" bold="bold" edge="0x000000" name="fan_kazu"]

[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;ライブ中の疑惑と金表示
[iscript]
f.ライブファン表示 = f.Fan_Live.toLocaleString();
f.ライブマネー表示 = f.Money_Live.toLocaleString();

[endscript]

[ptext layer="1" x="860" y="70" size="25" text="Suspicion" bold="bold" edge="0x000000" name="giwaku_kazu"]
[ptext layer="1" x="910" y="70" size="25" text="&f.Giwaku_Live" width=50 align=right bold="bold" edge="0x000000" name="giwaku_kazu"]
[ptext layer="1" x="970" y="70" size="25" text="P" bold="bold" edge="0x000000" name="giwaku_kazu"]

[ptext layer="1" x="1000" y="70" size="25" text="Money" bold="bold" edge="0x000000" name="money_kazu"]
[ptext layer="1" x="1060" y="70" size="25" text="&f.ライブマネー表示" width=150 align=right bold="bold" edge="0x000000" name="money_kazu"]
[ptext layer="1" x="1220" y="70" size="25" text="¥" bold="bold" edge="0x000000" name="money_kazu"]

[_tb_end_tyrano_code]

[resetfont  ]
[tb_start_tyrano_code]
;ライブ窓
[image layer=1 time="0"  storage="default/ライブ窓.png"  width="450"  height="320"  x="825"  y="185"  name="live_window"  ]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;ゲージ表示初期表示
[image layer="1" storage="default/ゲージ2.png" x=880 y=280 width="&f.Live_Time" height=10 name="line"]
[_tb_end_tyrano_code]

*__回想用ジャンプ

[tb_start_tyrano_code]
;省略版は表示しない
[call storage="Main_Sta.ks" target="*__roleのみ表示" cond="f.H_Haisin_cutbutton ==1"]
[_tb_end_tyrano_code]

[call  storage="Main_Sta.ks"  target="*__Hメインステ表示"  ]
[return  ]
