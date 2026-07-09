[_tb_system_call storage=system/_Clear_present.ks]

*__クリア後入力

[bg  time="0"  method="crossfade"  storage="BG_Black.png"  ]
[mask  time="0"  effect="fadeIn"  color="0x000000"  ]
[tb_image_hide  time="1000"  ]
[stopbgm  time="1000"  ]
[tb_start_tyrano_code]
[clearfix]
[_tb_end_tyrano_code]

[mask_off  time="0"  effect="fadeOut"  ]
*__再入力

[tb_show_message_window  ]
[tb_start_text mode=1 ]
Try entering a number[p]
[_tb_end_text]

[edit  left="500"  top="300"  width="200"  height="40"  size="20"  maxchars="200"  name="f.Clear_Number"  reflect="false"  ]
[font  size="18"  color="0x000000"  face="JKG-M_3"  bold="true"  ]
[tb_start_tyrano_code]
;選択肢
[glink  color="btn_05_black"  size="25"  x="800"  y="298"  width="200"  height="50"  text="OK"  _clickable_img=""  target="*__入力判定" enterse="マウスオーバー.mp3"  clickse="決定ボタンを押す53.mp3" cm=false]
[glink  color="btn_05_black"  size="25"  x="800"  y="450"  width="200"  height="50"  text="To Title"  _clickable_img=""  target="*タイトルへ戻る" enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3" cm=false]

[_tb_end_tyrano_code]

[resetfont  ]
[s  ]
*__入力判定

[commit  ]
[cm  ]
[jump  storage="Clear_present.ks"  target="*__強くて"  cond="f.Clear_Number==777"  ]
[jump  storage="Clear_present.ks"  target="*__回想解放"  cond="f.Clear_Number==114"  ]
[jump  storage="Clear_present.ks"  target="*__ピュア解放"  cond="f.Clear_Number==514"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="クイズ不正解1.mp3"  ]
[jump  storage="Clear_present.ks"  target="*__再入力"  ]
*__強くて

[playse  volume="100"  time="1000"  buf="0"  storage="クイズ正解5.mp3"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
【 New Game +】[p]
Initial points will be 99[p]
Start Game[p]
[_tb_end_text]

[tb_hide_message_window  ]
[tb_eval  exp="f.Oni_Point=99"  name="Oni_Point"  cmd="="  op="t"  val="99"  val_2="undefined"  ]
[tb_eval  exp="f.Imo_Youshi=100"  name="Imo_Youshi"  cmd="="  op="t"  val="100"  val_2="undefined"  ]
[tb_eval  exp="f.Imo_Uta=200"  name="Imo_Uta"  cmd="="  op="t"  val="200"  val_2="undefined"  ]
[tb_eval  exp="f.Imo_Dance=200"  name="Imo_Dance"  cmd="="  op="t"  val="200"  val_2="undefined"  ]
[tb_eval  exp="f.Imo_Engi=200"  name="Imo_Engi"  cmd="="  op="t"  val="200"  val_2="undefined"  ]
[tb_eval  exp="f.Imo_Wajutu=200"  name="Imo_Wajutu"  cmd="="  op="t"  val="200"  val_2="undefined"  ]
[tb_eval  exp="f.Tuyokute_Flag=1"  name="Tuyokute_Flag"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="title_screen.ks"  target="*start"  ]
*__回想解放

[tb_eval  exp="sf.Clear_Flag_Kaisou=1"  name="Clear_Flag_Kaisou"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="__Main_Night_First_H.ks"  target="*__回想解放用"  ]
*__回想回収戻り先

[tb_eval  exp="sf.Clear_Flag_Kaisou=2"  name="Clear_Flag_Kaisou"  cmd="="  op="t"  val="2"  val_2="undefined"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="クイズ正解5.mp3"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
【All Albums Unlocked】[p]
All albums have been unlocked[p]
※Excludes the Pure Ending[p]
[_tb_end_text]

[tb_hide_message_window  ]
[jump  storage="title_screen.ks"  target=""  ]
*__ピュア解放

[tb_eval  exp="sf.Clear_Flag_PureEnd=1"  name="Clear_Flag_PureEnd"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="Pureend.ks"  target="*__回想解放用"  ]
*__Pure回想回収戻り先

[tb_eval  exp="sf.Clear_Flag_PureEnd=2"  name="Clear_Flag_PureEnd"  cmd="="  op="t"  val="2"  val_2="undefined"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="クイズ正解5.mp3"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
【Pure End Album Unlocked】[p]
The Pure Ending album has been unlocked[p]
[_tb_end_text]

[tb_hide_message_window  ]
[jump  storage="title_screen.ks"  target=""  ]
*タイトルへ戻る

[cm  ]
[jump  storage="title_screen.ks"  target=""  ]
