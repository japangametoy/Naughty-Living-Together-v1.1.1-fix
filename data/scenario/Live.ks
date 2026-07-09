[_tb_system_call storage=system/_Live.ks]

[tb_start_tyrano_code]
[freeimage  layer="1"  ]
[layopt layer="1" visible="true" x=0 y=0]

[_tb_end_tyrano_code]

[tb_eval  exp="f.Live_Concent=1"  name="Live_Concent"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.Sys_Syume=32"  name="Sys_Syume"  cmd="="  op="t"  val="32"  val_2="undefined"  ]
[tb_eval  exp="f.Imo_Uta=86"  name="Imo_Uta"  cmd="="  op="t"  val="86"  val_2="undefined"  ]
[tb_eval  exp="f.Tutorial_On=0"  name="Tutorial_On"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.Imo_Dance=125"  name="Imo_Dance"  cmd="="  op="t"  val="125"  val_2="undefined"  ]
[tb_eval  exp="f.Imo_Engi=25"  name="Imo_Engi"  cmd="="  op="t"  val="25"  val_2="undefined"  ]
[tb_eval  exp="f.Imo_Wajutu=75"  name="Imo_Wajutu"  cmd="="  op="t"  val="75"  val_2="undefined"  ]
[tb_eval  exp="f.Live_roter_On=1"  name="Live_roter_On"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.Fan=400000"  name="Fan"  cmd="="  op="t"  val="400000"  val_2="undefined"  ]
[tb_eval  exp="f.Sta_Risei=0"  name="Sta_Risei"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="_Array_.ks"  target="*__配列宣言"  ]
[tb_eval  exp="f.Tre_Up=1"  name="Tre_Up"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
*__ライブ開始

[tb_eval  exp="f.Live_unc_limit=0"  name="Live_unc_limit"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[playbgm  volume="30"  time="1000"  loop="true"  storage="PerituneMaterial_Cafe_Seaside.mp3"  ]
[tb_start_tyrano_code]
;集中本の有無
[if exp="f.my_Item[16].my_kazu >= 1"]
[eval exp="f.Live_Concent =1"]
[endif]
[_tb_end_tyrano_code]

[tb_eval  exp="f.Before_Zoku='aa'"  name="Before_Zoku"  cmd="="  op="t"  val="aa"  val_2="undefined"  ]
[tb_eval  exp="f.Live_Combo=0"  name="Live_Combo"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[mask  time="300"  effect="fadeIn"  color="0x000000"  ]
[tb_image_hide  time="0"  ]
[call  storage="Main_Sta.ks"  target="*__メインステ表示"  ]
[chara_hide_all  time="0"  wait="false"  ]
[tb_eval  exp="f.Fan_Live=0"  name="Fan_Live"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.Live_Time=0"  name="Live_Time"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[jump  storage="Tutorial.ks"  target="*__ライブチュートリアル"  cond="f.Tutorial_On==1"  ]
[jump  storage="Tutorial.ks"  target="*__ライブローターチュートリアル"  cond="f.Live_roter_first==1"  ]
*__チュートリアル戻り先

[bg  time="0"  method="crossfade"  storage="BG_Black.png"  ]
[mask_off  time="300"  effect="fadeOut"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
・・・The concert is starting!![p]
[_tb_end_text]

[tb_hide_message_window  ]
[bg  time="1000"  method="crossfade"  storage="ライブ一枚絵.png"  ]
[tb_start_tyrano_code]
[clearfix]
[_tb_end_tyrano_code]

*__ライブ戻り位置

[call  storage="Main_Sta.ks"  target="*__Liveステ表示"  ]
[tb_start_tyrano_code]
[free layer=1 name="fan_kazu"]
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

[resetfont  ]
[jump  storage="Live.ks"  target="*__時間切れ"  cond="f.Live_Time>359"  ]
[tb_start_tyrano_code]
;ランダム生成
[getrand var="f.Live_Randam_1" min="0" max="100"]
[getrand var="f.Live_Randam_2" min="0" max="100"]
[getrand var="f.Live_Randam_3" min="0" max="100"]

[iscript]
f.Live_array = [f.Live_Randam_1,f.Live_Randam_2,f.Live_Randam_3];

[endscript]

;ローターフラグ0、1は正常　2で異常
[if exp="f.Live_roter_On <=1"]

[for name=f.i from=0 to=2]
[if exp="f.Live_array[f.i] >= 28 && f.Live_array[f.i]  < 33"]
[eval exp="f.Live_array[f.i]  = 0"]
[elsif exp="f.Live_array[f.i]  >= 33 && f.Live_array[f.i]  < 38"]
[eval exp="f.Live_array[f.i]  = 5"]
[elsif exp="f.Live_array[f.i]  >= 38 && f.Live_array[f.i]  < 43"]
[eval exp="f.Live_array[f.i]  = 11"]
[elsif exp="f.Live_array[f.i]  >= 43 && f.Live_array[f.i]  < 48"]
[eval exp="f.Live_array[f.i]  = 17"]
[elsif exp="f.Live_array[f.i]  >= 48 && f.Live_array[f.i]  < 53"]
[eval exp="f.Live_array[f.i]  = 23"]
[elsif exp="f.Live_array[f.i]  >= 53 && f.Live_array[f.i]  < 58"]
[eval exp="f.Live_array[f.i]  = 1"]
[elsif exp="f.Live_array[f.i]  >= 58 && f.Live_array[f.i]  < 63"]
[eval exp="f.Live_array[f.i]  = 6"]
[elsif exp="f.Live_array[f.i]  >= 63 && f.Live_array[f.i]  < 68"]
[eval exp="f.Live_array[f.i]  = 12"]
[elsif exp="f.Live_array[f.i]  >= 68 && f.Live_array[f.i]  < 73"]
[eval exp="f.Live_array[f.i]  = 18"]
[elsif exp="f.Live_array[f.i]  >= 73 && f.Live_array[f.i]  < 78"]
[eval exp="f.Live_array[f.i]  = 24"]
[elsif exp="f.Live_array[f.i]  >= 78 && f.Live_array[f.i]  < 81"]
[eval exp="f.Live_array[f.i]  = 2"]
[elsif exp="f.Live_array[f.i]  >= 81 && f.Live_array[f.i]  < 84"]
[eval exp="f.Live_array[f.i]  = 7"]
[elsif exp="f.Live_array[f.i]  >= 84 && f.Live_array[f.i]  < 87"]
[eval exp="f.Live_array[f.i]  = 13"]
[elsif exp="f.Live_array[f.i]  >= 87 && f.Live_array[f.i]  < 90"]
[eval exp="f.Live_array[f.i]  = 19"]
[elsif exp="f.Live_array[f.i]  >= 90 && f.Live_array[f.i]  < 93"]
[eval exp="f.Live_array[f.i]  = 25"]
[elsif exp="f.Live_array[f.i]  >= 93 && f.Live_array[f.i]  < 95"]
[eval exp="f.Live_array[f.i]  = 8"]
[elsif exp="f.Live_array[f.i]  >= 95 && f.Live_array[f.i]  < 97"]
[eval exp="f.Live_array[f.i]  = 14"]
[elsif exp="f.Live_array[f.i]  >= 97 && f.Live_array[f.i]  < 99"]
[eval exp="f.Live_array[f.i]  = 20"]
[elsif exp="f.Live_array[f.i]  >= 99 && f.Live_array[f.i]  <= 100"]
[eval exp="f.Live_array[f.i]  = 26"]
[endif]
[nextfor]


;ローターオン
[elsif exp="f.Live_roter_On >=2"]

[for name=f.i from=0 to=2]
[if exp="f.Live_array[f.i] > 34 && f.Live_array[f.i]  < 42"]
[eval exp="f.Live_array[f.i]  = 29"]
[elsif exp="f.Live_array[f.i]  >= 42 && f.Live_array[f.i]  < 56"]
[eval exp="f.Live_array[f.i]  = 30"]
[elsif exp="f.Live_array[f.i]  >= 56 && f.Live_array[f.i]  < 86"]
[eval exp="f.Live_array[f.i]  = 31"]
[elsif exp="f.Live_array[f.i]  >= 86 && f.Live_array[f.i]  < 95"]
[eval exp="f.Live_array[f.i]  = 32"]
[elsif exp="f.Live_array[f.i]  >= 95 && f.Live_array[f.i]  < 100"]
[eval exp="f.Live_array[f.i]  = 33"]
[elsif exp="f.Live_array[f.i]  == 100"]
[eval exp="f.Live_array[f.i]  = 34"]

[endif]
[nextfor]

[endif]

[_tb_end_tyrano_code]

*__ローター戻り先

[playse  volume="100"  time="1000"  buf="1"  storage="カードディール02.mp3"  ]
[wait  time="50"  ]
[tb_start_tyrano_code]
;ライブカード選択肢表示
[button  storage="Live.ks"  target="*__ライブ処理_1"  graphic="&f.Live_Card[f.Live_array[0] ].file"  width="120"  height="150"  x="850"  y="380"  _clickable_img=""  name="Live_image1" enterse="カーソル移動12.mp3" exp="f.i=0"]
[anim name="Live_image1" time=300 top=330 effect="easeOutQuart"]

[button  storage="Live.ks"  target="*__ライブ処理_1"  graphic="&f.Live_Card[f.Live_array[1] ].file"  width="120"  height="150"  x="990"  y="380"  _clickable_img=""  name="Live_image2" enterse="カーソル移動12.mp3" exp="f.i=1"]
[anim name="Live_image2" time=700 top=330 effect="easeOutQuart"]

[button  storage="Live.ks"  target="*__ライブ処理_1"  graphic="&f.Live_Card[f.Live_array[2] ].file"  width="120"  height="150"  x="1130"  y="380"  _clickable_img=""  name="Live_image3" enterse="カーソル移動12.mp3" exp="f.i=2"]
[anim name="Live_image3" time=1000 top=330 effect="easeOutQuart"]

[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;集中ボタン　配置
[if exp="f.Live_Concent ==1 && f.Live_roter_On == 0"]
[button storage="Live.ks"  target="*__集中処理"  graphic="ライブ集中02.png" enterimg="ライブ集中01.png" width="55"  height="30"  x="1180"  y="218"  name="Concent" hint="Redraw cards once" exp="f.Live_Concent =0" enterse="カーソル移動12.mp3" clickse="決定ボタンを押す53.mp3"]

[elsif exp="f.Live_Concent ==1 && f.Live_roter_On >= 1"]
[button storage="Live.ks"  target="*__集中処理"  graphic="ライブ集中02.png" enterimg="ライブ集中01.png" width="55"  height="30"  x="1180"  y="202"  name="Concent" hint="Redraw cards once" exp="f.Live_Concent =0" enterse="カーソル移動12.mp3" clickse="決定ボタンを押す53.mp3"]
[endif]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;ローターボタン　配置
;変数f.Live_roter_On 1 表示　2　スイッチオン状態
[if exp="f.Live_roter_On ==1"]
[button storage="Live.ks"  target="*__ローターオン"  graphic="ライブ集中12.png" enterimg="ライブ集中11.png" width="55"  height="30"  x="1180"  y="237"  name="roter" hint="Turn on remote rotor" exp="f.Live_roter_On =2" enterse="カーソル移動12.mp3" clickse="決定ボタンを押す53.mp3"]
[endif]

[if exp="f.Live_roter_On >=2"]
[button storage="Live.ks"  target="*__ローターオフ"  graphic="ライブ集中22.png" enterimg="ライブ集中21.png" width="55"  height="30"  x="1180"  y="237"  name="roter" hint="Turn off remote rotor" exp="f.Live_roter_On =1" enterse="カーソル移動12.mp3" clickse="決定ボタンを押す53.mp3"]
[endif]
[_tb_end_tyrano_code]

[s  ]
*__集中処理

[tb_start_tyrano_code]
[cm]
[_tb_end_tyrano_code]

[jump  storage="Live.ks"  target="*__ライブ戻り位置"  ]
*__ローターオン

[intrandom_ko10panda  max="5"  count="1"  show_result="false"  show_style="style_a"  show_detail="false"  detail_length="10"  show_log="log_4"  var_name="tf.rand"  ]
[tb_start_tyrano_code]
;疑惑Treに代入
[eval exp="f.Tre_Up = tf.rand"]
[_tb_end_tyrano_code]

[call  storage="Tre_Sta_Up.ks"  target="*__疑惑UP"  ]
[tb_start_tyrano_code]
[cm]
[_tb_end_tyrano_code]

[bg  time="1000"  method="fadeIn"  storage="ライブ一枚絵2.png"  cross="true"  ]
[playbgm  volume="30"  time="1000"  loop="true"  storage="PerituneMaterial_Enchanter3_Celesta_loop.mp3"  ]
[call  storage="Main_Sta.ks"  target="*__メインステ表示"  ]
[jump  storage="Live.ks"  target="*__ローター戻り先"  ]
*__ローターオフ

[tb_start_tyrano_code]
[cm]
[_tb_end_tyrano_code]

[bg  time="1000"  method="fadeIn"  storage="ライブ一枚絵.png"  cross="true"  ]
[playbgm  volume="30"  time="1000"  loop="true"  storage="PerituneMaterial_Cafe_Seaside.mp3"  ]
[jump  storage="Live.ks"  target="*__ローター戻り先"  ]
*__ライブ処理_1

[tb_start_tyrano_code]
[cm]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;ファン数アップ処理
;容姿
[if exp="f.Live_Card[f.Live_array[f.i]].zoku == 'Youshi' "]
[eval exp="f.Tre_Up = f.Live_Card[f.Live_array[f.i] ].rise * f.Imo_Youshi * (f.Sys_Syume/10)"]

;歌
[elsif exp="f.Live_Card[f.Live_array[f.i]].zoku == 'Uta' "]
[eval exp="f.Tre_Up = f.Live_Card[f.Live_array[f.i] ].rise * f.Imo_Uta* (f.Sys_Syume/10)"]

;ダンス
[elsif exp="f.Live_Card[f.Live_array[f.i]].zoku == 'Dance' "]
[eval exp="f.Tre_Up = f.Live_Card[f.Live_array[f.i] ].rise * f.Imo_Dance* (f.Sys_Syume/10)"]

;演技
[elsif exp="f.Live_Card[f.Live_array[f.i]].zoku == 'Engi' "]
[eval exp="f.Tre_Up = f.Live_Card[f.Live_array[f.i] ].rise * f.Imo_Engi* (f.Sys_Syume/10)"]

;話術
[elsif exp="f.Live_Card[f.Live_array[f.i]].zoku == 'Wajutu' "]
[eval exp="f.Tre_Up = f.Live_Card[f.Live_array[f.i] ].rise * f.Imo_Wajutu* (f.Sys_Syume/10)"]

;全て
[elsif exp="f.Live_Card[f.Live_array[f.i]].zoku == 'All' "]
[eval exp="f.Tre_Up = f.Live_Card[f.Live_array[f.i]] .rise * (f.Imo_Uta + f.Imo_Dance + f.Imo_Engi + f.Imo_Wajutu)*0.5* (f.Sys_Syume/10)"]

[endif]

[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;同じ属だった場合コンボ＋１
[if exp="f.Before_Zoku == f.Live_Card[f.Live_array[f.i] ].zoku"]
[eval exp="f.Live_Combo += 1"]
[else]
[eval exp="f.Before_Zoku =f.Live_Card[f.Live_array[f.i] ].zoku"]
[eval exp="f.Live_Combo = 0"]
[endif]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;コンボ判定

[if exp="f.Live_Combo > 0"]
[eval exp="f.コンボ数 = f.Live_Combo + 'COMBO'"]
[free layer=1 name="combo"]
[ptext layer=1 text="&f.コンボ数" x=1050 y=180 size=25 face="JKG-M_3" color="0xffffff" name="combo" bold="bold" edge="0x000000" width=200 align="right"]
[anim left=1050 top=160 name="combo" time=500"]
[eval exp="f.Tre_Up += f.Tre_Up * (1 + f.Live_Combo * 0.1)"]
[else]
[free layer=1 name="combo"]
[endif]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;小数点以下切り捨て
[iscript]
f.Tre_Up = Math.floor(f.Tre_Up);
[endscript]

[_tb_end_tyrano_code]

[call  storage="Tre_Sta_Up.ks"  target="*__ライブファン数UP"  ]
[tb_start_tyrano_code]
;ライブ時間アップ処理
[eval exp="f.Live_Time += f.Live_Card[f.Live_array[f.i] ].time * 2"]
[_tb_end_tyrano_code]

[call  storage="Tre_Bar.ks"  target="*__Live時間バー増減処理"  ]
[jump  storage="Live.ks"  target="*__ライブ戻り位置"  ]
[s  ]
*__時間切れ

[tb_start_tyrano_code]
;アンコール判定
[getrand var="f.Kaiwa_Random" min="0" max="1"]

;50％で継続
[if exp="f.Kaiwa_Random == 0 || f.Live_unc_limit >=5"]
[jump target=*__アンコール終了]

[elsif exp="f.Kaiwa_Random == 1"]
[playse  volume="100"  time="1000"  buf="3"  storage="シャキーン3.mp3"  ]
[mtext layer=1 text="Encore!!" x=850 y=150 size=30 face="JKG-M_3" color="0xffffff" name="ancole" bold="bold" edge="0x000000" in_effect="fadeInRightBig" in_sync="true" time=1000 out_effect="fadeOutRightBig" out_sync="true"]
[eval exp="f.Live_unc_limit += 1"]
[eval exp="f.Live_Time=359"]
[jump storage="Live.ks" target=*__ライブ戻り位置]
[endif]
[_tb_end_tyrano_code]

*__アンコール終了

[call  storage="Main_Sta.ks"  target="*__メインステ表示"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
The live is over![p]
[_tb_end_text]

[tb_hide_message_window  ]
[tb_eval  exp="f.Tre_Up=f.Fan_Live"  name="Tre_Up"  cmd="="  op="h"  val="Fan_Live"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__ファン数UP"  ]
[call  storage="Main_Sta.ks"  target="*__メインステ表示"  ]
[mask  time="300"  effect="fadeIn"  color="0x000000"  ]
[bg  time="0"  method="crossfade"  storage="BG_Black.png"  ]
[tb_image_hide  time="0"  ]
[tb_start_tyrano_code]
;ファン数70マン、理性0　でライブ後ジャンプ
[jump  storage="Live_H.ks"  target="*__ライブ後えっち" cond="f.Fan >= 700000 && f.Sta_Risei == 0 &&f.Live_roter_On >= 1"]
[_tb_end_tyrano_code]

[tb_eval  exp="f.Live_roter_On=0"  name="Live_roter_On"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[jump  storage="__Main_Kyuuka.ks"  target="*___イベント終了時間経過"  ]
[s  ]
