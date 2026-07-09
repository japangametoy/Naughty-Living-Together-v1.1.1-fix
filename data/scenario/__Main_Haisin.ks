[_tb_system_call storage=system/___Main_Haisin.ks]

[bg  time="1000"  method="crossfade"  storage="BG00.png"  ]
*__配信を手伝う

[tb_start_tyrano_code]
[layopt layer=1 visible=true opacity=255]
[_tb_end_tyrano_code]

[tb_eval  exp="f.Tre_Up=1"  name="Tre_Up"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="Backgraund_Select.ks"  target="*__背景時間で選択"  ]
[tb_image_hide  time="0"  ]
[call  storage="Main_Sta.ks"  target="*__メインステ表示"  ]
[tb_start_tyrano_code]
;会話10万人既読フラグ
[jump target="*__一人で配信"  cond="!f.talks[40].flag || !f.talks[40].read"]
[_tb_end_tyrano_code]

[font  size="18"  color="0x000000"  face="JKG-M_3"  bold="true"  ]
[tb_start_tyrano_code]
;配信H選択肢
[glink  color="btn_05_black"  storage="__Main_Haisin.ks"  size="25"  x="530"  y="250"  width="250"  height="50"  text="Lewd stream"  _clickable_img=""  target="*__配信でえっち" enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3" ]
[glink  color="btn_05_black"  storage="__Main_Haisin.ks"  size="25"  x="530"  y="300"  width="250"  height="50"  text="Other room"  _clickable_img=""  target="*__一人で配信" enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3" ]
[glink name="rightClickButton" x="530" y="400" size="25" width="250" height="50" color="btn_05_black" storage="__Main_Kyuuka.ks" text="Nothing" target="*_時間経過なし戻り先" enterse="マウスオーバー.mp3" clickse="キャンセル1.mp3"]
[_tb_end_tyrano_code]

[resetfont  ]
[s  ]
*__配信でえっち

[jump  storage="__Main_Haisin_H.ks"  target="*__配信開始"  cond="f.Haisin_Hfirst_Flag>0"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
Usually I stay in another room so I don't make any noise, but・・・[p]
#&f.Oni_Name3
Hey, [emb exp="f.Imo_Name"][p]
Can I watch you while you're streaming?[p]
#
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_22.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Eh? Sure, but you can't make any noise.[p]
#&f.Oni_Name3
Of course I know that.[p]
I want to see you doing your best.[p]
#
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_11.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Hehe, it's embarrassing to have you watch me like this.[p]
I might get nervous.[p]
#&f.Oni_Name3
Forget I'm here and just stream like usual.[p]
#
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_32.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Okay, I'll do my best.[p]
#
I feel a desire for conquest welling up inside me.[p]
・・・As long as I don't make any noise, right?[p]
[_tb_end_text]

[tb_hide_message_window  ]
[jump  storage="__Main_Haisin_H.ks"  target="*__配信開始"  cond=""  ]
*__一人で配信

[tb_show_message_window  ]
[tb_start_tyrano_code]
;ランダム数値生成
[getrand var="f.Kaiwa_Random" min="1" max="11"]

[iscript]
if(f.Kaiwa_Random <= 1){
f.Kaiwa_Bangou = 1;
} else if(f.Kaiwa_Random >1 && f.Kaiwa_Random <= 9){
f.Kaiwa_Bangou = 2;
} else if(f.Kaiwa_Random > 9 && f.Kaiwa_Random <= 11){
f.Kaiwa_Bangou = 3;
}else{
f.Kaiwa_Bangou = 4;
};
[endscript]

[_tb_end_tyrano_code]

[tb_image_show  time="0"  storage="default/イベントカット30土日配信.png"  width="500"  height="300"  x="450"  y="170"  name="img_15"  ]
[call  storage="Tre_Bar.ks"  target="*__土日イベントバー増減"  ]
[tb_start_tyrano_code]
[iscript]
f.休暇配信番号 = '*'+f.Kaiwa_Bangou;
[endscript]
[jump target="&f.休暇配信番号"]
[_tb_end_tyrano_code]

[s  ]
*1

[tb_start_text mode=1 ]
The excitement was a bit lacking.

[_tb_end_text]

[tb_start_tyrano_code]
;ファン数獲得　総合力×ランダム数×週目
[eval exp="f.Tre_Up = Math.floor(f.Imo_Sougou * f.Kaiwa_Random  * f.Sys_Syume/30)"]

[_tb_end_tyrano_code]

[call  storage="Tre_Sta_Up.ks"  target="*__ファン数UP"  ]
[jump  storage="__Main_Haisin.ks"  target="*__配信終了"  ]
*2

[tb_start_text mode=1 ]
Had a fun stream!
[_tb_end_text]

[tb_start_tyrano_code]
;ファン数獲得　総合力×ランダム数×週目
[eval exp="f.Tre_Up = Math.floor(f.Imo_Sougou * f.Kaiwa_Random  * f.Sys_Syume/20)"]

[_tb_end_tyrano_code]

[call  storage="Tre_Sta_Up.ks"  target="*__ファン数UP"  ]
[tb_start_tyrano_code]
;お金獲得　ランダム数×週目
[eval exp="f.Tre_Up = Math.floor(f.Kaiwa_Random  * f.Sys_Syume/10) * 100"]

[_tb_end_tyrano_code]

[call  storage="Tre_Sta_Up.ks"  target="*__お金UP"  ]
[jump  storage="__Main_Haisin.ks"  target="*__配信終了"  ]
*3

[tb_start_text mode=1 ]
It was super exciting!
[_tb_end_text]

[tb_start_tyrano_code]
;ファン数獲得　総合力×ランダム数×週目
[eval exp="f.Tre_Up = Math.floor(f.Imo_Sougou * f.Kaiwa_Random  * f.Sys_Syume/10)"]

[_tb_end_tyrano_code]

[call  storage="Tre_Sta_Up.ks"  target="*__ファン数UP"  ]
[tb_start_tyrano_code]
;お金獲得　ランダム数×週目
[eval exp="f.Tre_Up = Math.floor(f.Kaiwa_Random  * f.Sys_Syume/10) * 200"]

[_tb_end_tyrano_code]

[call  storage="Tre_Sta_Up.ks"  target="*__お金UP"  ]
[jump  storage="__Main_Haisin.ks"  target="*__配信終了"  ]
*__配信終了

[tb_image_hide  time="0"  ]
[call  storage="Main_Sta.ks"  target="*__メインステ表示"  ]
[jump  storage="__Main_Kyuuka.ks"  target="*___イベント終了時間経過"  ]
