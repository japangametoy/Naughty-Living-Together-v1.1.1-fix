[_tb_system_call storage=system/_H__Onani_Yoru.ks]

[tb_start_tyrano_code]
[layopt layer=2 visible=true opacity=255]
[layopt layer=1 visible=true opacity=255]
[_tb_end_tyrano_code]

[tb_eval  exp="f.Sta_Risei=90"  name="Sta_Risei"  cmd="="  op="t"  val="90"  val_2="undefined"  ]
*__Hオナニー開始

[tb_eval  exp="f.H_After_CG=1"  name="H_After_CG"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[playbgm  volume="20"  time="1000"  loop="true"  storage="PerituneMaterial_RainDrop_loop.mp3"  fadein="true"  ]
[tb_eval  exp="f.Skin_Kakuritu=0"  name="Skin_Kakuritu"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.Skin_Kekka=0"  name="Skin_Kekka"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[bg  time="0"  method="crossfade"  storage="BG_Black.png"  ]
[tb_image_hide  time="0"  ]
[tb_eval  exp="f.Sys_Jikan=3"  name="Sys_Jikan"  cmd="="  op="t"  val="3"  val_2="undefined"  ]
[call  storage="Main_Sta.ks"  target="*__メインステセーブ無"  ]
[chara_hide_all  time="0"  wait="true"  ]
[playse  volume="100"  time="1000"  buf="2"  storage="えっち系/吐息01.mp3"  loop="true"  ]
[playse  volume="100"  time="1000"  buf="1"  storage="えっち系/オナニー音.mp3"  loop="true"  ]
[mask_off  time="500"  effect="fadeOut"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#&Imo_Name
Hah・・hah・・nnh・・[p]
・・Ah・・・nnnh・・・[p]
[_tb_end_text]

[bg  time="500"  method="crossfade"  storage="夜オナ.png"  cross="false"  ]
[chara_show  name="H_夜オナ"  time="1000"  wait="true"  storage="chara/16/夜オナニー01.png"  width="560"  height="670"  left="360"  top="50"  ]
[tb_start_text mode=1 ]
#
I wake up to faint sounds and look around.[p]
I hear the rustle of clothes and a squishy sound of fluids being played with[p]
I realized [emb exp="f.Imo_Name"] was secretly masturbating with her back turned to me.[p]
#&f.Imo_Name
Nnh・・・nnnh・・[p]
#
・・・What should I do[p]
[_tb_end_text]

[tb_hide_message_window  ]
[font  size="18"  color="0x000000"  face="JKG-M_3"  bold="true"  ]
[tb_start_tyrano_code]
;聞き耳選択肢
[glink  color="btn_05_black"  storage="H__Onani_Yoru.ks"  size="25"  x="940"  y="150"  width="300"  height="50"  text="Listen closely 90%" target="*__聞き耳をたてる" enterse="マウスオーバー.mp3"  clickse="決定ボタンを押す53.mp3" ]
[glink  color="btn_05_black"  storage="H__Onani_Yoru.ks"  size="25"  x="940"  y="250"  width="300"  height="50"  text="Ignore it and sleep" target="*__気にせず寝る" enterse="マウスオーバー.mp3"  clickse="決定ボタンを押す53.mp3" ]
[_tb_end_tyrano_code]

[resetfont  ]
[s  ]
*__聞き耳をたてる

[tb_eval  exp="f.Skin_Kakuritu=90"  name="Skin_Kakuritu"  cmd="="  op="t"  val="90"  val_2="undefined"  ]
[call  storage="Tre_Bar.ks"  target="*__風呂バー増減"  ]
[tb_image_hide  time="0"  ]
[jump  storage="H__Onani_Yoru.ks"  target="*__失敗_聞き耳"  cond="f.Skin_Kekka==0"  ]
[intrandom_ko10panda  max="4"  count="1"  show_result="false"  show_style="style_a"  show_detail="false"  detail_length="0"  show_log="log_2"  var_name="tf.rand"  ]
[tb_show_message_window  ]
[tb_start_tyrano_code]
[switch exp="tf.rand"]
[case is=0]
#&f.Imo_Name
Nn・・nnnh!!・・・Ah・・・[p]
Hah・・hah・・[p]
Hah・・・[p]
Nn・・・[p]
・・・[emb exp="f.Oni_Name3"]・・・[p]
#
・・・[p]
I'm getting turned on・・・[p]

[case is=1]
#&f.Imo_Name
Nn・・nnh!!・・・nh・・・[p]
Hah・・hah・・[p]
Hah・・・[p]
#
I can tell she's desperately trying to hold back her voice[p]
#&f.Imo_Name
Nnh・・・[p]
・・・Ah![p]
Hah・・hah・・[p]
#
・・・[p]
I'm getting turned on・・・[p]

[case is=2]
#&f.Imo_Name
Nn・・nnnh!!・・・Ah・・・[p]
Hah・・hah・・[p]
・・・[emb exp="f.Oni_Name3"]・・・[p]
・・・More・・・[emb exp="f.Oni_Name3"]・・・[p]
Nn・・・[p]
#
・・・[p]
I'm getting turned on・・・[p]
[case is=3]
#
Squish squish
・・・The sound of her juices mixing with air echoes faintly[p]
#&f.Imo_Name
Nn・・nnnh!!・・・nh・・・[p]
Hah・・hah・・[p]
#
She seems to be holding back her voice every time the bed creaks a little[p]
#&f.Imo_Name
Nnh・・nnh!!・・・[p]
Nh・・・!!Ah!![p]
#
・・・[p]
I'm getting turned on・・・[p]

[case is=4]
#&f.Imo_Name
Nn・・nnnh!!・・・Ah・・・[p]
Hah・・hah・・[p]
Hah・・・[p]
Nn・・・[p]
・・・[emb exp="f.Oni_Name3"]・・・[p]
#
・・・[p]
I'm getting turned on・・・[p]

[endswitch]
[_tb_end_tyrano_code]

[tb_hide_message_window  ]
[tb_eval  exp="f.Tre_Up=1"  name="Tre_Up"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__理性DOWN"  ]
[call  storage="Main_Sta.ks"  target="*__メインステセーブ無"  ]
[tb_start_tyrano_code]
;よく見る　選択肢
[glink  color="btn_05_black"  storage="H__Onani_Yoru.ks"  size="25"  x="940"  y="150"  width="300"  height="50"  text="Watch closely 70%"  _clickable_img=""  target="*__よく見る" enterse="マウスオーバー.mp3"  clickse="決定ボタンを押す53.mp3" ]
[glink  color="btn_05_black"  storage="H__Onani_Yoru.ks"  size="25"  x="940"  y="250"  width="300"  height="50"  text="Ignore it and sleep"  _clickable_img=""  target="*__気にせず寝る" enterse="マウスオーバー.mp3"  clickse="決定ボタンを押す53.mp3" ]
[_tb_end_tyrano_code]

[s  ]
*__よく見る

[tb_eval  exp="f.Skin_Kakuritu=70"  name="Skin_Kakuritu"  cmd="="  op="t"  val="70"  val_2="undefined"  ]
[call  storage="Tre_Bar.ks"  target="*__風呂バー増減"  ]
[tb_image_hide  time="0"  ]
[jump  storage="H__Onani_Yoru.ks"  target="*__失敗_よく見る"  cond="f.Skin_Kekka==0"  ]
[chara_mod  name="H_夜オナ"  time="500"  cross="false"  storage="chara/16/夜オナニー02.png"  ]
[intrandom_ko10panda  max="2"  count="1"  show_result="false"  show_style="style_a"  show_detail="false"  detail_length="0"  show_log="log_2"  var_name="tf.rand"  ]
[tb_show_message_window  ]
[tb_start_tyrano_code]
[switch exp="tf.rand"]
[case is=0]
#&f.Imo_Name
Nn・・hah・・hah・・[p]
Nnn・・・[p]
#
She's sticking her small, cute butt toward me, intently playing with her clit[p]
#&f.Imo_Name
Nn・・nnh[p]
Hah・・・hah・・・[p]
#
I can tell she's aroused by the way her shoulders heave up and down[p]
・・・[p]

[case is=1]
#&f.Imo_Name
Nn・・hah・・hah・・[p]
Nnn・・・[p]
#
She's sticking her small, cute butt toward me, intently playing with her clit[p]
#&f.Imo_Name
Nn・・nnh[p]
Hah・・・hah・・・[p]
#
I can see her juices overflowing from between her legs[p]
The sheets seem to be getting a little wet[p]
・・・[p]

[case is=2]
#&f.Imo_Name
Nn・・hah・・hah・・[p]
Nnn・・・[p]
#
She's sticking her small, cute butt toward me, intently playing with her clit[p]
#&f.Imo_Name
Nn・・nnh[p]
Hah・・・hah・・・[p]
#
I can tell she's aroused by the way her shoulders heave up and down[p]
・・・[p]

[endswitch]
[_tb_end_tyrano_code]

[tb_hide_message_window  ]
[tb_eval  exp="f.Tre_Up=1"  name="Tre_Up"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__理性DOWN"  ]
[call  storage="Main_Sta.ks"  target="*__メインステセーブ無"  ]
[tb_start_tyrano_code]
;一緒にオナニー　選択肢
[glink  color="btn_05_black"  storage="H__Onani_Yoru.ks"  size="25"  x="940"  y="150"  width="300"  height="50"  text="Keep watching 60%" target="*__じっと見る"  enterse="マウスオーバー.mp3"  clickse="決定ボタンを押す53.mp3"]
[glink  color="btn_05_black"  storage="H__Onani_Yoru.ks"  size="25"  x="940"  y="200"  width="300"  height="50"  text="Masturbate together 40%" target="*__オナニーする"  cond="f.Sys_Seiryoku>0 && f.Sta_Risei <= 90" enterse="マウスオーバー.mp3"  clickse="決定ボタンを押す53.mp3"]
[glink  color="btn_05_black"  storage="H__Onani_Yoru.ks"  size="25"  x="940"  y="250"  width="300"  height="50"  text="Leave her be and sleep" target="*__気にせず寝る" enterse="マウスオーバー.mp3"  clickse="決定ボタンを押す53.mp3" ]
[_tb_end_tyrano_code]

[s  ]
*__じっと見る

[tb_eval  exp="f.Skin_Kakuritu=60"  name="Skin_Kakuritu"  cmd="="  op="t"  val="60"  val_2="undefined"  ]
[call  storage="Tre_Bar.ks"  target="*__風呂バー増減"  ]
[tb_image_hide  time="0"  ]
[jump  storage="H__Onani_Yoru.ks"  target="*__失敗_一緒にオナ"  cond="f.Skin_Kekka==0"  ]
[playse  volume="100"  time="1000"  buf="2"  storage="えっち系/吐息02.mp3"  ]
[playse  volume="100"  time="1000"  buf="1"  storage="えっち系/オナニー02.mp3"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#
I hold my breath right there and keep watching[p]
#&f.Imo_Name
Mmh・・mmh・・・[p]
Ah・・・mmh・・・[p]
#
In the quiet room, [emb exp="f.Imo_Name"]'s cute sighs and wet squelching sounds can be heard faintly[p]
[emb exp="f.Imo_Name"] writhes as she plays with her clit[p]
#&f.Imo_Name
Haa・・haa・・mmh[p]
[emb exp="f.Oni_Name3"]・・・[emb exp="f.Oni_Name3"]・・・[p]
#
Her moving fingers get faster[p]
I'm shocked that *that* [emb exp="f.Imo_Name"] is masturbating[p]
My crotch is swelling like it's about to burst[p]
I want to jerk my dick right now, but I hold my breath so I don't get caught[p]
#&f.Imo_Name
Mmh・・・mmh!![p]
Mmmh!!![p]
#
[_tb_end_text]

[stopse  time="1000"  buf="1"  ]
[tb_start_text mode=1 ]
#
[emb exp="f.Imo_Name"]'s body tenses up with a jolt[p]
#&f.Imo_Name
Mmh・・・haa・・・haa・・・[p]
#
[_tb_end_text]

[stopse  time="1000"  buf="2"  ]
[tb_start_text mode=1 ]
#
It seems she came[p]
My crotch is rock hard, but I can't make a sound or [emb exp="f.Imo_Name"] will catch me[p]
[_tb_end_text]

[chara_mod  name="H_夜オナ"  time="500"  cross="false"  storage="chara/16/夜オナニー42.png"  ]
[tb_start_text mode=1 ]
#
[emb exp="f.Imo_Name"] pulls the covers over herself; it seems she's going to sleep[p]
Once again, the room is wrapped in silence[p]
I press down on my crotch, overflowing with pre-cum, and try to empty my mind[p]
But my lust doesn't subside, and I spend a frustrating night[p]
[_tb_end_text]

[tb_hide_message_window  ]
[tb_eval  exp="f.Tre_Up=1"  name="Tre_Up"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__理性DOWN"  ]
[call  storage="Main_Sta.ks"  target="*__メインステ表示"  ]
[jump  storage="H__Onani_Yoru.ks"  target="*__完全終了"  ]
*__オナニーする

[playse  volume="100"  time="1000"  buf="2"  storage="えっち系/吐息02.mp3"  ]
[playse  volume="100"  time="1000"  buf="1"  storage="えっち系/オナニー02.mp3"  ]
[tb_eval  exp="f.Skin_Kakuritu=40"  name="Skin_Kakuritu"  cmd="="  op="t"  val="40"  val_2="undefined"  ]
[call  storage="Tre_Bar.ks"  target="*__風呂バー増減"  ]
[tb_image_hide  time="0"  ]
[jump  storage="H__Onani_Yoru.ks"  target="*__失敗_一緒にオナ"  cond="f.Skin_Kekka==0"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#
When I start jerking my dick, [emb exp="f.Imo_Name"]'s hand stops for a moment[p]
[_tb_end_text]

[chara_mod  name="H_夜オナ"  time="0"  cross="false"  storage="chara/16/夜オナニー22.png"  ]
[stopse  time="1000"  buf="1"  ]
[stopse  time="1000"  buf="2"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
・・・[p]
・・・[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="えっち系/吐息02.mp3"  ]
[playse  volume="100"  time="1000"  buf="1"  storage="えっち系/オナニー02.mp3"  ]
[tb_start_text mode=1 ]
Haa・・haa・・[p]
#
[_tb_end_text]

[chara_mod  name="H_夜オナ"  time="0"  cross="false"  storage="chara/16/夜オナニー02.png"  ]
[tb_start_text mode=1 ]
・・・mmh[p]
#
She seems to have noticed me, but her hand doesn't stop[p]
#&f.Imo_Name
Mmh・・・ah[p]
・・・mmh[p]
#
Aware that we are both masturbating, we let out small voices while holding back[p]
#&f.Imo_Name
Mmh![p]
・・・ngh![p]
#
I feel our hands moving faster and faster[p]
The sense of shame seems to be exciting [emb exp="f.Imo_Name"] even more[p]
#
[_tb_end_text]

[tb_hide_message_window  ]
[tb_image_show  time="0"  storage="default/イベントカット47オナニー.png"  width="500"  height="300"  x="450"  y="170"  name="img_15"  ]
[call  storage="Tre_Bar.ks"  target="*__土日イベントバー増減"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="えっち系/射精音01.mp3"  ]
[tb_image_hide  time="500"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
・・・Fuu.[p]
[_tb_end_text]

[chara_mod  name="H_夜オナ"  time="0"  cross="false"  storage="chara/16/夜オナニー03.png"  ]
[stopse  time="1000"  buf="2"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Nkuh・・・Nhah![p]
Mmh![p]
Mmmh・・・![p]
#
[_tb_end_text]

[chara_mod  name="H_夜オナ"  time="1000"  cross="false"  storage="chara/16/夜オナニー22.png"  ]
[playse  volume="100"  time="1000"  buf="2"  storage="えっち系/吐息02.mp3"  loop="true"  ]
[tb_start_text mode=1 ]
Haa・・haa・・[p]
#
・・・[p]
It seems [emb exp="f.Imo_Name"] came too.[p]
[_tb_end_text]

[tb_hide_message_window  ]
[tb_eval  exp="f.Sys_Seiryoku-=1"  name="Sys_Seiryoku"  cmd="-="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.Tre_Up=2"  name="Tre_Up"  cmd="="  op="t"  val="2"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__理性DOWN"  ]
[call  storage="Main_Sta.ks"  target="*__メインステ表示"  ]
[jump  storage="H__Onani_Yoru.ks"  target="*__完全終了"  ]
*__失敗_聞き耳

[tb_eval  exp="f.H_Onani_Bare_Flag=1"  name="H_Onani_Bare_Flag"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.H_After_CG=2"  name="H_After_CG"  cmd="="  op="t"  val="2"  val_2="undefined"  ]
[tb_show_message_window  ]
[stopse  time="1000"  buf="1"  ]
[stopse  time="1000"  buf="2"  ]
[chara_mod  name="H_夜オナ"  time="0"  cross="false"  storage="chara/16/夜オナニー11.png"  ]
[tb_start_text mode=1 ]
#
[emb exp="f.Imo_Name"]'s body jerks and stops moving[p]
#&f.Imo_Name
・・・[p]
・・・[p]
#
[_tb_end_text]

[chara_mod  name="H_夜オナ"  time="1000"  cross="false"  storage="chara/16/夜オナニー31.png"  ]
[tb_start_text mode=1 ]
#
[emb exp="f.Imo_Name"] slowly pulled the covers over herself[p]
・・・I wonder if she realized I was awake[p]
・・・[p]
Can't be helped, I guess I'll sleep[p]
[_tb_end_text]

[tb_hide_message_window  ]
[jump  storage="H__Onani_Yoru.ks"  target="*__完全終了"  ]
*__失敗_よく見る

[tb_eval  exp="f.H_Onani_Bare_Flag=1"  name="H_Onani_Bare_Flag"  cmd="="  op="t"  val="1"  ]
[tb_eval  exp="f.H_After_CG=2"  name="H_After_CG"  cmd="="  op="t"  val="2"  val_2="undefined"  ]
[stopse  time="1000"  buf="1"  ]
[stopse  time="1000"  buf="2"  ]
[tb_show_message_window  ]
[chara_mod  name="H_夜オナ"  time="0"  cross="false"  storage="chara/16/夜オナニー11.png"  ]
[tb_start_text mode=1 ]
#
[emb exp="f.Imo_Name"]'s body jerks and stops moving[p]
#&f.Imo_Name
・・・[p]
・・・[p]
#
[_tb_end_text]

[chara_mod  name="H_夜オナ"  time="1000"  cross="false"  storage="chara/16/夜オナニー31.png"  ]
[tb_start_text mode=1 ]
#
[emb exp="f.Imo_Name"] slowly pulled the covers over herself[p]
・・・I wonder if she realized I was awake[p]
・・・[p]
Can't be helped, I guess I'll sleep[p]
[_tb_end_text]

[chara_mod  name="H_夜オナ"  time="500"  cross="false"  storage="chara/16/夜オナニー41.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
・・・[p]
#
[_tb_end_text]

[tb_hide_message_window  ]
[jump  storage="H__Onani_Yoru.ks"  target="*__完全終了"  ]
*__失敗_一緒にオナ

[tb_eval  exp="f.H_Onani_Bare_Flag=1"  name="H_Onani_Bare_Flag"  cmd="="  op="t"  val="1"  ]
[tb_eval  exp="f.H_After_CG=2"  name="H_After_CG"  cmd="="  op="t"  val="2"  val_2="undefined"  ]
[stopse  time="1000"  buf="1"  ]
[stopse  time="1000"  buf="2"  ]
[tb_show_message_window  ]
[chara_mod  name="H_夜オナ"  time="0"  cross="false"  storage="chara/16/夜オナニー12.png"  ]
[tb_start_text mode=1 ]
#
[emb exp="f.Imo_Name"]'s body jerks and stops moving[p]
#&f.Imo_Name
・・・[p]
・・・[p]
#
[_tb_end_text]

[chara_mod  name="H_夜オナ"  time="1000"  cross="false"  storage="chara/16/夜オナニー32.png"  ]
[tb_start_text mode=1 ]
#
[emb exp="f.Imo_Name"] slowly pulled the covers over herself[p]
・・・I went a bit too far, huh[p]
・・・[p]
Can't be helped, I guess I'll sleep[p]
[_tb_end_text]

[chara_mod  name="H_夜オナ"  time="500"  cross="false"  storage="chara/16/夜オナニー42.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
・・・[p]
#
[_tb_end_text]

[tb_hide_message_window  ]
[jump  storage="H__Onani_Yoru.ks"  target="*__完全終了"  ]
*__気にせず寝る

[tb_show_message_window  ]
[tb_start_text mode=1 ]
・・・I'll pretend I didn't hear that.[p]
[_tb_end_text]

[tb_hide_message_window  ]
*__完全終了

[stopse  time="1000"  buf="0"  ]
[stopse  time="1000"  buf="1"  ]
[stopse  time="1000"  buf="2"  ]
[tb_eval  exp="f.Tre_Up=100"  name="Tre_Up"  cmd="="  op="t"  val="100"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__性欲DOWN"  ]
[mask  time="500"  effect="fadeIn"  color="0x000000"  ]
[stopbgm  time="1000"  fadeout="true"  ]
[chara_hide_all  time="0"  wait="true"  ]
[bg  time="0"  method="crossfade"  storage="BG_Black.png"  ]
[tb_image_hide  time="0"  ]
[call  storage="Main_Sta.ks"  target="*__メインステ表示"  ]
[jump  storage="__Main_Kyuuka.ks"  target="*__オナニー後"  ]
