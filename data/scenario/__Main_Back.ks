[_tb_system_call storage=system/___Main_Back.ks]

[tb_eval  exp="f.Sta_Suki=160"  name="Sta_Suki"  cmd="="  op="t"  val="160"  val_2="undefined"  ]
[call  storage="Main_Sta.ks"  target="*__メインステ表示"  ]
[bg  time="0"  method="crossfade"  storage="BG00.png"  ]
[tb_show_message_window  ]
*__メイン背景ランダム

[tb_start_tyrano_code]
;ランダムキャラ配置表示
[getrand var="f.Bg_Random" min="1" max="14"]

[switch exp="f.Bg_Random"]
[case is=1]
[chara_show  name="さくら01"  time="0"  wait="true"  storage="chara/1/キャラ待機01.png"  width="500"  height="550"  left="750"  top="170" ]
[chara_part  name="さくら01"  time="0"  目="キャラ待機01_01.png"  wait="true"  ]
[case is=2]
[chara_show  name="さくら02"  time="0"  wait="true"  storage="chara/3/キャラ待機21.png"  width="180"  height="320"  left="368"  top="353" ]
[case is=3]
[chara_show  name="さくら03"  time="0"  wait="true"  storage="chara/4/キャラ待機31.png"  width="500"  height="550"  left="710"  top="170" ]
[case is=4]
[chara_show  name="さくら02"  time="0"  wait="true"  storage="chara/3/キャラ待機21.png"  width="180"  height="320"  left="368"  top="353" cond="f.Sta_Suki < 30"]
[chara_show  name="さくら04"  time="0"  wait="true"  storage="chara/5/キャラ待機41.png"  width="225"  height="330"  left="625"  top="389" cond="f.Sta_Suki >= 30"]

[case is=5]
[chara_show  name="さくら03"  time="0"  wait="true"  storage="chara/4/キャラ待機31.png"  width="500"  height="550"  left="710"  top="170" cond="f.Sta_Suki < 60"]
[chara_show  name="さくら05"  time="0"  wait="true"  storage="chara/6/キャラ待機51.png"  width="450"  height="155"  left="613"  top="369" cond="f.Sta_Suki >= 60"]

[case is=6]
[chara_show  name="さくら01"  time="0"  wait="true"  storage="chara/1/キャラ待機01.png"  width="500"  height="550"  left="750"  top="170" cond="f.Sta_Suki < 90" ]
[chara_part  name="さくら01"  time="0"  目="キャラ待機01_01.png"  wait="true"  cond="f.Sta_Suki < 90" ]
[chara_show  name="さくら06"  time="0"  wait="true"  storage="chara/7/キャラ待機61.png"  width="450"  height="650"  left="741"  top="70" cond="f.Sta_Suki >= 90" ]

[case is=7]
[chara_show  name="さくら02"  time="0"  wait="true"  storage="chara/3/キャラ待機21.png"  width="180"  height="320"  left="368"  top="353" cond="f.Sta_Suki < 120"]
[chara_show  name="さくら07"  time="0"  wait="true"  storage="chara/28/キャラ待機82.png"  width="530"  height="660"  left="750"  top="60" cond="f.Sta_Suki >= 120"]

[case is=8]
[chara_show  name="さくら03"  time="0"  wait="true"  storage="chara/4/キャラ待機31.png"  width="500"  height="550"  left="710"  top="170" cond="f.Sta_Suki < 120"]
[chara_show  name="さくら07"  time="0"  wait="true"  storage="chara/28/キャラ待機82.png"  width="530"  height="660"  left="750"  top="60" cond="f.Sta_Suki >= 120" ]

[case is=9]
[chara_show  name="さくら01"  time="0"  wait="true"  storage="chara/1/キャラ待機01.png"  width="500"  height="550"  left="750"  top="170" cond="f.Sta_Suki < 150" ]
[chara_part  name="さくら01"  time="0"  目="キャラ待機01_01.png"  wait="true"  cond="f.Sta_Suki < 150" ]
[chara_show  name="さくら08"  time="0"  wait="true"  storage="chara/28/キャラ待機81.png"  width="530"  height="660"  left="750"  top="60" cond="f.Sta_Suki >= 150" ]

[case is=10]
[chara_show  name="さくら03"  time="0"  wait="true"  storage="chara/4/キャラ待機31.png"  width="500"  height="550"  left="710"  top="170" cond="f.Sta_Suki < 90"]
[chara_show  name="さくら06"  time="0"  wait="true"  storage="chara/7/キャラ待機61.png"  width="450"  height="650"  left="741"  top="70" cond="f.Sta_Suki >= 90 && f.Sta_Suki < 150" ]
[chara_show  name="さくら08"  time="0"  wait="true"  storage="chara/28/キャラ待機81.png"  width="530"  height="660"  left="750"  top="60" cond="f.Sta_Suki  >= 150"]

[case is=11]
[chara_show  name="さくら01"  time="0"  wait="true"  storage="chara/1/キャラ待機01.png"  width="500"  height="550"  left="750"  top="170" cond="f.Sta_Risei > 0" ]
[chara_part  name="さくら01"  time="0"  目="キャラ待機01_01.png"  wait="true"  cond="f.Sta_Risei > 0" ]
[chara_show  name="さくら09"  time="0"  wait="true"  storage="chara/41/キャラ待機A1.png"  width="430"  height="600"  left="845"  top="115"  cond="f.Sta_Risei == 0"]

[case is=12]
[chara_show  name="さくら02"  time="0"  wait="true"  storage="chara/3/キャラ待機21.png"  width="180"  height="320"  left="368"  top="353" cond="f.Sta_Risei > 0"]
[chara_show  name="さくら09"  time="0"  wait="true"  storage="chara/41/キャラ待機A1.png"  width="430"  height="600"  left="845"  top="115" cond="f.Sta_Risei == 0"]

[case is=13]
[chara_show  name="さくら01"  time="0"  wait="true"  storage="chara/1/キャラ待機01.png"  width="500"  height="550"  left="750"  top="170" cond="!f.talks[42].flag || !f.talks[42].read" ]
[chara_part  name="さくら01"  time="0"  目="キャラ待機01_01.png"  wait="true" cond="!f.talks[42].flag || !f.talks[42].read" ]
[chara_show  name="さくら09"  time="0"  wait="true"  storage="chara/41/キャラ待機B1.png"  width="430"  height="600"  left="845"  top="115"  cond=" f.talks[42].flag && f.talks[42].read"]

[case is=14]
[chara_show  name="さくら03"  time="0"  wait="true"  storage="chara/4/キャラ待機31.png"  width="500"  height="550"  left="710"  top="170" cond="!f.talks[42].flag || !f.talks[42].read"]
[chara_show  name="さくら09"  time="0"  wait="true"  storage="chara/41/キャラ待機B1.png"  width="430"  height="600"  left="845"  top="115"  cond=" f.talks[42].flag && f.talks[42].read"]

[endswitch]
[_tb_end_tyrano_code]

[return  ]
[chara_show  name="さくら09"  time="0"  wait="true"  storage="chara/41/キャラ待機A1.png"  width="430"  height="600"  left="845"  top="115"  reflect="false"  ]
[chara_show  name="さくら09"  time="0"  wait="true"  storage="chara/41/キャラ待機B1.png"  width="430"  height="600"  left="845"  top="115"  reflect="false"  ]
[chara_show  name="さくら08"  time="0"  wait="true"  storage="chara/28/キャラ待機82.png"  width="530"  height="660"  left="745"  top="55"  reflect="false"  ]
[chara_show  name="さくら08"  time="1000"  wait="true"  storage="chara/28/キャラ待機81.png"  width="530"  height="660"  left="745"  top="55"  reflect="false"  ]
[chara_show  name="さくら06"  time="0"  wait="true"  storage="chara/7/キャラ待機61.png"  width="450"  height="650"  left="741"  top="70"  reflect="false"  ]
[chara_show  name="さくら05"  time="0"  wait="true"  storage="chara/6/キャラ待機51.png"  width="450"  height="155"  left="613"  top="369"  reflect="false"  ]
[chara_show  name="さくら02"  time="0"  wait="true"  storage="chara/3/キャラ待機21.png"  width="180"  height="320"  left="368"  top="353"  reflect="false"  ]
[chara_show  name="さくら04"  time="0"  wait="true"  storage="chara/5/キャラ待機41.png"  width="225"  height="330"  left="625"  top="389"  reflect="false"  ]
[chara_show  name="さくら03"  time="0"  wait="true"  storage="chara/4/キャラ待機31.png"  width="500"  height="550"  left="710"  top="170"  reflect="false"  ]
[chara_show  name="さくら01"  time="0"  wait="true"  storage="chara/1/キャラ待機01.png"  width="500"  height="550"  left="750"  top="170"  ]
[tb_start_tyrano_code]
[chara_show  name="さくら01"  time="0"  wait="true"  storage="chara/1/キャラ待機01.png"  width="500"  height="550"  left="750"  top="170" ]
[_tb_end_tyrano_code]

[chara_show  name="undefined"  time="1000"  wait="true"  ]
*__妹キス後

[chara_mod  name="さくら08"  time="0"  cross="false"  storage="chara/28/キャラ待機83.png"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="えっち系/キス02.mp3"  ]
[wait  time="2000"  ]
[chara_mod  name="さくら08"  time="0"  cross="false"  storage="chara/28/キャラ待機84.png"  ]
[jump  storage="__Main_Kyuuka.ks"  target="*__キス戻り先"  ]
[tb_start_tyrano_code]
[clickable x=780 y=110 width=490 height=440 storage="__Main_Kyuuka.ks" target=*__妹クリック後]
[clickable x=930 y=550 width=200 height=150 storage="__Main_Kyuuka.ks" target=*__妹キス後]
[_tb_end_tyrano_code]

[s  ]
*__妹待機おっぱい

[chara_mod  name="さくら09"  time="0"  cross="false"  storage="chara/41/キャラ待機A2.png"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
What's wrong? [emb exp="f.Oni_Name3"]・・・ are you tired?[p]
#
[_tb_end_text]

[chara_mod  name="さくら09"  time="0"  cross="false"  storage="chara/41/キャラ待機A3.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Umm・・・[p]
Want to caress my breasts?[p]
#
[_tb_end_text]

[tb_hide_message_window  ]
[font  size="18"  color="0x000000"  face="JKG-M_3"  bold="true"  ]
[tb_start_tyrano_code]
;妹クリック後　選択肢
[glink  color="btn_05_black"  storage="__Main_Back.ks"  size="25"  x="530"  y="200"  width="250"  height="50"  text="Caress her breasts"    target="*__おっぱい" enterse="マウスオーバー.mp3"  clickse="決定ボタンを押す53.mp3" ]
[glink  color="btn_05_black"  storage="__Main_Kyuuka.ks"  size="25"  x="530"  y="250"  width="250"  height="50"  text="Do something else"    target="*__妹クリック後" enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3" ]

[_tb_end_tyrano_code]

[resetfont  ]
[s  ]
*__おっぱい

[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/01喘ぎ声(前)01.mp3"  loop="true"  ]
[chara_mod  name="さくら09"  time="0"  cross="false"  storage="chara/41/キャラ待機A1アニメ.png"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
・・・Mmh[heart]・・・ Mmh[heart][p]
[emb exp="f.Oni_Name3"][heart][heart][heart][p]
#
[_tb_end_text]

[tb_hide_message_window  ]
[l  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#
For a while, I squeezed and massaged [emb exp="f.Imo_Name"]'s breasts[p]
I'm feeling energetic again![p]
Energy recovered by 1[p]
[_tb_end_text]

[stopse  time="1000"  buf="3"  ]
[tb_start_tyrano_code]
;開発回数プラスカウント
[eval exp="f.Kaihatu_Count[1].kazu += 1"]

[_tb_end_tyrano_code]

[call  storage="H_Kaihatu_Upshori.ks"  target="*__開発アップ処理"  ]
[call  storage="_Array_Kaihatu.ks"  target="*__開発配列初期化"  ]
[tb_start_tyrano_code]
;精力回復判定
[eval exp="f.Sys_Seiryoku += 1" cond="f.Sys_Seiryoku < f.Sys_Seiryoku_Max"]
[_tb_end_tyrano_code]

[tb_eval  exp="f.Tre_Up=20"  name="Tre_Up"  cmd="="  op="t"  val="20"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__性欲UP"  ]
[call  storage="Main_Sta.ks"  target="*__メインステ表示"  ]
[jump  storage="__Main_Kyuuka.ks"  target="*___イベント終了時間経過"  ]
*__妹待機えっち

[tb_show_message_window  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
What's wrong? [emb exp="f.Oni_Name3"][p]
Mmm[heart][p]
Wanna do it?[heart][p]
#
[_tb_end_text]

[tb_hide_message_window  ]
[font  size="18"  color="0x000000"  face="JKG-M_3"  bold="true"  ]
[tb_start_tyrano_code]
;妹クリック後　選択肢
[if exp="f.Sys_Seiryoku >= 1"]
[glink  color="btn_05_black"  storage="__Main_Back.ks"  size="25"  x="530"  y="200"  width="250"  height="50"  text="Have sex"  _clickable_img=""  target="*__待機えっち" enterse="マウスオーバー.mp3"  clickse="決定ボタンを押す53.mp3" ]
[glink  color="btn_05_black"  storage="__Main_Back.ks"  size="25"  x="530"  y="250"  width="250"  height="50"  text="Wait for now"  _clickable_img=""  target="*__まって" enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3" ]
[else]
[glink  color="btn_05_black"  storage="__Main_Back.ks"  size="25"  x="530"  y="200"  width="250"  height="50"  text="No energy"  _clickable_img=""  target="*__精力がない" enterse="マウスオーバー.mp3"  clickse="決定ボタンを押す53.mp3" ]
[endif]
[_tb_end_tyrano_code]

[resetfont  ]
[s  ]
*__精力がない

[tb_show_message_window  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Aww[p]
#
[emb exp="f.Imo_Name"] grinds her crotch against mine[p]
#&f.Imo_Name
Hurry and get hard for me[heart][p]
-Grind grind grind grind[p]
#&f.Imo_Name
[emb exp="f.Oni_Name3"][heart][p]
#
Sigh・・・ it's torture・・・[p]
[_tb_end_text]

[tb_hide_message_window  ]
[tb_eval  exp="f.Tre_Up=20"  name="Tre_Up"  cmd="="  op="t"  val="20"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__性欲UP"  ]
[call  storage="Main_Sta.ks"  target="*__メインステ表示"  ]
[jump  storage="__Main_Kyuuka.ks"  target="*___イベント終了時間経過"  ]
*__まって

[tb_show_message_window  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Yeah[heart][p]
#
[emb exp="f.Imo_Name"] grinds her crotch against mine[p]
#&f.Imo_Name
[emb exp="f.Oni_Name3"][heart][p]
#
-Grind grind grind grind[p]
#&f.Imo_Name
Hey・・・[p]
Aren't we gonna have sex?[heart][p]
Heyyy~[heart][heart][p]
#
[_tb_end_text]

[tb_hide_message_window  ]
[font  size="18"  color="0x000000"  face="JKG-M_3"  bold="true"  ]
[tb_start_tyrano_code]
;妹クリック後　選択肢
[glink  color="btn_05_black"  storage="__Main_Back.ks"  size="25"  x="530"  y="200"  width="250"  height="50"  text="Have sex"  _clickable_img=""  target="*__待機えっち" enterse="マウスオーバー.mp3"  clickse="決定ボタンを押す53.mp3" ]
[glink  color="btn_05_black"   storage="__Main_Kyuuka.ks"  size="25"  x="530"  y="250"  width="250"  height="50"  text="Do something else"  target=*__妹クリック後 enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3" ]
[_tb_end_tyrano_code]

[resetfont  ]
[s  ]
*__待機えっち

[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/06喘ぎ声(挿入)01.mp3"  loop="true"  ]
[playse  volume="100"  time="1000"  buf="1"  storage="ピストン系/EDピストン01.mp3"  loop="true"  ]
[chara_mod  name="さくら09"  time="0"  cross="false"  storage="chara/41/キャラ待機アニメB1.png"  ]
[wait  time="1000"  ]
[l  ]
[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/08喘ぎ声(挿入)03.mp3"  loop="true"  ]
[playse  volume="100"  time="1000"  buf="1"  storage="ピストン系/EDピストン02.mp3"  loop="true"  ]
[chara_mod  name="さくら09"  time="0"  cross="false"  storage="chara/41/キャラ待機アニメB2.png"  ]
[wait  time="1000"  ]
[l  ]
[tb_start_tyrano_code]
;妹クリック後　選択肢
[glink  color="btn_05_black"  storage="__Main_Back.ks"  size="25"  x="530"  y="200"  width="250"  height="50"  text="Cum inside"  target="*__中に出す" enterse="マウスオーバー.mp3"  clickse="決定ボタンを押す53.mp3" ]
[glink  color="btn_05_black"   storage="__Main_Back.ks"  size="25"  x="530"  y="250"  width="250"  height="50"  text="Cum outside" target="*__外に出す" enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3" ]
[_tb_end_tyrano_code]

[s  ]
*__中に出す

[tb_start_tyrano_code]
;中だし回数プラスカウント
[if exp="f.H_Sex_Anal ==0 && f.H_Condom_On ==0"]
[eval exp="f.Sex_Count[3].bestcount += 1"]
[eval exp="f.Sex_Count[4].count += 1"]
[endif]
[_tb_end_tyrano_code]

[call  storage="__Main_Night_Option.ks"  target="*__妊娠判定"  cond=""  ]
[stopse  time="1000"  buf="3"  ]
[call  storage="__Main_Night_Option.ks"  target="*__お触り単発強"  ]
[playse  volume="100"  time="1000"  buf="1"  storage="えっち系/射精音02.mp3"  loop="false"  ]
[chara_mod  name="さくら09"  time="0"  cross="false"  storage="chara/41/キャラ待機B3.png"  ]
[wait  time="2000"  ]
[jump  storage="__Main_Back.ks"  target="*__射精後"  ]
*__外に出す

[stopse  time="1000"  buf="3"  ]
[call  storage="__Main_Night_Option.ks"  target="*__お触り単発強"  ]
[playse  volume="100"  time="1000"  buf="1"  storage="えっち系/射精音02.mp3"  loop="false"  ]
[chara_mod  name="さくら09"  time="0"  cross="false"  storage="chara/41/キャラ待機B4.png"  ]
[wait  time="2000"  ]
*__射精後

[tb_show_message_window  ]
[tb_start_text mode=1 ]
#&f.Oni_Name3
・・・Phew[p]
#
[_tb_end_text]

[tb_start_text mode=1 ]
#&f.Imo_Name
Mmh[heart][p]
[emb exp="f.Oni_Name3"][heart][p]
I love you[heart]・・・[emb exp="f.Oni_Name3"][heart][heart][heart][p]
#
[emb exp="f.Imo_Name"] hugs me tight[p]
Her breasts were pressed against my face, and I felt like I was about to suffocate to death in bliss.[p]
[_tb_end_text]

[stopse  time="1000"  buf="0"  ]
[stopse  time="1000"  buf="1"  ]
[stopse  time="1000"  buf="3"  ]
[tb_start_tyrano_code]
;回数カウント
[eval exp="f.Sex_Count[1].bestcount += 1"]
[eval exp="f.Sex_Count[7].bestcount += 1"]
[eval exp="f.Kaihatu_Count[3].kazu += 1"]
[_tb_end_tyrano_code]

[call  storage="H_Kaihatu_Upshori.ks"  target="*__開発アップ処理"  ]
[call  storage="_Array_Kaihatu.ks"  target="*__開発配列初期化"  ]
[tb_eval  exp="f.Sys_Seiryoku-=1"  name="Sys_Seiryoku"  cmd="-="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.Tre_Up=100"  name="Tre_Up"  cmd="="  op="t"  val="100"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__性欲DOWN"  ]
[call  storage="Main_Sta.ks"  target="*__メインステ表示"  ]
[jump  storage="__Main_Kyuuka.ks"  target="*___イベント終了時間経過"  ]
