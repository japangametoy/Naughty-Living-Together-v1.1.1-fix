[_tb_system_call storage=system/_Tre_Select.ks]

[call  storage="_Array_.ks"  target="*__配列宣言"  ]
[call  storage="_Array_Kaihatu.ks"  target="*__開発配列初期化"  ]
[tb_eval  exp="f.Imo_Sougou=400"  name="Imo_Sougou"  cmd="="  op="t"  val="400"  val_2="undefined"  ]
[tb_eval  exp="f.Fan=1000"  name="Fan"  cmd="="  op="t"  val="1000"  val_2="undefined"  ]
[tb_eval  exp="f.Sys_Syume=10"  name="Sys_Syume"  cmd="="  op="t"  val="10"  val_2="undefined"  ]
[tb_eval  exp="f.Sta_Suki=70"  name="Sta_Suki"  cmd="="  op="t"  val="70"  val_2="undefined"  ]
[tb_eval  exp="f.Sta_Risei=0"  name="Sta_Risei"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_start_tyrano_code]
;ファン10万人既読 ファン50万人既読
[eval exp="f.talks[41].flag = true"]
[eval exp="f.talks[41].read = true"]
[eval exp="f.talks[44].flag = true"]
[eval exp="f.talks[44].read = true"]
[_tb_end_tyrano_code]

*__トレーニング

[playbgm  volume="20"  time="1000"  loop="true"  storage="PerituneMaterial_Sea_Breeze_loop.mp3"  ]
[tb_eval  exp="f.Tre_Select_Number=0"  name="Tre_Select_Number"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_start_tyrano_code]
[eval exp ="f.i = 4 - f.Sys_Syume%4"]
[if exp="f.i==4"]
[eval exp="f.i=0"]
[endif]

[eval exp="f.ライブカウント = f.i + ' week(s) until the concert'"]
[notice color=black top=130 right=0 width=150 height=45 size=15 text="&f.ライブカウント" wait=false wait_time=5000]
[_tb_end_tyrano_code]

[tb_eval  exp="f.Tre_Up=5"  name="Tre_Up"  cmd="="  op="t"  val="5"  val_2="undefined"  ]
[tb_eval  exp="f.Tre_Count=0"  name="Tre_Count"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_image_hide  time="1000"  ]
[cm  ]
[call  storage="Backgraund_Select.ks"  target="*__背景時間で選択"  ]
[call  storage="Main_Sta.ks"  target="*__メインステ表示"  ]
[tb_start_tyrano_code]
;ファン2０万人制服おっぱい既読判定
[jump target="*__ファン50万以上"  cond=" f.talks[41].flag && f.talks[41].read"]
[_tb_end_tyrano_code]

[chara_show  name="さくら07"  time="0"  wait="true"  storage="chara/19/キャラ待機71.png"  width="500"  height="550"  left="750"  top="170"  ]
[mask_off  time="300"  effect="fadeOut"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
It's Monday morning![p]
What should we do this week, I wonder.[p]
#
[_tb_end_text]

[tb_hide_message_window  ]
[font  size="18"  color="0x000000"  face="JKG-M_3"  bold="true"  ]
[tb_start_tyrano_code]
;週明け選択肢
[glink  color="btn_05_black"  storage="Tre_Select.ks"  size="25"  x="530"  y="150"  width="250"  height="50"  text="Singing Lesson"  _clickable_img=""  target="*__トレ選択後出勤まで" exp="f.Tre_Select_Number = 1" enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3"  ]
[glink  color="btn_05_black"  storage="Tre_Select.ks"  size="25"  x="530"  y="200"  width="250"  height="50"  text="Dance Lesson"  _clickable_img=""  target="*__トレ選択後出勤まで" exp="f.Tre_Select_Number = 2" enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3" ]
[glink  color="btn_05_black"  storage="Tre_Select.ks"  size="25"  x="530"  y="250"  width="250"  height="50"  text="Acting Lesson"  _clickable_img=""  target="*__トレ選択後出勤まで" exp="f.Tre_Select_Number = 3" enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3" ]
[glink  color="btn_05_black"  storage="Tre_Select.ks"  size="25"  x="530"  y="300"  width="250"  height="50"  text="Streaming"  _clickable_img=""  target="*__トレ選択後出勤まで" exp="f.Tre_Select_Number = 4" enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3" ]
[glink  color="btn_05_black"  storage="Tre_Select.ks"  size="25"  x="530"  y="350"  width="250"  height="50"  text="Part-time Job"  _clickable_img=""  target="*__トレ選択後出勤まで" exp="f.Tre_Select_Number = 5" enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3" ]
[glink  color="btn_05_black"  storage="Tre_Select.ks"  size="25"  x="530"  y="400"  width="250"  height="50"  text="Hang Out"  _clickable_img=""  target="*__トレ選択後出勤まで" exp="f.Tre_Select_Number = 6" enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3" ]
[_tb_end_tyrano_code]

[resetfont  ]
[s  ]
*__トレ選択後出勤まで

[chara_mod  name="さくら07"  time="0"  cross="false"  storage="chara/19/キャラ待機72.png"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Yeah, got it.[p]
Let's do our best this week too[p]
#
[_tb_end_text]

[mask  time="500"  effect="slideInRight"  color="0x000000"  ]
[stopse  time="1000"  buf="3"  ]
[chara_hide_all  time="0"  wait="true"  ]
[jump  storage="_Entrance.ks"  target="*__月曜見送り"  ]
*__見送り後トレーニング処理

[bg  time="1000"  method="crossfade"  storage="白背景.png"  ]
[intrandom_ko10panda  max="7"  count="1"  show_result="false"  show_style="style_a"  show_detail="false"  detail_length="10"  show_log="log_4"  var_name="tf.rand"  min="3"  ]
[tb_show_message_window  ]
[tb_start_tyrano_code]
;週目により増加量アップ
[eval exp="f.Tre_Up = tf.rand"]

[eval exp="f.Tre_Up += 1" cond="f.Sys_Syume > 4 && f.Sys_Syume <=  8"]
[eval exp="f.Tre_Up += 2" cond="f.Sys_Syume > 8 && f.Sys_Syume <= 16"]
[eval exp="f.Tre_Up += 3" cond="f.Sys_Syume > 16 && f.Sys_Syume <= 24 "]
[eval exp="f.Tre_Up += 4" cond="f.Sys_Syume > 24 && f.Sys_Syume <= 32"]
[eval exp="f.Tre_Up += 5" cond="f.Sys_Syume > 32 && f.Sys_Syume <= 40"]
[eval exp="f.Tre_Up += 6" cond="f.Sys_Syume > 40 && f.Sys_Syume <= 48"]
[eval exp="f.Tre_Up += 7" cond="f.Sys_Syume > 48"]

;
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;選択したトレーニング実施　場合分け
[switch exp="f.Tre_Select_Number"]
[case is=0]
Error.
[case is=1]
[jump target="*__歌レッスン"]
[case is=2]
[jump target="*__ダンスレッスン"]
[case is=3]
[jump target="*__演技レッスン"]
[case is=4]
[jump target="*__配信"]
[case is=5]
[jump target="*__バイト"]
[case is=6]
[jump target="*__遊ぶ"]

[endswitch]
[_tb_end_tyrano_code]

*__歌レッスン

[tb_eval  exp="f.Tre_Count=1"  name="Tre_Count"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_start_tyrano_code]
;画像表示　歌
[tb_image_show layer=1 time="0"  storage="default/イベントカット01歌レ.png"  width="500"  height="300"  x="450"  y="170"  name="img_35"]

[_tb_end_tyrano_code]

[call  storage="Tre_Bar.ks"  target="*__トレバー増減"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__歌UP"  ]
[tb_image_hide  time="0"  ]
[call  storage="Main_Sta.ks"  target="*__メインステ表示"  ]
[jump  storage="Tre_Select.ks"  target="*トレーニング終了"  ]
*__ダンスレッスン

[tb_eval  exp="f.Tre_Count=2"  name="Tre_Count"  cmd="="  op="t"  val="2"  val_2="undefined"  ]
[tb_start_tyrano_code]
;画像表示　ダンス
[tb_image_show time="0"  storage="default/イベントカット02ダンスレ.png"  width="500"  height="300"  x="450"  y="170"  name="img_43"]
[_tb_end_tyrano_code]

[call  storage="Tre_Bar.ks"  target="*__トレバー増減"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__ダンスUP"  ]
[tb_image_hide  time="0"  ]
[call  storage="Main_Sta.ks"  target="*__メインステ表示"  ]
[jump  storage="Tre_Select.ks"  target="*トレーニング終了"  ]
*__演技レッスン

[tb_eval  exp="f.Tre_Count=3"  name="Tre_Count"  cmd="="  op="t"  val="3"  val_2="undefined"  ]
[tb_start_tyrano_code]
;画像表示　演技
[tb_image_show time="0"  storage="default/イベントカット03演技レ.png"  width="500"  height="300"  x="450"  y="170"  name="img_51" ]
[_tb_end_tyrano_code]

[call  storage="Tre_Bar.ks"  target="*__トレバー増減"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__演技UP"  ]
[tb_image_hide  time="0"  ]
[call  storage="Main_Sta.ks"  target="*__メインステ表示"  ]
[jump  storage="Tre_Select.ks"  target="*トレーニング終了"  ]
*__配信

[tb_eval  exp="f.Tre_Count=4"  name="Tre_Count"  cmd="="  op="t"  val="4"  val_2="undefined"  ]
[tb_start_tyrano_code]
;画像表示　配信
[tb_image_show  time="0"  storage="default/イベントカット05配信.png"  width="500"  height="300"  x="450"  y="170"  name="img_59" ]
[_tb_end_tyrano_code]

[call  storage="Tre_Bar.ks"  target="*__トレバー増減"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__話術UP"  ]
[tb_image_hide  time="0"  ]
[call  storage="Main_Sta.ks"  target="*__メインステ表示"  ]
[jump  storage="Tre_Select.ks"  target="*トレーニング終了"  ]
*__バイト

[tb_eval  exp="f.Tre_Count=5"  name="Tre_Count"  cmd="="  op="t"  val="5"  val_2="undefined"  ]
[tb_start_tyrano_code]
;画像表示　バイト
[tb_image_show  time="0"  storage="default/イベントカット06バイト.png"  width="500"  height="300"  x="450"  y="170"  name="img_67" ]
[_tb_end_tyrano_code]

[call  storage="Tre_Bar.ks"  target="*__トレバー増減"  ]
[tb_start_tyrano_code]
;給料の1/4+5000　上限20,000
[eval exp="f.Tre_Up = Math.floor(f.Oni_Kyuryou / 4) + 2000 + (f.Sys_Syume * 100)"]
[eval exp="f.Tre_Up = 30000" cond="f.Tre_Up >= 30000"]
[_tb_end_tyrano_code]

[call  storage="Tre_Sta_Up.ks"  target="*__お金UP"  ]
[tb_image_hide  time="0"  ]
[call  storage="Main_Sta.ks"  target="*__メインステ表示"  ]
[jump  storage="Tre_Select.ks"  target="*トレーニング終了"  ]
*__遊ぶ

[tb_eval  exp="f.Tre_Count=6"  name="Tre_Count"  cmd="="  op="t"  val="6"  val_2="undefined"  ]
[tb_eval  exp="f.Tre_Up=1"  name="Tre_Up"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_start_tyrano_code]
;画像表示　遊ぶ
[tb_image_show  time="0"  storage="default/イベントカット07遊ぶ.png"  width="500"  height="300"  x="450"  y="170"  name="img_13" ]
[_tb_end_tyrano_code]

[call  storage="Tre_Bar.ks"  target="*__トレバー増減"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__理性DOWN"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__好きUP"  ]
[tb_image_hide  time="0"  ]
[call  storage="Main_Sta.ks"  target="*__メインステ表示"  ]
*トレーニング終了

[jump  storage="Tre_Select_Event.ks"  target="*__トレランダムイベント"  ]
*__トレイベント終了

[chara_hide_all  time="0"  wait="true"  ]
[jump  storage="scene1.ks"  target="*__トレーニング終了"  ]
[s  ]
[reset_camera  time="0"  wait="true"  ]
*__ファン50万以上

[chara_show  name="さくら09"  time="0"  wait="true"  storage="chara/41/キャラ待機A11.png"  width="430"  height="600"  left="845"  top="115"  ]
[mask_off  time="300"  effect="fadeOut"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
It's Monday morning, [emb exp="f.Oni_Name3"][heart][p]
Hey, hey[heart], what are we doing this week~[p]
#
[_tb_end_text]

[tb_hide_message_window  ]
[font  size="18"  color="0x000000"  face="JKG-M_3"  bold="true"  ]
[tb_start_tyrano_code]
;週明け選択肢
[glink  color="btn_05_black"  storage="Tre_Select.ks"  size="25"  x="530"  y="150"  width="250"  height="50"  text="Singing Lesson"  _clickable_img=""  target="*__トレ選択後出勤まで" exp="f.Tre_Select_Number = 1" enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3"  ]
[glink  color="btn_05_black"  storage="Tre_Select.ks"  size="25"  x="530"  y="200"  width="250"  height="50"  text="Dance Lesson"  _clickable_img=""  target="*__トレ選択後出勤まで" exp="f.Tre_Select_Number = 2" enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3" ]
[glink  color="btn_05_black"  storage="Tre_Select.ks"  size="25"  x="530"  y="250"  width="250"  height="50"  text="Acting Lesson"  _clickable_img=""  target="*__トレ選択後出勤まで" exp="f.Tre_Select_Number = 3" enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3" ]
[glink  color="btn_05_black"  storage="Tre_Select.ks"  size="25"  x="530"  y="300"  width="250"  height="50"  text="Streaming"  _clickable_img=""  target="*__トレ選択後出勤まで" exp="f.Tre_Select_Number = 4" enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3" ]
[glink  color="btn_05_black"  storage="Tre_Select.ks"  size="25"  x="530"  y="350"  width="250"  height="50"  text="Part-time Job"  _clickable_img=""  target="*__トレ選択後出勤まで" exp="f.Tre_Select_Number = 5" enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3" ]
[glink  color="btn_05_black"  storage="Tre_Select.ks"  size="25"  x="530"  y="400"  width="250"  height="50"  text="Hang Out"  _clickable_img=""  target="*__トレ選択後出勤まで" exp="f.Tre_Select_Number = 6" enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3" ]
[glink  color="btn_05_black"  storage="Tre_Select.ks"  size="25"  x="530"  y="450"  width="250"  height="50"  text="Caress her breasts"  _clickable_img=""  target="*__おっぱい揉む" exp="f.Tre_Select_Number = 6" enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3" ]
[_tb_end_tyrano_code]

[resetfont  ]
[s  ]
*__おっぱい揉む

[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/01喘ぎ声(前)01.mp3"  loop="true"  ]
[chara_mod  name="さくら09"  time="0"  cross="true"  storage="chara/41/キャラ待機A11アニメ.png"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Mm[heart]・・・ Mm[heart][p]
Hey・・・ hey, what are we doing this week?[heart][p]
[_tb_end_text]

[tb_hide_message_window  ]
[font  size="18"  color="0x000000"  face="JKG-M_3"  bold="true"  ]
[tb_start_tyrano_code]
;週明け選択肢
[glink  color="btn_05_black"  storage="Tre_Select.ks"  size="25"  x="530"  y="150"  width="250"  height="50"  text="Singing Lesson"  _clickable_img=""  target="*__トレ選択後出勤まで" exp="f.Tre_Select_Number = 1" enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3"  ]
[glink  color="btn_05_black"  storage="Tre_Select.ks"  size="25"  x="530"  y="200"  width="250"  height="50"  text="Dance Lesson"  _clickable_img=""  target="*__トレ選択後出勤まで" exp="f.Tre_Select_Number = 2" enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3" ]
[glink  color="btn_05_black"  storage="Tre_Select.ks"  size="25"  x="530"  y="250"  width="250"  height="50"  text="Acting Lesson"  _clickable_img=""  target="*__トレ選択後出勤まで" exp="f.Tre_Select_Number = 3" enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3" ]
[glink  color="btn_05_black"  storage="Tre_Select.ks"  size="25"  x="530"  y="300"  width="250"  height="50"  text="Streaming"  _clickable_img=""  target="*__トレ選択後出勤まで" exp="f.Tre_Select_Number = 4" enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3" ]
[glink  color="btn_05_black"  storage="Tre_Select.ks"  size="25"  x="530"  y="350"  width="250"  height="50"  text="Part-time Job"  _clickable_img=""  target="*__トレ選択後出勤まで" exp="f.Tre_Select_Number = 5" enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3" ]
[glink  color="btn_05_black"  storage="Tre_Select.ks"  size="25"  x="530"  y="400"  width="250"  height="50"  text="Hang Out"  _clickable_img=""  target="*__トレ選択後出勤まで" exp="f.Tre_Select_Number = 6" enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3" ]
[glink  color="btn_05_black"  storage="Tre_Select.ks"  size="25"  x="530"  y="450"  width="250"  height="50"  text="Morning Sex"  cond="f.Sys_Seiryoku > 0 && f.talks[44].flag && f.talks[44].read"  target="*__早朝えっち" exp="f.Tre_Select_Number = 6" enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3" ]
[_tb_end_tyrano_code]

[resetfont  ]
[s  ]
*__早朝えっち

[mask  time="500"  effect="fadeIn"  color="0x000000"  ]
[chara_hide_all  time="0"  wait="true"  ]
[tb_start_tyrano_code]
[clearfix]
[freeimage  layer="2" ]
[_tb_end_tyrano_code]

[call  storage="Main_Sta.ks"  target="*__roleのみ表示"  ]
[call  storage="Main_Sta.ks"  target="*__Hメインステ表示"  ]
[tb_start_tyrano_code]
;キャラ登場　断面図で分岐
[chara_show  name="H_TV"  time="."  wait="true" x=0  y=0 storage="chara/42/テレビ01.png"  width="1280"  height="720"  cond="f.H_Danmen_Flag == 0" ]
[chara_show  name="H_TV"  time="."  wait="true" x=0  y=0 storage="chara/42/テレビ11.png"  width="1280"  height="720"  cond="f.H_Danmen_Flag == 1"]

[_tb_end_tyrano_code]

[tb_eval  exp="f.H_Entrance_DFlag=1"  name="H_Entrance_DFlag"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[mask_off  time="500"  effect="fadeOut"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="挿入音/挿入音後背位.mp3"  ]
[playse  volume="100"  time="1000"  buf="3"  storage="お触り単発/お触り18.mp3"  ]
[tb_start_tyrano_code]
;キャラ変更
[chara_mod  name="H_TV"  time="0"  cross="false"  storage="chara/42/テレビ挿入01.png" cond="f.H_Danmen_Flag == 0" ]
[chara_mod  name="H_TV"  time="0"  cross="false"  storage="chara/42/テレビ挿入11.png" cond="f.H_Danmen_Flag == 1" ]

[_tb_end_tyrano_code]

[tb_show_message_window  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Aaaah[heart]!!![p]
From the morning[heart]・・・ It's amazing[heart][heart][heart][p]
#
[_tb_end_text]

[tb_hide_message_window  ]
[l  ]
[tb_start_tyrano_code]
[button  storage="Tre_Select.ks"  target="*__断面図変更"  graphic="断面図on.png"  x="30"  y="470" exp="f.H_Danmen_Flag = 1" cond="f.H_Danmen_Flag == 0"  fix=true enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3"]
[button  storage="Tre_Select.ks"  target="*__断面図変更"  graphic="断面図off.png"  x="30"  y="470" exp="f.H_Danmen_Flag = 0" cond="f.H_Danmen_Flag == 1"  fix=true enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3"]

[_tb_end_tyrano_code]

[tb_eval  exp="f.H_Entrance_DFlag=2"  name="H_Entrance_DFlag"  cmd="="  op="t"  val="2"  val_2="undefined"  ]
[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/09喘ぎ声(挿入)04.mp3"  loop="true"  ]
[playse  volume="100"  time="1000"  buf="1"  storage="ピストン系/テレビ02.mp3"  loop="true"  ]
[tb_start_tyrano_code]
;キャラ変更
[chara_mod  name="H_TV"  time="0"  cross="false"  storage="chara/42/テレビアニメ22.png" cond="f.H_Danmen_Flag == 0" ]
[chara_mod  name="H_TV"  time="0"  cross="false"  storage="chara/42/テレビアニメ32.png" cond="f.H_Danmen_Flag == 1" ]

[_tb_end_tyrano_code]

[l  ]
[playse  volume="100"  time="1000"  buf="3"  loop="true"  storage="喘ぎ声/13喘ぎ声(オホ声)01.mp3"  ]
[playse  volume="100"  time="1000"  buf="1"  storage="ピストン系/テレビ03.mp3"  loop="true"  ]
[tb_start_tyrano_code]
;キャラ変更
[chara_mod  name="H_TV"  time="0"  cross="false"  storage="chara/42/テレビアニメ23.png" cond="f.H_Danmen_Flag == 0" ]
[chara_mod  name="H_TV"  time="0"  cross="false"  storage="chara/42/テレビアニメ33.png" cond="f.H_Danmen_Flag == 1" ]

[_tb_end_tyrano_code]

[l  ]
[tb_start_tyrano_code]
[clearfix]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;妹クリック後　選択肢
[glink  color="btn_05_black"  storage="Tre_Select.ks"  size="25"  x="530"  y="80"  width="250"  height="50"  text="Cum inside"  target="*__中に出す" enterse="マウスオーバー.mp3"  clickse="決定ボタンを押す53.mp3" ]
[glink  color="btn_05_black"   storage="Tre_Select.ks"  size="25"  x="530"  y="130"  width="250"  height="50"  text="Cum outside" target="*__外に出す" enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3" ]
[_tb_end_tyrano_code]

[s  ]
*__中に出す

[intrandom_ko10panda  max="4"  count="1"  show_result="false"  show_style="style_a"  show_detail="false"  detail_length="10"  show_log="log_4"  var_name="tf.rand"  ]
[tb_start_tyrano_code]
;射精音

[switch exp="f.rand"]
[case is=1]
[ptext layer="1" x="950" y="180" size="30" text="Twitch♥" name="Kouka01"  zindex=100 edge="0xffffff" color="0x000000" edge="0xffffff" face="JK-Gothic-testM"  bold="true"]
[ptext layer="1" x="750" y="180" size="30" text="Twitch♥" name="Kouka02"  zindex=100 edge="0xffffff" color="0x000000" edge="0xffffff" face="JK-Gothic-testM"  bold="true"]
[anim name="Kouka01" left=970 top=160  opacity=0 time=3000]
[anim name="Kouka02" left=730 top=160  opacity=0 time=3000]

[case is=2]
[ptext layer="1" x="950" y="180" size="30" text="Throb♥" name="Kouka01"  zindex=100 edge="0xffffff" color="0x000000" edge="0xffffff" face="JK-Gothic-testM"  bold="true"]
[ptext layer="1" x="750" y="180" size="30" text="Throb♥" name="Kouka02"  zindex=100 edge="0xffffff" color="0x000000" edge="0xffffff" face="JK-Gothic-testM"  bold="true"]
[anim name="Kouka01" left=970 top=160  opacity=0 time=3000]
[anim name="Kouka02" left=730 top=160  opacity=0 time=3000]

[case is=3]
[ptext layer="1" x="950" y="180" size="30" text="Spurt♥" name="Kouka01"  zindex=100 edge="0xffffff" color="0x000000" edge="0xffffff" face="JK-Gothic-testM"  bold="true"]
[ptext layer="1" x="750" y="180" size="30" text="Spurt♥" name="Kouka02"  zindex=100 edge="0xffffff" color="0x000000" edge="0xffffff" face="JK-Gothic-testM"  bold="true"]
[anim name="Kouka01" left=970 top=160  opacity=0 time=3000]
[anim name="Kouka02" left=730 top=160  opacity=0 time=3000]

[case is=4]
[ptext layer="1" x="950" y="180" size="30" text="Gush♥" name="Kouka01"  zindex=100 edge="0xffffff" color="0x000000" edge="0xffffff" face="JK-Gothic-testM"  bold="true"]
[ptext layer="1" x="750" y="180" size="30" text="Gush♥" name="Kouka02"  zindex=100 edge="0xffffff" color="0x000000" edge="0xffffff" face="JK-Gothic-testM"  bold="true"]
[anim name="Kouka01" left=970 top=160  opacity=0 time=3000]
[anim name="Kouka02" left=730 top=160  opacity=0 time=3000]

[case]
[ptext layer="1" x="950" y="180" size="30" text="Throb♥" name="Kouka01"  zindex=100 edge="0xffffff" color="0x000000" edge="0xffffff" face="JK-Gothic-testM"  bold="true"]
[ptext layer="1" x="750" y="180" size="30" text="Throb♥" name="Kouka02"  zindex=100 edge="0xffffff" color="0x000000" edge="0xffffff" face="JK-Gothic-testM"  bold="true"]
[anim name="Kouka01" left=970 top=160  opacity=0 time=3000]
[anim name="Kouka02" left=730 top=160  opacity=0 time=3000]

[endswitch]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;中だし回数プラスカウント
[if exp="f.H_Sex_Anal ==0 && f.H_Condom_On ==0"]
[eval exp="f.Sex_Count[3].bestcount += 1"]
[eval exp="f.Sex_Count[4].count += 1"]
[endif]
[_tb_end_tyrano_code]

[call  storage="__Main_Night_Option.ks"  target="*__妊娠判定"  cond=""  ]
[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/絶頂声のみ03.mp3"  ]
[playse  volume="100"  time="1000"  buf="1"  storage="射精音/射精音正上位とプレス.mp3"  ]
[tb_start_tyrano_code]
;キャラ変更
[chara_mod  name="H_TV"  time="0"  cross="false"  storage="chara/42/テレビ射精02.png" cond="f.H_Danmen_Flag == 0" ]
[chara_mod  name="H_TV"  time="0"  cross="false"  storage="chara/42/テレビ射精12.png" cond="f.H_Danmen_Flag == 1" ]

[_tb_end_tyrano_code]

[wait  time="3000"  ]
[tb_start_tyrano_code]
;キャラ変更
[chara_mod  name="H_TV"  time="0"  cross="false"  storage="chara/42/テレビ射精待機02.png" cond="f.H_Danmen_Flag == 0" ]
[chara_mod  name="H_TV"  time="0"  cross="false"  storage="chara/42/テレビ射精待機12.png" cond="f.H_Danmen_Flag == 1" ]

[_tb_end_tyrano_code]

[jump  storage="Tre_Select.ks"  target="*__射精後"  ]
*__外に出す

[stopse  time="1000"  buf="3"  ]
[call  storage="__Main_Night_Option.ks"  target="*__お触り単発強"  ]
[playse  volume="100"  time="1000"  buf="1"  storage="えっち系/射精音02.mp3"  loop="false"  ]
[chara_mod  name="H_TV"  time="0"  cross="false"  storage="chara/42/テレビ外だし.png"  ]
[wait  time="2000"  ]
*__射精後

[call  storage="Main_Sta.ks"  target="*__メインステ表示"  ]
[tb_start_tyrano_code]
;回数カウント
[eval exp="f.Sex_Count[1].bestcount += 1"]
[_tb_end_tyrano_code]

[tb_show_message_window  ]
[tb_start_text mode=1 ]
#&f.Oni_Name3
・・・Phew[p]
#
[_tb_end_text]

[stopse  time="1000"  buf="0"  ]
[stopse  time="1000"  buf="1"  ]
[stopse  time="1000"  buf="3"  ]
[playse  volume="100"  time="1000"  buf="3"  loop="true"  storage="喘ぎ声/01喘ぎ声(前)01.mp3"  ]
[tb_eval  exp="f.Sys_Seiryoku-=1"  name="Sys_Seiryoku"  cmd="-="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.Tre_Up=1"  name="Tre_Up"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__歌UP"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__ダンスUP"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__演技UP"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__話術UP"  ]
[tb_eval  exp="f.Tre_Up=100"  name="Tre_Up"  cmd="="  op="t"  val="100"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__性欲DOWN"  ]
[tb_start_tyrano_code]
;開発回数プラスカウント
[eval exp="f.Kaihatu_Count[1].kazu += 1"]
[eval exp="f.Kaihatu_Count[3].kazu += 1"]

[_tb_end_tyrano_code]

[call  storage="H_Kaihatu_Upshori.ks"  target="*__開発アップ処理"  ]
[call  storage="_Array_Kaihatu.ks"  target="*__開発配列初期化"  ]
[tb_eval  exp="f.Tre_Up=5"  name="Tre_Up"  cmd="="  op="t"  val="5"  val_2="undefined"  ]
[call  storage="Main_Sta.ks"  target="*__メインステ表示"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Aaah[heart]・・・ Aah[heart][p]
Nnn・・・[heart][heart][heart][p]
Hah・・・ hah・・・ [emb exp="f.Oni_Name3"][heart][p]
I love you[heart]・・・[emb exp="f.Oni_Name3"][heart][heart][heart][p]
#
It's a refreshing Monday morning[p]
With my head cleared, I think it over[p]
Let's see・・・what should we do this week[p]
[_tb_end_text]

[tb_hide_message_window  ]
[font  size="18"  color="0x000000"  face="JKG-M_3"  bold="true"  ]
[tb_start_tyrano_code]
;週明け選択肢
[glink  color="btn_05_black"  storage="Tre_Select.ks"  size="25"  x="530"  y="150"  width="250"  height="50"  text="Singing Lesson"  _clickable_img=""  target="*__えっち後出勤まで" exp="f.Tre_Select_Number = 1" enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3"  ]
[glink  color="btn_05_black"  storage="Tre_Select.ks"  size="25"  x="530"  y="200"  width="250"  height="50"  text="Dance Lesson"  _clickable_img=""  target="*__えっち後出勤まで" exp="f.Tre_Select_Number = 2" enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3" ]
[glink  color="btn_05_black"  storage="Tre_Select.ks"  size="25"  x="530"  y="250"  width="250"  height="50"  text="Acting Lesson"  _clickable_img=""  target="*__えっち後出勤まで" exp="f.Tre_Select_Number = 3" enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3" ]
[glink  color="btn_05_black"  storage="Tre_Select.ks"  size="25"  x="530"  y="300"  width="250"  height="50"  text="Streaming"  _clickable_img=""  target="*__えっち後出勤まで" exp="f.Tre_Select_Number = 4" enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3" ]
[glink  color="btn_05_black"  storage="Tre_Select.ks"  size="25"  x="530"  y="350"  width="250"  height="50"  text="Part-time Job"  _clickable_img=""  target="*__えっち後出勤まで" exp="f.Tre_Select_Number = 5" enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3" ]
[glink  color="btn_05_black"  storage="Tre_Select.ks"  size="25"  x="530"  y="400"  width="250"  height="50"  text="Hang Out"  _clickable_img=""  target="*__えっち後出勤まで" exp="f.Tre_Select_Number = 6" enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3" ]
[_tb_end_tyrano_code]

[resetfont  ]
[s  ]
*__えっち後出勤まで

[tb_show_message_window  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Mmh[heart]・・・Ahh[heart]・・・Yeah[heart][p]
O・・・okay[heart][p]
Mmh[heart]・・・Let's do our best・・・this week too[heart][p]
#
[_tb_end_text]

[mask  time="500"  effect="slideInRight"  color="0x000000"  ]
[stopse  time="1000"  buf="3"  ]
[chara_hide_all  time="0"  wait="true"  ]
[jump  storage="_Entrance.ks"  target="*__月曜見送り"  ]
*__断面図変更

[tb_start_tyrano_code]
;断面図変更
[switch exp="f.H_Entrance_DFlag"]
[case is=1]
[chara_mod  name="H_TV"  time="0"  cross="false"  storage="chara/42/テレビアニメ02.png" cond="f.H_Danmen_Flag == 0" ]
[chara_mod  name="H_TV"  time="0"  cross="false"  storage="chara/42/テレビアニメ12.png" cond="f.H_Danmen_Flag == 1" ]
[playse  volume="100"  buf="1"  storage="ピストン系/テレビ02.mp3"  loop="true"  ]

[case is=2]
[chara_mod  name="H_TV"  time="0"  cross="false"  storage="chara/42/テレビアニメ03.png" cond="f.H_Danmen_Flag == 0" ]
[chara_mod  name="H_TV"  time="0"  cross="false"  storage="chara/42/テレビアニメ13.png" cond="f.H_Danmen_Flag == 1" ]
[playse  volume="100"  buf="1"  storage="ピストン系/テレビ03.mp3"  loop="true"  ]
[endswitch]


[_tb_end_tyrano_code]

[call  storage="Main_Sta.ks"  target="*__Hメインステ表示"  ]
[tb_start_tyrano_code]
[button  storage="Tre_Select.ks"  target="*__断面図変更"  graphic="断面図on.png"  x="30"  y="470" exp="f.H_Danmen_Flag = 1" cond="f.H_Danmen_Flag == 0"  fix=true enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3"]
[button  storage="Tre_Select.ks"  target="*__断面図変更"  graphic="断面図off.png"  x="30"  y="470" exp="f.H_Danmen_Flag = 0" cond="f.H_Danmen_Flag == 1"  fix=true enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3"]

[_tb_end_tyrano_code]

[return  ]
