[_tb_system_call storage=system/_SyokiStatus.ks]

*__初期ステ

[tb_show_message_window  ]
[tb_start_text mode=1 ]
#
Tell me your stats![p]
Try allocating points to each skill![p]
[_tb_end_text]

[mask  time="300"  effect="fadeIn"  color="0x000000"  ]
[bg  time="0"  method="fadeIn"  storage="初期ステ01.png"  ]
*__初期ステ途中

[font  size="14"  color="0x000000"  face="JKG-M_3"  ]
[call  storage="Oni_Name1.ks"  target="*__兄名前初期"  ]
[call  storage="Oni_Kyuryou.ks"  target="*__兄給料初期"  ]
[call  storage="Oni_Miryoku.ks"  target="*__兄魅力初期"  ]
[tb_start_tyrano_code]
[freeimage  layer="1"  ]
[layopt  layer="1"  visible="true"  ]

[iscript]
f.兄なまえ=f.Oni_Name1;
f.兄名前 = f.Oni_Name1 + f.Oni_Name2 + f.Oni_Name3;
f.ポイント表示 = 'Remaining Points ' + f.Oni_Point + ' P';
f.年齢表示 = 'Age ' + f.Oni_Toshi+'/35'+ 'yo';
f.容姿表示 = 'Looks ' + f.Oni_Youshi+'/10';
f.体格表示 = 'Physique ' + f.Oni_Taikaku+'/10';
f.仕事表示 = 'Work ' + f.Oni_Work+'/25';
f.エロ表示 = 'Sex Skills ' + f.Oni_Ero+'/10';
f.月収表示 = 'Monthly Income ' + f.Oni_Kyuryou + ' ¥';
f.魅力表示 = 'Charm ' + f.Oni_Miryoku;

[endscript]
[ptext layer="1" x="640" y="100" size="15" text="Title" ]
[ptext layer="1" x="650" y="125" size="30" text="&f.兄名前" ]
[ptext layer="1" x="330" y="130" size="25" text="&f.ポイント表示"]

[ptext layer="1" x="365" y="190" size="25" text="Age"]
[ptext layer="1" x="470" y="190" size="25" text="&f.Oni_Toshi" width= 50 align="right"]
[ptext layer="1" x="525" y="190" size="25" text="/35"]
[ptext layer="1" x="575" y="192" size="20" text="yo"]
[ptext layer="1" x="710" y="192" size="20" text="Affects monthly income and charm!"]

[ptext layer="1" x="365" y="238" size="25" text="Looks"]
[ptext layer="1" x="470" y="238" size="25" text="&f.Oni_Youshi" width= 50 align="right"]
[ptext layer="1" x="525" y="238" size="25" text="/10"]
[ptext layer="1" x="710" y="240" size="20" text="You'll get popular easier with charm!"]

[ptext layer="1" x="365" y="285" size="25" text="Physique"]
[ptext layer="1" x="470" y="285" size="25" text="&f.Oni_Taikaku" width= 50 align="right"]
[ptext layer="1" x="525" y="285" size="25" text="/10"]
[ptext layer="1" x="710" y="287" size="20" text="Affects monthly income and charm!"]

[ptext layer="1" x="365" y="332" size="25" text="Work"]
[ptext layer="1" x="470" y="332" size="25" text="&f.Oni_Work" width= 50 align="right"]
[ptext layer="1" x="525" y="332" size="25" text="/25"]
[ptext layer="1" x="710" y="334" size="20" text="Your monthly income will go up!"]

[ptext layer="1" x="365" y="379" size="25" text="Sex Skills"]
[ptext layer="1" x="470" y="379" size="25" text="&f.Oni_Ero" width= 50 align="right"]
[ptext layer="1" x="525" y="379" size="25" text="/10"]
[ptext layer="1" x="710" y="381" size="20" text="It's amazing during sex!"]

[ptext layer="1" x="365" y="425" size="25" text="Charm"]
[ptext layer="1" x="470" y="425" size="25" text="&f.Oni_Miryoku" width= 50 align="right"]
;[ptext layer="1" x="525" y="425" size="25" text="/"]
[ptext layer="1" x="710" y="427" size="20" text="Affection rises more easily!"]

[ptext layer="1" x="365" y="467" size="24" text="Monthly Income"]
[ptext layer="1" x="430" y="467" size="40" text="&f.Oni_Kyuryou" width= 200 align="right"]
[ptext layer="1" x="640" y="474" size="30" text="¥"]
[ptext layer="1" x="710" y="482" size="20" text="Deposited once every 4 weeks!"]

[_tb_end_tyrano_code]

[clickable  storage="Shoki_Sousa.ks"  x="613"  y="179"  width="32"  height="35"  target="*__年齢プラス"  _clickable_img=""  ]
[clickable  storage="Shoki_Sousa.ks"  x="653"  y="182"  width="26"  height="28"  target="*__年齢マイナス"  _clickable_img=""  ]
[clickable  storage="Shoki_Sousa.ks"  x="611"  y="231"  width="31"  height="31"  target="*__容姿プラス"  _clickable_img=""  ]
[clickable  storage="Shoki_Sousa.ks"  x="650"  y="226"  width="32"  height="37"  target="*__容姿マイナス"  _clickable_img=""  ]
[clickable  storage="Shoki_Sousa.ks"  x="608"  y="276"  width="37"  height="31"  target="*__体格プラス"  _clickable_img=""  ]
[clickable  storage="Shoki_Sousa.ks"  x="651"  y="273"  width="33"  height="34"  target="*__体格マイナス"  _clickable_img=""  ]
[clickable  storage="Shoki_Sousa.ks"  x="613"  y="325"  width="34"  height="33"  target="*__仕事プラス"  _clickable_img=""  ]
[clickable  storage="Shoki_Sousa.ks"  x="650"  y="315"  width="35"  height="33"  target="*__仕事マイナス"  _clickable_img=""  ]
[clickable  storage="Shoki_Sousa.ks"  x="611"  y="369"  width="35"  height="36"  target="*__エロプラス"  _clickable_img=""  ]
[clickable  storage="Shoki_Sousa.ks"  x="653"  y="370"  width="33"  height="33"  target="*__エロマイナス"  _clickable_img=""  ]
[clickable  storage="SyokiStatus.ks"  x="1101"  y="489"  width="84"  height="38"  target="*__初期ステ決定"  _clickable_img=""  ]
[resetfont  ]
[tb_start_tyrano_code]
[button  layer=2  role="sleepgame"  x="75"  y="280"  width="100"  height="100"   graphic="初期ステ攻略ヒント.png" enterimg="" storage="SyokiStatus_Hint.ks" target="*__攻略ヒント"   name="初期ヒント" hint="Spoiler Alert"  enterse="カーソル移動1.mp3" clickse="カーソル移動12.mp3" ]
[_tb_end_tyrano_code]

[mask_off  time="300"  effect="fadeOut"  ]
[s  ]
*__初期ステ決定

[playse  volume="100"  time="1000"  buf="0"  storage="決定ボタンを押す41.mp3"  ]
[tb_image_hide  time="0"  ]
[tb_start_tyrano_code]
[clearfix]
[_tb_end_tyrano_code]

[bg  time="500"  method="fadeIn"  storage="BG_Black.png"  cross="true"  ]
[tb_start_text mode=1 ]
You are 「[emb exp="f.Oni_Name1 + f.Oni_Name2 + f.Oni_Name3" ]」.[p]
Now, let's start the game.[p]
[_tb_end_text]

[tb_eval  exp="f.Sys_Okane=f.Oni_Kyuryou"  name="Sys_Okane"  cmd="="  op="h"  val="Oni_Kyuryou"  val_2="undefined"  ]
[jump  storage="scene1.ks"  target="*____ゲームスタート"  ]
