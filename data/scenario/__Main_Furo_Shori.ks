[_tb_system_call storage=system/___Main_Furo_Shori.ks]

*__洗い合い

[tb_start_tyrano_code]
;変数定義していないためスクリプトで代入
[eval exp="f.Skin_Kakuritu = f.洗い合い初期確率"]
[_tb_end_tyrano_code]

[call  storage="Tre_Bar.ks"  target="*__風呂バー増減"  ]
[tb_image_hide  time="0"  ]
[jump  storage="__Main_Furo_Shori.ks"  target="*__洗い合い失敗"  cond="f.Skin_Kekka==0"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#&f.Oni_Name3
[emb exp="f.Imo_Name"], wash my back.[p]
#
[_tb_end_text]

[chara_mod  name="H_風呂スキンシップ"  time="0"  cross="false"  storage="chara/20/風呂01_1.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Eh, okay, but don't look this way.[p]
#&f.Oni_Name3
Have you washed your body yet?[p]
#
[_tb_end_text]

[chara_mod  name="H_風呂スキンシップ"  time="0"  cross="false"  storage="chara/20/風呂01_4.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
W-well, not yet・・・[p]
#&f.Oni_Name3
Then let's wash each other.[p]
#
[_tb_end_text]

[chara_mod  name="H_風呂スキンシップ"  time="0"  cross="false"  storage="chara/20/風呂01_1.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Eeh!?[p]
#
[_tb_end_text]

[chara_mod  name="H_風呂スキンシップ"  time="0"  cross="false"  storage="chara/20/風呂01_4.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
T-that's so embarrassing・・・[p]
#&f.Oni_Name3
It's fine, come on.[p]
#
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="えっち系/お風呂から上がる.mp3"  ]
[chara_hide_all  time="1000"  wait="true"  ]
[tb_start_text mode=1 ]
I pull her hand, trying not to look at [emb exp="f.Imo_Name"]'s naked body[p]
Facing each other, we wash each other's whole bodies with the body soap on our hands.[p]
#&f.Imo_Name
Oh, [emb exp="f.Oni_Name3"], don't look down, okay?[p]
#&f.Oni_Name3
I get it[p]
#
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/吐息01.mp3"  loop="true"  ]
[chara_show  name="風呂_洗い合い"  time="1000"  wait="true"  storage="chara/40/洗う01.png"  width="560"  height="670"  left="360"  top="50"  ]
[tb_start_text mode=1 ]
#
While saying that, I secretly observe [emb exp="f.Imo_Name"][p]
Her translucent white skin and wet, lustrous hair get me so worked up[p]
The skin touching mine asserts a melting softness[p]
[emb exp="f.Imo_Name"] doesn't seem to know where to look, her eyes wandering around[p]
[_tb_end_text]

[chara_mod  name="風呂_洗い合い"  time="0"  cross="false"  storage="chara/40/洗う03.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
・・・Mmm[p]
I・・・ I'm so embarrassed・・・[p]
#
Turning bright red, she timidly touches my body[p]
[_tb_end_text]

[chara_mod  name="風呂_洗い合い"  time="0"  cross="false"  storage="chara/40/洗う04.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Nn・・・[p]
#
[emb exp="f.Imo_Name"] moves her body closer to wash me[p]
Her breasts touch my chest, and I feel the sensation of them squishing softly against me along with her hot body heat[p]
I also stroke [emb exp="f.Imo_Name"]'s waist with my soapy hands[p]
[_tb_end_text]

[chara_mod  name="風呂_洗い合い"  time="0"  cross="false"  storage="chara/40/洗う02.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Hyah![p]
Ah・・・[p]
#
[_tb_end_text]

[chara_mod  name="風呂_洗い合い"  time="0"  cross="false"  storage="chara/40/洗う04.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
・・・[p]
#
I can feel the sensation of her smooth, soft skin[p]
This is bad・・・ I'm getting hard[p]

[_tb_end_text]

[chara_mod  name="風呂_洗い合い"  time="0"  cross="false"  storage="chara/40/洗う05.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Mmm・・・ I might not be able to reach・・・[p]
#
[emb exp="f.Imo_Name"] washes me earnestly, doing her very best.[p]
As she presses closer to reach my back, her breasts push firmly against me.[p]
With [emb exp="f.Imo_Name"]'s breath and the softness of her breasts, my self-control reaches its limit.[p]
[_tb_end_text]

[tb_hide_message_window  ]
[chara_mod  name="風呂_洗い合い"  time="600"  cross="false"  storage="chara/40/洗う12.png"  ]
[wait  time="600"  ]
[tb_start_tyrano_code]
;てこきに移行
[jump target="*__手こき" cond="f.Sta_Risei <=65 && f.Sys_Seiryoku >= 1"]
[_tb_end_tyrano_code]

[tb_show_message_window  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Ah・・・ hyah・・・[p]
#&f.Oni_Name3
Ah・・・[p]
#
My dick got rock hard and was poking against [emb exp="f.Imo_Name"]'s crotch[p]
#&f.Imo_Name
Hyah![p]
#

[_tb_end_text]

[stopse  time="1000"  buf="1"  ]
[chara_hide_all  time="1000"  wait="true"  ]
[tb_start_text mode=1 ]
#
[emb exp="f.Imo_Name"] was startled and pulled away, getting into the bathtub as if to hide her body[p]
・・・[p]
I've done it・・・[p]
As the awkward atmosphere hangs in the air, I get into the bathtub too.[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="えっち系/風呂に入る.mp3"  ]
[chara_show  name="H_風呂スキンシップ"  time="1000"  wait="true"  storage="chara/20/風呂02_5.png"  width="560"  height="670"  left="360"  top="50"  ]
[wait  time="1000"  ]
[stopse  time="1000"  buf="0"  fadeout="true"  ]
[stopse  time="1000"  buf="3"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Uu・・・[p]
#
[emb exp="f.Imo_Name"] turned bright red and looked away[p]
[_tb_end_text]

[tb_hide_message_window  ]
[tb_eval  exp="f.Tre_Up=30"  name="Tre_Up"  cmd="="  op="t"  val="30"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__性欲UP"  cond="f.Skin_Kekka==1"  ]
[call  storage="Main_Sta.ks"  target="*__メインステ表示"  ]
[jump  storage="__Main_Furo.ks"  target="*__洗い合い戻り先"  ]
*__洗い合い失敗

[tb_image_hide  time="0"  ]
[tb_show_message_window  ]
[chara_mod  name="H_風呂スキンシップ"  time="0"  cross="false"  storage="chara/20/風呂01_4.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Ah, [emb exp="f.Oni_Name3"]・・・[p]
That's・・・just too embarrassing・・・sorry[p]
#
I teased her too much・・・[p]
As the air turned awkward, I got into the bathtub too[p]
[_tb_end_text]

[tb_hide_message_window  ]
[playse  volume="100"  time="1000"  buf="0"  storage="えっち系/風呂に入る.mp3"  ]
[chara_mod  name="H_風呂スキンシップ"  time="600"  cross="false"  storage="chara/20/風呂02_5.png"  ]
[wait  time="1000"  ]
[stopse  time="1000"  buf="0"  fadeout="true"  ]
[tb_eval  exp="f.Tre_Up=1"  name="Tre_Up"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__好きDOWN"  cond=""  ]
[call  storage="Main_Sta.ks"  target="*__メインステ表示"  ]
[jump  storage="__Main_Furo.ks"  target="*__洗い合い戻り先"  ]
*__手こき

[tb_show_message_window  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Ah・・・[p]
Oh, [emb exp="f.Oni_Name3"]・・・[p]
#
My dick sprang up hard and was poking against [emb exp="f.Imo_Name"]'s crotch[p]

[_tb_end_text]

[tb_hide_message_window  ]
[tb_start_tyrano_code]
;洗いっ子確率
[iscript]
f.LV=8;
f.洗い合い初期確率 = Math.min(100,Math.floor((f.Sta_Suki + f.Sta_Seiyoku) / f.LV * f.Ero_Local * f.H_Bad_Aroma));

f.洗い合い = "Handjob "  + f.洗い合い初期確率 + "%";

[endscript]
[_tb_end_tyrano_code]

[font  size="14"  color="0x000000"  face="JKG-M_3"  ]
[tb_start_tyrano_code]
;一緒に入る　体を洗う　選択肢
[glink  color="btn_05_black"  storage="__Main_Furo_Shori.ks"  size="23"  x="940"  y="150"  width="250"  height="50"  text="&f.洗い合い"  target="*__手こき続行" cond="f.Sta_Risei <= 70" enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3" ]
[glink  color="btn_05_black"  storage="__Main_Furo_Shori.ks"  size="23"  x="940"  y="250"  width="250"  height="50"  text="Soak in the tub" target="*__手こきしない" enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3" ]

[_tb_end_tyrano_code]

[resetfont  ]
[s  ]
*__手こきしない

[chara_mod  name="風呂_洗い合い"  time="0"  cross="false"  storage="chara/40/洗う14.png"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#&f.Oni_Name3
・・・[p]
Let's take a shower and get in the bath[p]
#&f.Imo_Name
・・・[p]
・・・Yeah・・・[p]
#

[_tb_end_text]

[stopse  time="1000"  buf="1"  ]
[stopse  time="1000"  buf="3"  ]
[chara_hide_all  time="1000"  wait="true"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="えっち系/風呂に入る.mp3"  ]
[chara_show  name="H_風呂スキンシップ"  time="1000"  wait="true"  storage="chara/20/風呂02_5.png"  width="560"  height="670"  left="360"  top="50"  ]
[wait  time="1000"  ]
[stopse  time="1000"  buf="0"  fadeout="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Uuh・・・[p]
#
[emb exp="f.Imo_Name"] turned bright red and looked away[p]
[_tb_end_text]

[tb_hide_message_window  ]
[tb_eval  exp="f.Tre_Up=30"  name="Tre_Up"  cmd="="  op="t"  val="30"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__性欲UP"  cond=""  ]
[call  storage="Main_Sta.ks"  target="*__メインステ表示"  ]
[jump  storage="__Main_Furo.ks"  target="*__洗い合い戻り先"  ]
*__手こき失敗

[chara_mod  name="風呂_洗い合い"  time="0"  cross="false"  storage="chara/40/洗う14.png"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
・・・S-sorry[p]
・・・That's enough・・・[p]
#

[_tb_end_text]

[stopse  time="1000"  buf="1"  ]
[stopse  time="1000"  buf="3"  ]
[chara_hide_all  time="1000"  wait="true"  ]
[tb_start_text mode=1 ]
#
[emb exp="f.Imo_Name"] hurriedly left the bathroom, as if to hide her body[p]
・・・[p]
I・・・ I did it・・・[p]
[_tb_end_text]

[tb_hide_message_window  ]
[tb_eval  exp="f.Tre_Up=1"  name="Tre_Up"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__好きDOWN"  cond=""  ]
[tb_eval  exp="f.Tre_Up=20"  name="Tre_Up"  cmd="="  op="t"  val="20"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__性欲UP"  cond=""  ]
[call  storage="Main_Sta.ks"  target="*__メインステ表示"  ]
[jump  storage="__Main_Furo.ks"  target="*__風呂終了"  ]
*__手こき続行

[tb_start_tyrano_code]
;変数定義していないためスクリプトで代入
[eval exp="f.Skin_Kakuritu = f.洗い合い初期確率"]
[_tb_end_tyrano_code]

[call  storage="Tre_Bar.ks"  target="*__風呂バー増減"  ]
[tb_image_hide  time="0"  ]
[jump  storage="__Main_Furo_Shori.ks"  target="*__手こき失敗"  cond="f.Skin_Kekka==0"  ]
[tb_show_message_window  ]
[chara_mod  name="風呂_洗い合い"  time="0"  cross="false"  storage="chara/40/洗う14.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Nn・・・[p]
#&f.Oni_Name3
[emb exp="f.Imo_Name"], won't you wash here too?[p]
#&f.Imo_Name
Eh・・・ O-Okay.[p]
#
[_tb_end_text]

[tb_hide_message_window  ]
[chara_mod  name="風呂_洗い合い"  time="600"  cross="false"  storage="chara/40/洗う21.png"  ]
[wait  time="600"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
L-Like this・・・?[p]
#
[emb exp="f.Imo_Name"] tries not to look down, timidly feeling her way to touch my dick.[p]
#&f.Oni_Name3
That's right・・・ good.[p]
Grip it firmly.[p]
#&f.Imo_Name
Eh・・・ o-okay・・・[p]
Just being gripped by [emb exp="f.Imo_Name"]'s slender hands makes me rock hard.[p]
The slippery stimulation from the foam feels so good I almost instinctively pull my hips back.[p]
#&f.Oni_Name3
It's dirty, so I want you to wash it properly.[p]
Try rubbing it back and forth to wash it.[p]
#

[_tb_end_text]

[tb_hide_message_window  ]
[chara_mod  name="風呂_洗い合い"  time="600"  cross="false"  storage="chara/40/洗うアニメ01.png"  ]
[wait  time="1000"  ]
[l  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
・・・L-Like this?[p]
#&f.Oni_Name3
That's it, you're good at this.[p]
But if you don't rub it more firmly, it won't get clean.[p]
#&f.Imo_Name
I see・・・[p]
#

[_tb_end_text]

[tb_start_text mode=1 ]
#&f.Imo_Name
L・・・Like this?[p]
#

[_tb_end_text]

[tb_hide_message_window  ]
[chara_mod  name="風呂_洗い合い"  time="600"  cross="false"  storage="chara/40/洗うアニメ02.png"  ]
[call  storage="__Main_Night_Option.ks"  target="*__外射精エフェクト"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="えっち系/射精音01.mp3"  ]
[chara_mod  name="風呂_洗い合い"  time="600"  cross="false"  storage="chara/40/洗う射精.png"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#
-Squirt・・・ Spurt.[p]
I spray it forcefully all over the bath area.[p]
#&f.Oni_Name3
・・・Phew.[p]
#&f.Imo_Name
Th-This is・・・[p]
#&f.Oni_Name3
Come on, the dirt's off, so let's rinse off with the shower.[p]
#&f.Imo_Name
Eh? ・・・Okay・・・[p]
・・・[p]
#
I rinse the foam off the bewildered [emb exp="f.Imo_Name"] with the shower, and we soak in the tub together.[p]
[_tb_end_text]

[tb_hide_message_window  ]
[chara_hide_all  time="1000"  wait="true"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="えっち系/風呂に入る.mp3"  ]
[wait  time="1000"  ]
[stopse  time="1000"  buf="0"  fadeout="true"  ]
[chara_show  name="H_風呂スキンシップ"  time="1000"  wait="true"  storage="chara/20/風呂02_5.png"  width="560"  height="670"  left="360"  top="50"  ]
[stopse  time="1000"  buf="0"  fadeout="true"  ]
[stopse  time="1000"  buf="3"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Uu・・・[p]
#
[emb exp="f.Imo_Name"] turns bright red and looks away.[p]
[_tb_end_text]

[tb_hide_message_window  ]
[tb_eval  exp="f.Tre_Up=40"  name="Tre_Up"  cmd="="  op="t"  val="40"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__性欲UP"  cond="f.Skin_Kekka==1"  ]
[tb_eval  exp="f.Sys_Seiryoku-=1"  name="Sys_Seiryoku"  cmd="-="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="Main_Sta.ks"  target="*__メインステ表示"  ]
[jump  storage="__Main_Furo.ks"  target="*__洗い合い戻り先"  ]
*__一緒に入る

[playse  volume="100"  time="1000"  buf="1"  storage="えっち系/お風呂03.mp3"  ]
[wait  time="500"  ]
[chara_mod  name="H_風呂スキンシップ"  time="0"  cross="false"  storage="chara/20/風呂02_1.png"  ]
[tb_eval  exp="f.Skin_Kakuritu=f.風呂_一緒に入る確率"  name="Skin_Kakuritu"  cmd="="  op="h"  val="風呂_一緒に入る確率"  val_2="undefined"  ]
[call  storage="Tre_Bar.ks"  target="*__風呂バー増減"  ]
[tb_eval  exp="f.Tre_Up=3"  name="Tre_Up"  cmd="="  op="t"  val="3"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__性欲UP"  cond="f.Skin_Kekka==1"  ]
[tb_image_hide  time="0"  ]
[call  storage="Main_Sta.ks"  target="*__メインステ表示"  ]
[jump  storage="__Main_Furo.ks"  target="*__スキンシップ失敗"  cond="f.Skin_Kekka==0"  ]
[tb_eval  exp="f.風呂_一緒に入る回数+=1"  name="風呂_一緒に入る回数"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="__Main_Furo.ks"  target="*__風呂触り戻り先"  ]
*__抱きしめる

[playse  volume="100"  time="1000"  buf="1"  storage="えっち系/お風呂04.mp3"  ]
[wait  time="300"  ]
[chara_mod  name="H_風呂スキンシップ"  time="0"  cross="false"  storage="chara/20/風呂04_1.png"  ]
[tb_eval  exp="f.Skin_Kakuritu=f.風呂_抱きしめる確率"  name="Skin_Kakuritu"  cmd="="  op="h"  val="風呂_抱きしめる確率"  val_2="undefined"  ]
[call  storage="Tre_Bar.ks"  target="*__風呂バー増減"  ]
[tb_eval  exp="f.Tre_Up=10"  name="Tre_Up"  cmd="="  op="t"  val="10"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__性欲UP"  cond="f.Skin_Kekka==1"  ]
[tb_image_hide  time="0"  ]
[call  storage="Main_Sta.ks"  target="*__メインステ表示"  ]
[jump  storage="__Main_Furo.ks"  target="*__スキンシップ失敗"  cond="f.Skin_Kekka==0"  ]
[tb_eval  exp="f.風呂_抱きしめる回数+=1"  name="風呂_抱きしめる回数"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="__Main_Furo.ks"  target="*__風呂触り戻り先"  ]
*__胸をさわる

[tb_start_tyrano_code]
;回数カウント
[eval exp="f.Kaihatu_Count[1].kazu += 1"]
[_tb_end_tyrano_code]

[playse  volume="100"  time="1000"  buf="1"  storage="えっち系/お風呂04.mp3"  ]
[wait  time="500"  ]
[playse  volume="100"  time="1000"  buf="3"  storage="えっち系/吐息01.mp3"  loop="true"  ]
[chara_mod  name="H_風呂スキンシップ"  time="0"  cross="false"  storage="chara/20/風呂05アニメ.png"  ]
[tb_eval  exp="f.Skin_Kakuritu=f.風呂_胸を触る確率"  name="Skin_Kakuritu"  cmd="="  op="h"  val="風呂_胸を触る確率"  val_2="undefined"  ]
[call  storage="Tre_Bar.ks"  target="*__風呂バー増減"  ]
[tb_eval  exp="f.Tre_Up=20"  name="Tre_Up"  cmd="="  op="t"  val="20"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__性欲UP"  cond="f.Skin_Kekka==1"  ]
[tb_image_hide  time="0"  ]
[call  storage="Main_Sta.ks"  target="*__メインステ表示"  ]
[jump  storage="__Main_Furo.ks"  target="*__スキンシップ失敗"  cond="f.Skin_Kekka==0"  ]
[chara_mod  name="H_風呂スキンシップ"  time="0"  cross="false"  storage="chara/20/風呂05アニメ.png"  ]
[tb_eval  exp="f.風呂_胸を触る回数+=1"  name="風呂_胸を触る回数"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="__Main_Furo.ks"  target="*__風呂触り戻り先"  ]
*__あそこを触る

[tb_start_tyrano_code]
;回数カウント
[eval exp="f.Kaihatu_Count[3].kazu += 1"]
[_tb_end_tyrano_code]

[playse  volume="100"  time="1000"  buf="1"  loop="true"  storage="えっち系/お風呂05.mp3"  ]
[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/01喘ぎ声(前)01.mp3"  loop="true"  ]
[chara_mod  name="H_風呂スキンシップ"  time="0"  cross="false"  storage="chara/20/風呂06アニメ01.png"  ]
[tb_eval  exp="f.Skin_Kakuritu=f.風呂_あそこを触る確率"  name="Skin_Kakuritu"  cmd="="  op="h"  val="風呂_あそこを触る確率"  val_2="undefined"  ]
[call  storage="Tre_Bar.ks"  target="*__風呂バー増減"  ]
[tb_eval  exp="f.Tre_Up=30"  name="Tre_Up"  cmd="="  op="t"  val="30"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__性欲UP"  cond="f.Skin_Kekka==1"  ]
[tb_image_hide  time="0"  ]
[call  storage="Main_Sta.ks"  target="*__メインステ表示"  ]
[jump  storage="__Main_Furo.ks"  target="*__スキンシップ失敗"  cond="f.Skin_Kekka==0"  ]
[chara_mod  name="H_風呂スキンシップ"  time="0"  cross="false"  storage="chara/20/風呂06アニメ02.png"  ]
[tb_eval  exp="f.風呂_あそこを触る回数+=1"  name="風呂_あそこを触る回数"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="__Main_Furo.ks"  target="*__風呂触り戻り先"  ]
*__アナルを触る

[tb_start_tyrano_code]
;回数カウント
[eval exp="f.Kaihatu_Count[4].kazu += 1"]
[_tb_end_tyrano_code]

[playse  volume="100"  time="1000"  buf="1"  loop="true"  storage="えっち系/お風呂05.mp3"  ]
[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/吐息03.mp3"  loop="true"  ]
[chara_mod  name="H_風呂スキンシップ"  time="0"  cross="false"  storage="chara/20/風呂07アニメ01.png"  ]
[tb_eval  exp="f.Skin_Kakuritu=f.風呂_アナルを触る確率"  name="Skin_Kakuritu"  cmd="="  op="h"  val="風呂_アナルを触る確率"  val_2="undefined"  ]
[call  storage="Tre_Bar.ks"  target="*__風呂バー増減"  ]
[tb_eval  exp="f.Tre_Up=20"  name="Tre_Up"  cmd="="  op="t"  val="20"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__性欲UP"  cond="f.Skin_Kekka==1"  ]
[tb_image_hide  time="0"  ]
[call  storage="Main_Sta.ks"  target="*__メインステ表示"  ]
[jump  storage="__Main_Furo.ks"  target="*__スキンシップ失敗"  cond="f.Skin_Kekka==0"  ]
[chara_mod  name="H_風呂スキンシップ"  time="0"  cross="false"  storage="chara/20/風呂07アニメ02.png"  ]
[tb_eval  exp="f.風呂_アナルを触る回数+=1"  name="風呂_アナルを触る回数"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="__Main_Furo.ks"  target="*__風呂触り戻り先"  ]
*__いかせる

[tb_start_tyrano_code]
;回数カウント
[eval exp="f.Kaihatu_Count[3].kazu += 1"]
[_tb_end_tyrano_code]

[playse  volume="100"  time="1000"  buf="1"  loop="true"  storage="えっち系/お風呂05.mp3"  ]
[stopse  time="1000"  buf="2"  ]
[chara_mod  name="H_風呂スキンシップ"  time="0"  cross="false"  storage="chara/20/風呂06アニメ01.png"  ]
[tb_eval  exp="f.Skin_Kakuritu=f.風呂_いかせる確率"  name="Skin_Kakuritu"  cmd="="  op="h"  val="風呂_いかせる確率"  val_2="undefined"  ]
[call  storage="Tre_Bar.ks"  target="*__風呂バー増減"  ]
[tb_image_hide  time="0"  ]
[call  storage="Main_Sta.ks"  target="*__メインステ表示"  ]
[jump  storage="__Main_Furo.ks"  target="*__スキンシップ失敗"  cond="f.Skin_Kekka==0"  ]
[tb_eval  exp="f.H_Furo_Ikase_Flag=1"  name="H_Furo_Ikase_Flag"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[chara_mod  name="H_風呂スキンシップ"  time="0"  cross="false"  storage="chara/20/風呂06アニメ02.png"  ]
[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/16喘ぎ声(挿入我慢)01.mp3"  loop="true"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
I continue to caress her nipple with my right hand and her pussy slit with my left.[p]
[emb exp="f.Imo_Name"] clings to my arm, desperately fighting against the stimulation.[p]
#&f.Imo_Name
Nn・・・ ah・・・ aah・・・[p]
Nn・・・ nnn・・・[p]
#
My upper body is pressed against [emb exp="f.Imo_Name"]'s back, and I can feel her body heat.[p]
As I rub her slit up and down with my left hand, I lightly touch her clit.[p]
#&f.Imo_Name
Nnn!! ・・・n・・・ ah・・・[p]
・・・ah・・・ nnn・・・[p]
#
[emb exp="f.Imo_Name"] desperately tries to hold back her voice, but every time I pinch her nipple, her moans echo loudly through the narrow bathroom.[p]

[_tb_end_text]

[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/01喘ぎ声(前)01.mp3"  loop="true"  ]
[chara_mod  name="H_風呂スキンシップ"  time="0"  cross="false"  storage="chara/20/風呂05アニメ.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Haa・・・ haa・・・[p]
Haa・・・ haa・・・[p]
#
I let go, making it seem like a short break.[p]
Suddenly, I caress her clit gently and delicately, yet intensely.[p]

[_tb_end_text]

[chara_mod  name="H_風呂スキンシップ"  time="600"  cross="false"  storage="chara/20/風呂08アニメ.png"  ]
[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/絶頂声のみ04.mp3"  loop="false"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Ahah!?[p]
Ah・・・ aaa・・・[p]
#
[emb exp="f.Imo_Name"]'s body arches back sharply, and she collapses against me.[p]
From the sheer pleasure, her hips lift up high, and her large breasts point towards the ceiling[p]
I gently and slowly caress her clit underwater, making sure to cover every bit of its surface[p]
#
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/16喘ぎ声(挿入我慢)01.mp3"  loop="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Aaah・・・ Nnn・・・[p]
Hah・・ hah・・・ Oh, [emb exp="f.Oni_Name3"]・・・[p]
N・・・ no・・・ Nn・・・ Nn[p]
#
Saying that, she wraps her arms around my neck and keeps letting out hot breaths[p]
My crotch is already throbbing hard, growing big and stiff[p]
That huge thing is poking [emb exp="f.Imo_Name"]'s butt[p]
#&f.Imo_Name
Ah!・・・ Aah!![p]
Haaah・・・ Ah![p]
#
Overwhelmed by the pleasure and stimulation, she moves her hips trying to escape my hand[p]
To catch her fleeing hips, I use three fingers, placing them vertically to cover her whole pussy, pulling her close and holding her still[p]
I sandwich her clit between my index and ring fingers, and rub the tip of the bud up and down with my middle finger[p]
#&f.Imo_Name
Aaah・・・ m・・・ no・・・[p]
Uh・・ Ah・・ Haaah・・・ Aah[p]
#
As [emb exp="f.Imo_Name"] moves her hips, the head of my dick slips smoothly between her thighs, turning into thigh sex.[p]
#&f.Imo_Name
Ah・・Aaaah![p]
#
My shaft presses tight against her pussy opening.[p]
With the double stimulation against her clit, [emb exp="f.Imo_Name"] arches her back even further, shaking her nipples.[p]
#&f.Imo_Name
Ah・・I'm・・・[p]
Aaaah・・・I'm gonna cum・・・[p]
Mmm・・・Aaaaah・・・[p]
#
Perhaps from the pleasure, [emb exp="f.Imo_Name"] writhes, moving her hips back and forth and side to side.[p]
I whisper in her ear as I stimulate her hard, swollen clit, gently yet intensely and smoothly.[p]
#&f.Oni_Name3
You can cum.[p]
I want to see you cum.[p]
#&f.Imo_Name
Ah・・・Aaah!![p]
#
[emb exp="f.Imo_Name"] puts strength into both arms wrapped around my neck, trying to cling to me.[p]
#&f.Imo_Name
I'm・・cumming[heart][p]
#
[_tb_end_text]

[chara_mod  name="H_風呂スキンシップ"  time="0"  cross="false"  storage="chara/20/風呂08アニメ2.png"  ]
[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/絶頂声のみ02.mp3"  loop="false"  ]
[tb_start_text mode=1 ]
#
Her hips jerk up.[p]
#&f.Imo_Name
Ah[heart]・・・I'm・・・・[p]
Aaah[heart]・・I'm cumming・・[p]
Ahaaaaaaah!![heart][heart][heart][p]
#
Twitch twitch・・・[p]
Her whole body twitches and jerks in spasms, stiffening up[p]
#
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/01喘ぎ声(前)01.mp3"  loop="true"  ]
[chara_mod  name="H_風呂スキンシップ"  time="0"  cross="false"  storage="chara/20/風呂08_1.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Aah[heart]・・Haaaah・・・[p]
Hah・・hah・・・[p]
#
Looks like she came[p]
[_tb_end_text]

[tb_start_tyrano_code]
;分岐ボタン表示　確率再計算
[iscript]
f.風呂_我慢 = "Can't hold back!"  + f.風呂_膣口刺激確率 + "%";
[endscript]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;選択肢
[glink  color="btn_05_black"  storage="__Main_Furo_Shori.ks"  size="23"  x="940"  y="150"  width="300"  height="50"  text="Get out of the bath"  _clickable_img=""  target="*__いかせ後あがる" enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3" ]
[glink  color="btn_05_black"  storage="__Main_Furo_Shori.ks"  size="23"  x="940"  y="200"  width="300"  height="50"  text="&f.風呂_我慢"  _clickable_img=""  target="*__我慢できない" enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3" cond="f.Sta_Risei <= 50" cond="f.Sta_Risei <= 68"]
[_tb_end_tyrano_code]

[s  ]
*__いかせ後あがる

[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/吐息01.mp3"  loop="true"  ]
[chara_mod  name="H_風呂スキンシップ"  time="600"  cross="false"  storage="chara/20/風呂04_1.png"  ]
[tb_start_text mode=1 ]
#
She collapses limply against me, panting heavily[p]
My dick is rock hard, but I hold myself back, knowing I shouldn't go any further[p]
I let [emb exp="f.Imo_Name"] lean against me as much as she likes, and we spend a long time soaking in the tub, holding each other[p]
[_tb_end_text]

[tb_hide_message_window  ]
[stopse  time="1000"  buf="3"  ]
[tb_start_tyrano_code]
;開発度カウント
[eval exp="f.Sex_Count[5].count +=1"]
[eval exp="f.Kaihatu_Count[1].kazu += 1"]
[eval exp="f.Kaihatu_Count[2].kazu += 1"]
[eval exp="f.Kaihatu_Count[3].kazu += 1"]
[_tb_end_tyrano_code]

[tb_eval  exp="f.Tre_Up=2"  name="Tre_Up"  cmd="="  op="t"  val="2"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__理性DOWN"  ]
[tb_eval  exp="f.Tre_Up=100"  name="Tre_Up"  cmd="="  op="t"  val="100"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__性欲DOWN"  ]
[jump  storage="__Main_Furo.ks"  target="*__風呂から出る"  ]
*__我慢できない

[tb_start_tyrano_code]
;風呂バー用変数代入
[eval exp="f.Skin_Kauritu = f.風呂_膣口刺激確率"]
[_tb_end_tyrano_code]

[call  storage="Tre_Bar.ks"  target="*__風呂バー増減"  ]
[tb_image_hide  time="0"  ]
[call  storage="Main_Sta.ks"  target="*__メインステ表示"  ]
[jump  storage="__Main_Furo_Shori.ks"  target="*__我慢成功"  cond="f.Skin_Kekka>0"  ]
[stopse  time="1000"  buf="0"  ]
[stopse  time="1000"  buf="1"  ]
[stopse  time="1000"  buf="2"  ]
[stopse  time="1000"  buf="3"  ]
[tb_eval  exp="f.Tre_Up=1"  name="Tre_Up"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__理性DOWN"  ]
[tb_eval  exp="f.Tre_Up=100"  name="Tre_Up"  cmd="="  op="t"  val="100"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__性欲DOWN"  ]
[tb_image_hide  time="1000"  ]
[call  storage="Main_Sta.ks"  target="*__メインステ表示"  ]
[jump  storage="__Main_Furo.ks"  target="*__スキンシップ失敗"  cond="f.Skin_Kekka==0"  ]
*__我慢成功

[chara_mod  name="H_風呂スキンシップ"  time="600"  cross="false"  storage="chara/20/風呂03_2.png"  ]
[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/01喘ぎ声(前)01.mp3"  loop="true"  ]
[tb_start_text mode=1 ]
She collapses limply against me, panting heavily[p]
#&f.Imo_Name
Hah・・hah・・・[p]
Hah・・hah・・・[p]
#
Her soft body presses against me, leaving no space between us[p]
[emb exp="f.Imo_Name"]'s flushed body and sweet scent intensely stimulate my dick[p]
#&f.Imo_Name
Mmh・・・・[p]
#
I try to hold back, but my dick just keeps getting harder[p]
[emb exp="f.Imo_Name"]'s limp weight presses down on my dick, stimulating her pussy lips right after she came[p]
#
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/16喘ぎ声(挿入我慢)01.mp3"  loop="true"  ]
[chara_mod  name="H_風呂スキンシップ"  time="0"  cross="false"  storage="chara/20/風呂03_3.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Hyah[p]
Ah・・・Ah[p]
#
[emb exp="f.Imo_Name"] moves her hips in small motions from the stimulation of the folds[p]
[emb exp="f.Imo_Name"]'s moving crotch rubs against my dick over and over, and the head almost slips into her pussy entrance[p]
#&f.Imo_Name
Aah!![p]
#
・・・My sexual desire, which I had been holding back, was about to reach its limit[p]
When I touch her nipples and her slit again, [emb exp="f.Imo_Name"]'s body arches backward[p]

[_tb_end_text]

[chara_mod  name="H_風呂スキンシップ"  time="600"  cross="false"  storage="chara/20/風呂08_1.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Aah・・・ah・・・aah[p]
Mm・・[p]
#
Seeing [emb exp="f.Imo_Name"]'s disheveled figure right in front of me, my mind was being dominated by lust[p]
Matching her butt moving in small motions, I end up moving my hips too[p]
Pretending it's an accident, I catch the head against her pussy entrance[p]
#&f.Imo_Name
Ah・・・ah・・・ah[p]
#
Tension runs through [emb exp="f.Imo_Name"]'s body, and I feel her put strength into her whole body[p]
When I push the caught head, it pops out and slides past her crotch[p]
#&f.Imo_Name
Ah・・・hah・・・hah・・・[p]
#
After putting her at ease, I pretend it's an accident again, hooking the head of my dick against her entrance・・・[p]
#&f.Imo_Name
Ah・・・ah・・・ah[p]
When I push my hips forward, it snaps away and slides past[p]
#&f.Imo_Name
Ah・・・hah・・・hah・・・[p]
Aiming for her entrance again and pressing the head against it, it catches on・・・but when I push, it pops right out[p]
#&f.Imo_Name
Ah・・・hah・・hah・・・[p]
#
I can tell that just rubbing the entrance like this is giving [emb exp="f.Imo_Name"] intense stimulation[p]
#&f.Imo_Name
Ah・・mm・・・[p]
Aaaah・・・n・・・no・・・[p]
[emb exp="f.Oni_Name3"]・・・[p]
#
It catches then slips out, catches then slips out, over and over[p]
Losing myself in front of her incredibly erotic body, I frantically keep hooking the head of my dick against her pussy entrance over and over[p]
#&f.Imo_Name
Aaah・・・[p]
Ah・・・aah・・・[p]
#
Suddenly, the head I was trying to hook slipped right into her pussy hole with a perfect pop[p]
#&f.Imo_Name
Aaah!![p]
N・・・no・・・it's going in!![p]
Ahh!![p]
#
The tip of the head is stuck tight against her pussy entrance, not moving[p]
When I push my hips forward a little・・・just a tiny bit・・・just a tiny, tiny bit, the tip of the head sinks into her entrance[p]
#&f.Imo_Name
Ah!![p]
N・・・no・・・ah・・aah[p]
#
The very tip of the head can feel [emb exp="f.Imo_Name"]'s body heat and the tightening of her folds just a little[p]
If I push my hips forward even just a little more, my dick would slide right into [emb exp="f.Imo_Name"]'s pussy[p]
I could have sex with [emb exp="f.Imo_Name"]・・・[p]
・・・What do I do・・・[p]
[_tb_end_text]

[tb_eval  exp="f.Tre_Up=1"  name="Tre_Up"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__理性DOWN"  ]
[tb_image_hide  time="1000"  ]
[call  storage="Main_Sta.ks"  target="*__メインステ表示"  ]
[tb_start_tyrano_code]
;くつろく選択肢
[glink  color="btn_05_black"  storage="__Main_Furo_Shori.ks"  size="23"  x="940"  y="150"  width="300"  height="50"  text="Hold back"  _clickable_img=""  target="*__自制する" enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3" ]
[glink  color="btn_05_black"  storage="__Main_Furo_Shori.ks"  size="23"  x="940"  y="200"  width="300"  height="50"  text="Thrust my hips in"  _clickable_img=""  target="*__オナニーから挿入" enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3" cond="f.Sta_Risei <= 50 && !f.Sex_Count[0].bestcount ==0 && f.Sys_Seiryoku > 0"]
[_tb_end_tyrano_code]

[s  ]
*__自制する

[tb_start_text mode=1 ]
#&f.Imo_Name
Ah・・・S・・・[emb exp="f.Oni_Name3"][p]
It's going in・・it's going・・・no・・・[p]
・・・No・・・[p]
#
Feeling [emb exp="f.Imo_Name"] pull her hips back a little from where we're joined tight, I come to my senses and somehow manage to hold back[p]

[_tb_end_text]

[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/01喘ぎ声(前)01.mp3"  loop="true"  ]
[chara_hide_all  time="600"  wait="true"  ]
[bg  time="1000"  method="crossfade"  storage="BG_Black.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Hah・・hah・・・[p]
Hah・・hah・・・[p]
#
#
I pull the head of my dick completely away from [emb exp="f.Imo_Name"]'s crotch and hug her from behind[p]
Our faint scraps of reason sound a warning that this relationship is dangerous[p]
Only silence and the loud breathing of the two of us echo in the bathtub[p]
Staying still, we continue to hold each other close until we're satisfied[p]
[_tb_end_text]

[stopse  time="1000"  buf="3"  ]
[tb_start_tyrano_code]
;開発度カウント
[eval exp="f.Sex_Count[5].count +=1"]
[eval exp="f.Kaihatu_Count[1].kazu += 1"]
[eval exp="f.Kaihatu_Count[2].kazu += 1"]
[eval exp="f.Kaihatu_Count[3].kazu += 1"]
[_tb_end_tyrano_code]

[tb_hide_message_window  ]
[tb_eval  exp="f.Tre_Up=2"  name="Tre_Up"  cmd="="  op="t"  val="2"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__理性DOWN"  ]
[tb_eval  exp="f.Tre_Up=100"  name="Tre_Up"  cmd="="  op="t"  val="100"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__性欲DOWN"  ]
[jump  storage="__Main_Furo.ks"  target="*__風呂から出る"  ]
[s  ]
*__オナニーから挿入

[tb_start_text mode=1 ]
#
Just like that, I hold [emb exp="f.Imo_Name"]'s crotch with my left hand so she can't get away, and slowly thrust my hips[p]
Shlp・・schlp・・squelch・・・[p]
My huge dick slides smoothly all the way inside[p]

[_tb_end_text]

[playse  volume="100"  time="1000"  buf="1"  storage="えっち系/挿入音01.mp3"  loop="false"  ]
[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/絶頂声のみ02.mp3"  loop="true"  ]
[chara_mod  name="H_風呂スキンシップ"  time="600"  cross="false"  storage="chara/20/風呂08_2.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Aaaaaah[heart]!!![p]
Aaah[heart][heart][heart][p]
#
Inside [emb exp="f.Imo_Name"]'s pussy was hotter than the bathwater, a thick, melting mess so wet it felt like my dick would dissolve[p]

[_tb_end_text]

[chara_mod  name="H_風呂スキンシップ"  time="600"  cross="false"  storage="chara/20/風呂08_1.png"  ]
[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/01喘ぎ声(前)01.mp3"  loop="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
It's・・・in・・・side・・・[p]
Mmh・・・[p]
#&f.Oni_Name3
You wanted this too, didn't you, [emb exp="f.Imo_Name"]?[p]
#&f.Imo_Name
T・・・that's・・・not true[p]
#
Seeing her turn bright red and talk tough like that, I firmly hold [emb exp="f.Imo_Name"]'s hips and push the head of my dick all the way to her womb[p]

[_tb_end_text]

[playse  volume="100"  time="1000"  buf="1"  storage="挿入音/挿入音汎用01.mp3"  loop="false"  ]
[tb_start_text mode=1 ]
#
・・・squish[p]

[_tb_end_text]

[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/絶頂声のみ02.mp3"  loop="false"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Aaaaah[heart][heart][heart]!!![p]
#
I thrust it in tightly all the way to the base, pushing her womb up.[p]

[_tb_end_text]

[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/03喘ぎ声(前)03.mp3"  loop="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Mmm・・・ ahh・・・ ahn[heart][p]
I-It's biiig[heart][p]
#&f.Oni_Name3
It's warm inside me too.[p]
#&f.Imo_Name
No・・・ I・・・ I'm embarrassed・・・[p]
#&f.Oni_Name3
Can you stand?[p]
#&f.Imo_Name
Yeah・・・[p]
#
We stand up right there, keeping it inserted deep inside.[p]

[_tb_end_text]

[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[tb_start_tyrano_code]
;開発度カウント
[eval exp="f.Sex_Count[5].count +=1"]
[eval exp="f.Kaihatu_Count[1].kazu += 1"]
[eval exp="f.Kaihatu_Count[2].kazu += 1"]
[eval exp="f.Kaihatu_Count[3].kazu += 1"]
[_tb_end_tyrano_code]

[chara_hide_all  time="0"  wait="true"  ]
[tb_hide_message_window  ]
[tb_image_hide  time="0"  ]
[tb_start_tyrano_code]
;ステ表示初期化
[clearfix]
[freeimage  layer="2"  ]
[layopt layer="2" visible="true" x=0 y=0]
[_tb_end_tyrano_code]

[bg  time="0"  method="crossfade"  storage="風呂03.png"  ]
[call  storage="Main_Sta.ks"  target="*__Hメインステ表示"  ]
[call  storage="__Main_Furo_Shori.ks"  target="*__Backアイコン表示"  ]
[call  storage="__Main_Furo_Shori.ks"  target="*__射精感初期表示"  ]
[chara_show  name="H_風呂"  time="0"  wait="true"  storage="chara/26/風呂本番11.png"  width="930"  height="660"  top="60"  left="0"  reflect="false"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[jump  storage="__Main_Furo.ks"  target="*__オナニー挿入の飛び先"  ]
*__体を洗う

[playse  volume="100"  time="1000"  buf="3"  storage="えっち系/お風呂02.mp3"  ]
[chara_mod  name="H_風呂スキンシップ"  time="0"  cross="false"  storage="chara/20/風呂01_4.png"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#
I carefully wash the dirt from my body.[p]
#&f.Oni_Name3
・・・[p]
・・・[p]
[_tb_end_text]

[tb_start_text mode=1 ]
Phew.[p]
#
[emb exp="f.Imo_Name"] looks away shyly.[p]
[_tb_end_text]

[stopse  time="1000"  buf="3"  ]
[tb_hide_message_window  ]
[tb_eval  exp="f.Tre_Up=1"  name="Tre_Up"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__性欲UP"  ]
[tb_image_hide  time="0"  ]
[call  storage="Main_Sta.ks"  target="*__メインステ表示"  ]
[font  size="14"  color="0x000000"  face="JKG-M_3"  ]
[glink  color="btn_05_black"  storage="__Main_Furo.ks"  size="23"  x="940"  y="150"  width="250"  height="50"  text="Enter together"  _clickable_img=""  target="*__最初に一緒に入る"  ]
[resetfont  ]
[s  ]
[camera  time="1000"  zoom="1"  wait="true"  ]
*__Backアイコン表示

[tb_start_tyrano_code]
;Backアイコン　Autoアイコン
[button name="role_button" role="auto" graphic="c_btn_auto.png" enterimg="c_btn_auto2.png" width="50"  height="50"  x="1214"  y="550"  name="H_Back_Icon" fix="true" hint="Auto"]
[button  storage="__Main_Furo.ks"  target="*__途中でやめる"  graphic="やめるアイコン.png"  width="110"  height="110"  x="1165"  y="602"  name="H_Back_Icon" fix="true" cond="!tf._tb_is_replay" ]

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
[wait time="500" cond="f.H_Sex_Speed == 2"]
[wait time="300" cond="f.H_Sex_Speed == 3"]
[wait time="100" cond="f.H_Sex_Speed == 4"]

[eval exp="f.H_Syaseikan += 1"]
[eval exp="f.射精度 = f.H_Syaseikan + '％' "]

[ptext layer=2 text="&f.射精度" x=1060 y=650 size=40 bold="bold" edge="0x000000" width = 100 align = "right" overwrite = "true" name="Syaseikan"]

[_tb_end_tyrano_code]

[call  storage="__Main_Furo_Shori.ks"  target="*__セックス中セリフ風呂"  ]
[jump  storage="__Main_Furo_Shori.ks"  target="*__射精感UP30まで"  cond="f.H_Syaseikan<30"  ]
[return  ]
*__射精感UP70まで

[tb_start_tyrano_code]
;射精感
[wait time="500" cond="f.H_Sex_Speed == 2"]
[wait time="300" cond="f.H_Sex_Speed == 3"]
[wait time="100" cond="f.H_Sex_Speed == 4"]

[eval exp="f.H_Syaseikan += 1"]
[eval exp="f.射精度 = f.H_Syaseikan + '％' "]

[ptext layer=2 text="&f.射精度" x=1060 y=650 size=40 bold="bold" edge="0x000000" width = 100 align = "right" overwrite = "true" name="Syaseikan"]

[_tb_end_tyrano_code]

[call  storage="__Main_Furo_Shori.ks"  target="*__セックス中セリフ風呂"  ]
[jump  storage="__Main_Furo_Shori.ks"  target="*__射精感UP70まで"  cond="f.H_Syaseikan<70"  ]
[return  ]
*__射精感UP100まで

[tb_start_tyrano_code]
;射精感
[wait time="500" cond="f.H_Sex_Speed == 2"]
[wait time="300" cond="f.H_Sex_Speed == 3"]
[wait time="100" cond="f.H_Sex_Speed == 4"]

[eval exp="f.H_Syaseikan += 1"]
[eval exp="f.射精度 = f.H_Syaseikan + '％' "]

[ptext layer=2 text="&f.射精度" x=1060 y=650 size=40 bold="bold" edge="0x000000" width = 100 align = "right" overwrite = "true" name="Syaseikan"]

[_tb_end_tyrano_code]

[call  storage="__Main_Furo_Shori.ks"  target="*__セックス中セリフ風呂"  ]
[jump  storage="__Main_Furo_Shori.ks"  target="*__射精感UP100まで"  cond="f.H_Syaseikan<100"  ]
[return  ]
*__射精感120まで

[tb_start_tyrano_code]
;射精感
[wait time="500" cond="f.H_Sex_Speed == 2"]
[wait time="300" cond="f.H_Sex_Speed == 3"]
[wait time="100" cond="f.H_Sex_Speed == 4"]

[eval exp="f.H_Syaseikan += 1"]
[eval exp="f.射精度 = f.H_Syaseikan + '％' "]

[ptext layer=2 text="&f.射精度" x=1060 y=650 size=40 bold="bold" edge="0x000000" width = 100 align = "right" overwrite = "true" name="Syaseikan"]

[_tb_end_tyrano_code]

[call  storage="__Main_Furo_Shori.ks"  target="*__セックス中セリフ風呂"  ]
[jump  storage="__Main_Furo_Shori.ks"  target="*__射精感120まで"  cond="f.H_Syaseikan<120"  ]
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

[intrandom_ko10panda  max="2"  count="1"  show_result="false"  show_style="style_a"  show_detail="false"  detail_length="10"  show_log="log_4"  var_name="tf.rand"  min="0"  ]
[tb_start_tyrano_code]
;キャラのピストン速度、キャラ【画像変更】

[switch exp="f.H_Sex_Speed"]
[case is=2]
[chara_mod  name="H_風呂"  time="0"  cross="true"  storage="chara/26/風呂アニメ01.png" cond="f.H_Sex_Speed == 2 && f.H_Danmen_Flag == 0"]
[chara_mod  name="H_風呂"  time="0"  cross="true"  storage="chara/26/風呂アニメ11.png" cond="f.H_Sex_Speed == 2 && f.H_Danmen_Flag == 1"]
[playse  volume="100"  time="1000"  buf="1"  storage="ピストン系/風呂ピストン01.mp3"  loop="true"  ]
[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/06喘ぎ声(挿入)01.mp3"  loop="true" cond="tf.rand ==1"]
[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/03喘ぎ声(前)03.mp3"  loop="true"  cond="tf.rand !=1"]

[case is=3]
[if exp="f.H_Syaseikan <=70"]
[chara_mod  name="H_風呂"  time="0"  cross="true"  storage="chara/26/風呂アニメ02.png" cond="f.H_Sex_Speed == 3 && f.H_Danmen_Flag == 0"]
[chara_mod  name="H_風呂"  time="0"  cross="true"  storage="chara/26/風呂アニメ12.png" cond="f.H_Sex_Speed == 3 && f.H_Danmen_Flag == 1"]
[playse  volume="100"  time="1000"  buf="1"  storage="ピストン系/風呂ピストン02.mp3"  loop="true"  ]
[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/06喘ぎ声(挿入)01.mp3"  loop="true" cond="tf.rand ==1"]
[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/07喘ぎ声(挿入)02.mp3"  loop="true"  cond="tf.rand !=1"]

[else]
[chara_mod  name="H_風呂"  time="0"  cross="true"  storage="chara/26/風呂アニメ02_1.png" cond="f.H_Sex_Speed == 3 && f.H_Danmen_Flag == 0"]
[chara_mod  name="H_風呂"  time="0"  cross="true"  storage="chara/26/風呂アニメ12_1.png" cond="f.H_Sex_Speed == 3 && f.H_Danmen_Flag == 1"]
[playse  volume="100"  time="1000"  buf="1"  storage="ピストン系/風呂ピストン02.mp3"  loop="true"  ]
[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/06喘ぎ声(挿入)01.mp3"  loop="true" cond="tf.rand ==1"]
[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/07喘ぎ声(挿入)02.mp3"  loop="true"  cond="tf.rand !=1"]

[endif]

[case is=4]
[chara_mod  name="H_風呂"  time="0"  cross="true"  storage="chara/26/風呂アニメ03.png" cond="f.H_Sex_Speed == 4 && f.H_Danmen_Flag == 0"]
[chara_mod  name="H_風呂"  time="0"  cross="true"  storage="chara/26/風呂アニメ13.png" cond="f.H_Sex_Speed == 4 && f.H_Danmen_Flag == 1"]
[playse  volume="100"  time="1000"  buf="1"  storage="ピストン系/風呂ピストン03.mp3"  loop="true"  ]
[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/09喘ぎ声(挿入)04.mp3"  loop="true" cond="tf.rand ==1"]
[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/10喘ぎ声(挿入)05.mp3"  loop="true"  cond="tf.rand !=1"]

[case]
[chara_mod  name="H_風呂"  time="0"  cross="true"  storage="chara/26/風呂本番11.png" cond="f.H_Danmen_Flag == 0"]
[chara_mod  name="H_風呂"  time="0"  cross="true"  storage="chara/26/風呂本番12.png" cond="f.H_Danmen_Flag == 1"]

[endswitch]

[_tb_end_tyrano_code]

[return  ]
*__セックス中セリフ風呂

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
"Mmaahh",
"Haahh",
"⑹♥",
"Ahh⑹ahh",
"Nngh♥",
"Ah♥",
"Mmm♥",
"Aahh!!"
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
"Squelch",
"Squish",
"Squish",
"Splurt",
"Spurt",
"Slurp",
"Gulp"
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
[tb_start_tyrano_code]
;効果音
[iscript]
// 効果音候補
var kouka_list = [
"Slurp",
"Pop",
"Squelch",
"Squish",
"Squish",
"Splurt",
"Spurt",
"slurp",
"glurp"
];

// ランダム選択
f.kouka_text = kouka_list[f.rand];

// 50% の確率で座標を左右に振り分け
if (Math.random() < 0.5) {
f.kouka_x = 910;
f.kouka_y = 580;
f.kouka_name = "Kouka01";
f.kouka_left = 930;
f.kouka_top = 560;
} else {
f.kouka_x = 710;
f.kouka_y = 580;
f.kouka_name = "Kouka02";
f.kouka_left = 690;
f.kouka_top = 560;
}
[endscript]

; 共通の ptext 呼び出し
[ptext layer="1" x="&f.kouka_x" y="&f.kouka_y" size="30" text="&f.kouka_text" name="&f.kouka_name" zindex=100 edge="0xffffff" color="0x000000" face="JK-Gothic-testM" bold="true"]

; アニメーション
[anim name="&f.kouka_name" left="&f.kouka_left" top="&f.kouka_top" opacity=0 time=3000]

[_tb_end_tyrano_code]

