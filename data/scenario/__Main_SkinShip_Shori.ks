[_tb_system_call storage=system/___Main_SkinShip_Shori.ks]

*__頭をなでる

[stopse  time="1000"  buf="2"  ]
[tb_image_show  time="0"  storage="default/スキンシップ02.png"  width="300"  height="400"  x="900"  y="100"  _clickable_img=""  name="img_2"  ]
[tb_eval  exp="f.Skin_Kakuritu=f.頭をなでる確率"  name="Skin_Kakuritu"  cmd="="  op="h"  val="頭をなでる確率"  val_2="undefined"  ]
[call  storage="Tre_Bar.ks"  target="*__スキンシップバー増減"  ]
[tb_eval  exp="f.Tre_Up=1"  name="Tre_Up"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.Skin_Up_Sum+=f.Tre_Up"  name="Skin_Up_Sum"  cmd="+="  op="h"  val="Tre_Up"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__性欲UP"  cond="f.Skin_Kekka==1"  ]
[cm  ]
[tb_image_hide  time="0"  ]
[call  storage="Main_Sta.ks"  target="*__メインステ表示"  ]
[jump  storage="__Main_SkinShip.ks"  target="*__スキンシップ失敗"  cond="f.Skin_Kekka==0"  ]
[tb_image_show  time="0"  storage="default/スキンシップ02.png"  width="300"  height="400"  x="900"  y="100"  _clickable_img=""  name="img_12"  ]
[tb_eval  exp="f.頭をなでる回数+=1"  name="頭をなでる回数"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="__Main_SkinShip.ks"  target="*_スキンシップ戻り先"  ]
*__ももを触る

[stopse  time="1000"  buf="2"  ]
[tb_image_show  time="0"  storage="default/スキンシップ03.png"  width="300"  height="400"  x="900"  y="100"  _clickable_img=""  name="img_17"  ]
[tb_eval  exp="f.Skin_Kakuritu=f.ももを触る確率"  name="Skin_Kakuritu"  cmd="="  op="h"  val="ももを触る確率"  val_2="undefined"  ]
[call  storage="Tre_Bar.ks"  target="*__スキンシップバー増減"  ]
[tb_eval  exp="f.Tre_Up=3"  name="Tre_Up"  cmd="="  op="t"  val="3"  val_2="undefined"  ]
[tb_eval  exp="f.Skin_Up_Sum+=f.Tre_Up"  name="Skin_Up_Sum"  cmd="+="  op="h"  val="Tre_Up"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__性欲UP"  cond="f.Skin_Kekka==1"  ]
[tb_image_hide  time="0"  ]
[call  storage="Main_Sta.ks"  target="*__メインステ表示"  ]
[jump  storage="__Main_SkinShip.ks"  target="*__スキンシップ失敗"  cond="f.Skin_Kekka==0"  ]
[tb_image_show  time="0"  storage="default/スキンシップ03.png"  width="300"  height="400"  x="900"  y="100"  _clickable_img=""  name="img_26"  ]
[tb_eval  exp="f.ももを触る回数+=1"  name="ももを触る回数"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="__Main_SkinShip.ks"  target="*_スキンシップ戻り先"  ]
*__手をつなぐ

[stopse  time="1000"  buf="2"  ]
[tb_image_show  time="0"  storage="default/スキンシップ04.png"  width="300"  height="400"  x="900"  y="100"  _clickable_img=""  name="img_31"  ]
[tb_eval  exp="f.Skin_Kakuritu=f.手をつなぐ確率"  name="Skin_Kakuritu"  cmd="="  op="h"  val="手をつなぐ確率"  val_2="undefined"  ]
[call  storage="Tre_Bar.ks"  target="*__スキンシップバー増減"  ]
[tb_eval  exp="f.Tre_Up=2"  name="Tre_Up"  cmd="="  op="t"  val="2"  val_2="undefined"  ]
[tb_eval  exp="f.Skin_Up_Sum+=f.Tre_Up"  name="Skin_Up_Sum"  cmd="+="  op="h"  val="Tre_Up"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__性欲UP"  cond="f.Skin_Kekka==1"  ]
[tb_image_hide  time="0"  ]
[call  storage="Main_Sta.ks"  target="*__メインステ表示"  ]
[jump  storage="__Main_SkinShip.ks"  target="*__スキンシップ失敗"  cond="f.Skin_Kekka==0"  ]
[tb_image_show  time="0"  storage="default/スキンシップ04.png"  width="300"  height="400"  x="900"  y="100"  _clickable_img=""  name="img_40"  ]
[tb_eval  exp="f.手をつなぐ回数+=1"  name="手をつなぐ回数"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="__Main_SkinShip.ks"  target="*_スキンシップ戻り先"  ]
*__尻をもむ

[stopse  time="1000"  buf="2"  ]
[tb_start_tyrano_code]
;回数カウント
[eval exp="f.Kaihatu_Count[2].kazu += 1"]
[_tb_end_tyrano_code]

[tb_image_show  time="0"  storage="default/スキンシップ05.png"  width="300"  height="400"  x="900"  y="100"  _clickable_img=""  name="img_46"  ]
[playse  volume="100"  time="1000"  buf="2"  storage="えっち系/衣擦れ3.mp3"  ]
[tb_eval  exp="f.Skin_Kakuritu=f.尻をもむ確率"  name="Skin_Kakuritu"  cmd="="  op="h"  val="尻をもむ確率"  val_2="undefined"  ]
[call  storage="Tre_Bar.ks"  target="*__スキンシップバー増減"  ]
[tb_eval  exp="f.Tre_Up=8"  name="Tre_Up"  cmd="="  op="t"  val="8"  val_2="undefined"  ]
[tb_eval  exp="f.Skin_Up_Sum+=f.Tre_Up"  name="Skin_Up_Sum"  cmd="+="  op="h"  val="Tre_Up"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__性欲UP"  cond="f.Skin_Kekka==1"  ]
[tb_image_hide  time="0"  ]
[call  storage="Main_Sta.ks"  target="*__メインステ表示"  ]
[jump  storage="__Main_SkinShip.ks"  target="*__スキンシップ失敗"  cond="f.Skin_Kekka==0"  ]
[tb_image_show  time="0"  storage="default/スキンシップ05.png"  width="300"  height="400"  x="900"  y="100"  _clickable_img=""  name="img_56"  ]
[tb_eval  exp="f.尻をもむ回数+=1"  name="尻をもむ回数"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="__Main_SkinShip.ks"  target="*_スキンシップ戻り先"  ]
*__肩を抱く

[stopse  time="1000"  buf="2"  ]
[tb_image_show  time="0"  storage="default/スキンシップ06.png"  width="300"  height="400"  x="900"  y="100"  _clickable_img=""  name="img_61"  ]
[playse  volume="100"  time="1000"  buf="2"  storage="えっち系/衣擦れ2.mp3"  ]
[playse  volume="100"  time="1000"  buf="1"  storage="えっち系/心臓01.mp3"  loop="true"  ]
[tb_eval  exp="f.Skin_Kakuritu=f.肩を抱く確率"  name="Skin_Kakuritu"  cmd="="  op="h"  val="肩を抱く確率"  val_2="undefined"  ]
[call  storage="Tre_Bar.ks"  target="*__スキンシップバー増減"  ]
[tb_eval  exp="f.Tre_Up=5"  name="Tre_Up"  cmd="="  op="t"  val="5"  val_2="undefined"  ]
[tb_eval  exp="f.Skin_Up_Sum+=f.Tre_Up"  name="Skin_Up_Sum"  cmd="+="  op="h"  val="Tre_Up"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__性欲UP"  cond="f.Skin_Kekka==1"  ]
[tb_image_hide  time="0"  ]
[call  storage="Main_Sta.ks"  target="*__メインステ表示"  ]
[jump  storage="__Main_SkinShip.ks"  target="*__スキンシップ失敗"  cond="f.Skin_Kekka==0"  ]
[tb_image_show  time="0"  storage="default/スキンシップ06.png"  width="300"  height="400"  x="900"  y="100"  _clickable_img=""  name="img_72"  ]
[tb_eval  exp="f.肩を抱く回数+=1"  name="肩を抱く回数"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="__Main_SkinShip.ks"  target="*_スキンシップ戻り先"  ]
*__腰を抱く

[stopse  time="1000"  buf="2"  ]
[tb_image_show  time="0"  storage="default/スキンシップ07.png"  width="300"  height="400"  x="900"  y="100"  _clickable_img=""  name="img_77"  ]
[playse  volume="100"  time="1000"  buf="2"  storage="えっち系/衣擦れ2.mp3"  ]
[playse  volume="100"  time="1000"  buf="1"  storage="えっち系/心臓01.mp3"  loop="true"  ]
[tb_eval  exp="f.Skin_Kakuritu=f.腰を抱く確率"  name="Skin_Kakuritu"  cmd="="  op="h"  val="腰を抱く確率"  val_2="undefined"  ]
[call  storage="Tre_Bar.ks"  target="*__スキンシップバー増減"  ]
[tb_eval  exp="f.Tre_Up=10"  name="Tre_Up"  cmd="="  op="t"  val="10"  val_2="undefined"  ]
[tb_eval  exp="f.Skin_Up_Sum+=f.Tre_Up"  name="Skin_Up_Sum"  cmd="+="  op="h"  val="Tre_Up"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__性欲UP"  cond="f.Skin_Kekka==1"  ]
[tb_image_hide  time="0"  ]
[call  storage="Main_Sta.ks"  target="*__メインステ表示"  ]
[jump  storage="__Main_SkinShip.ks"  target="*__スキンシップ失敗"  cond="f.Skin_Kekka==0"  ]
[tb_image_show  time="0"  storage="default/スキンシップ07.png"  width="300"  height="400"  x="900"  y="100"  _clickable_img=""  name="img_88"  ]
[tb_eval  exp="f.腰を抱く回数+=1"  name="腰を抱く回数"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="__Main_SkinShip.ks"  target="*_もっと"  ]
*__キス

[stopse  time="1000"  buf="2"  ]
[tb_start_tyrano_code]
;回数カウント
[eval exp="f.Kaihatu_Count[0].kazu += 1"]
[_tb_end_tyrano_code]

[individual_image  layer="1"  zindex="1"  storage="default/スキンシップ08.png"  width="300"  height="400"  x="900"  y="100"  wait="true"  name="kiss"  ]
[tb_eval  exp="f.Skin_Kakuritu=f.キス確率"  name="Skin_Kakuritu"  cmd="="  op="h"  val="キス確率"  val_2="undefined"  ]
[call  storage="Tre_Bar.ks"  target="*__スキンシップバー増減"  ]
[tb_eval  exp="f.Tre_Up=15"  name="Tre_Up"  cmd="="  op="t"  val="15"  val_2="undefined"  ]
[tb_eval  exp="f.Skin_Up_Sum+=f.Tre_Up"  name="Skin_Up_Sum"  cmd="+="  op="h"  val="Tre_Up"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__性欲UP"  cond="f.Skin_Kekka==1"  ]
[delete_individual_image  layer="1"  name="Kekka_Hyouji"  ]
[call  storage="Main_Sta.ks"  target="*__メインステ表示"  ]
[jump  storage="__Main_SkinShip.ks"  target="*__スキンシップ失敗"  cond="f.Skin_Kekka==0"  ]
[individual_image  layer="1"  zindex="1"  storage="default/スキンシップ08_1.png"  width="300"  height="400"  x="900"  y="100"  wait="false"  name="kiss"  ]
[playse  volume="100"  time="1000"  buf="2"  storage="えっち系/キス01.mp3"  loop="true"  ]
[tb_eval  exp="f.キス回数+=1"  name="キス回数"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="__Main_SkinShip.ks"  target="*_もっと"  ]
*__胸を触る

[stopse  time="1000"  buf="2"  ]
[tb_start_tyrano_code]
;回数カウント
[eval exp="f.Kaihatu_Count[1].kazu += 1"]
[_tb_end_tyrano_code]

[tb_image_show  time="0"  storage="default/スキンシップ09.png"  width="300"  height="400"  x="900"  y="100"  _clickable_img=""  name="img_110"  ]
[playse  volume="100"  time="1000"  buf="1"  storage="えっち系/心臓02.mp3"  loop="true"  ]
[playse  volume="100"  time="1000"  buf="2"  storage="えっち系/衣擦れ3.mp3"  loop="true"  ]
[tb_eval  exp="f.Skin_Kakuritu=f.胸を触る確率"  name="Skin_Kakuritu"  cmd="="  op="h"  val="胸を触る確率"  val_2="undefined"  ]
[call  storage="Tre_Bar.ks"  target="*__スキンシップバー増減"  ]
[tb_eval  exp="f.Tre_Up=25"  name="Tre_Up"  cmd="="  op="t"  val="25"  val_2="undefined"  ]
[tb_eval  exp="f.Skin_Up_Sum+=f.Tre_Up"  name="Skin_Up_Sum"  cmd="+="  op="h"  val="Tre_Up"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__性欲UP"  cond="f.Skin_Kekka==1"  ]
[tb_image_hide  time="0"  ]
[call  storage="Main_Sta.ks"  target="*__メインステ表示"  ]
[jump  storage="__Main_SkinShip.ks"  target="*__スキンシップ失敗"  cond="f.Skin_Kekka==0"  ]
[tb_image_show  time="0"  storage="default/スキンシップ09.png"  width="300"  height="400"  x="900"  y="100"  _clickable_img=""  name="img_121"  ]
[playse  volume="100"  time="1000"  buf="2"  storage="えっち系/吐息01.mp3"  loop="true"  ]
[tb_eval  exp="f.胸を触る回数+=1"  name="胸を触る回数"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="__Main_SkinShip.ks"  target="*_もっと"  ]
*__あそこを触る

[stopse  time="1000"  buf="2"  ]
[tb_start_tyrano_code]
;回数カウント
[eval exp="f.Kaihatu_Count[3].kazu += 1"]
[_tb_end_tyrano_code]

[individual_image  layer="1"  zindex="1"  storage="default/スキンシップ10.png"  width="300"  height="400"  x="900"  y="100"  wait="true"  name="mata"  ]
[playse  volume="100"  time="1000"  buf="1"  storage="えっち系/心臓03.mp3"  loop="true"  ]
[playse  volume="100"  time="1000"  buf="2"  storage="えっち系/衣擦れ4.mp3"  loop="true"  ]
[tb_eval  exp="f.Skin_Kakuritu=f.あそこを触る確率"  name="Skin_Kakuritu"  cmd="="  op="h"  val="あそこを触る確率"  val_2="undefined"  ]
[call  storage="Tre_Bar.ks"  target="*__スキンシップバー増減"  ]
[tb_eval  exp="f.Tre_Up=35"  name="Tre_Up"  cmd="="  op="t"  val="35"  val_2="undefined"  ]
[tb_eval  exp="f.Skin_Up_Sum+=f.Tre_Up"  name="Skin_Up_Sum"  cmd="+="  op="h"  val="Tre_Up"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__性欲UP"  cond="f.Skin_Kekka==1"  ]
[delete_individual_image  layer="1"  name="Kekka_Hyouji"  ]
[call  storage="Main_Sta.ks"  target="*__メインステ表示"  ]
[jump  storage="__Main_SkinShip.ks"  target="*__スキンシップ失敗"  cond="f.Skin_Kekka==0"  ]
[individual_image  layer="1"  zindex="1"  storage="default/スキンシップ10_1.png"  width="300"  height="400"  x="900"  y="100"  wait="false"  name="mata"  ]
[playse  volume="100"  time="1000"  buf="2"  storage="えっち系/吐息02.mp3"  loop="true"  ]
[tb_eval  exp="f.あそこを触る回数+=1"  name="あそこを触る回数"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="__Main_SkinShip.ks"  target="*_もっと"  ]
*__1以上

[stopse  time="1000"  buf="2"  ]
[chara_part  name="さくら01"  time="0"  目="キャラ待機01_32.png"  ]
[tb_image_hide  time="0"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Hehe[p]
[emb exp="f.Oni_Name3"]♪[p]
#
[emb exp="f.Imo_Name"] looks happy[p]

[_tb_end_text]

[jump  storage="__Main_SkinShip.ks"  target="*__終了セリフ後"  ]
*__8以上

[stopse  time="1000"  buf="2"  ]
[stopse  time="1000"  buf="1"  ]
[chara_part  name="さくら01"  time="0"  目="キャラ待機01_24.png"  ]
[tb_image_hide  time="0"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
・・・[p]
#

[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_25.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
・・・[p]
#

[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_24.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
・・・[p]
#
[emb exp="f.Imo_Name"] seems a little bewildered[p]
[_tb_end_text]

[jump  storage="__Main_SkinShip.ks"  target="*__終了セリフ後"  ]
*__20以上

[stopse  time="1000"  buf="2"  ]
[stopse  time="1000"  buf="1"  ]
[chara_part  name="さくら01"  time="0"  目="キャラ待機01_20.png"  ]
[tb_image_hide  time="0"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
I-It's kind of hot today[p]
Ah, I've started sweating[p]
#

[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_25.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
・・・[p]
#
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_13.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
・・・[p]
#
Maybe because we were too close?[p]
She's blushing and fidgeting[p]
[_tb_end_text]

[jump  storage="__Main_SkinShip.ks"  target="*__終了セリフ後"  ]
*__35以上

[stopse  time="1000"  buf="2"  ]
[stopse  time="1000"  buf="1"  ]
[chara_part  name="さくら01"  time="0"  目="キャラ待機01_26.png"  ]
[tb_image_hide  time="0"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
・・・[p]
[emb exp="f.Oni_Name3"]・・・[p]
#

[_tb_end_text]

[chara_hide_all  time="0"  wait="false"  ]
[chara_show  name="さくら01_1"  time="0"  wait="true"  storage="chara/15/キャラ待機12.png"  width="500"  height="550"  left="750"  top="170"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
No[p]
N-Never mind, it's nothing・・・[p]
・・・[p]
#
Phew[p]
I savored [emb exp="f.Imo_Name"]'s softness[p]
[_tb_end_text]

[jump  storage="__Main_SkinShip.ks"  target="*__終了セリフ後"  ]
*__50以上

[chara_hide_all  time="0"  wait="true"  ]
[chara_show  name="さくら01_1"  time="0"  wait="true"  storage="chara/15/キャラ待機19_1.png"  width="500"  height="550"  left="750"  top="170"  ]
[tb_image_hide  time="0"  ]
[tb_show_message_window  ]
[playse  volume="100"  time="1000"  buf="2"  storage="えっち系/吐息01.mp3"  loop="true"  ]
[stopse  time="1000"  buf="1"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Hah・・・hah・・・[p]
・・・[p]
#
[_tb_end_text]

[chara_mod  name="さくら01_1"  time="0"  cross="false"  storage="chara/15/キャラ待機19_2.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
[emb exp="f.Oni_Name3"]・・・[p]
A-Are you stopping already?[p]
#
[emb exp="f.Imo_Name"]！？[p]
[_tb_end_text]

[chara_mod  name="さくら01_1"  time="0"  cross="false"  storage="chara/15/キャラ待機19_3.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Ah, no![p]
I-It's nothing!![p]
#
Phew[p]
I'm getting excited.[p]
[_tb_end_text]

[jump  storage="__Main_SkinShip.ks"  target="*__終了セリフ後"  ]
*__80以上

[chara_hide_all  time="0"  wait="true"  ]
[chara_show  name="さくら01_1"  time="0"  wait="true"  storage="chara/15/キャラ待機19_1.png"  width="500"  height="550"  left="750"  top="170"  ]
[tb_image_hide  time="0"  ]
[tb_show_message_window  ]
[playse  volume="100"  time="1000"  buf="2"  storage="えっち系/吐息02.mp3"  loop="true"  ]
[stopse  time="1000"  buf="1"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Hah・・・hah・・・[p]
Mmh・・mmh![p]
[_tb_end_text]

[chara_mod  name="さくら01_1"  time="1000"  cross="false"  storage="chara/15/キャラ待機19_4.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Mmh・・・[p]
・・・[p]
[_tb_end_text]

[chara_mod  name="さくら01_1"  time="0"  cross="false"  storage="chara/15/キャラ待機19_5.png"  ]
[tb_start_text mode=1 ]
Hah・・・hah・・・[p]
#
She's trembling slightly[p]
I can feel [emb exp="f.Imo_Name"]'s body heating up[p]
・・・Did she cum a little?[p]


[_tb_end_text]

[chara_mod  name="さくら01_1"  time="0"  cross="false"  storage="chara/15/キャラ待機19_2.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Hah・・・hah・・・[p]
・・・[p]
#
She must be struggling with her reason[p]
She's glancing over here with desire, trying to stay sane[p]

[_tb_end_text]

[chara_mod  name="さくら01_1"  time="0"  cross="false"  storage="chara/15/キャラ待機19_6.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Mmh・・・[p]
・・・[p]
#
She seems to have desperately suppressed her ragged breathing and held back her lust[p]
・・・[p]
Let's stop here for now[p]
[_tb_end_text]

[jump  storage="__Main_SkinShip.ks"  target="*__終了セリフ後"  ]
[camera  time="1000"  zoom="1"  wait="true"  ]
*__Backアイコン表示

[tb_start_tyrano_code]
;Backアイコン  Autoアイコン
[button name="role_button" role="auto" graphic="c_btn_auto.png" enterimg="c_btn_auto2.png" width="50"  height="50"  x="1214"  y="550"  name="H_Back_Icon" fix="true" hint="Auto"]
[button  storage="__Main_SkinShip_H.ks"  target="*__途中でやめる"  graphic="やめるアイコン.png" enterimg="やめるアイコン.png" width="110"  height="110"  x="1165"  y="602"  name="H_Back_Icon" fix="true" cond="!tf._tb_is_replay"]
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

[tb_start_tyrano_code]
;射精感
[wait time="800" cond="f.H_Sex_Speed == 2"]
[wait time="400" cond="f.H_Sex_Speed == 3"]
[wait time="100" cond="f.H_Sex_Speed == 4"]

[eval exp="f.H_Syaseikan += 1"]
[eval exp="f.射精度 = f.H_Syaseikan + '％' "]

[ptext layer=2 text="&f.射精度" x=1060 y=650 size=40 bold="bold" edge="0x000000" width = 100 align = "right" overwrite = "true" name="Syaseikan"]

[_tb_end_tyrano_code]

[call  storage="__Main_SkinShip_Shori.ks"  target="*__セックス中セリフスキン"  ]
[jump  storage="__Main_SkinShip_Shori.ks"  target="*__射精感UP30まで"  cond="f.H_Syaseikan<30"  ]
[return  ]
*__射精感UP70まで

[tb_start_tyrano_code]
;射精感
[wait time="800" cond="f.H_Sex_Speed == 2"]
[wait time="400" cond="f.H_Sex_Speed == 3"]
[wait time="100" cond="f.H_Sex_Speed == 4"]

[eval exp="f.H_Syaseikan += 1"]
[eval exp="f.射精度 = f.H_Syaseikan + '％' "]

[ptext layer=2 text="&f.射精度" x=1060 y=650 size=40 bold="bold" edge="0x000000" width = 100 align = "right" overwrite = "true" name="Syaseikan"]

[_tb_end_tyrano_code]

[call  storage="__Main_SkinShip_Shori.ks"  target="*__セックス中セリフスキン"  ]
[jump  storage="__Main_SkinShip_Shori.ks"  target="*__射精感UP70まで"  cond="f.H_Syaseikan<70"  ]
[return  ]
*__射精感UP100まで

[tb_start_tyrano_code]
;射精感
[wait time="800" cond="f.H_Sex_Speed == 2"]
[wait time="400" cond="f.H_Sex_Speed == 3"]
[wait time="100" cond="f.H_Sex_Speed == 4"]

[eval exp="f.H_Syaseikan += 1"]
[eval exp="f.射精度 = f.H_Syaseikan + '％' "]

[ptext layer=2 text="&f.射精度" x=1060 y=650 size=40 bold="bold" edge="0x000000" width = 100 align = "right" overwrite = "true" name="Syaseikan"]

[_tb_end_tyrano_code]

[call  storage="__Main_SkinShip_Shori.ks"  target="*__セックス中セリフスキン"  ]
[jump  storage="__Main_SkinShip_Shori.ks"  target="*__射精感UP100まで"  cond="f.H_Syaseikan<100"  ]
[return  ]
*__射精感120まで

[tb_start_tyrano_code]
;射精感
[wait time="800" cond="f.H_Sex_Speed == 2"]
[wait time="400" cond="f.H_Sex_Speed == 3"]
[wait time="100" cond="f.H_Sex_Speed == 4"]

[eval exp="f.H_Syaseikan += 1"]
[eval exp="f.射精度 = f.H_Syaseikan + '％' "]

[ptext layer=2 text="&f.射精度" x=1060 y=650 size=40 bold="bold" edge="0x000000" width = 100 align = "right" overwrite = "true" name="Syaseikan"]

[_tb_end_tyrano_code]

[call  storage="__Main_SkinShip_Shori.ks"  target="*__セックス中セリフスキン"  ]
[jump  storage="__Main_SkinShip_Shori.ks"  target="*__射精感120まで"  cond="f.H_Syaseikan<120"  ]
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

[tb_start_tyrano_code]
;キャラのピストン速度、キャラ【画像変更】
[switch exp="f.H_Sex_Speed"]
[case is=2]
[chara_mod  name="H_スキンシップ挿入"  time="0"  cross="true"  storage="chara/39/後方座位アニメ01.png" cond="f.H_Danmen_Flag == 0"]
[chara_mod  name="H_スキンシップ挿入"  time="0"  cross="true"  storage="chara/39/後方座位アニメ11.png" cond="f.H_Danmen_Flag == 1"]
[playse  volume="100"  time="1000"  buf="1"  storage="ピストン系/スキンピストン01.mp3"  loop="true"  ]
[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/03喘ぎ声(前)03.mp3"  loop="true"  ]

[case is=3]
[chara_mod  name="H_スキンシップ挿入"  time="0"  cross="true"  storage="chara/39/後方座位アニメ02.png" cond="f.H_Danmen_Flag == 0"]
[chara_mod  name="H_スキンシップ挿入"  time="0"  cross="true"  storage="chara/39/後方座位アニメ12.png" cond="f.H_Danmen_Flag == 1"]
[playse  volume="100"  time="1000"  buf="1"  storage="ピストン系/スキンピストン02.mp3"  loop="true"  ]
[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/06喘ぎ声(挿入)01.mp3"  loop="true"  ]

[case is=4]
[chara_mod  name="H_スキンシップ挿入"  time="0"  cross="true"  storage="chara/39/後方座位アニメ03.png" cond="f.H_Syaseikan <=69 && f.H_Danmen_Flag == 0"]
[chara_mod  name="H_スキンシップ挿入"  time="0"  cross="true"  storage="chara/39/後方座位アニメ13.png" cond="f.H_Syaseikan <=69 && f.H_Danmen_Flag == 1"]
[chara_mod  name="H_スキンシップ挿入"  time="0"  cross="true"  storage="chara/39/後方座位アニメ04.png" cond="f.H_Syaseikan >=70 && f.H_Danmen_Flag == 0"]
[chara_mod  name="H_スキンシップ挿入"  time="0"  cross="true"  storage="chara/39/後方座位アニメ14.png" cond="f.H_Syaseikan >=70 && f.H_Danmen_Flag == 1"]
[playse  volume="100"  time="1000"  buf="1"  storage="ピストン系/スキンピストン03.mp3"  loop="true"  ]
[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/10喘ぎ声(挿入)05.mp3"  loop="true"  ]

[case]
[chara_mod  name="H_スキンシップ挿入"  time="0"  cross="true"  storage="chara/39/後方座位21.png" cond="f.H_Danmen_Flag == 0"]
[chara_mod  name="H_スキンシップ挿入"  time="0"  cross="true"  storage="chara/39/後方座位31.png" cond="f.H_Danmen_Flag == 1"]
[endswitch]

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
*__セックス中セリフスキン

[return  ]
[tb_start_tyrano_code]
;[return cond ="f.H_Sex_Speed == 2 && f.H_Syaseikan % 5 != 0"]
;[return cond ="f.H_Sex_Speed == 3 && f.H_Syaseikan % 7 != 0"]
;[return cond ="f.H_Sex_Speed == 4 && f.H_Syaseikan % 10 != 0"]

[_tb_end_tyrano_code]

[intrandom_ko10panda  max="8"  count="1"  show_result="false"  show_style="style_a"  show_detail="false"  detail_length="10"  show_log="log_4"  var_name="f.rand"  ]
[tb_start_tyrano_code]
;セリフ
[iscript]
var serifu_list = [
"Aaahh♥",
"Nnahh",
"Hahh",
"⑹♥",
"Ahh⑹ahh",
"Nngh♥",
"Ah♥",
"Nnnh♥",
"Aaaah!!"
];
f.serifu_text = serifu_list[f.rand];
[endscript]

[ptext layer="1" x="330" y="250" size="20" text="&f.serifu_text" name="Serifu01" zindex=100 edge="0xffffff" color="0x000000" face="JK-Gothic-testM" bold="true"]

[anim name="Serifu01" left="310" top="230" opacity=0 time=3000]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;効果音
[iscript]
// 効果音候補
var kouka_list = [
"Slurp",
"Pop",
"Slrp",
"Slurp",
"Plop",
"Splash",
"Squish",
"Schlick",
"Glp"
];

// ランダム選択
f.kouka_text = kouka_list[f.rand];

// 50% の確率で座標を左右に振り分け

f.kouka_x = 680;
f.kouka_left = 660;
f.kouka_y = 480;
f.kouka_top = 460;
f.kouka_name = "Kouka01";

[endscript]

; 共通の ptext 呼び出し
[ptext layer="1" x="&f.kouka_x" y="&f.kouka_y" size="30" text="&f.kouka_text" name="&f.kouka_name" zindex=100 edge="0xffffff" color="0x000000" face="JK-Gothic-testM" bold="true"]

; アニメーション
[anim name="&f.kouka_name" left="&f.kouka_left" top="&f.kouka_top" opacity=0 time=3000]

[_tb_end_tyrano_code]

[return  ]
[call  storage="__Main_SkinShip_Shori.ks"  target=""  ]
