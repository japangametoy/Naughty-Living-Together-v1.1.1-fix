[_tb_system_call storage=system/___Main_SkinShip.ks]

[tb_eval  exp="f.Oni_Ero=3"  name="Oni_Ero"  cmd="="  op="t"  val="3"  val_2="undefined"  ]
[tb_eval  exp="f.Sta_Seiyoku=0"  name="Sta_Seiyoku"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.Sta_Suki=20"  name="Sta_Suki"  cmd="="  op="t"  val="20"  val_2="undefined"  ]
[tb_eval  exp="f.H_Aroma_Flag=1"  name="H_Aroma_Flag"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.Sta_Risei=40"  name="Sta_Risei"  cmd="="  op="t"  val="40"  val_2="undefined"  ]
[bg  time="0"  method="crossfade"  storage="BG00.png"  ]
*__スキンシップトップ

[tb_start_tyrano_code]
[playbgm  volume="10"  time="500"  loop="true"  storage="調整版.mp3"  fadein="true" restart="false" ]
[_tb_end_tyrano_code]

[tb_eval  exp="f.Skin_Up_Sum=0"  name="Skin_Up_Sum"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="_Array_Kaihatu.ks"  target="*__開発配列初期化"  ]
[tb_start_tyrano_code]
[layopt layer=1 visible=true opacity=255]
[_tb_end_tyrano_code]

[tb_image_hide  time="0"  ]
[call  storage="Main_Sta.ks"  target="*__メインステ表示"  ]
[tb_image_show  time="0"  storage="default/スキンシップ01.png"  width="300"  height="400"  x="900"  y="100"  name="img_13"  ]
[call  storage="__Main_SkinShip_Shori.ks"  target="*__兄エロ技下方補正"  ]
[tb_start_tyrano_code]
;アロマON
[if exp="f.H_Aroma_Flag == 1"]
[eval exp="f.H_Bad_Aroma = 1.5"]
[else]
[eval exp="f.H_Bad_Aroma = 1"]
[endif]
[_tb_end_tyrano_code]

[tb_show_message_window  ]
[tb_start_tyrano_code]
;変数初期化
[iscript]
f.頭をなでる確率 = 100;

f.LV=1;
f.手をつなぐ確率 = Math.min(100,Math.floor((f.Sta_Suki + f.Sta_Seiyoku) / f.LV * f.Ero_Local * f.H_Bad_Aroma ));

f.LV=2;
f.ももを触る確率 = Math.min(100,Math.floor((f.Sta_Suki + f.Sta_Seiyoku) / f.LV * f.Ero_Local * f.H_Bad_Aroma ));

f.LV=3;
f.肩を抱く確率 = Math.min(100,Math.floor((f.Sta_Suki + f.Sta_Seiyoku) / f.LV * f.Ero_Local * f.H_Bad_Aroma ));

f.LV=4;
f.腰を抱く確率 = Math.min(Math.floor((f.Sta_Suki + f.Sta_Seiyoku) / f.LV * f.Ero_Local * f.H_Bad_Aroma ));

f.LV=6;
f.キス確率 = Math.min(100,Math.floor((f.Sta_Suki + f.Sta_Seiyoku) / f.LV * f.Ero_Local * f.H_Bad_Aroma ));

f.LV=7;
f.胸を触る確率 = Math.min(100,Math.floor((f.Sta_Suki + f.Sta_Seiyoku) / f.LV * f.Ero_Local * f.H_Bad_Aroma ));

f.LV=8;
f.あそこを触る確率 = Math.min(100,Math.floor((f.Sta_Suki + f.Sta_Seiyoku) / f.LV * f.Ero_Local * f.H_Bad_Aroma ));

f.頭をなでる初期確率 = f.頭をなでる確率;
f.ももを触る初期確率 = f.ももを触る確率;
f.手をつなぐ初期確率 = f.手をつなぐ確率;
f.尻をもむ初期確率 = f.尻をもむ確率;
f.肩を抱く初期確率 = f.肩を抱く確率;
f.腰を抱く初期確率 = f.腰を抱く確率;
f.キス初期確率 = f.キス確率;
f.胸を触る初期確率 = f.胸を触る確率;
f.あそこを触る初期確率 = f.あそこを触る確率;

f.頭をなでる回数 = 0;
f.ももを触る回数 = 0;
f.手をつなぐ回数 = 0;
f.尻をもむ回数 = 0;
f.肩を抱く回数 = 0;
f.腰を抱く回数 = 0;
f.キス回数 = 0;
f.胸を触る回数 = 0;
f.あそこを触る回数 = 0;
[endscript]
[_tb_end_tyrano_code]

[tb_eval  exp="f.Skin_Kakuritu=1"  name="Skin_Kakuritu"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
*_スキンシップ戻り先

[tb_start_tyrano_code]
;初期確率再設定　他おさわりの確率変動のため
[iscript]
f.頭をなでる初期確率 = 100;

f.LV=1;
f.手をつなぐ初期確率 = Math.min(100,Math.floor((f.Sta_Suki + f.Sta_Seiyoku) / f.LV * f.Ero_Local * f.H_Bad_Aroma ));

f.LV=2;
f.ももを触る初期確率 = Math.min(100,Math.floor((f.Sta_Suki + f.Sta_Seiyoku) / f.LV * f.Ero_Local * f.H_Bad_Aroma ));

f.LV=3;
f.尻をもむ初期確率 = Math.min(100,Math.floor((f.Sta_Suki + f.Sta_Seiyoku) / f.LV * f.Ero_Local * f.H_Bad_Aroma ));

f.LV=3.5;
f.肩を抱く初期確率 = Math.min(100,Math.floor((f.Sta_Suki + f.Sta_Seiyoku) / f.LV * f.Ero_Local * f.H_Bad_Aroma ));

f.LV=4;
f.腰を抱く初期確率 = Math.min(100,Math.floor((f.Sta_Suki + f.Sta_Seiyoku) / f.LV * f.Ero_Local * f.H_Bad_Aroma ));

f.LV=6;
f.キス初期確率 = Math.min(100,Math.floor((f.Sta_Suki + f.Sta_Seiyoku) / f.LV * f.Ero_Local * f.H_Bad_Aroma ));

f.LV=7;
f.胸を触る初期確率 = Math.min(100,Math.floor((f.Sta_Suki + f.Sta_Seiyoku) / f.LV * f.Ero_Local * f.H_Bad_Aroma ));

f.LV=8;
f.あそこを触る初期確率 = Math.min(100,Math.floor((f.Sta_Suki + f.Sta_Seiyoku) / f.LV * f.Ero_Local * f.H_Bad_Aroma ));
[endscript]

[_tb_end_tyrano_code]

[font  size="18"  color="0x000000"  face="JKG-M_3"  bold="true"  ]
[tb_start_tyrano_code]
;分岐ボタン表示　確率再計算
[iscript]
f.頭をなでる表示 = Math.max(0,f.頭をなでる初期確率 - f.頭をなでる回数*10);
f.頭をなでる確率 = Math.max(0,f.頭をなでる初期確率 - f.頭をなでる回数*10);
f.頭をなでる = "Pat head "  + f.頭をなでる表示 + "%";
[endscript]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;頭をなでる選択肢
[glink  color="btn_05_black"  storage="__Main_SkinShip_Shori.ks"  size="25"  x="530"  y="170"  width="300"  height="50"  text="&f.頭をなでる"  _clickable_img=""  target="*__頭をなでる" enterse="マウスオーバー.mp3"  clickse="決定ボタンを押す53.mp3" ]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;分岐ボタン表示　確率再計算
[iscript]
f.手をつなぐ表示 = Math.max(0,f.手をつなぐ初期確率 - f.手をつなぐ回数*10);
f.手をつなぐ確率 = Math.max(0,f.手をつなぐ初期確率 - f.手をつなぐ回数*10);
f.手をつなぐ = "Hold hands "  + f.手をつなぐ表示 + "%";
[endscript]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;手をつなぐ選択肢
[glink  color="btn_05_black"  storage="__Main_SkinShip_Shori.ks"  size="25"  x="530"  y="220"  width="300"  height="50"  text="&f.手をつなぐ"  _clickable_img=""  target="*__手をつなぐ" enterse="マウスオーバー.mp3"  clickse="決定ボタンを押す53.mp3" ]

[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;分岐ボタン表示　確率再計算
[iscript]
f.ももを触る表示 = Math.max(0,f.ももを触る初期確率 - f.ももを触る回数*10);
f.ももを触る確率 = Math.max(0,f.ももを触る初期確率 - f.ももを触る回数*10);
f.ももを触る = "Rub her thighs "  + f.ももを触る表示 + "%";
[endscript]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;ももを触る選択肢
[glink  color="btn_05_black"  storage="__Main_SkinShip_Shori.ks"  size="25"  x="530"  y="270"  width="300"  height="50"  text="&f.ももを触る"  _clickable_img=""  target="*__ももを触る" enterse="マウスオーバー.mp3"  clickse="決定ボタンを押す53.mp3" ]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;分岐ボタン表示　確率再計算
[iscript]
f.尻をもむ表示 = Math.max(0,f.尻をもむ初期確率 - f.尻をもむ回数*10);
f.尻をもむ確率 = Math.max(0,f.尻をもむ初期確率 - f.尻をもむ回数*10);
f.尻をもむ = "Caress her butt "  + f.尻をもむ表示 + "%";
[endscript]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;尻をもむ
[glink  color="btn_05_black"  storage="__Main_SkinShip_Shori.ks"  size="25"  x="530"  y="320"  width="300"  height="50"  text="&f.尻をもむ"  _clickable_img=""  target="*__尻をもむ" enterse="マウスオーバー.mp3"  clickse="決定ボタンを押す53.mp3" ]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;分岐ボタン表示　確率再計算
[iscript]
f.肩を抱く表示 = Math.max(0,f.肩を抱く初期確率 - f.肩を抱く回数*10);
f.肩を抱く確率 = Math.max(0,f.肩を抱く初期確率 - f.肩を抱く回数*10);
f.肩を抱く = "Hold her shoulder "  + f.肩を抱く表示 + "%";
[endscript]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;肩を抱く選択肢　もっと　もうやめる
[glink  color="btn_05_black"  storage="__Main_SkinShip_Shori.ks"  size="25"  x="530"  y="370"  width="300"  height="50"  text="&f.肩を抱く"  _clickable_img=""  target="*__肩を抱く" enterse="マウスオーバー.mp3"  clickse="決定ボタンを押す53.mp3" ]
[glink  color="btn_05_black"  storage="__Main_SkinShip.ks"  size="25"  x="530"  y="420"  width="300"  height="50"  text="More・・・"  _clickable_img=""  target="*_もっと" enterse="マウスオーバー.mp3"  clickse="決定ボタンを押す53.mp3" ]
[glink  color="btn_05_black"  storage="__Main_SkinShip.ks"  size="25"  x="530"  y="470"  width="300"  height="50"  text="Stop"  _clickable_img=""  target="*__スキンシップ終了処理" enterse="マウスオーバー.mp3"  clickse="決定ボタンを押す53.mp3" ]
[_tb_end_tyrano_code]

[resetfont  ]
[s  ]
*_もっと

[font  size="18"  color="0x000000"  face="JKG-M_3"  bold="true"  ]
[tb_start_tyrano_code]
;初期確率再設定　他おさわりの確率変動のため
[iscript]
f.頭をなでる初期確率 = 100;

f.LV=1;
f.手をつなぐ初期確率 = Math.min(100,Math.floor((f.Sta_Suki + f.Sta_Seiyoku) / f.LV * f.Oni_Ero * f.H_Bad_Aroma ));

f.LV=2;
f.ももを触る初期確率 = Math.min(100,Math.floor((f.Sta_Suki + f.Sta_Seiyoku) / f.LV * f.Oni_Ero * f.H_Bad_Aroma ));

f.LV=3;
f.肩を抱く初期確率 = Math.min(100,Math.floor((f.Sta_Suki + f.Sta_Seiyoku) / f.LV * f.Oni_Ero * f.H_Bad_Aroma ));

f.LV=4;
f.腰を抱く初期確率 = Math.min(100,Math.floor((f.Sta_Suki + f.Sta_Seiyoku) / f.LV * f.Oni_Ero * f.H_Bad_Aroma ));

f.LV=5;
f.キス初期確率 = Math.min(100,Math.floor((f.Sta_Suki + f.Sta_Seiyoku) / f.LV * f.Oni_Ero * f.H_Bad_Aroma ));

f.LV=6;
f.胸を触る初期確率 = Math.min(100,Math.floor((f.Sta_Suki + f.Sta_Seiyoku) / f.LV * f.Oni_Ero * f.H_Bad_Aroma ));

f.LV=7;
f.あそこを触る初期確率 = Math.min(100,Math.floor((f.Sta_Suki + f.Sta_Seiyoku) / f.LV * f.Oni_Ero * f.H_Bad_Aroma ));
[endscript]

[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;分岐ボタン表示　確率再計算
[iscript]
f.腰を抱く表示 = Math.max(0,f.腰を抱く初期確率 - f.腰を抱く回数*10);
f.腰を抱く確率 = Math.max(0,f.腰を抱く初期確率 - f.腰を抱く回数*10);
f.腰を抱く = "Hold her waist "  + f.腰を抱く表示 + "%";
[endscript]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;腰を抱く
[glink  color="btn_05_black"  storage="__Main_SkinShip_Shori.ks"  size="25"  x="530"  y="170"  width="300"  height="50"  text="&f.腰を抱く"  _clickable_img=""  target="*__腰を抱く" enterse="マウスオーバー.mp3"  clickse="決定ボタンを押す53.mp3" ]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;分岐ボタン表示　確率再計算
[iscript]
f.キス表示 = Math.max(0,f.キス初期確率 - f.キス回数*10);
f.キス確率 = Math.max(0,f.キス初期確率 - f.キス回数*10);
f.キス = "Kiss "  + f.キス表示 + "%";
[endscript]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;キス選択肢
[glink  color="btn_05_black"  storage="__Main_SkinShip_Shori.ks"  size="25"  x="530"  y="220"  width="300"  height="50"  text="&f.キス"  _clickable_img=""  target="*__キス" enterse="マウスオーバー.mp3"  clickse="決定ボタンを押す53.mp3" ]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;分岐ボタン表示　確率再計算
[iscript]
f.胸を触る表示 = Math.max(0,f.胸を触る初期確率 - f.胸を触る回数*10);
f.胸を触る確率 = Math.max(0,f.胸を触る初期確率 - f.胸を触る回数*10);
f.胸を触る = "Caress her breasts "  + f.胸を触る表示 + "%";
[endscript]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;胸を触る
[glink  color="btn_05_black"  storage="__Main_SkinShip_Shori.ks"  size="25"  x="530"  y="270"  width="300"  height="50"  text="&f.胸を触る"  _clickable_img=""  target="*__胸を触る" enterse="マウスオーバー.mp3"  clickse="決定ボタンを押す53.mp3" ]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;分岐ボタン表示　確率再計算
[iscript]
f.あそこを触る表示 = Math.max(0,f.あそこを触る初期確率 - f.あそこを触る回数*10);
f.あそこを触る確率 = Math.max(0,f.あそこを触る初期確率 - f.あそこを触る回数*10);
f.あそこを触る = "Caress her pussy "  + f.あそこを触る表示 + "%";
[endscript]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;あそこを触る
[glink  color="btn_05_black"  storage="__Main_SkinShip_Shori.ks"  size="25"  x="530"  y="320"  width="300"  height="50"  text="&f.あそこを触る"  _clickable_img=""  target="*__あそこを触る" enterse="マウスオーバー.mp3"  clickse="決定ボタンを押す53.mp3" ]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;分岐ボタン表示　確率再計算

[glink  color="btn_05_black"  storage=""  size="25"  x="530"  y="370"  width="300"  height="50"  text="Sex (Reason 40 or below)"  _clickable_img=""  target="*_えっち解説" cond="f.Sta_Risei>40" enterse="マウスオーバー.mp3"  clickse="決定ボタンを押す53.mp3"]

[if exp="f.Sta_Seiyoku >=100 && f.Sta_Risei<=40 && f.Sex_Count[0].bestcount > 0"]
[eval exp="f.えっち = 'Sex 100%'"]
[glink  color="btn_05_black"  storage="__Main_SkinShip.ks"  size="25"  x="530"  y="370"  width="300"  height="50"  text="&f.えっち"  _clickable_img=""  target="*H移行前"  ]
[elsif exp="f.Sta_Seiyoku <100 && f.Sta_Risei<=40"]
[eval exp="f.えっち = 'Sex 0%'"]
[glink  color="btn_05_black"  storage="__Main_SkinShip.ks"  size="25"  x="530"  y="370"  width="300"  height="50"  text="&f.えっち"  _clickable_img=""  target="*__スキンシップ失敗" ]
[endif]


[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;もどる、もうやめる選択肢
[glink name="rightClickButton" x="530" y="420" size="25" width="300" height=50 color="btn_05_black" storage="__Main_SkinShip.ks" text="Back" target="*_スキンシップ戻り先" enterse="マウスオーバー.mp3"  clickse="キャンセル1.mp3"]
[glink  color="btn_05_black"  storage="__Main_SkinShip.ks"  size="25"  x="530"  y="470"  width="300"  height="50"  text="Stop"  _clickable_img=""  target="*__スキンシップ終了処理" enterse="マウスオーバー.mp3"  clickse="決定ボタンを押す53.mp3" ]
[_tb_end_tyrano_code]

[resetfont  ]
[s  ]
*_えっち解説

[tb_start_text mode=1 ]
Requires Reason 40 or below and Lust.[p]
[_tb_end_text]

[jump  storage="__Main_SkinShip.ks"  target="*_もっと"  ]
[tb_show_message_window  ]
*__スキンシップ失敗

[stopse  time="1000"  buf="1"  fadeout="true"  ]
[stopse  time="1000"  buf="2"  ]
[tb_image_hide  time="0"  ]
[chara_hide_all  time="0"  wait="true"  ]
[chara_show  name="さくら01_1"  time="0"  wait="true"  storage="chara/15/キャラ待機12.png"  width="500"  height="550"  left="750"  top="170"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
S-sorry, [emb exp="f.Oni_Name3"]・・・[r]・・・I can't do any more・・・[p]
#
・・・[p]
I overdid it・・・[p]
[_tb_end_text]

[tb_eval  exp="f.Tre_Up=1"  name="Tre_Up"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__好きDOWN"  ]
[jump  storage="__Main_Kyuuka.ks"  target="*___イベント終了時間経過"  ]
*H移行前

[tb_start_tyrano_code]
;精力判定　0だとダメ
[if exp="f.Sys_Seiryoku <= 0"]
I have no energy・・・
[jump target="*_もっと"]
[endif]
[_tb_end_tyrano_code]

[tb_image_hide  time="0"  ]
[chara_hide_all  time="0"  wait="true"  ]
[chara_show  name="さくら01_1"  time="0"  wait="true"  storage="chara/15/キャラ待機11.png"  width="500"  height="550"  left="750"  top="170"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Y-yeah・・・[p]
[_tb_end_text]

[tb_hide_message_window  ]
[stopse  time="1000"  buf="1"  ]
[stopse  time="1000"  buf="2"  ]
[stopbgm  time="1000"  ]
[mask  time="300"  effect="fadeIn"  color="0x000000"  ]
[chara_hide_all  time="0"  wait="true"  ]
[tb_image_hide  time="1000"  ]
[bg  time="0"  method="crossfade"  storage="BG_Black.png"  ]
[tb_start_tyrano_code]
[freeimage layer=2]
[_tb_end_tyrano_code]

[cm  ]
[jump  storage="__Main_SkinShip_H.ks"  target="*__H__Skinship"  ]
*__スキンシップ終了処理

[jump  storage="__Main_SkinShip_Shori.ks"  target="*__80以上"  cond="f.Skin_Up_Sum>79"  ]
[jump  storage="__Main_SkinShip_Shori.ks"  target="*__50以上"  cond="f.Skin_Up_Sum>49"  ]
[jump  storage="__Main_SkinShip_Shori.ks"  target="*__35以上"  cond="f.Skin_Up_Sum>34"  ]
[jump  storage="__Main_SkinShip_Shori.ks"  target="*__20以上"  cond="f.Skin_Up_Sum>19"  ]
[jump  storage="__Main_SkinShip_Shori.ks"  target="*__8以上"  cond="f.Skin_Up_Sum>7"  ]
[jump  storage="__Main_SkinShip_Shori.ks"  target="*__1以上"  cond="f.Skin_Up_Sum>0"  ]
*__終了セリフ後

[stopse  time="1000"  buf="1"  fadeout="true"  ]
[stopse  time="1000"  buf="2"  ]
[call  storage="H_Kaihatu_Upshori.ks"  target="*__開発アップ処理"  ]
[jump  storage="__Main_Kyuuka.ks"  target="*___イベント終了時間経過"  ]
