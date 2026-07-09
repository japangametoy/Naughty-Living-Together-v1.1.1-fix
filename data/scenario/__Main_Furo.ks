[_tb_system_call storage=system/___Main_Furo.ks]

[tb_start_tyrano_code]
[layopt layer=1 visible=true opacity=255]
[layopt layer=2 visible=true opacity=255]

[_tb_end_tyrano_code]

[tb_eval  exp="f.Sta_Seiyoku=100"  name="Sta_Seiyoku"  cmd="="  op="t"  val="100"  val_2="undefined"  ]
[tb_eval  exp="f.Sta_Suki=50"  name="Sta_Suki"  cmd="="  op="t"  val="50"  val_2="undefined"  ]
[tb_eval  exp="f.H_Furo_First=0"  name="H_Furo_First"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.Sta_Risei=8"  name="Sta_Risei"  cmd="="  op="t"  val="8"  val_2="undefined"  ]
[tb_eval  exp="f.H_Aroma_Flag=1"  name="H_Aroma_Flag"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.H_Danmen_Flag=1"  name="H_Danmen_Flag"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.Oni_Ero=6"  name="Oni_Ero"  cmd="="  op="t"  val="6"  val_2="undefined"  ]
[call  storage="_Array_.ks"  target="*__配列宣言"  ]
[tb_start_tyrano_code]
;理性50以下で処女の場合のフラグ
[eval exp="f.Sex_Count[0].bestcount =1"]

[_tb_end_tyrano_code]

*__深夜風呂

[call  storage="_Array_Kaihatu.ks"  target="*__開発配列初期化"  ]
[call  storage="__Main_SkinShip_Shori.ks"  target="*__兄エロ技下方補正"  ]
[stopbgm  time="1000"  ]
[mask  time="600"  effect="fadeIn"  color="0x000000"  ]
[bg  time="00000"  method="crossfade"  storage="風呂01.png"  ]
[playse  volume="100"  time="1000"  buf="1"  storage="ドアを閉める3.mp3"  ]
[wait  time="500"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="えっち系/お風呂01.mp3"  ]
[call  storage="Main_Sta.ks"  target="*__メインステ表示"  ]
[mask_off  time="300"  effect="fadeOut"  ]
[tb_show_message_window  ]
[jump  storage="__Main_Furo.ks"  target="*__2回目以降"  cond="f.H_Furo_First==1"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Huh? [emb exp="f.Oni_Name3"]!?[p]
#&f.Oni_Name3
Yeah, mind if I join you?[p]
#&f.Imo_Name
I-It's embarrassing・・・[p]
#&f.Oni_Name3
We used to take baths together all the time, didn't we?[p]
#&f.Imo_Name
Th-That's true, but・・・[p]
#&f.Oni_Name3
We're just taking a bath.[p]
#&f.Imo_Name
Uuu・・・[p]
・・・[p]
O-Okay. Fine.[p]
But, it's embarrassing so don't look this way, okay.[p]
[_tb_end_text]

[tb_hide_message_window  ]
[playse  volume="100"  time="1000"  buf="2"  storage="えっち系/お風呂のドアを開閉.mp3"  ]
[bg  time="500"  method="crossfade"  storage="風呂02.png"  ]
[chara_show  name="H_風呂スキンシップ"  time="1000"  wait="true"  storage="chara/20/風呂01_2.png"  width="560"  height="670"  left="360"  top="50"  ]
[wait  time="1000"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
Uuu, it's embarrassing.[p]
#
[_tb_end_text]

[tb_eval  exp="f.H_Furo_First=1"  name="H_Furo_First"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="__Main_Furo.ks"  target="*__風呂開始"  ]
*__2回目以降

[tb_start_text mode=1 ]
#&f.Oni_Name3
[emb exp="f.Imo_Name"], can I join you?[p]
#&f.Imo_Name
Y-yeah.[p]
・・・Okay.[p]
#
[_tb_end_text]

[tb_hide_message_window  ]
[playse  volume="100"  time="1000"  buf="0"  storage="えっち系/お風呂のドアを開閉.mp3"  ]
[bg  time="500"  method="crossfade"  storage="風呂02.png"  ]
[chara_show  name="H_風呂スキンシップ"  time="1000"  wait="true"  storage="chara/20/風呂01_2.png"  width="560"  height="670"  left="360"  top="50"  ]
[wait  time="1500"  ]
[tb_show_message_window  ]
[tb_start_tyrano_code]
;ライブへの分岐　４週目かつ土曜日かつ夜
[if exp="f.Sys_Syume%4 == 0 && f.Sys_Youbi == 5"]
[jump target=*__ライブ後セリフ]
[endif]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
#&f.Imo_Name
Uuu・・・[p]
D-don't look this way, okay?[p]
#&f.Oni_Name3
Yeah.[p]
#
[_tb_end_text]

[jump  storage="__Main_Furo.ks"  target="*__風呂開始"  ]
*__ライブ後セリフ

[tb_start_text mode=1 ]
#&f.Oni_Name3
Today's concert was really great.[p]

[_tb_end_text]

[chara_mod  name="H_風呂スキンシップ"  time="0"  cross="false"  storage="chara/20/風呂01_3.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Ehehe, really?[p]
#&f.Oni_Name3
Yeah, [emb exp="f.Imo_Name"], you were shining the brightest.[p]
#&f.Imo_Name
Yeah, thank you.[r][p]
Uuu・・・ I'm getting embarrassed~[p]
#
[_tb_end_text]

*__風呂開始

[playbgm  volume="50"  time="1000"  loop="true"  storage="お風呂音楽.mp3"  fadein="true"  ]
[tb_hide_message_window  ]
[tb_start_tyrano_code]
;アロマON
[if exp="f.H_Aroma_Flag == 1"]
[eval exp="f.H_Bad_Aroma = 1.5"]
[else]
[eval exp="f.H_Bad_Aroma = 1"]
[endif]
[_tb_end_tyrano_code]

[tb_eval  exp="f.Skin_Kakuritu=1"  name="Skin_Kakuritu"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_start_tyrano_code]
;洗いっ子確率
[iscript]
f.LV=6;
f.洗い合い初期確率 = Math.min(100,Math.floor((f.Sta_Suki + f.Sta_Seiyoku) / f.LV * f.Ero_Local * f.H_Bad_Aroma));

f.洗い合い = "Bath together "  + f.洗い合い初期確率 + "%";

[endscript]
[_tb_end_tyrano_code]

[font  size="14"  color="0x000000"  face="JKG-M_3"  ]
[tb_start_tyrano_code]
;一緒に入る　体を洗う　選択肢
[glink  color="btn_05_black"  storage="__Main_Furo.ks"  size="23"  x="940"  y="150"  width="250"  height="50"  text="Get in together" target="*__最初に一緒に入る" enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3" ]
[glink  color="btn_05_black"  storage="__Main_Furo_Shori.ks"  size="23"  x="940"  y="200"  width="250"  height="50"  text="Wash my body" target="*__体を洗う" enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3" ]
[glink  color="btn_05_black"  storage="__Main_Furo_Shori.ks"  size="23"  x="940"  y="250"  width="250"  height="50"  text="&f.洗い合い"  target="*__洗い合い" cond="f.Sta_Risei <= 70" enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3" ]
[_tb_end_tyrano_code]

[resetfont  ]
[s  ]
*__最初に一緒に入る

[playse  volume="100"  time="1000"  buf="1"  storage="えっち系/風呂に入る.mp3"  ]
[chara_mod  name="H_風呂スキンシップ"  time="500"  cross="false"  storage="chara/20/風呂02_2.png"  ]
[wait  time="500"  ]
[chara_mod  name="H_風呂スキンシップ"  time="500"  cross="false"  storage="chara/20/風呂02_5.png"  ]
*__洗い合い戻り先

[tb_start_tyrano_code]
;変数初期化
[iscript]

f.LV=1;
f.風呂_一緒に入る確率 = Math.min(100,Math.floor((f.Sta_Suki + f.Sta_Seiyoku) / f.LV * f.Oni_Ero));

f.LV=3;
f.風呂_抱きしめる確率 = Math.min(100,Math.floor((f.Sta_Suki + f.Sta_Seiyoku) / f.LV * f.Oni_Ero));

f.LV=4;
f.風呂_胸を触る確率 = Math.min(100,Math.floor((f.Sta_Suki + f.Sta_Seiyoku) / f.LV * f.Oni_Ero));

f.LV=7;
f.風呂_あそこを触る確率 = Math.min(100,Math.floor((f.Sta_Suki + f.Sta_Seiyoku) / f.LV * f.Oni_Ero));

f.LV=8;
f.風呂_アナルを触る確率 = Math.min(100,Math.floor((f.Sta_Suki + f.Sta_Seiyoku) / f.LV * f.Oni_Ero));

f.風呂_一緒に入る初期確率 = f.風呂_一緒に入る確率;
f.風呂_抱きしめる初期確率 = f.風呂_抱きしめる確率;
f.風呂_胸を触る初期確率 = f.風呂_胸を触る確率;
f.風呂_あそこを触る初期確率 = f.風呂_あそこを触る確率;
f.風呂_アナルを触る初期確率 = f.風呂_アナルを触る確率;

f.風呂_一緒に入る回数 = 0;
f.風呂_抱きしめる回数 = 0;
f.風呂_胸を触る回数 = 0;
f.風呂_あそこを触る回数 = 0;
f.風呂_アナルを触る回数 = 0;

[endscript]
[_tb_end_tyrano_code]

*__風呂触り戻り先

[font  size="18"  color="0xffffff"  face="JKG-M_3"  bold="true"  ]
[tb_start_tyrano_code]
;初期確率再設定　他おさわりの確率変動のため
[iscript]

f.手をつなぐ初期確率 = Math.min(100,Math.floor((f.Sta_Suki + f.Sta_Seiyoku) / f.LV * f.Ero_Local * f.H_Bad_Aroma));

f.LV=1;
f.風呂_一緒に入る初期確率 = Math.min(100,Math.floor((f.Sta_Suki + f.Sta_Seiyoku) / f.LV * f.Ero_Local * f.H_Bad_Aroma));

f.LV=3;
f.風呂_抱きしめる初期確率 = Math.min(100,Math.floor((f.Sta_Suki + f.Sta_Seiyoku) / f.LV * f.Ero_Local * f.H_Bad_Aroma));

f.LV=5;
f.風呂_胸を触る初期確率 = Math.min(100,Math.floor((f.Sta_Suki + f.Sta_Seiyoku) / f.LV * f.Ero_Local * f.H_Bad_Aroma));

f.LV=7;
f.風呂_あそこを触る初期確率 = Math.min(100,Math.floor((f.Sta_Suki + f.Sta_Seiyoku) / f.LV * f.Ero_Local * f.H_Bad_Aroma));

f.LV=8;
f.風呂_アナルを触る初期確率 = Math.min(100,Math.floor((f.Sta_Suki + f.Sta_Seiyoku) / f.LV * f.Ero_Local * f.H_Bad_Aroma));

f.LV=10;
f.風呂_いかせる確率 = Math.min(100,Math.floor((f.Sta_Suki + f.Sta_Seiyoku) / f.LV * f.Ero_Local * f.H_Bad_Aroma));

f.LV=12;
f.風呂_膣口刺激確率 = Math.min(100,Math.floor((f.Sta_Suki + f.Sta_Seiyoku) / f.LV * f.Ero_Local * f.H_Bad_Aroma));


[endscript]

[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;分岐ボタン表示　確率再計算
[iscript]
f.風呂_一緒に入る表示 = Math.max(0,f.風呂_一緒に入る初期確率 - f.風呂_一緒に入る回数*10);
f.風呂_一緒に入る確率 = Math.max(0,f.風呂_一緒に入る初期確率 - f.風呂_一緒に入る回数*10);
f.風呂_一緒に入る = "Relax "  + f.風呂_一緒に入る表示 + "%";
[endscript]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;くつろく選択肢
[glink  color="btn_05_black"  storage="__Main_Furo_Shori.ks"  size="23"  x="940"  y="150"  width="300"  height="50"  text="&f.風呂_一緒に入る"  _clickable_img=""  target="*__一緒に入る" enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3" ]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;分岐ボタン表示　確率再計算
[iscript]
f.風呂_抱きしめる表示 = Math.max(0,f.風呂_抱きしめる初期確率 - f.風呂_抱きしめる回数*10);
f.風呂_抱きしめる確率 = Math.max(0,f.風呂_抱きしめる初期確率 - f.風呂_抱きしめる回数*10);
f.風呂_抱きしめる = "Hug "  + f.風呂_抱きしめる表示 + "%";
[endscript]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;抱きしめる
[glink  color="btn_05_black"  storage="__Main_Furo_Shori.ks"  size="23"  x="940"  y="200"  width="300"  height="50"  text="&f.風呂_抱きしめる"  _clickable_img=""  target="*__抱きしめる" enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3" ]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;分岐ボタン表示　確率再計算
[iscript]
f.風呂_胸を触る表示 = Math.max(0,f.風呂_胸を触る初期確率 - f.風呂_胸を触る回数*10);
f.風呂_胸を触る確率 = Math.max(0,f.風呂_胸を触る初期確率 - f.風呂_胸を触る回数*10);
f.風呂_胸を触る = "Caress her breasts "  + f.風呂_胸を触る表示 + "%";
[endscript]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;胸を触る
[glink  color="btn_05_black"  storage="__Main_Furo_Shori.ks"  size="23"  x="940"  y="250"  width="300"  height="50"  text="&f.風呂_胸を触る"  _clickable_img=""  target="*__胸をさわる" enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3" ]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;分岐ボタン表示　確率再計算
[iscript]
f.風呂_あそこを触る表示 = Math.max(0,f.風呂_あそこを触る初期確率 - f.風呂_あそこを触る回数*10);
f.風呂_あそこを触る確率 = Math.max(0,f.風呂_あそこを触る初期確率 - f.風呂_あそこを触る回数*10);
f.風呂_あそこを触る = "Caress her pussy "  + f.風呂_あそこを触る表示 + "%";
[endscript]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;あそこを触る選択肢
[glink  color="btn_05_black"  storage="__Main_Furo_Shori.ks"  size="23"  x="940"  y="300"  width="300"  height="50"  text="&f.風呂_あそこを触る"  _clickable_img=""  target="*__あそこを触る" enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3" ]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;分岐ボタン表示　確率再計算
[iscript]
f.風呂_アナルを触る表示 = Math.max(0,f.風呂_アナルを触る初期確率 - f.風呂_アナルを触る回数*10);
f.風呂_アナルを触る確率 = Math.max(0,f.風呂_アナルを触る初期確率 - f.風呂_アナルを触る回数*10);
f.風呂_アナルを触る = "Caress her anus "  + f.風呂_アナルを触る表示 + "%";
[endscript]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;アナルを触る選択肢
[glink  color="btn_05_black"  storage="__Main_Furo_Shori.ks"  size="23"  x="940"  y="350"  width="300"  height="50"  text="&f.風呂_アナルを触る"  _clickable_img=""  target="*__アナルを触る" enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3" ]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;分岐ボタン表示　確率再計算
[iscript]
f.風呂_いかせる = "Make her cum "  + f.風呂_いかせる確率 + "%";
[endscript]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;いかせるを触る選択肢
[glink  color="btn_05_black"  storage="__Main_Furo_Shori.ks"  size="23"  x="940"  y="400"  width="300"  height="50"  text="&f.風呂_いかせる"   target="*__いかせる" enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3" cond="f.Sta_Seiyoku >=100 && f.Sta_Risei <= 73" ]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;えっち選択肢
[if exp="f.Sta_Seiyoku >=100 && f.Sta_Risei<=50"]
[eval exp="f.えっち = 'Sex 100%'"]
[glink  color="btn_05_black"  storage="__Main_Furo.ks"  size="23"  x="940"  y="450"  width="300"  height="50"  text="&f.えっち"  target="*__H移行前"  enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3"]
[elsif exp="f.Sta_Seiyoku <100 && f.Sta_Risei<=50"]
[eval exp="f.えっち = 'Sex 0%'"]
[glink  color="btn_05_black"  storage="__Main_Furo.ks"  size="23"  x="940"  y="450"  width="300"  height="50"  text="&f.えっち"  target="*__スキンシップ失敗" enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3"]
[endif]

[glink  color="btn_05_black"  storage=""  size="23"  x="940"  y="450"  width="300"  height="50"  text="Sex (Reason 50 or below)" target="*_えっち解説" cond="f.Sta_Risei>50"  enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3"]
[glink  color="btn_05_black"  storage="__Main_Furo.ks"  size="23"  x="940"  y="500"  width="300"  height="50"  text="Exit bath" target="*__風呂から出る" enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3" ]
[_tb_end_tyrano_code]

[resetfont  ]
[s  ]
*_えっち解説

[tb_show_message_window  ]
[tb_start_text mode=1 ]
Requires Reason 50 or below and Lust.[p]
[_tb_end_text]

[tb_hide_message_window  ]
[jump  storage="__Main_Furo.ks"  target="*__風呂触り戻り先"  ]
[reset_camera  time="0"  wait="true"  ]
*__H移行前

[tb_show_message_window  ]
[tb_start_tyrano_code]
;精力判定　0だとダメ
[if exp="f.Sys_Seiryoku <= 0"]
No energy・・・
[jump target="*__風呂触り戻り先"]
[endif]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;初夜前だと回避
[jump storage="__Main_Furo.ks" target="*__初えっち回避" cond="f.Sex_Count[0].bestcount ==0" exp="f.H_First_Flag =3"]

[_tb_end_tyrano_code]

*__回想開始

[tb_replay_start  ]
[call  storage="Main_Sta.ks"  target="*__メインステ表示"  ]
[tb_start_tyrano_code]
;回想用
[playbgm  volume="50"  time="1000"  loop="true"  storage="お風呂音楽.mp3"  fadein="true" cond="tf._tb_is_replay == true"  ]
[_tb_end_tyrano_code]

[chara_hide_all  time="0"  wait="true"  ]
[tb_image_hide  time="500"  ]
[bg  time="500"  method="crossfade"  storage="BG_Black.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Y-yeah・・[p]
#
I grab [emb exp="f.Imo_Name"]'s waist right there and stand her up[p]

[_tb_end_text]

[mask  time="300"  effect="fadeIn"  color="0x000000"  ]
[tb_hide_message_window  ]
[tb_image_hide  time="0"  ]
[tb_start_tyrano_code]
;ステ表示初期化
[clearfix]
[freeimage  layer="2"  ]
[layopt layer="2" visible="true" x=0 y=0]
[_tb_end_tyrano_code]

[bg  time="500"  method="crossfade"  storage="風呂03.png"  ]
[call  storage="Main_Sta.ks"  target="*__Hメインステ表示"  ]
[call  storage="__Main_Furo_Shori.ks"  target="*__Backアイコン表示"  ]
[call  storage="__Main_Furo_Shori.ks"  target="*__射精感初期表示"  ]
[mask_off  time="0"  effect="fadeOut"  ]
[chara_show  name="H_風呂"  time="0"  wait="true"  storage="chara/26/風呂本番01.png"  width="930"  height="660"  top="60"  left="0"  reflect="false"  ]
[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/01喘ぎ声(前)01.mp3"  loop="true"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Ah・・・[p]
#&f.Oni_Name3
You have a cute butt[p]
#&f.Imo_Name
Mm・・・[p]
B-But, it's embarrassing・・・[p]
#
Saying that, she stands on her tiptoes, straightens her back, and sticks her butt out.[p]
Seeing her earnest figure turning her pussy towards me so I can insert it easily・・・[p]
My dick swells even more, and pre-cum overflows from the head.[p]
#&f.Oni_Name3
I'm putting it in, [emb exp="f.Imo_Name"].[p]
#&f.Imo_Name
Okay・・・[p]
#
[_tb_end_text]

[tb_hide_message_window  ]
[playse  volume="100"  time="1000"  buf="1"  storage="挿入音/挿入音風呂.mp3"  ]
[tb_start_tyrano_code]
;挿入　断面図分岐
[chara_mod  name="H_風呂"  time="0"  cross="false"  storage="chara/26/風呂アニメ挿入.png" cond="f.H_Danmen_Flag == 0" ]
[chara_mod  name="H_風呂"  time="0"  cross="false"  storage="chara/26/風呂アニメ挿入02.png" cond="f.H_Danmen_Flag == 1" ]

[_tb_end_tyrano_code]

[wait  time="3000"  ]
[stopse  time="1000"  buf="3"  ]
[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/絶頂声のみ02.mp3"  ]
[wait  time="1500"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Ah!![p]
Ahhh・・・[p]
Hah・・・ hah・・・[p]
#
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/01喘ぎ声(前)01.mp3"  loop="true"  ]
[tb_start_text mode=1 ]
#
[emb exp="f.Imo_Name"]'s insides were hot and melting into a gooey mess.[p]
My dick head and [emb exp="f.Imo_Name"]'s womb push against each other deep inside, changing each other's shape.[p]
#&f.Imo_Name
Ahhh・・・[p]
I-It's・・・ big・・・[p]
Ah・・・ hah・・・ hah・・・[p]
#
Turning red all the way to her ears, the sound of her letting out hot breaths echoes in the bathroom.[p]
Her butt, standing on her tiptoes, is already twitching and moving as if spasming a little.[p]

[_tb_end_text]

[tb_hide_message_window  ]
[call  storage="__Main_Furo_Shori.ks"  target="*__Backアイコン表示"  ]
[jump  storage="__Main_Furo.ks"  target="*__オナニー挿入の飛び先"  ]
*__断面図飛び先

[tb_start_tyrano_code]
[clearstack]
[wait_cancel]
[_tb_end_tyrano_code]

[call  storage="__Main_Furo_Shori.ks"  target="*__動き速さ"  cond=""  ]
[jump  storage="__Main_Furo.ks"  target="*__100"  cond="f.H_Syaseikan>100"  ]
[jump  storage="__Main_Furo.ks"  target="*__動く70"  cond="f.H_Syaseikan>70"  ]
[jump  storage="__Main_Furo.ks"  target="*__動く30"  cond="f.H_Syaseikan>30"  ]
[jump  storage="__Main_Furo.ks"  target="*__動く"  cond="f.H_Syaseikan>0"  ]
*__オナニー挿入の飛び先

[call  storage="__Main_Furo.ks"  target="*__右選択肢"  ]
[s  ]
*__動く

[tb_start_tyrano_code]
[clearstack]
[wait_cancel]
[_tb_end_tyrano_code]

[call  storage="__Main_Furo_Shori.ks"  target="*__動き速さ"  ]
[call  storage="__Main_Furo.ks"  target="*__右選択肢"  ]
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

[jump  storage="__Main_Furo.ks"  target="*__射精感UP30まで"  cond="f.H_Syaseikan<30"  ]
[jump  storage="__Main_Furo.ks"  target="*__30"  ]
[s  ]
*__30

[jump  storage="__Main_Furo.ks"  target="*__動く"  cond="f.H_Syaseikan<30"  ]
[tb_start_tyrano_code]
[clearfix]

[_tb_end_tyrano_code]

[call  storage="__Main_Furo_Shori.ks"  target="*__Backアイコン表示"  ]
[jump  storage="__Main_Furo.ks"  target="*__動く30"  cond="f.H_Syaseikan>30"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Ah[p]
Mmh・・・ Ahhh[heart][p]
#
A huge amount of [emb exp="f.Imo_Name"]'s love juices cling to the head of my dick[p]
Before I knew it, [emb exp="f.Imo_Name"] was shaking her hips on her own[p]
#&f.Imo_Name
[emb exp="f.Oni_Name3"]・・・![p]
[emb exp="f.Oni_Name3"][heart][p]
#
Every time we slam against each other, droplets splash everywhere[p]
#&f.Oni_Name3
You're beautiful, [emb exp="f.Imo_Name"][p]
#&f.Imo_Name
・・・！？[p]
Ah[heart][heart][p]
#&f.Oni_Name3
Ngh!?[p]
#
Maybe she reacted to my words, because her pussy suddenly clamped down, and the urge to cum hit me.[p]
I firmly grip [emb exp="f.Imo_Name"]'s hips as she keeps moving them, her face flushed red.[p]

[_tb_end_text]

[tb_hide_message_window  ]
*__動く30

[tb_start_tyrano_code]
[clearstack]
[wait_cancel]
[_tb_end_tyrano_code]

[call  storage="__Main_Furo.ks"  target="*__右選択肢"  ]
[call  storage="__Main_Furo_Shori.ks"  target="*__動き速さ"  ]
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

[jump  storage="__Main_Furo.ks"  target="*__射精感UP70まで"  cond="f.H_Syaseikan<70"  ]
[jump  storage="__Main_Furo.ks"  target="*__70"  ]
[s  ]
*__70

[jump  storage="__Main_Furo.ks"  target="*__動く30"  cond="f.H_Syaseikan<30"  ]
[tb_start_tyrano_code]
[clearfix]
[_tb_end_tyrano_code]

[call  storage="__Main_Furo_Shori.ks"  target="*__Backアイコン表示"  ]
[jump  storage="__Main_Furo.ks"  target="*__動く70"  cond="f.H_Syaseikan>70"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Ah[heart][p]
Aah[heart]![p]
Mmh・・・Ahhh[heart][p]
#
Moans and the slapping sounds of our bodies pounding against each other echo intensely[p]
[emb exp="f.Imo_Name"]'s knees are trembling, but I thrust my hips without caring[p]
#&f.Imo_Name
Ah, [emb exp="f.Oni_Name3"]・・・nnh![p]
N・・・No・・・[p]
I'm com-・・・[p]
I'm gonna・・・ah・・・[p]
#
I rub the head of my dick against [emb exp="f.Imo_Name"]'s sloppy pussy even harder as she desperately pleads.[p]
#&f.Imo_Name
Ngh・・・[p]
Mmh・・・[p]
Aaaaaah・・・[p]
Ah・・・!![p]
#
[emb exp="f.Imo_Name"] reached her climax, her lower body trembling violently.[p]
But I'm not satisfied yet.[p]
I thrust relentlessly, determined to make her cum over and over.[p]
#&f.Imo_Name
Oh, [emb exp="f.Oni_Name3"]・・・[p]
N・・・ No・・・[p]
#
[_tb_end_text]

[tb_hide_message_window  ]
*__動く70

[tb_start_tyrano_code]
[clearstack]
[wait_cancel]
[_tb_end_tyrano_code]

[call  storage="__Main_Furo.ks"  target="*__右選択肢"  ]
[call  storage="__Main_Furo_Shori.ks"  target="*__動き速さ"  ]
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

[jump  storage="__Main_Furo.ks"  target="*__射精感UP100まで"  cond="f.H_Syaseikan<100"  ]
[jump  storage="__Main_Furo.ks"  target="*__100"  ]
[s  ]
*__100

[jump  storage="__Main_Furo.ks"  target="*__動く70"  cond="f.H_Syaseikan<70"  ]
[tb_start_tyrano_code]
[clearfix]
[_tb_end_tyrano_code]

[call  storage="__Main_Furo_Shori.ks"  target="*__Backアイコン表示"  ]
[jump  storage="__Main_Furo.ks"  target="*__動く100"  cond="f.H_Syaseikan>100"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Ah!![p]
Aah!![p]
O・・・ Outside・・・[p]
[emb exp="f.Oni_Name3"]・・・[p]
Ah・・・ I'm gonna get pregnant・・・[p]
#
Hearing those words, I speed up my thrusts even more.[p]
The sound of flesh slapping together echoed even louder through the room[p]
N・・・ nooo[p]
Ah・・・ nngh・・・ ahh!![p]
#
I whisper to [emb exp="f.Imo_Name"] with a bit of mischief in mind[p]
#&f.Oni_Name3
I want to pump all my cum deep inside [emb exp="f.Imo_Name"]'s pussy[p]
I want to fill her womb up tight with my sperm[p]
#&f.Imo_Name
Ah[heart][p]
Aaaah[heart][heart][heart][p]
[emb exp="f.Oni_Name3"]・・・[emb exp="f.Oni_Name3"][heart][p]
Ah・・・I'm gonna get pregnant[heart][p]
Nn・・・[heart][p]
[emb exp="f.Oni_Name3"][heart]・・・[p]
Aah[heart][heart][heart]!!![p]
#


[_tb_end_text]

[tb_hide_message_window  ]
*__射精_処理

*__動く100

[tb_start_tyrano_code]
[clearstack]
[wait_cancel]
[_tb_end_tyrano_code]

[call  storage="__Main_Furo.ks"  target="*__右選択肢"  ]
[call  storage="__Main_Furo_Shori.ks"  target="*__動き速さ"  ]
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

[jump  storage="__Main_Furo.ks"  target="*__射精感120まで"  cond="f.H_Syaseikan<120"  ]
[jump  storage="__Main_Furo.ks"  target="*__射精中"  cond="f.H_Syaseikan>119"  ]
[s  ]
*__射精中

[tb_start_tyrano_code]
;回想ジャンプ
[jump target="*__回想ジャンプ先" cond="tf._tb_is_replay == true"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;中だし回数プラスカウント
[if exp="f.H_Sex_Anal ==0 && f.H_Condom_On ==0"]
[eval exp="f.Sex_Count[3].bestcount += 1"]
[eval exp="f.Sex_Count[4].count += 1"]
[endif]
[_tb_end_tyrano_code]

[call  storage="__Main_Night_Option.ks"  target="*__妊娠判定"  cond=""  ]
[tb_start_tyrano_code]
[clearstack]
[wait_cancel]
[clearfix]
[_tb_end_tyrano_code]

*__回想ジャンプ先

[call  storage="__Main_Night_Option.ks"  target="*__中射精エフェクト"  ]
[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/絶頂声のみ04.mp3"  ]
[playse  volume="70"  time="1000"  buf="1"  storage="射精音/射精音風呂.mp3"  ]
[tb_start_tyrano_code]
;射精　分岐
[chara_mod  name="H_風呂"  time="0"  cross="true"  storage="chara/26/風呂アニメ射精.png" && f.H_Danmen_Flag == 0"]
[chara_mod  name="H_風呂"  time="0"  cross="true"  storage="chara/26/風呂アニメ射精02.png" && f.H_Danmen_Flag == 1"]

[_tb_end_tyrano_code]

[wait  time="9000"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Ah[heart]・・・・Nn[heart][p]
#
My semen shot inside [emb exp="f.Imo_Name"] drips thickly from her pussy entrance[p]
-gloop[p]
White liquid runs down from her butt along her thighs, dripping all the way to her ankles.[p]
#&f.Oni_Name3
Phew・・・[p]
#
My cum dripping from her pussy, and her cute butt twitching.[p]
I gaze at [emb exp="f.Imo_Name"]'s back as she stands on tiptoes, her knees trembling, and bask in the satisfaction.[p]
[_tb_end_text]

[tb_hide_message_window  ]
[jump  storage="__Main_Furo.ks"  target="*__射精後処理"  ]
*__射精外

[call  storage="__Main_Night_Option.ks"  target="*__外射精エフェクト"  ]
[tb_start_tyrano_code]
[clearstack]
[wait_cancel]
[clearfix]
[_tb_end_tyrano_code]

[chara_mod  name="H_風呂"  time="0"  cross="false"  storage="chara/26/風呂本番外だし.png"  ]
[playse  volume="100"  time="1000"  buf="1"  storage="えっち系/射精音01.mp3"  ]
[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/絶頂声のみ04.mp3"  ]
[wait  time="3000"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#
-Splurt・・・ gush・・・[p]
gush・・・spurt・・・[p]
My semen spurts out powerfully, splattering across [emb exp="f.Imo_Name"]'s butt and back[p]
#&f.Imo_Name
Aaaah[heart][p]
#
[_tb_end_text]

[tb_hide_message_window  ]
*__射精後処理

[call  storage="__Main_Furo_Shori.ks"  target="*__射精感を0に"  ]
[chara_hide_all  time="300"  wait="false"  ]
[bg  time="300"  method="crossfade"  storage="BG_Black.png"  ]
[call  storage="Main_Sta.ks"  target="*__メインステ表示"  ]
[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/02喘ぎ声(前)02.mp3"  loop="true"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Haa・・・haa・・・[p]
Haa・・・haa・・・[p]
#
[emb exp="f.Imo_Name"], having climaxed and lost all strength in her body, slumps down at my feet[p]
I give [emb exp="f.Imo_Name"] a light kiss as she pants heavily, then wash her whole body clean again.[p]
#
Phew・・・[p]
・・・[p]
[_tb_end_text]

[tb_hide_message_window  ]
[stopse  time="1000"  buf="3"  ]
[tb_start_tyrano_code]
;回想用BGM変更
[playbgm volume="20"  time="1000"  loop="true"  storage="PerituneMaterial_Sea_Breeze_loop.mp3" cond="tf._tb_is_replay == true" ]
[stopse  time="1000"  buf="1" cond="tf._tb_is_replay == true"]
[stopse  time="1000"  buf="3" cond="tf._tb_is_replay == true"]
[_tb_end_tyrano_code]

*__回想解放用

[tb_replay  id="お風呂H"  ]
[jump  storage="__Main_SkinShip_H.ks"  target="*__回想解放用"  cond="sf.Clear_Flag_Kaisou==1"  ]
[tb_start_tyrano_code]
;総えっち回数カウント
[eval exp="f.Sex_Count[1].bestcount += 1"]
[eval exp="f.Sex_Count[7].bestcount += 1"]

[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;回数カウント
[eval exp="f.Kaihatu_Count[3].kazu += 1"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;絶頂回数プラスカウント
[eval exp="f.Sex_Count[5].count += 2"]

[_tb_end_tyrano_code]

[tb_eval  exp="f.H_Furo_Challenge=1"  name="H_Furo_Challenge"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.Tre_Up=2"  name="Tre_Up"  cmd="="  op="t"  val="2"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__理性DOWN"  ]
[tb_eval  exp="f.Tre_Up=100"  name="Tre_Up"  cmd="="  op="t"  val="100"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__性欲DOWN"  ]
[call  storage="Main_Sta.ks"  target="*__メインステ表示"  ]
[jump  storage="__Main_Furo.ks"  target="*__風呂から出る"  ]
*__途中でやめる

[stopse  time="1000"  buf="0"  ]
[stopse  time="1000"  buf="1"  ]
[stopse  time="1000"  buf="2"  ]
[stopse  time="1000"  buf="3"  ]
[bg  time="300"  method="fadeIn"  storage="BG_Black.png"  ]
[mask  time="0"  effect="fadeIn"  color="0x000000"  ]
[tb_start_tyrano_code]
[clearstack]
[wait_cancel]
[clearfix]
[_tb_end_tyrano_code]

[chara_hide_all  time="0"  wait="true"  ]
[tb_image_hide  time="0"  ]
[call  storage="Main_Sta.ks"  target="*__メインステ表示"  ]
[mask_off  time="700"  effect="fadeOut"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
Let's stop here for today.[p]
[_tb_end_text]

[tb_hide_message_window  ]
[tb_eval  exp="f.Tre_Up=100"  name="Tre_Up"  cmd="="  op="t"  val="100"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__性欲DOWN"  ]
[call  storage="Main_Sta.ks"  target="*__メインステ表示"  ]
*__風呂から出る

[stopse  time="1000"  buf="0"  ]
[stopse  time="1000"  buf="2"  ]
[stopse  time="1000"  buf="3"  ]
[chara_hide_all  time="0"  wait="true"  ]
[playse  volume="100"  time="1000"  buf="1"  storage="えっち系/お風呂から上がる.mp3"  ]
[wait  time="1500"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#
The water felt good.[p]
[_tb_end_text]

[tb_hide_message_window  ]
*___開発アップ処理

[call  storage="H_Kaihatu_Upshori.ks"  target="*__開発アップ処理"  ]
[call  storage="_Array_Kaihatu.ks"  target="*__開発配列初期化"  ]
[jump  storage="__Main_Furo.ks"  target="*__風呂終了"  ]
*__スキンシップ失敗

[stopse  time="1000"  buf="1"  ]
[chara_mod  name="H_風呂スキンシップ"  time="600"  cross="false"  storage="chara/20/風呂02_5.png"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
S-sorry, [emb exp="f.Oni_Name3"]・・・[r]・・・ I can't take any more・・・[p]
#
・・・[p]
We did too much・・・[p]
[_tb_end_text]

[tb_hide_message_window  ]
[tb_eval  exp="f.Tre_Up=1"  name="Tre_Up"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__好きDOWN"  ]
*__風呂終了

[stopbgm  time="1000"  ]
[stopse  time="1000"  buf="0"  ]
[stopse  time="1000"  buf="1"  ]
[stopse  time="1000"  buf="2"  ]
[stopse  time="1000"  buf="3"  ]
[call  storage="_Array_Kaihatu.ks"  target="*__開発配列初期化"  ]
[mask  time="300"  effect="fadeIn"  color="0x000000"  ]
[chara_hide_all  time="0"  wait="true"  ]
[tb_image_hide  time="0"  ]
[call  storage="Main_Sta.ks"  target="*__メインステ表示"  ]
[jump  storage="__Main_Kyuuka.ks"  target="*__風呂入浴後"  ]
*__初えっち回避

[chara_mod  name="H_風呂スキンシップ"  time="0"  cross="false"  storage="chara/20/風呂02_5.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
・・・[p]
[emb exp="f.Oni_Name3"]・・・[p]
L-let's get out of the bath for now, okay?[p]
#&f.Oni_Name3
Yeah・・・ understood.[p]
#
[_tb_end_text]

[jump  storage="__Main_Furo.ks"  target="*__風呂から出る"  ]
*__右選択肢

[tb_start_tyrano_code]
[clearfix]
[_tb_end_tyrano_code]

[font  size="14"  color="0x000000"  face="JKG-M_3"  ]
[tb_start_tyrano_code]
;右側の選択肢　fix仕様なので注意　射精感により表示分岐
[iscript]
if (f.H_Syaseikan === 0) {
f.Target = '*__動く';
f.Target_Danmen = '*__断面図飛び先';
} else if (f.H_Syaseikan > 0 && f.H_Syaseikan <= 30) {
f.Target = '*__動く';
f.Target_Danmen = '*__断面図飛び先';
} else if (f.H_Syaseikan > 30 && f.H_Syaseikan <= 70) {
f.Target = '*__動く30';
f.Target_Danmen = '*__断面図飛び先';
} else if (f.H_Syaseikan > 70 && f.H_Syaseikan <= 100) {
f.Target = '*__動く70';
f.Target_Danmen = '*__断面図飛び先';
} else if (f.H_Syaseikan > 100) {
f.Target = '*__動く100';
f.Target_Danmen = '*__射精_処理';
} else {
f.Target = '*__動く';
f.Target_Danmen = '*__断面図飛び先';
};
[endscript]

[glink  color="btn_05_black"  size="20" storage="__Main_Furo.ks" target= &f.Target text="Slow thrust"  x="1030"  y="100" fix="true" width=200 exp="f.H_Sex_Speed =2" enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3"]
[glink  color="btn_05_black"  size="20" storage="__Main_Furo.ks" target= &f.Target text="Hard thrust"  x="1030"  y="160" fix="true" width=200 exp="f.H_Sex_Speed =3" enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3"]
[glink  color="btn_05_black"  size="20" storage="__Main_Furo.ks" target= &f.Target text="Max thrust"  x="1030"  y="220" fix="true" width=200 exp="f.H_Sex_Speed =4" enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3"]
[glink  color="btn_05_black"  size="20" storage="__Main_Furo.ks" target= &f.Target_Danmen  text="Cross-section ON"  x="30"  y="100" fix="true" width=200 exp="f.H_Danmen_Flag =1"  cond="f.H_Danmen_Flag == 0" enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3"]
[glink  color="btn_05_black"  size="20" storage="__Main_Furo.ks" target= &f.Target_Danmen  text="Cross-section OFF"  x="30"  y="100" fix="true" width=200 exp="f.H_Danmen_Flag =0"  cond="f.H_Danmen_Flag == 1" enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3"]

[if exp="f.H_Syaseikan >=100""]
[glink  color="btn_05_black"  size="20" storage="__Main_Furo.ks" target="*__射精中"  text="Cum inside"  x="1030"  y="400" fix="true" width=200 enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3"]
[glink  color="btn_05_black"  size="20" storage="__Main_Furo.ks" target="*__射精外"  text="Cum outside"  x="1030"  y="460" fix="true" width=200 enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3"]
[endif]
[_tb_end_tyrano_code]

[resetfont  ]
[call  storage="__Main_Furo_Shori.ks"  target="*__Backアイコン表示"  ]
[return  ]
