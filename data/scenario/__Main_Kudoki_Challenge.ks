[_tb_system_call storage=system/___Main_Kudoki_Challenge.ks]

*__口説きスタート

[tb_eval  exp="f.Skin_Kakuritu=80"  name="Skin_Kakuritu"  cmd="="  op="t"  val="80"  val_2="undefined"  ]
[call  storage="Tre_Bar.ks"  target="*__風呂バー増減"  ]
[tb_image_hide  time="0"  ]
[jump  storage="__Main_Kudoki_Challenge.ks"  target="*__失敗"  cond="f.Skin_Kekka==0"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#&f.Oni_Name3
[emb exp="f.Imo_Name"] fresh out of the bath is incredibly cute.[p]
#
[_tb_end_text]

[chara_mod  name="さくら_風呂後"  time="0"  cross="false"  storage="chara/2/キャラ待機91.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Fueh?[p]
#
[_tb_end_text]

[chara_mod  name="さくら_風呂後"  time="0"  cross="false"  storage="chara/2/キャラ待機93.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
W-what's wrong all of a sudden, [emb exp="f.Oni_Name3"]・・・[p]
Um・・・ thanks[heart][p]
#

[_tb_end_text]

[tb_eval  exp="f.Tre_Up=30"  name="Tre_Up"  cmd="="  op="t"  val="30"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__性欲UP"  ]
[call  storage="Main_Sta.ks"  target="*__メインステ表示"  ]
[font  size="18"  color="0x000000"  face="JKG-M_3"  bold="true"  ]
[tb_start_tyrano_code]
;選択肢
[glink  color="btn_05_black" size="25"  x="530"  y="200"  width="300"  height="50"  text="More sex 60%"  target="*__口説き成功"  enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3"]
[glink  color="btn_05_black" size="25"  x="530"  y="250"  width="300"  height="50"  text="Let's go to sleep"  storage="__Main_Kyuuka.ks" target="*__夜中処理後"  enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3"]

[_tb_end_tyrano_code]

[resetfont  ]
[s  ]
*__口説き成功

[tb_eval  exp="f.Skin_Kakuritu=60"  name="Skin_Kakuritu"  cmd="="  op="t"  val="60"  val_2="undefined"  ]
[call  storage="Tre_Bar.ks"  target="*__風呂バー増減"  ]
[tb_image_hide  time="0"  ]
[jump  storage="__Main_Kudoki_Challenge.ks"  target="*__失敗"  cond="f.Skin_Kekka==0"  ]
[tb_eval  exp="f.Tre_Up=70"  name="Tre_Up"  cmd="="  op="t"  val="70"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__性欲UP"  ]
[call  storage="Main_Sta.ks"  target="*__メインステ表示"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#&f.Oni_Name3
I want to hold cute [emb exp="f.Imo_Name"] fresh out of the bath one more time.[p]
#
[_tb_end_text]

[jump  storage="__Main_Night_Seijoui_H.ks"  target="*__H_Night_Seijoui"  ]
*__失敗

[tb_show_message_window  ]
[chara_mod  name="さくら_風呂後"  time="0"  cross="false"  storage="chara/2/キャラ待機93.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
S-sorry.[p]
Let's do it tomorrow・・・ okay?[p]
#
I failed to seduce her.[p]
#&f.Oni_Name3
Yeah, let's sleep for today・・・ Good night.[p]
[_tb_end_text]

[tb_eval  exp="f.Tre_Up=2"  name="Tre_Up"  cmd="="  op="t"  val="2"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__好きDOWN"  ]
[call  storage="Main_Sta.ks"  target="*__メインステ表示"  ]
[jump  storage="__Main_Kyuuka.ks"  target="*__夜中処理後"  ]
