[_tb_system_call storage=system/___Main_Drink.ks]

[bg  time="00000"  method="crossfade"  storage="BG00.png"  ]
[call  storage="_Array_.ks"  target="*__配列宣言"  ]
[tb_start_tyrano_code]
[freeimage  layer="1"  ]
[layopt layer="1" visible="true" x=0 y=0]
[_tb_end_tyrano_code]

*__何か飲むトップ

[tb_show_message_window  ]
[font  size="18"  color="0x000000"  face="JKG-M_3"  bold="true"  ]
[tb_start_tyrano_code]
;残数表示
[iscript]
f.ジュース表示 = 'Juice (' + f.my_Item[0].my_kazu  +  ')';
f.媚薬表示 = 'Aphrodisiac (' + f.my_Item[1].my_kazu  +  ')';
f.アロマ表示 = 'Aroma (' + f.my_Item[2].my_kazu  +  ')';
f.精力剤表示 = 'Energy Supplement (' + f.my_Item[3].my_kazu  +  ')';
f.絶倫X表示 = 'Virility X (' + f.my_Item[21].my_kazu  +  ')';
f.アフターピル表示 = 'Morning-After Pill (' + f.my_Item[8].my_kazu  +  ')';
f.スピリX表示 = 'Spirit X (' + f.my_Item[24].my_kazu  +  ')';
[endscript]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;アイテム所持数でglink分岐
[if exp="f.my_Item[1].my_kazu ==0"]
[glink  color="btn_05_black" name="buy_Item01"  storage="__Main_Drink.ks"  size="25"  text="&f.媚薬表示"  x="530"  y="150"  width="250" height=50  target="*__何か飲むトップ" enterse="マウスオーバー.mp3"  clickse="キャンセル1.mp3" ]
[else]
[glink  color="btn_05_black" name="buy_Item01"  storage="__Main_Drink.ks"  size="25"  text="&f.媚薬表示"  x="530"  y="150"  width="250"  height=50 target="*__媚薬"  enterse="マウスオーバー.mp3"  clickse="決定ボタンを押す53.mp3" ]
[endif]

[if exp="f.my_Item[2].my_kazu ==0"]
[glink  color="btn_05_black" name="buy_Item02"  storage="__Main_Drink.ks"  size="25"  text="&f.アロマ表示"  x="530"  y="200"  width="250"  height=50 target="*__何か飲むトップ" enterse="マウスオーバー.mp3"  clickse="キャンセル1.mp3" ]
[else]
[glink  color="btn_05_black" name="buy_Item02"  storage="__Main_Drink.ks"  size="25"  text="&f.アロマ表示"  x="530"  y="200"  width="250"  height=50 target="*__アロマ"  enterse="マウスオーバー.mp3"  clickse="決定ボタンを押す53.mp3" ]
[endif]

[if exp="f.my_Item[3].my_kazu ==0"]
[glink  color="btn_05_black" name="buy_Item03"  storage="__Main_Drink.ks"  size="25"  text="&f.精力剤表示"  x="530"  y="250"  width="250"  height=50 target="*__何か飲むトップ" enterse="マウスオーバー.mp3"  clickse="キャンセル1.mp3" ]
[else]
[glink  color="btn_05_black" name="buy_Item03"  storage="__Main_Drink.ks"  size="25"  text="&f.精力剤表示"  x="530"  y="250"  width="250"  height=50 target="*__精力剤"  enterse="マウスオーバー.mp3"  clickse="決定ボタンを押す53.mp3" ]
[endif]

[if exp="f.my_Item[21].my_kazu ==0"]
[glink  color="btn_05_black" name="buy_Item04"  storage="__Main_Drink.ks"  size="25"  text="&f.絶倫X表示"  x="530"  y="300"  width="250"  height=50 target="*__何か飲むトップ" enterse="マウスオーバー.mp3"  clickse="キャンセル1.mp3" ]
[else]
[glink  color="btn_05_black" name="buy_Item04"  storage="__Main_Drink.ks"  size="25"  text="&f.絶倫X表示"  x="530"  y="300"  width="250"  height=50 target="*__絶倫"  enterse="マウスオーバー.mp3"  clickse="決定ボタンを押す53.mp3" ]
[endif]

[if exp="f.my_Item[8].my_kazu ==0"]
[glink  color="btn_05_black" name="buy_Item05"  storage="__Main_Drink.ks"  size="25"  text="&f.アフターピル表示"  x="530"  y="350"  width="250"  height=50 target="*__何か飲むトップ" enterse="マウスオーバー.mp3"  clickse="キャンセル1.mp3" ]
[else]
[glink  color="btn_05_black" name="buy_Item05"  storage="__Main_Drink.ks"  size="25"  text="&f.アフターピル表示"  x="530"  y="350"  width="250"  height=50 target="*__アフターピル"  enterse="マウスオーバー.mp3"  clickse="決定ボタンを押す53.mp3" ]
[endif]

[if exp="f.my_Item[24].my_kazu ==0"]
[glink  color="btn_05_black" name="buy_Item06"  storage="__Main_Drink.ks"  size="25" text="&f.スピリX表示" x="530"  y="400"  width="250"  height=50 target="*__スピリX"  target="*__何か飲むトップ" enterse="マウスオーバー.mp3"  clickse="キャンセル1.mp3"]
[else]
[glink  color="btn_05_black" name="buy_Item06"  storage="__Main_Drink.ks"  size="25" text="&f.スピリX表示"  x="530"  y="400"  width="250"  height=50 target="*__スピリX"  target="*__スピリX"  enterse="マウスオーバー.mp3"  clickse="決定ボタンを押す53.mp3"]
[endif]

[glink name="rightClickButton" x="530" y="450" size="25" width="250" height=50 color="btn_05_black" storage="__Main_Kyuuka.ks" text="Back" target="*__妹クリック後戻り先" enterse="マウスオーバー.mp3"  clickse="キャンセル1.mp3"]
[_tb_end_tyrano_code]

[resetfont  ]
[tb_start_tyrano_code]
;マウスホバー説明　完成
[iscript]

$(".btn_05_black").on("mouseenter focus", function(){
//表示用テキスト入れるよう変数初期化
let stext="";

//ここからのif文、全部識別用nameのチェック

if($(this).hasClass("buy_Item01")){
stext=f.Item[1].memo;
};
if($(this).hasClass("buy_Item02")){
stext=f.Item[2].memo;
};
if($(this).hasClass("buy_Item03")){
stext=f.Item[3].memo;
};
if($(this).hasClass("buy_Item04")){
stext=f.Item[21].memo;
};
if($(this).hasClass("buy_Item05")){
stext=f.Item[8].memo;
};
if($(this).hasClass("buy_Item06")){
stext=f.Item[24].memo;
};


$(".message0_fore>.message_inner").html("<p><span  class=\"current_span\" style=\"color: rgb(255, 255, 255); font-size: 28px; font-family: JKG-L_3; letter-spacing: 0px; line-height: 30px;\">"+stext+"</span></p>");
});
//ホバーした/フォーカスした時、と同じセレクタで指定したものに、ホバーが外れた時（mouseleave）か
//フォーカスが外れた時(blur）の処理をセット
$(".coltlbtn").on("mouseleave blur", function(){

$(".message0_fore>.message_inner").html("<p><span></span></p>");
});
[endscript]

[_tb_end_tyrano_code]

[s  ]
*__ジュース

[tb_eval  exp="f.Tre_Up=1"  name="Tre_Up"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__好きUP"  ]
[tb_start_tyrano_code]
;個数マイナス１
[eval exp="f.my_Item[0].my_kazu -=1"]
[_tb_end_tyrano_code]

[jump  storage="__Main_Drink.ks"  target="*__使用後"  ]
*__媚薬

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_26.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
・・・[p]
Hah, hah・・・[p]
Huh, I wonder what's going on[p]
・・・my body is hot・・・[p]
#
[_tb_end_text]

[tb_eval  exp="f.Tre_Up=70"  name="Tre_Up"  cmd="="  op="t"  val="70"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__性欲UP"  ]
[tb_start_tyrano_code]
;個数マイナス１
[eval exp="f.my_Item[1].my_kazu -=1"]
[_tb_end_tyrano_code]

[jump  storage="__Main_Drink.ks"  target="*__使用後"  ]
*__アロマ

[chara_part  name="さくら01"  time="0"  wait="true"  目="キャラ待機01_32.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Smells so good![p]
It's so calming! [emb exp="f.Oni_Name3"]![p]
#
[_tb_end_text]

[tb_eval  exp="f.Tre_Up=1"  name="Tre_Up"  cmd="="  op="t"  val="1"  ]
[tb_start_tyrano_code]
;個数マイナス１
[eval exp="f.my_Item[2].my_kazu -=1"]
;アロマフラグON
[eval exp="f.H_Aroma_Flag = 1"]
[_tb_end_tyrano_code]

[jump  storage="__Main_Drink.ks"  target="*__使用後"  ]
*__精力剤

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_16.png"  ]
[tb_start_text mode=1 ]
#
・・・Phew[p]
It's getting rock hard・・・[p]
[_tb_end_text]

[tb_start_tyrano_code]
;精力アップ処理
[eval exp="f.Sys_Seiryoku += 3"]
[eval exp="f.Sys_Seiryoku = f.Sys_Seiryoku_Max" cond="f.Sys_Seiryoku >= f.Sys_Seiryoku_Max"
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
Energy UP[p]
[_tb_end_text]

[tb_start_tyrano_code]
;個数マイナス１
[eval exp="f.my_Item[3].my_kazu -=1"]
[_tb_end_tyrano_code]

[jump  storage="__Main_Drink.ks"  target="*__使用後"  ]
*__絶倫

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_16.png"  ]
[tb_start_text mode=1 ]
#
・・・Ugh[p]
Uoooooh!!![p]
My crotch is about to burst!![p]
[_tb_end_text]

[tb_eval  exp="f.Sys_Seiryoku+=3"  name="Sys_Seiryoku"  cmd="+="  op="t"  val="3"  val_2="undefined"  ]
[tb_start_text mode=1 ]
Energy UP[p]
[_tb_end_text]

[tb_start_tyrano_code]
;個数マイナス１
[eval exp="f.my_Item[21].my_kazu -=1"]
[_tb_end_tyrano_code]

[jump  storage="__Main_Drink.ks"  target="*__使用後"  ]
*__アフターピル

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_24.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Y-yeah・・・[p]
Just in case, I'll drink it・・・[p]
#
[_tb_end_text]

[tb_eval  exp="f.Tre_Up=2"  name="Tre_Up"  cmd="="  op="t"  val="2"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__理性UP"  ]
[tb_start_tyrano_code]
;個数マイナス１
[eval exp="f.my_Item[8].my_kazu -=1"]
[_tb_end_tyrano_code]

[tb_eval  exp="f.H_Ninsin_On=0"  name="H_Ninsin_On"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[jump  storage="__Main_Drink.ks"  target="*__使用後"  ]
*__スピリX

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_37.png"  ]
[tb_start_tyrano_code]
;処女プレイなら効果なし
[jump target="*__通常使用" cond="f.Sex_Count[0].bestcount >0"]
[jump target="*__通常使用" cond="f.Sta_Risei >= 45"]

[_tb_end_tyrano_code]

[tb_eval  exp="undefined"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Huh・・・what?[p]
I'm feeling all dizzyyyy[p]
[emb exp="f.Oni_Name3"]～[p]
Ugh・・・[p]
#
[_tb_end_text]

[tb_start_text mode=1 ]
#
[emb exp="f.Imo_Name"] doesn't look well・・・[p]
I let her rest for a bit[p]

[_tb_end_text]

[jump  storage="__Main_Drink.ks"  target="*__使用後"  ]
*__通常使用

[tb_start_text mode=1 ]
#&f.Imo_Name
Huh・・・what?[p]
I'm feeling all dizzyyyy[p]
[emb exp="f.Oni_Name3"]～[p]
Yaaawn[p]
#
[_tb_end_text]

[tb_eval  exp="f.Tre_Up=10"  name="Tre_Up"  cmd="="  op="t"  val="10"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__理性DOWN"  ]
[tb_start_tyrano_code]
;個数マイナス１
[eval exp="f.my_Item[24].my_kazu -=1"]
[_tb_end_tyrano_code]

[jump  storage="__Main_Drink.ks"  target="*__使用後"  ]
*__使用後

[jump  storage="__Main_Kyuuka.ks"  target="*___イベント終了時間経過"  ]
