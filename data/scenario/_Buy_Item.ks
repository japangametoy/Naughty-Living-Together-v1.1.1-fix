[_tb_system_call storage=system/__Buy_Item.ks]

[tb_eval  exp="f.Sys_Okane=800000"  name="Sys_Okane"  cmd="="  op="t"  val="800000"  val_2="undefined"  ]
[call  storage="_Array_.ks"  target="*__配列宣言"  ]
[tb_eval  exp="f.Sys_Syume=82"  name="Sys_Syume"  cmd="="  op="t"  val="82"  val_2="undefined"  ]
[tb_eval  exp="f.Oni_Taikaku=9"  name="Oni_Taikaku"  cmd="="  op="t"  val="9"  val_2="undefined"  ]
[tb_eval  exp="f.Sys_Giwaku=20"  name="Sys_Giwaku"  cmd="="  op="t"  val="20"  val_2="undefined"  ]
*__アイテム購入スタート

[tb_start_tyrano_code]
;DLC用
[jump storage="dlc01.ks" target="*__DLC01" cond="f.DLC_On_Flag ==1"]
[_tb_end_tyrano_code]

*__DLCからの復帰

[tb_start_tyrano_code]
[cm]
[_tb_end_tyrano_code]

[playbgm  volume="30"  time="1000"  loop="true"  storage="町の喧騒.mp3"  ]
[chara_hide_all  time="0"  wait="true"  ]
[bg  time="500"  method="fadeInLeft"  storage="買い物背景.png"  ]
[call  storage="Main_Sta.ks"  target="*__メインステ表示"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
Which shop should I go to?[p]
[_tb_end_text]

*__店選び

[tb_image_hide  time="0"  ]
[font  size="14"  color="0xffffff"  bold="true"  face="JKG-M_3"  ]
[tb_start_tyrano_code]
;店最初選択肢
[glink  color="btn_05_black"  storage="_Buy_Item.ks"  size="25"  text="Convenience Store"  x="530"  y="150"  width="220"  target="*__コンビニ戻り先"  height="50" enterse="マウスオーバー.mp3"  clickse="決定ボタンを押す53.mp3" ]
[glink  color="btn_05_black"  storage="_Buy_Item.ks"  size="25"  text="Bookstore"  x="530"  y="200"  width="220"  target="*__本屋戻り先"  height="50" enterse="マウスオーバー.mp3"  clickse="決定ボタンを押す53.mp3" ]
[glink  color="btn_05_black"  storage="_Buy_Item.ks"  size="25"  text="Adult Shop"  x="530"  y="250"  width="220"  target="*__えっちな店戻り先"  height="50" enterse="マウスオーバー.mp3"  clickse="決定ボタンを押す53.mp3" ]
[glink  color="btn_05_black"  storage="_Buy_Item.ks"  size="25"  text="Luxury Store"  x="530"  y="300"  width="220"  target="*__ブランド店戻り先"  height="50" enterse="マウスオーバー.mp3"  clickse="決定ボタンを押す53.mp3" ]
[glink  color="btn_05_black"  storage="_Buy_Item.ks"  size="25"  text="Erotic Parlor"  x="530"  y="350"  width="220"  target="*__ソープ"  height="50" enterse="マウスオーバー.mp3"  clickse="決定ボタンを押す53.mp3" ]
[glink  color="btn_05_black"  storage="_Buy_Item.ks"  size="25"  text="Shady Shop"  x="530"  y="400"  width="220"  target="*__怪しい店戻り先"  height="50" cond="f.Sys_Syume>=30" enterse="マウスオーバー.mp3"  clickse="決定ボタンを押す53.mp3"]

[glink  color="btn_05_black"  storage="_Buy_Item.ks"  size="25"  x="530"  y="450"  width="220"  target="*__帰る処理"  text="Go Home"  height="50" enterse="マウスオーバー.mp3"  clickse="決定ボタンを押す53.mp3" ]
[_tb_end_tyrano_code]

[resetfont  ]
[s  ]
*__帰る処理

[bg  time="500"  method="crossfade"  storage="BG_Black.png"  ]
[tb_start_tyrano_code]
;集中本所持１回めだけフラグ立てる

[if exp="f.my_Item[16].my_kazu==1 && f.Live_Concent_Buyflag == 0" ]
[eval exp="f.Live_Concent_BuyFirst = 1"]
[elsif exp="f.my_Item[16].my_kazu==1 && f.Live_Concent_Buyflag == 1" ]
[eval exp="f.Live_Concent_BuyFirst = 0"]
[endif]

[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;本持ってるか判定
[if exp="f.my_Item[11].my_kazu==1 || f.my_Item[12].my_kazu==1 || f.my_Item[13].my_kazu==1 || f.my_Item[14].my_kazu==1 || f.my_Item[15].my_kazu==1 || f.Live_Concent_BuyFirst==1 || f.my_Item[0].my_kazu==1 || f.my_Item[9].my_kazu==1 || f.my_Item[10].my_kazu==1"]
I gave the item I bought to [emb exp="f.Imo_Name"] as a present.[l]
[endif]

[_tb_end_tyrano_code]

[tb_eval  exp="f.Tre_Up=1"  name="Tre_Up"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_start_tyrano_code]
;所持している本でステアップ分岐

;ブランド服　容姿+2
[eval exp="f.Tre_Up=2"]
[if exp="f.my_Item[9].my_kazu==1"]
[call storage="Tre_Sta_Up.ks" target=*__容姿UP]
[eval exp="f.my_Item[9].my_kazu=0"]
[endif]

;化粧品　容姿+1
[eval exp="f.Tre_Up=1"]
[if exp="f.my_Item[10].my_kazu==1"]
[call storage="Tre_Sta_Up.ks" target=*__容姿UP]
[eval exp="f.my_Item[10].my_kazu=0"]
[endif]

;歌本　歌+1
[if exp="f.my_Item[12].my_kazu==1"]
[eval exp="f.Tre_Up=1"]
[call storage="Tre_Sta_Up.ks" target=*__歌UP]
[eval exp="f.my_Item[12].my_kazu=0"]
[endif]

;ダンス本　踊り+1
[if exp="f.my_Item[13].my_kazu==1"]
[eval exp="f.Tre_Up=1"]
[call storage="Tre_Sta_Up.ks" target=*__ダンスUP]
[eval exp="f.my_Item[13].my_kazu=0"]
[endif]

;演技本　演技+1
[if exp="f.my_Item[14].my_kazu==1"]
[eval exp="f.Tre_Up=1"]
[call storage="Tre_Sta_Up.ks" target=*__演技UP]
[eval exp="f.my_Item[14].my_kazu=0"]
[endif]

;話術本　話術+1
[if exp="f.my_Item[15].my_kazu==1"]
[eval exp="f.Tre_Up=1"]
[call storage="Tre_Sta_Up.ks" target=*__話術UP]
[eval exp="f.my_Item[15].my_kazu=0"]
[endif]

;プレゼント　好感度＋１
[if exp="f.my_Item[0].my_kazu==1"]
[eval exp="f.Tre_Up=1"]
[call storage="Tre_Sta_Up.ks" target=*__好きUP]
[eval exp="f.my_Item[0].my_kazu=0"]
[endif]

;学術本　理性+10
[if exp="f.my_Item[11].my_kazu==1"]
[eval exp="f.Tre_Up=10"]
[call storage="Tre_Sta_Up.ks" target=*__理性UP]
[eval exp="f.my_Item[11].my_kazu=0"]
[endif]

;集中本　集中テロップ
[if exp="f.my_Item[16].my_kazu==1 && f.Live_Concent_Buyflag == 0" ]
[notice color=black top=250 right=0 width=150 height=45 size=15 text="Obtained 'Focus'!!" wait=false wait_time=2000]
[eval exp="f.Live_Concent_Buyflag = 1"]
[endif]

;疑惑　減少テロップ
[if exp="f.my_Item[26].my_kazu==1" ]
[eval exp="f.Sys_Giwaku -= 20"]
[eval exp="f.Sys_Giwaku = 0" cond="f.Sys_Giwaku <= 0"]
[notice color=black top=300 right=0 width=150 height=45 size=15 text="Suspicion decreased" wait=false wait_time=2000]
[eval exp="f.my_Item[26].my_kazu=0"]
[endif]

;美容　増加テロップ
[if exp="f.my_Item[19].my_kazu==1" ]
[eval exp="f.Oni_Youshi += 1" cond="f.Oni_Youshi < 10]
[notice color=black top=350 right=0 width=150 height=45 size=15 text="Looks improved" wait=false wait_time=2000]
[eval exp="f.my_Item[19].my_kazu=0"]
[endif]

;骨延長　増加テロップ
[if exp="f.my_Item[20].my_kazu==1" ]
[eval exp="f.Oni_Taikaku += 1" cond="f.Oni_Taikaku < 10]
[notice color=black top=400 right=0 width=150 height=45 size=15 text="Physique increased" wait=false wait_time=2000]
[eval exp="f.my_Item[20].my_kazu=0"]
[endif]

;呪い　テロップ
[if exp="f.my_Item[25].my_kazu==1 && f.my_Item[25].flag == 0" ]
[notice color=black top=500 right=0 width=150 height=45 size=15 text="No pregnancy allowed" wait=false wait_time=2000]
[eval exp="f.my_Item[25].flag=1"]
[endif]

[_tb_end_tyrano_code]

[call  storage="Oni_Miryoku.ks"  target="*__兄魅力初期"  ]
[mask  time="300"  effect="fadeIn"  color="0x000000"  ]
[jump  storage="__Main_Kyuuka.ks"  target="*__店からの帰り先"  ]
*__コンビニ戻り先

[font  size="14"  color="0xffffff"  bold="true"  face="JKG-M_3"  ]
[tb_start_tyrano_code]
;コンビニアイテム表示
[freeimage  layer="1"  ]
[layopt layer="1" visible="true" x=0 y=0]

[iscript]
f.アイテム価格 = f.Item.map(item => item.price.toLocaleString());
f.アイテム名 = [];
f.所持数 = [];

for (let i = 0; i < f.Item.length; i++) {
const kazu = f.my_Item[i].my_kazu;
const price = f.アイテム価格[i];
const name = f.Item[i].name;

f.所持数[i] = `（${kazu}）`;
f.アイテム名[i] = `${name}${price}¥${f.所持数[i]}`;
}
[endscript]

;[for name=f.i from=0 to=38]
;[eval exp="f.所持数[f.i] = '（' + f.my_Item[f.i].my_kazu + '）' "]
;[eval exp="f.アイテム名[f.i] = f.Item[f.i].name + f.アイテム価格[f.i]+ '円' + f.所持数[f.i]"]
;[nextfor]

;プレゼント表記
[if exp="f.my_Item[0].my_kazu==0"]
[glink layer="1" x="450" y="150" size="25" text="&f.アイテム名[0]" width="400" height=50 color="btn_05_black" name="buy_Item01" storage="_Buy_Item.ks"  target="*__コンビニ購入確認" exp="f.購入雑変数 = 0" enterse="マウスオーバー.mp3"  clickse="決定ボタンを押す53.mp3"]
[else]
[glink layer="1" x="450" y="150" size="25" text="Sold Out" width="400" height=50 color="btn_05_black" storage="_Buy_Item.ks"  target="*__コンビニ戻り先"]
[endif]

[if exp="f.my_Item[2].my_kazu < 9"]
[glink layer="1" x="450" y="200" size="25" text="&f.アイテム名[2]" width="400" height=50 color="btn_05_black" name="buy_Item02" storage="_Buy_Item.ks"  target="*__コンビニ購入確認" exp="f.購入雑変数 = 2" enterse="マウスオーバー.mp3"  clickse="決定ボタンを押す53.mp3"]
[else]
[glink layer="1" x="450" y="200" size="25" text="Sold Out" width="400" height=50 color="btn_05_black" storage="_Buy_Item.ks"  target="*__コンビニ戻り先"]
[endif]

[if exp="f.my_Item[3].my_kazu < 9"]
[glink layer="1" x="450" y="250" size="25" text="&f.アイテム名[3]" width="400" height=50 color="btn_05_black" name="buy_Item03" storage="_Buy_Item.ks"  target="*__コンビニ購入確認" exp="f.購入雑変数 = 3" enterse="マウスオーバー.mp3"  clickse="決定ボタンを押す53.mp3"]
[else]
[glink layer="1" x="450" y="250" size="25" text="Sold Out" width="400" height=50 color="btn_05_black" storage="_Buy_Item.ks"  target="*__コンビニ戻り先"]
[endif]

[glink layer="1" x="450" y="300" size="25" text="&f.アイテム名[4]" width="400" height=50 color="btn_05_black" name="buy_Item04" storage="_Buy_Item.ks"  target="*__コンビニ購入確認" exp="f.購入雑変数 = 4" enterse="マウスオーバー.mp3"  clickse="決定ボタンを押す53.mp3"]

;攻略本
[eval exp="f.i=0"]
[if exp="f.my_Item[37].my_kazu ==0 && f.Clear_Flag == 1 "]
[glink layer="1" x="450" y="350" size="25" text="&f.アイテム名[37]" width="400" height=50 color="btn_05_black" name="buy_Item37" storage="_Buy_Item.ks"  target="*__コンビニ購入確認" exp="f.購入雑変数 = 37" enterse="マウスオーバー.mp3"  clickse="決定ボタンを押す53.mp3"]

[elsif exp="f.my_Item[37].my_kazu >=1 && f.my_Item[38].my_kazu==0"]
[glink layer="1" x="450" y="350" size="25" text="&f.アイテム名[38]" width="400" height=50 color="btn_05_black" name="buy_Item38" storage="_Buy_Item.ks"  target="*__コンビニ購入確認" exp="f.購入雑変数 = 38" enterse="マウスオーバー.mp3"  clickse="決定ボタンを押す53.mp3"]

[elsif exp="f.my_Item[27].my_kazu==0"]
[glink layer="1" x="450" y="350" size="25" text="&f.アイテム名[27]" width="400" height=50 color="btn_05_black" name="buy_Item27" storage="_Buy_Item.ks"  target="*__コンビニ購入確認" exp="f.購入雑変数 = 27" enterse="マウスオーバー.mp3"  clickse="決定ボタンを押す53.mp3"]

[elsif exp="f.my_Item[27].my_kazu >=1 && f.my_Item[28].my_kazu==0 && f.Sys_Syume >= 5 "]
[glink layer="1" x="450" y="350" size="25" text="&f.アイテム名[28]" width="400" height=50 color="btn_05_black" name="buy_Item28" storage="_Buy_Item.ks"  target="*__コンビニ購入確認" exp="f.購入雑変数 = 28" enterse="マウスオーバー.mp3"  clickse="決定ボタンを押す53.mp3"]

[elsif exp="f.my_Item[28].my_kazu >=1 && f.my_Item[29].my_kazu==0 && f.Sys_Syume >= 10 "]
[glink layer="1" x="450" y="350" size="25" text="&f.アイテム名[29]" width="400" height=50 color="btn_05_black" name="buy_Item29" storage="_Buy_Item.ks"  target="*__コンビニ購入確認" exp="f.購入雑変数 = 29" enterse="マウスオーバー.mp3"  clickse="決定ボタンを押す53.mp3"]

[elsif exp="f.my_Item[29].my_kazu >=1 && f.my_Item[30].my_kazu==0 && f.Sys_Syume >= 15 "]
[glink layer="1" x="450" y="350" size="25" text="&f.アイテム名[30]" width="400" height=50 color="btn_05_black" name="buy_Item30" storage="_Buy_Item.ks"  target="*__コンビニ購入確認" exp="f.購入雑変数 = 30" enterse="マウスオーバー.mp3"  clickse="決定ボタンを押す53.mp3"]

[elsif exp="f.my_Item[30].my_kazu >=1 && f.my_Item[31].my_kazu==0 && f.Sys_Syume >= 20 "]
[glink layer="1" x="450" y="350" size="25" text="&f.アイテム名[31]" width="400" height=50 color="btn_05_black" name="buy_Item31" storage="_Buy_Item.ks"  target="*__コンビニ購入確認" exp="f.購入雑変数 = 31" enterse="マウスオーバー.mp3"  clickse="決定ボタンを押す53.mp3"]

[elsif exp="f.my_Item[31].my_kazu >=1 && f.my_Item[32].my_kazu==0 && f.Sys_Syume >= 25 "]
[glink layer="1" x="450" y="350" size="25" text="&f.アイテム名[32]" width="400" height=50 color="btn_05_black" name="buy_Item32" storage="_Buy_Item.ks"  target="*__コンビニ購入確認" exp="f.購入雑変数 = 32" enterse="マウスオーバー.mp3"  clickse="決定ボタンを押す53.mp3"]

[elsif exp="f.my_Item[32].my_kazu >=1 && f.my_Item[33].my_kazu==0 && f.Sys_Syume >= 30 "]
[glink layer="1" x="450" y="350" size="25" text="&f.アイテム名[33]" width="400" height=50 color="btn_05_black" name="buy_Item33" storage="_Buy_Item.ks"  target="*__コンビニ購入確認" exp="f.購入雑変数 = 33" enterse="マウスオーバー.mp3"  clickse="決定ボタンを押す53.mp3"]

[elsif exp="f.my_Item[33].my_kazu >=1 && f.my_Item[34].my_kazu==0 && f.Sys_Syume >= 35  "]
[glink layer="1" x="450" y="350" size="25" text="&f.アイテム名[34]" width="400" height=50 color="btn_05_black" name="buy_Item34" storage="_Buy_Item.ks"  target="*__コンビニ購入確認" exp="f.購入雑変数 = 34" enterse="マウスオーバー.mp3"  clickse="決定ボタンを押す53.mp3"]

[elsif exp="f.my_Item[34].my_kazu >=1 && f.my_Item[35].my_kazu==0 && f.Sys_Syume >= 40 "]
[glink layer="1" x="450" y="350" size="25" text="&f.アイテム名[35]" width="400" height=50 color="btn_05_black" name="buy_Item35" storage="_Buy_Item.ks"  target="*__コンビニ購入確認" exp="f.購入雑変数 = 35" enterse="マウスオーバー.mp3"  clickse="決定ボタンを押す53.mp3"]

[elsif exp="f.my_Item[35].my_kazu >=1 && f.my_Item[36].my_kazu==0 && f.Sys_Syume >= 45 "]
[glink layer="1" x="450" y="350" size="25" text="&f.アイテム名[36]" width="400" height=50 color="btn_05_black" name="buy_Item36" storage="_Buy_Item.ks"  target="*__コンビニ購入確認" exp="f.購入雑変数 = 36" enterse="マウスオーバー.mp3"  clickse="決定ボタンを押す53.mp3"]

[else]
[glink layer="1" x="450" y="350" size="25" text="Sold Out" width="400" height=50 color="btn_05_black" storage="_Buy_Item.ks"  target="*__コンビニ戻り先"]
[endif]

[glink layer="1" x="450" y="400" size="25" text="Back" width="400" height=50 color="btn_05_black" storage="_Buy_Item.ks"  target="*__店選び"  name="rightClickButton" enterse="マウスオーバー.mp3"  clickse="キャンセル1.mp3"]

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
stext=f.Item[0].memo;
};
if($(this).hasClass("buy_Item02")){
stext=f.Item[2].memo;
};
if($(this).hasClass("buy_Item03")){
stext=f.Item[3].memo;
};
if($(this).hasClass("buy_Item04")){
stext=f.Item[4].memo;
};
if($(this).hasClass("buy_Item27")){
stext=f.Item[27].memo;
};
if($(this).hasClass("buy_Item28")){
stext=f.Item[28].memo;
};
if($(this).hasClass("buy_Item29")){
stext=f.Item[29].memo;
};
if($(this).hasClass("buy_Item30")){
stext=f.Item[30].memo;
};
if($(this).hasClass("buy_Item31")){
stext=f.Item[31].memo;
};
if($(this).hasClass("buy_Item32")){
stext=f.Item[32].memo;
};
if($(this).hasClass("buy_Item33")){
stext=f.Item[33].memo;
};
if($(this).hasClass("buy_Item34")){
stext=f.Item[34].memo;
};
if($(this).hasClass("buy_Item35")){
stext=f.Item[35].memo;
};
if($(this).hasClass("buy_Item36")){
stext=f.Item[36].memo;
};
if($(this).hasClass("buy_Item37")){
stext=f.Item[37].memo;
};
if($(this).hasClass("buy_Item38")){
stext=f.Item[38].memo;
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
*__コンビニ購入確認

[font  size="14"  color="0xffffff"  bold="true"  face="JKG-M_3"  ]
[tb_start_tyrano_code]
[glink layer="1" x="500" y="200" size="25" text="Buy" width="300" height=50 color="btn_05_black" storage="_Buy_Item.ks"  target="*__コンビニ購入処理" enterse="マウスオーバー.mp3"]
[glink layer="1" x="500" y="250" size="25" text="Back" width="300" height=50 color="btn_05_black" storage="_Buy_Item.ks"  target="*__コンビニ戻り先"  name="rightClickButton" enterse="マウスオーバー.mp3"  clickse="キャンセル1.mp3"]
[_tb_end_tyrano_code]

[resetfont  ]
[s  ]
*__コンビニ購入処理

[tb_start_tyrano_code]
;購入処理
[if exp="f.Sys_Okane >= f.Item[f.購入雑変数].price"]
[eval exp="f.Sys_Okane -= f.Item[f.購入雑変数].price"]
[eval exp="f.my_Item[f.購入雑変数].my_kazu += f.Item[f.購入雑変数].uri_kazu]
[playse  volume="100"  time="1000"  buf="2"  storage="レジスターで精算.mp3"  ]
[else]
Not enough money.[l]
[endif]
[_tb_end_tyrano_code]

[call  storage="Main_Sta.ks"  target="*__メインステ表示"  ]
[jump  storage="_Buy_Item.ks"  target="*__コンビニ戻り先"  ]
[s  ]
*__えっちな店戻り先

[font  size="14"  color="0xffffff"  bold="true"  face="JKG-M_3"  ]
[tb_start_tyrano_code]
;えっちな店アイテム表示
[freeimage  layer="1"  ]
[layopt layer="1" visible="true" x=0 y=0]

[iscript]
f.アイテム価格 = f.Item.map(item => item.price.toLocaleString());
f.アイテム名 = [];
f.所持数 = [];

for (let i = 0; i < f.Item.length; i++) {
const kazu = f.my_Item[i].my_kazu;
const price = f.アイテム価格[i];
const name = f.Item[i].name;

f.所持数[i] = `（${kazu}）`;
f.アイテム名[i] = `${name}${price}¥${f.所持数[i]}`;
}
[endscript]

[if exp="f.my_Item[1].my_kazu < 9"]
[glink layer="1" x="450" y="150" size="25" text="&f.アイテム名[1]" width="400" height=50 color="btn_05_black" name="buy_Item01" storage="_Buy_Item.ks"  target="*__えっちな店購入確認" exp="f.購入雑変数 = 1" enterse="マウスオーバー.mp3"  clickse="決定ボタンを押す53.mp3"]
[else]
[glink layer="1" x="450" y="150" size="25" text="Sold Out" width="400" height=50 color="btn_05_black" storage="_Buy_Item.ks"  target="*__えっちな店戻り先" ]
[endif]

[if exp="f.my_Item[21].my_kazu < 9"]
[glink layer="1" x="450" y="200" size="25" text="&f.アイテム名[21]" width="400" height=50 color="btn_05_black" name="buy_Item02" storage="_Buy_Item.ks"  target="*__えっちな店購入確認" exp="f.購入雑変数 = 21" enterse="マウスオーバー.mp3"  clickse="決定ボタンを押す53.mp3"]
[else]
[glink layer="1" x="450" y="200" size="25" text="Sold Out" width="400" height=50 color="btn_05_black" storage="_Buy_Item.ks"  target="*__えっちな店戻り先" ]
[endif]

[if exp="f.my_Item[8].my_kazu < 9"]
[glink layer="1" x="450" y="250" size="25" text="&f.アイテム名[8]" width="400" height=50 color="btn_05_black" name="buy_Item03" storage="_Buy_Item.ks"  target="*__えっちな店購入確認" exp="f.購入雑変数 = 8" enterse="マウスオーバー.mp3"  clickse="決定ボタンを押す53.mp3"]
[else]
[glink layer="1" x="450" y="250" size="25" text="Sold Out" width="400" height=50 color="btn_05_black" storage="_Buy_Item.ks"  target="*__えっちな店戻り先" ]
[endif]

[if exp="f.my_Item[5].my_kazu==0"]
[glink layer="1" x="450" y="300" size="25" text="&f.アイテム名[5]" width="400" height=50 color="btn_05_black" name="buy_Item04" storage="_Buy_Item.ks"  target="*__えっちな店購入確認" exp="f.購入雑変数 = 5" enterse="マウスオーバー.mp3"  clickse="決定ボタンを押す53.mp3"]
[else]
[glink layer="1" x="450" y="300" size="25" text="Sold Out" width="400" height=50 color="btn_05_black" storage="_Buy_Item.ks"  target="*__えっちな店戻り先" ]
[endif]

[if exp="f.my_Item[6].my_kazu==0"]
[glink layer="1" x="450" y="350" size="25" text="&f.アイテム名[6]" width="400" height=50 color="btn_05_black" name="buy_Item05" storage="_Buy_Item.ks"  target="*__えっちな店購入確認" exp="f.購入雑変数 = 6" enterse="マウスオーバー.mp3"  clickse="決定ボタンを押す53.mp3"]
[else]
[glink layer="1" x="450" y="350" size="25" text="Sold Out" width="400" height=50 color="btn_05_black" storage="_Buy_Item.ks"  target="*__えっちな店戻り先"]
[endif]

[if exp="f.my_Item[7].my_kazu==0"]
[glink layer="1" x="450" y="400" size="25" text="&f.アイテム名[7]" width="400" height=50 color="btn_05_black" name="buy_Item06" storage="_Buy_Item.ks"  target="*__えっちな店購入確認" exp="f.購入雑変数 = 7" enterse="マウスオーバー.mp3"  clickse="決定ボタンを押す53.mp3"]
[else]
[glink layer="1" x="450" y="400" size="25" text="Sold Out" width="400" height=50 color="btn_05_black" storage="_Buy_Item.ks"  target="*__えっちな店戻り先"]
[endif]

[glink layer="1" x="450" y="450" size="25" text="Back" width="400" height=50 color="btn_05_black" storage="_Buy_Item.ks"  target="*__店選び"  name="rightClickButton" enterse="マウスオーバー.mp3"  clickse="キャンセル1.mp3"]
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
stext=f.Item[21].memo;
};
if($(this).hasClass("buy_Item03")){
stext=f.Item[8].memo;
};
if($(this).hasClass("buy_Item04")){
stext=f.Item[5].memo;
};
if($(this).hasClass("buy_Item05")){
stext=f.Item[5].memo;
};
if($(this).hasClass("buy_Item06")){
stext=f.Item[7].memo;
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
*__えっちな店購入確認

[font  size="14"  color="0xffffff"  bold="true"  face="JKG-M_3"  ]
[tb_start_tyrano_code]
[glink layer="1" x="500" y="200" size="25" text="Buy" width="300" height=50 color="btn_05_black" storage="_Buy_Item.ks"  target="*__えっちな店購入処理" enterse="マウスオーバー.mp3"  clickse="決定ボタンを押す53.mp3"]
[glink layer="1" x="500" y="250" size="25" text="Back" width="300" height=50 color="btn_05_black" storage="_Buy_Item.ks"  target="*__えっちな店戻り先"  name="rightClickButton" enterse="マウスオーバー.mp3"  clickse="キャンセル1.mp3"]
[_tb_end_tyrano_code]

[resetfont  ]
[s  ]
*__えっちな店購入処理

[tb_start_tyrano_code]
;購入処理
[if exp="f.Sys_Okane >= f.Item[f.購入雑変数].price"]
[eval exp="f.Sys_Okane -= f.Item[f.購入雑変数].price"]
[eval exp="f.my_Item[f.購入雑変数].my_kazu += 1]
[playse  volume="100"  time="1000"  buf="2"  storage="レジスターで精算.mp3"  ]
[else]
Not enough money.[l]
[endif]
[_tb_end_tyrano_code]

[call  storage="Main_Sta.ks"  target="*__メインステ表示"  ]
[jump  storage="_Buy_Item.ks"  target="*__えっちな店戻り先"  ]
[s  ]
*__本屋戻り先

[font  size="14"  color="0xffffff"  bold="true"  face="JKG-M_3"  ]
[tb_start_tyrano_code]
;本屋アイテム表示
[freeimage  layer="1"  ]
[layopt layer="1" visible="true" x=0 y=0]

[iscript]
f.アイテム価格 = f.Item.map(item => item.price.toLocaleString());
f.アイテム名 = [];
f.所持数 = [];

for (let i = 0; i < f.Item.length; i++) {
const kazu = f.my_Item[i].my_kazu;
const price = f.アイテム価格[i];
const name = f.Item[i].name;

f.所持数[i] = `（${kazu}）`;
f.アイテム名[i] = `${name}${price}¥${f.所持数[i]}`;
}
[endscript]

;[for name=f.i from=0 to=28]
;[eval exp="f.所持数[f.i] = '（' + f.my_Item[f.i].my_kazu + '）' "]
;[eval exp="f.アイテム名[f.i] = f.Item[f.i].name + f.アイテム価格[f.i]+ '円' + f.所持数[f.i]"]
;[nextfor]

[eval exp="f.i=12"]
[if exp="f.my_Item[f.i].my_kazu==0"]
[glink layer="1" x="450" y="150" size="25" text="&f.アイテム名[f.i]" width="400" height=50 color="btn_05_black" name="buy_Item01" storage="_Buy_Item.ks"  target="*__本屋購入確認" exp="f.購入雑変数 = 12" enterse="マウスオーバー.mp3"  clickse="決定ボタンを押す53.mp3"]
[else]
[glink layer="1" x="450" y="150" size="25" text="Sold Out" width="400" height=50 color="btn_05_black" storage="_Buy_Item.ks"  target="*__本屋戻り先"]
[endif]

[eval exp="f.i=13"]
[if exp="f.my_Item[f.i].my_kazu==0"]
[glink layer="1" x="450" y="200" size="25" text="&f.アイテム名[f.i]" width="400" height=50 color="btn_05_black" name="buy_Item02" storage="_Buy_Item.ks"  target="*__本屋購入確認" exp="f.購入雑変数 = 13" enterse="マウスオーバー.mp3"  clickse="決定ボタンを押す53.mp3"]
[else]
[glink layer="1" x="450" y="200" size="25" text="Sold Out" width="400" height=50 color="btn_05_black" storage="_Buy_Item.ks"  target="*__本屋戻り先"]
[endif]

[eval exp="f.i=14"]
[if exp="f.my_Item[f.i].my_kazu==0"]
[glink layer="1" x="450" y="250" size="25" text="&f.アイテム名[f.i]" width="400" height=50 color="btn_05_black" name="buy_Item03" storage="_Buy_Item.ks"  target="*__本屋購入確認" exp="f.購入雑変数 = 14" enterse="マウスオーバー.mp3"  clickse="決定ボタンを押す53.mp3"]
[else]
[glink layer="1" x="450" y="250" size="25" text="Sold Out" width="400" height=50 color="btn_05_black" storage="_Buy_Item.ks"  target="*__本屋戻り先"]
[endif]

[eval exp="f.i=15"]
[if exp="f.my_Item[f.i].my_kazu==0"]
[glink layer="1" x="450" y="300" size="25" text="&f.アイテム名[f.i]" width="400" height=50 color="btn_05_black" name="buy_Item04" storage="_Buy_Item.ks"  target="*__本屋購入確認" exp="f.購入雑変数 = 15" enterse="マウスオーバー.mp3"  clickse="決定ボタンを押す53.mp3"]
[else]
[glink layer="1" x="450" y="300" size="25" text="Sold Out" width="400" height=50 color="btn_05_black" storage="_Buy_Item.ks"  target="*__本屋戻り先"]
[endif]

[eval exp="f.i=16"]
[if exp="f.my_Item[f.i].my_kazu==0"]
[glink layer="1" x="450" y="350" size="25" text="&f.アイテム名[f.i]" width="400" height=50 color="btn_05_black" name="buy_Item05" storage="_Buy_Item.ks"  target="*__本屋購入確認" exp="f.購入雑変数 = 16" enterse="マウスオーバー.mp3"  clickse="決定ボタンを押す53.mp3"]
[else]
[glink layer="1" x="450" y="350" size="25" text="Sold Out" width="400" height=50 color="btn_05_black" storage="_Buy_Item.ks"  target="*__本屋戻り先"]
[endif]

[glink layer="1" x="450" y="400" size="25" text="Back" width="400" height=50 color="btn_05_black" storage="_Buy_Item.ks"  target="*__店選び"  name="rightClickButton" enterse="マウスオーバー.mp3"  clickse="キャンセル1.mp3"]
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
stext=f.Item[12].memo;
};
if($(this).hasClass("buy_Item02")){
stext=f.Item[13].memo;
};
if($(this).hasClass("buy_Item03")){
stext=f.Item[14].memo;
};
if($(this).hasClass("buy_Item04")){
stext=f.Item[15].memo;
};
if($(this).hasClass("buy_Item05")){
stext=f.Item[16].memo;
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
*__本屋購入確認

[tb_image_hide  time="0"  ]
[font  size="14"  color="0xffffff"  bold="true"  face="JKG-M_3"  ]
[tb_start_tyrano_code]
[glink layer="1" x="500" y="200" size="25" text="Buy" width="300" height=50 color="btn_05_black" storage="_Buy_Item.ks"  target="*__本屋購入処理" enterse="マウスオーバー.mp3"  clickse="決定ボタンを押す53.mp3"]
[glink layer="1" x="500" y="250" size="25" text="Back" width="300" height=50 color="btn_05_black" storage="_Buy_Item.ks"  target="*__本屋戻り先"  name="rightClickButton" enterse="マウスオーバー.mp3"  clickse="キャンセル1.mp3"]
[_tb_end_tyrano_code]

[resetfont  ]
[s  ]
*__本屋購入処理

[tb_start_tyrano_code]
;購入処理
[if exp="f.Sys_Okane >= f.Item[f.購入雑変数].price"]
[eval exp="f.Sys_Okane -= f.Item[f.購入雑変数].price"]
[eval exp="f.my_Item[f.購入雑変数].my_kazu += 1]
[playse  volume="100"  time="1000"  buf="2"  storage="レジスターで精算.mp3"  ]
[else]
Not enough money.[l]
[endif]
[_tb_end_tyrano_code]

[call  storage="Main_Sta.ks"  target="*__メインステ表示"  ]
[jump  storage="_Buy_Item.ks"  target="*__本屋戻り先"  ]
[s  ]
*__ブランド店戻り先

[font  size="14"  color="0xffffff"  bold="true"  face="JKG-M_3"  ]
[tb_start_tyrano_code]
;アイテム表示
[freeimage  layer="1"  ]
[layopt layer="1" visible="true" x=0 y=0]

[iscript]
f.アイテム価格 = f.Item.map(item => item.price.toLocaleString());
f.アイテム名 = [];
f.所持数 = [];

for (let i = 0; i < f.Item.length; i++) {
const kazu = f.my_Item[i].my_kazu;
const price = f.アイテム価格[i];
const name = f.Item[i].name;

f.所持数[i] = `（${kazu}）`;
f.アイテム名[i] = `${name}${price}¥${f.所持数[i]}`;
}
[endscript]

;[for name=f.i from=0 to=28]
;[eval exp="f.所持数[f.i] = '（' + f.my_Item[f.i].my_kazu + '）' "]
;[eval exp="f.アイテム名[f.i] = f.Item[f.i].name + f.アイテム価格[f.i]+ '円' + f.所持数[f.i]"]
;[nextfor]

[if exp="f.my_Item[10].my_kazu==0]
[glink layer="1" x="450" y="150" size="25" text="&f.アイテム名[10]" width="400" height=50 color="btn_05_black" name="buy_Item01" storage="_Buy_Item.ks"  target="*__ブランド店購入確認" exp="f.購入雑変数 = 10" enterse="マウスオーバー.mp3"  clickse="決定ボタンを押す53.mp3"]
[else]
[glink layer="1" x="450" y="150" size="25" text="Sold Out" width="400" height=50 color="btn_05_black" storage="_Buy_Item.ks"  target="*__ブランド店戻り先"]
[endif]

[if exp="f.my_Item[9].my_kazu==0]
[glink layer="1" x="450" y="200" size="25" text="&f.アイテム名[9]" width="400" height=50 color="btn_05_black" name="buy_Item02" storage="_Buy_Item.ks"  target="*__ブランド店購入確認" exp="f.購入雑変数 = 9" enterse="マウスオーバー.mp3"  clickse="決定ボタンを押す53.mp3"]
[else]
[glink layer="1" x="450" y="200" size="25" text="Sold Out" width="400" height=50 color="btn_05_black" storage="_Buy_Item.ks"  target="*__ブランド店戻り先"]
[endif]

[if exp="f.my_Item[17].my_kazu==0]
[glink layer="1" x="450" y="250" size="25" text="&f.アイテム名[17]" width="400" height=50 color="btn_05_black" name="buy_Item03" storage="_Buy_Item.ks"  target="*__ブランド店購入確認" exp="f.購入雑変数 = 17" enterse="マウスオーバー.mp3"  clickse="決定ボタンを押す53.mp3"]
[else]
[glink layer="1" x="450" y="250" size="25" text="Sold Out" width="400" height=50 color="btn_05_black" storage="_Buy_Item.ks"  target="*__ブランド店戻り先"]
[endif]

[if exp="f.my_Item[18].my_kazu==0]
[glink layer="1" x="450" y="300" size="25" text="&f.アイテム名[18]" width="400" height=50 color="btn_05_black" name="buy_Item04" storage="_Buy_Item.ks"  target="*__ブランド店購入確認" exp="f.購入雑変数 = 18" enterse="マウスオーバー.mp3"  clickse="決定ボタンを押す53.mp3"]
[else]
[glink layer="1" x="450" y="300" size="25" text="Sold Out" width="400" height=50 color="btn_05_black" storage="_Buy_Item.ks"  target="*__ブランド店戻り先"]
[endif]

[glink layer="1" x="450" y="350" size="25" text="Back" width="400" height=50 color="btn_05_black" storage="_Buy_Item.ks"  target="*__店選び"  name="rightClickButton" enterse="マウスオーバー.mp3"  clickse="キャンセル1.mp3"]
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
stext=f.Item[10].memo;
};
if($(this).hasClass("buy_Item02")){
stext=f.Item[9].memo;
};
if($(this).hasClass("buy_Item03")){
stext=f.Item[17].memo;
};
if($(this).hasClass("buy_Item04")){
stext=f.Item[18].memo;
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
*__ブランド店購入確認

[font  size="14"  color="0xffffff"  bold="true"  face="JKG-M_3"  ]
[tb_start_tyrano_code]
[glink layer="1" x="500" y="200" size="25" text="Buy" width="300" height=50 color="btn_05_black" storage="_Buy_Item.ks"  target="*__ブランド店購入処理" enterse="マウスオーバー.mp3"  clickse="決定ボタンを押す53.mp3"]
[glink layer="1" x="500" y="250" size="25" text="Back" width="300" height=50 color="btn_05_black" storage="_Buy_Item.ks"  target="*__ブランド店戻り先"  name="rightClickButton" enterse="マウスオーバー.mp3"  clickse="キャンセル1.mp3"]
[_tb_end_tyrano_code]

[resetfont  ]
[s  ]
*__ブランド店購入処理

[tb_start_tyrano_code]
;購入処理
[if exp="f.Sys_Okane >= f.Item[f.購入雑変数].price"]
[eval exp="f.Sys_Okane -= f.Item[f.購入雑変数].price"]
[eval exp="f.my_Item[f.購入雑変数].my_kazu += 1]
[playse  volume="100"  time="1000"  buf="2"  storage="レジスターで精算.mp3"  ]
[else]
Not enough money.[l]
[endif]
[_tb_end_tyrano_code]

[call  storage="Main_Sta.ks"  target="*__メインステ表示"  ]
[jump  storage="_Buy_Item.ks"  target="*__ブランド店戻り先"  ]
[s  ]
*__怪しい店戻り先

[font  size="14"  color="0xffffff"  bold="true"  face="JKG-M_3"  ]
[tb_start_tyrano_code]
;アイテム表示
[freeimage  layer="1"  ]
[layopt layer="1" visible="true" x=0 y=0]

[iscript]
f.アイテム価格 = f.Item.map(item => item.price.toLocaleString());
f.アイテム名 = [];
f.所持数 = [];

for (let i = 0; i < f.Item.length; i++) {
const kazu = f.my_Item[i].my_kazu;
const price = f.アイテム価格[i];
const name = f.Item[i].name;

f.所持数[i] = `（${kazu}）`;
f.アイテム名[i] = `${name}${price}¥${f.所持数[i]}`;
}
[endscript]

;[for name=f.i from=0 to=28]
;[eval exp="f.所持数[f.i] = '（' + f.my_Item[f.i].my_kazu + '）' "]
;[eval exp="f.アイテム名[f.i] = f.Item[f.i].name + f.アイテム価格[f.i]+ '円' + f.所持数[f.i]"]
;[nextfor]

[if exp="f.my_Item[24].my_kazu == 0]
[glink layer="1" x="450" y="150" size="25" text="&f.アイテム名[24]" width="400" height=50 color="btn_05_black" name="buy_Item01" storage="_Buy_Item.ks"  target="*__怪しい店購入確認" exp="f.購入雑変数 = 24" enterse="マウスオーバー.mp3"  clickse="決定ボタンを押す53.mp3"]
[else]
[glink layer="1" x="450" y="150" size="25" text="Sold Out" width="400" height=50 color="btn_05_black" storage="_Buy_Item.ks"  target="*__怪しい店戻り先"]
[endif]

[if exp="f.my_Item[19].my_kazu==0 && f.Oni_Youshi < 9"]
[glink layer="1" x="450" y="200" size="25" text="&f.アイテム名[19]" width="400" height=50 color="btn_05_black" name="buy_Item02" storage="_Buy_Item.ks"  target="*__怪しい店購入確認" exp="f.購入雑変数 = 19" enterse="マウスオーバー.mp3"  clickse="決定ボタンを押す53.mp3"]
[else]
[glink layer="1" x="450" y="200" size="25" text="Sold Out" width="400" height=50 color="btn_05_black" storage="_Buy_Item.ks"  target="*__怪しい店戻り先"]
[endif]

[if exp="f.my_Item[20].my_kazu==0 && f.Oni_Taikaku < 9"]
[glink layer="1" x="450" y="250" size="25" text="&f.アイテム名[20]" width="400" height=50 color="btn_05_black" name="buy_Item03" storage="_Buy_Item.ks"  target="*__怪しい店購入確認" exp="f.購入雑変数 = 20" enterse="マウスオーバー.mp3"  clickse="決定ボタンを押す53.mp3"]
[else]
[glink layer="1" x="450" y="250" size="25" text="Sold Out" width="400" height=50 color="btn_05_black" storage="_Buy_Item.ks"  target="*__怪しい店戻り先"]
[endif]

[if exp="f.my_Item[25].my_kazu==0]
[glink layer="1" x="450" y="300" size="25" text="&f.アイテム名[25]" width="400" height=50 color="btn_05_black" name="buy_Item04" storage="_Buy_Item.ks"  target="*__怪しい店購入確認" exp="f.購入雑変数 = 25" enterse="マウスオーバー.mp3"  clickse="決定ボタンを押す53.mp3"]
[else]
[glink layer="1" x="450" y="300" size="25" text="&f.アイテム名[22]" width="400" height=50 color="btn_05_black" name="buy_Item06" storage="_Buy_Item.ks"  target="*__怪しい店購入確認" exp="f.購入雑変数 = 22" enterse="マウスオーバー.mp3"  clickse="決定ボタンを押す53.mp3"]
[endif]

[if exp="f.my_Item[26].my_kazu==0]
[glink layer="1" x="450" y="350" size="25" text="&f.アイテム名[26]" width="400" height=50 color="btn_05_black" name="buy_Item05" storage="_Buy_Item.ks"  target="*__怪しい店購入確認" exp="f.購入雑変数 = 26" enterse="マウスオーバー.mp3"  clickse="決定ボタンを押す53.mp3"]
[else]
[glink layer="1" x="450" y="350" size="25" text="Sold Out" width="400" height=50 color="btn_05_black" storage="_Buy_Item.ks"  target="*__怪しい店戻り先"]
[endif]

[glink layer="1" x="450" y="400" size="25" text="Back" width="400" height=50 color="btn_05_black" storage="_Buy_Item.ks"  target="*__店選び"  name="rightClickButton" enterse="マウスオーバー.mp3"  clickse="キャンセル1.mp3"]
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
stext=f.Item[24].memo;
};
if($(this).hasClass("buy_Item02")){
stext=f.Item[19].memo;
};
if($(this).hasClass("buy_Item03")){
stext=f.Item[20].memo;
};
if($(this).hasClass("buy_Item04")){
stext=f.Item[25].memo;
};
if($(this).hasClass("buy_Item05")){
stext=f.Item[26].memo;
};
if($(this).hasClass("buy_Item06")){
stext=f.Item[22].memo;
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
*__怪しい店購入確認

[font  size="14"  color="0xffffff"  bold="true"  face="JKG-M_3"  ]
[tb_start_tyrano_code]
[glink layer="1" x="500" y="200" size="25" text="Buy" width="300" height=50 color="btn_05_black" storage="_Buy_Item.ks"  target="*__怪しい店購入処理" enterse="マウスオーバー.mp3"  clickse="決定ボタンを押す53.mp3"]
[glink layer="1" x="500" y="250" size="25" text="Back" width="300" height=50 color="btn_05_black" storage="_Buy_Item.ks"  target="*__怪しい店戻り先"  name="rightClickButton" enterse="マウスオーバー.mp3"  clickse="キャンセル1.mp3"]
[_tb_end_tyrano_code]

[resetfont  ]
[s  ]
*__怪しい店購入処理

[tb_start_tyrano_code]
;購入処理
[if exp="f.Sys_Okane >= f.Item[f.購入雑変数].price"]
[eval exp="f.Sys_Okane -= f.Item[f.購入雑変数].price"]
[eval exp="f.my_Item[f.購入雑変数].my_kazu += 1]
[playse  volume="100"  time="1000"  buf="2"  storage="レジスターで精算.mp3"  ]

;疑惑処理を購入のたびに5万増額
[eval exp="f.Item[f.購入雑変数].price += 50000" cond="f.購入雑変数 == 26"]

;妊娠アイテムと解呪アイテムのやりとり
[if exp="f.my_Item[22].my_kazu >= 1 && f.my_Item[25].my_kazu >=1"]
[eval exp="f.my_Item[25].my_kazu = 0"]
[eval exp="f.my_Item[22].my_kazu = 0"]
[endif]

[else]
Not enough money.[l]
[endif]
[_tb_end_tyrano_code]

[call  storage="Main_Sta.ks"  target="*__メインステ表示"  ]
[jump  storage="_Buy_Item.ks"  target="*__怪しい店戻り先"  ]
[s  ]
*__ソープ

[tb_start_text mode=1 ]
Time will pass if you enter.[p]
There is a chance your Sex Skill or Max Energy will increase.[p]
[_tb_end_text]

[font  size="14"  color="0xffffff"  bold="true"  face="JKG-M_3"  ]
[tb_start_tyrano_code]
[glink layer="1" x="450" y="200" size="25" text="Enter 20,000 ¥" width="400" height=50 color="btn_05_black" storage="_Buy_Item.ks"  target="*__ソープ購入処理" enterse="マウスオーバー.mp3"  clickse="決定ボタンを押す53.mp3"]
[glink layer="1" x="450" y="250" size="25" text="Back" width="400" height=50 color="btn_05_black" storage="_Buy_Item.ks"  target="*__店選び"  name="rightClickButton" enterse="マウスオーバー.mp3"  clickse="キャンセル1.mp3"]

[_tb_end_tyrano_code]

[resetfont  ]
[s  ]
*__ソープ購入処理

[tb_start_tyrano_code]
;購入処理
[if exp="f.Sys_Okane >= 20000 && f.Sys_Seiryoku > 0"]
[eval exp="f.Sys_Okane -= 20000"]
[playse  volume="100"  time="1000"  buf="2"  storage="レジスターで精算.mp3"  ]
[jump storage="_Buy_Fuzoku.ks"  target="*__風俗スタート"]
[elsif exp="f.Sys_Okane < 20000]
Not enough money.[p]
[jump target=*__店選び]
[elsif exp="f.Sys_Seiryoku <= 0]
No energy・・・[p]
[jump target=*__店選び]
[endif]
[_tb_end_tyrano_code]

*__ソープ精力あり

[call  storage="Main_Sta.ks"  target="*__メインステ表示"  ]
[stopse  time="1000"  buf="0"  ]
[stopse  time="1000"  buf="1"  ]
[stopse  time="1000"  buf="2"  ]
[stopse  time="1000"  buf="3"  ]
[tb_start_text mode=1 ]
・・・[p]
・・・[p]
・・・Phew.[p]
I returned home feeling a bit languid all over, satisfied with a bright sense of exhilaration and relief.[p]
[_tb_end_text]

[tb_eval  exp="f.Sys_Seiryoku-=1"  name="Sys_Seiryoku"  cmd="-="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="Main_Sta.ks"  target="*__メインステ表示"  ]
[jump  storage="_Buy_Item.ks"  target="*__帰る処理"  ]
