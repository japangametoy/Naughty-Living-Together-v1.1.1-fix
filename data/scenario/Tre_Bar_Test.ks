[_tb_system_call storage=system/_Tre_Bar_Test.ks]

[call  storage="_Array_.ks"  target="*__配列宣言"  ]
[bg  time="0"  method="crossfade"  storage="BG00.png"  ]
[call  storage="Main_Sta.ks"  target="*__Hメインステ表示"  ]
[call  storage="Main_Sta.ks"  target="*__メインステ表示"  ]
[tb_start_tyrano_code]
[clearstack]
[_tb_end_tyrano_code]

[tb_show_message_window  ]
[chara_show  name="さくら_初登場"  time="1000"  wait="true"  storage="chara/8/初登場01.png"  width="550"  height="720"  ]
[chara_mod  name="さくら_初登場"  time="600"  cross="true"  storage="chara/8/初登場01.png"  ]
[call  storage="__Main_Night_Word.ks"  target="*test"  ]
[chara_show  name="トレ画像"  time="0"  wait="true"  storage="chara/25/イベントカット01歌レ.png"  width="500"  height="300"  ]
[l  ]
*ll

[chara_mod  name="トレ画像"  time="0"  cross="true"  storage="chara/25/イベントカット02ダンスレ.png"  ]
[l  ]
[chara_mod  name="トレ画像"  time="0"  cross="true"  storage="chara/25/イベントカット01歌レ.png"  ]
[l  ]
[chara_hide_all  time="0"  wait="true"  ]
[chara_show  name="トレ画像"  time="0"  wait="true"  storage="chara/25/イベントカット02ダンスレ.png"  width="500"  height="300"  ]
[chara_mod  name="トレ画像"  time="0"  cross="true"  storage="chara/25/イベントカット01歌レ.png"  ]
[l  ]
[jump  storage="Tre_Bar_Test.ks"  target="*ll"  ]
[s  ]
[tb_start_tyrano_code]
[layopt layer=1 visible=true opacity=255]
[layopt layer=0 visible=true opacity=255]
[layopt layer=2 visible=true opacity=255]
[_tb_end_tyrano_code]

[font  size="14"  color="0xffffff"  face="JKG-L_3"  ]
[tb_show_message_window  ]
[font  size="14"  color="0xffffff"  face="JK-Gothic-testM"  ]
[tb_start_tyrano_code]
;店最初選択肢
[glink  color="btn_05_black"  storage="_Buy_Item.ks"  size="25" name="konbini" text="Convenience Store"  x="530"  y="150"  width="220"  target="*test"  height="50" enterse="マウスオーバー.mp3"  clickse="決定ボタンを押す53.mp3" ]
[glink  color="btn_05_black"  storage="_Buy_Item.ks"  size="25"  name="honya" text="Bookstore"  x="530"  y="200"  width="220"  target="*__本屋戻り先"  height="50" enterse="マウスオーバー.mp3"  clickse="決定ボタンを押す53.mp3" ]
[glink  color="btn_05_black"  storage="_Buy_Item.ks"  size="25"  name="otona" text="Adult Shop"  x="530"  y="250"  width="220"  target="*__えっちな店戻り先"  height="50" enterse="マウスオーバー.mp3"  clickse="決定ボタンを押す53.mp3" ]
[glink  color="btn_05_black"  storage="_Buy_Item.ks"  size="25"  name="koukyu" text="Luxury Store"  x="530"  y="300"  width="220"  target="*__ブランド店戻り先"  height="50" enterse="マウスオーバー.mp3"  clickse="決定ボタンを押す53.mp3" ]
[glink  color="btn_05_black"  storage="_Buy_Item.ks"  size="25"  name="ecchi" text="Erotic Parlor"  x="530"  y="350"  width="220"  target="*__ソープ"  height="50" enterse="マウスオーバー.mp3"  clickse="決定ボタンを押す53.mp3" ]
[glink  color="btn_05_black"  storage="_Buy_Item.ks"  size="25"  name="ayasii" text="Shady Shop"  x="530"  y="400"  width="220"  target="*__怪しい店戻り先"  height="50" cond="f.Sys_Syume>=30" enterse="マウスオーバー.mp3"  clickse="決定ボタンを押す53.mp3"]

[glink  color="btn_05_black"  storage="_Buy_Item.ks"  size="25"  x="530"  y="450"  width="220"  target="*__帰る処理"  text="Go Home"  height="50" enterse="マウスオーバー.mp3"  clickse="決定ボタンを押す53.mp3" ]
[_tb_end_tyrano_code]

[resetfont  ]
[tb_start_tyrano_code]
;マウスホバー説明　完成
[iscript]

$(".btn_05_black").on("mouseenter focus", function(){
//表示用テキスト入れるよう変数初期化
let stext="";

//ここからのif文、全部識別用nameのチェック

if($(this).hasClass("konbini")){
stext="Check music played in the story and view hints.";
}
if($(this).hasClass("honya")){
stext="Check pictures seen in the story and view hints.";
}
if($(this).hasClass("otona")){
stext="Check character sprites seen in the story.";
}
if($(this).hasClass("koukyu")){
stext="Check supplementary information regarding the story.";
}
if($(this).hasClass("ecchi")){
stext="Check Italian phrases used in the story.";
}
if($(this).hasClass("ayasii")){
stext="Check acquired badges and view hints.";
}

$(".message0_fore>.message_inner").html("<p><span  class=\"current_span\" style=\"color: rgb(255, 255, 255); font-size: 28px; font-family: JKG-L_3; letter-spacing: 0px; line-height: 30px;\">"+stext+"</span></p>");
});
//ホバーした/フォーカスした時、と同じセレクタで指定したものに、ホバーが外れた時（mouseleave）か
//フォーカスが外れた時(blur）の処理をセット
$(".coltlbtn").on("mouseleave blur", function(){

$(".message0_fore>.message_inner").html("<p><span></span></p>");
})
[endscript]

[_tb_end_tyrano_code]

[s  ]
*test

[tb_start_text mode=1 ]
Test[p]
[_tb_end_text]

[s  ]
[tb_start_tyrano_code]
;各glinkに識別用のnameをつけとく。これはさくたさんのやってるのとも同じ
;ただ、expだけは別ファイルに移動する関係上、JavaScript（jQuery）パーリナイでセットする内容の削除処理を一応セットしておく
[glink text="Music" name="glink_m" target="*start" x="95"  y=175 storage="music.ks" width=150 color="coltlbtn"  size="25"  clickse="決定ボタンを押す29.ogg"  face="TEGAKIZATSU" exp='$(".coltlbtn").off( "mouseenter focus mouseleave blur");']
[glink text="Still" name="glink_s" target="*start"  x="350"   y=175 storage="still.ks" width=150 color="coltlbtn" size="25"  clickse="決定ボタンを押す29.ogg"  face="TEGAKIZATSU" exp='$(".coltlbtn").off( "mouseenter focus mouseleave blur");']
[glink text="Character" name="glink_c" target="*start"  x="605"   y=175 storage="chara.ks" width=150 color="coltlbtn" size="25"  clickse="決定ボタンを押す29.ogg"  face="TEGAKIZATSU" exp='$(".coltlbtn").off( "mouseenter focus mouseleave blur");']
[glink text="Tips" name="glink_t" target="*start" x="860"   y=175 storage="tips.ks" width=150 color="coltlbtn"  size="25"  clickse="決定ボタンを押す29.ogg"  face="TEGAKIZATSU" exp='$(".coltlbtn").off( "mouseenter focus mouseleave blur");']
[glink text="Word" name="glink_w" target="*start" x="95"   y=320 storage="word.ks" width=150 color="coltlbtn"  size="25"  clickse="決定ボタンを押す29.ogg"  face="TEGAKIZATSU" exp='$(".coltlbtn").off( "mouseenter focus mouseleave blur");']
[glink text="Badge" name="glink_b" target="*start"  x="350"   y=320 storage="badge.ks" width=150 color="coltlbtn" size="25"  clickse="決定ボタンを押す29.ogg"  face="TEGAKIZATSU" exp='$(".coltlbtn").off( "mouseenter focus mouseleave blur");']
[glink text="Credits" name="glink_cr" target="*start"  x="605"   y=320 storage="credits.ks" width=150 color="coltlbtn" size="25"  clickse="決定ボタンを押す29.ogg"  face="TEGAKIZATSU" exp='$(".coltlbtn").off( "mouseenter focus mouseleave blur");']
[glink text="Delete" name="glink_d" target="*savedelete"  x="860"   y=320 storage="collection.ks" width=150 color="coltlbtn" size="25"  clickse="決定ボタンを押す29.ogg"  face="TEGAKIZATSU"]
;メッセージウィンドウ表示用マクロ呼び出し（ウィンドウ複数切り替えるし、ロールボタン出し入れとかいろいろ一緒にできるようにしてる）
;初期メッセージ書いとく
#
Hover over a button to see its description.
;ここからJavaScript（jQuery）パーリナイ
[iscript]
//colorでそのボタン専用の名称＝生成されたHTMLとしては一貫したclassが付いているので、
//それにホバーした時（mouseenter）かフォーカスした時（focus）の条件で
//関数（function(){}）を設定
$(".coltlbtn").on("mouseenter focus", function(){
//表示用テキスト入れるよう変数初期化
let stext="";
//ここからのif文、全部識別用nameのチェック
//glink、button、ptextのnameは生成されたHTML上でclassになるので
//$(this).hasClass("チェックしたい識別クラス")とすることで、
//classにチェックしたい識別クラスを持ってるかがわかる
//この$(this)はざっくり言うと、thisがホバーイベントが発生したHTMLの要素を参照できるので、
//ホバーしたボタンの情報がそのまま入ってると思えばOK
if($(this).hasClass("glink_m")){
stext="Check music played in the story and view hints.";
}
if($(this).hasClass("glink_s")){
stext="Check pictures seen in the story and view hints.";
}
if($(this).hasClass("glink_c")){
stext="Check character sprites seen in the story.";
}
if($(this).hasClass("glink_t")){
stext="Check supplementary information regarding the story.";
}
if($(this).hasClass("glink_w")){
stext="Check Italian phrases used in the story.";
}
if($(this).hasClass("glink_b")){
stext="Check acquired badges and view hints.";
}
if($(this).hasClass("glink_cr")){
stext="View the credits.";
}
if($(this).hasClass("glink_d")){
stext="Delete save data.";
}
//メッセージウィンドウに直接流し込む
//メッセージウィンドウのタグ構造はmessage0（以降末尾の番号はメッセージウィンドウによって変化）という
//classのタグの中にmessage0_outerっていうclassのタグがあって、
//その中にmessage0_fore、そして実際に表示される文字の要素が入るmessage_innerってclassのタグがある
//ティラノで自動でメッセージが流し込まれる時は一行が<p>タグに入り、
//その中に更にdeffontやfontで設定した情報が反映された<span>タグに
//さらに本来は一字ずつ<span>タグで囲われて文字が入る。
//が、そこまでやるのもしゃらくせえ！ってことで<p>タグとその中の<span>タグ
//（オススメはデバッグ時にデベロッパーツールの要素（Elements）タブでタグを選択した状態でCtrl＋Fで
//検索ウィンドウ→検索ウィンドウに「message0」でmessage0_foreのタグに行って、横の▶押して
//タグの中を開いていって、その中のspanタグを右クリックして「HTML編集（HTML edit）」とかでコピーする）
//だけで文字列連結してmessage_innerの中のhtmlに流し込む（</span>と</p>の閉じタグを忘れないよう注意）
//また純粋にコピーしてくると、classとかのダブルクオーテーションが文字列の途切れで認識されちゃうので、そこは
//タグ内のダブルクオーテーション前に\（あるいは半角￥マーク）を置いて
//エスケープ（特例的にその文字を通常文字列と見なす）する
$(".message0_fore>.message_inner").html("<p><span  class=\"current_span\" style=\"color: rgb(240, 231, 241); font-size: 20px; font-family: TEGAKIZATSU; letter-spacing: 0px; line-height: 30px;\">"+stext+"</span></p>");
});
//ホバーした/フォーカスした時、と同じセレクタで指定したものに、ホバーが外れた時（mouseleave）か
//フォーカスが外れた時(blur）の処理をセット
$(".coltlbtn").on("mouseleave blur", function(){
//メッセージウィンドウに初期表示メッセージを直接流し込む
//この時のpタグ、spanタグはmouseenterの処理で書き換える時と同じで良い
$(".message0_fore>.message_inner").html("<p><span  class=\"current_span\" style=\"color: rgb(240, 231, 241); font-size: 20px; font-family: TEGAKIZATSU; letter-spacing: 0px; line-height: 30px;\">ボタンにカーソルをホバーすると説明が出ます。</span></p>");
})
[endscript]

[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[layopt layer="message0" page="fore" visible=true]
[position layer="message0" left=0 top=300 width=640 height=150]

;text領域（名前付き）
[text name="item_detail_1" layer="message0" x=30 y=310 size=24 color=255,255,255]
[text name="item_detail_2" layer="message0" x=30 y=350 size=20 color=200,200,200]

[glink name="sword" class="glink_blur,sword" text="Look at the Sword" y=150 color="glink_blur"]
[glink name="shield" class="glink_blur,shield" text="Look at the Shield" y=250]
[glink name="potion" class="glink_blur,potion" text="Look at the Potion" y=350]


; 説明表示用の領域（HTMLタグで配置されたdivに表示）
; これは別途layerまたはdiv領域で用意されている前提

[iscript]
f.itemMaster = {
sword: {
outline: "A sword with a sharp blade",
detail: "A weapon with high attack power, suitable for close combat. Can be upgraded at the blacksmith."
},
shield: {
outline: "A sturdy defensive shield",
detail: "Has high defense and can block enemy attacks. Comes with special effects."
},
potion: {
outline: "Medicine that restores health",
detail: "Restores 50 HP upon use. Can be used during battle."
}
};

f.item = "sword"; // 初期表示用

$(".glink_blur").on("mouseenter", function(){
Object.keys(f.itemMaster).forEach(val => {
if($(this).hasClass(val)){
TYRANO.kag.ftag.startTag("ptext",{text:"text",x:100,size:50});
}
})
})
$(".glink_blur").on("mouseleave", function(){
if(f.item){
$(".item_detail_1").text(f.itemMaster[tf.item].outline)
$(".item_detail_2").text(f.itemMaster[tf.item].detail)
}else{
$(".item_detail_1").text("")
$(".item_detail_2").text("")
}
})
[endscript]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[layopt layer="message0" page="fore" visible=true]
; メッセージレイヤー表示

;[position layer="message0" left=0 top=300 width=640 height=100]

[text name="system_message" layer="message0" x=100 y=300 size=24 color=255,255,255]

[iscript]
TYRANO.kag.ftag.startTag("ptext",{text:"text",x:100,size:50});
[endscript]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[layopt layer="message0" page="fore" visible=true]
[position layer="message0" left=0 top=300 width=640 height=150]

;text領域（名前付き）
[text name="item_detail_1" layer="message0" x=30 y=310 size=24 color=255,255,255]
[text name="item_detail_2" layer="message0" x=30 y=350 size=20 color=200,200,200]

[glink name="sword,glink_blur" text="Look at the Sword" y=150 ]
[glink name="shield" text="Look at the Shield" y=250]
[glink name="potion" text="Look at the Potion" y=350]

; 説明表示用の領域（HTMLタグで配置されたdivに表示）
; これは別途layerまたはdiv領域で用意されている前提

[iscript]
f.itemMaster = {
sword: {
outline: "A sword with a sharp blade",
detail: "A weapon with high attack power, suitable for close combat. Can be upgraded at the blacksmith."
},
shield: {
outline: "A sturdy defensive shield",
detail: "Has high defense and can block enemy attacks. Comes with special effects."
},
potion: {
outline: "Medicine that restores health",
detail: "Restores 50 HP upon use. Can be used during battle."
}
};

f.item = "sword"; // 初期表示用

$(".glink_blur").on("mouseenter", function(){
Object.keys(f.itemMaster).forEach(val => {
if($(this).hasClass(val)){
$(".item_detail_1").text(f.itemMaster[val].outline)
$(".item_detail_2").text(f.itemMaster[val].detail)
}
})
})
$(".glink_blur").on("mouseleave", function(){
if(tf.item){
$(".item_detail_1").text(f.itemMaster[tf.item].outline)
$(".item_detail_2").text(f.itemMaster[tf.item].detail)
}else{
$(".item_detail_1").text("")
$(".item_detail_2").text("")
}
})
[endscript]
[_tb_end_tyrano_code]

[s  ]
[tb_start_tyrano_code]
[layopt layer="message0" page="fore" visible=true]
[position layer="message0" left=0 top=300 width=640 height=150]

;text領域（名前付き）
[text name="item_detail_1" layer="message0" x=30 y=310 size=24 color=255,255,255]
[text name="item_detail_2" layer="message0" x=30 y=350 size=20 color=200,200,200]

[glink name="sword" text="Look at the Sword" y=150 color="glink_blur"]
[glink name="shield" text="Look at the Shield" y=250]
[glink name="potion" text="Look at the Potion" y=350]

; 説明表示用の領域（HTMLタグで配置されたdivに表示）
; これは別途layerまたはdiv領域で用意されている前提

[iscript]
f.itemMaster = {
sword: {
outline: "A sword with a sharp blade",
detail: "A weapon with high attack power, suitable for close combat. Can be upgraded at the blacksmith."
},
shield: {
outline: "A sturdy defensive shield",
detail: "Has high defense and can block enemy attacks. Comes with special effects."
},
potion: {
outline: "Medicine that restores health",
detail: "Restores 50 HP upon use. Can be used during battle."
}
};

f.item = "sword"; // 初期表示用

$([name="sword"]).on("mouseenter", function(){
Object.keys(f.itemMaster).forEach(val => {
if($(this).hasClass(val)){
tyrano.plugin.manager.setMessage("item_detail_1", f.itemMaster[val].outline);
tyrano.plugin.manager.setMessage("item_detail_2", f.itemMaster[val].detail);
}
});
});

$(".glink_blur").on("mouseleave", function(){
if(f.item){
tyrano.plugin.manager.setMessage("item_detail_1", f.itemMaster[f.item].outline);
tyrano.plugin.manager.setMessage("item_detail_2", f.itemMaster[f.item].detail);
} else {
tyrano.plugin.manager.setMessage("item_detail_1", "");
tyrano.plugin.manager.setMessage("item_detail_2", "");
}
});

[endscript]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
$(".glink_blur").on("mouseenter", function(){
Object.keys(sf.itemMaster).forEach(val => {
if($(this).hasClass(val)){
tyrano.plugin.manager.setMessage("item_detail_1", sf.itemMaster[val].outline);
tyrano.plugin.manager.setMessage("item_detail_2", sf.itemMaster[val].detail);
}
});
});

$(".glink_blur").on("mouseleave", function(){
if(tf.item){
tyrano.plugin.manager.setMessage("item_detail_1", sf.itemMaster[tf.item].outline);
tyrano.plugin.manager.setMessage("item_detail_2", sf.itemMaster[tf.item].detail);
}else{
tyrano.plugin.manager.setMessage("item_detail_1", "");
tyrano.plugin.manager.setMessage("item_detail_2", "");
}
});
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[iscript ]
$(".glink_blur").on("mouseenter", function(){
Object.keys(sf.itemMaster).forEach(val => {
if($(this).hasClass(val)){
$(".item_detail_1").text(sf.itemMaster[val].outline)
$(".item_detail_2").text(sf.itemMaster[val].detail)
}
})
})
$(".glink_blur").on("mouseleave", function(){
if(tf.item){
$(".item_detail_1").text(sf.itemMaster[tf.item].outline)
$(".item_detail_2").text(sf.itemMaster[tf.item].detail)
}else{
$(".item_detail_1").text("")
$(".item_detail_2").text("")
}
})
[endscript ]

[_tb_end_tyrano_code]

[chara_show  name="さくら01"  time="0"  wait="true"  storage="chara/1/キャラ待機01.png"  width="500"  height="550"  ]
[chara_part  name="さくら01"  time="0"  目="キャラ待機01_01.png"  ]
[l  ]
[chara_part  name="さくら01"  time="0"  目="キャラ待機01_32.png"  wait="true"  ]
[l  ]
[chara_part  name="さくら01"  time="0"  目="キャラ待機01_31.png"  ]
[l  ]
[chara_part  name="さくら01"  time="0"  目="キャラ待機01_30.png"  wait="true"  ]
[s  ]
*__HGOODバー増処理__

[tb_start_tyrano_code]
;変数H_GOOD、H_Badの最高値を２2０以下にする
[if exp="f.H_Good>=220"]
[eval exp="f.H_Good = 220"]
[endif]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;H_Badの最高値を２2０以下にする

[if exp="f.H_Bad>=220"]
[eval exp="f.H_Bad = 220"]
[endif]
[_tb_end_tyrano_code]

*__HBAD増ループ

[tb_start_tyrano_code]
[if exp="f.Eve_Time_Bad < f.H_Bad"]
[anim name="line_bad" width="&f.Eve_Time_Bad" time="0.1"]
[eval exp="f.Eve_Time_Bad += 0.1"]
[endif]

[anim name="line_test" width="&f.Eve_Time_Bad" time="0.1"]


[if exp="f.Eve_Time_Bad >= f.H_Bad"]
[jump target="*__BAD上限"]
[endif]
[_tb_end_tyrano_code]

[jump  storage="Tre_Bar_Test.ks"  target="*__HBAD増ループ"  ]
*__BAD上限

*_HGOOD増ループ

[tb_start_tyrano_code]
[if exp="f.Eve_Time < f.H_Good"]
[anim name="line" width="&f.Eve_Time" time="0.1"]
[eval exp="f.Eve_Time += 0.1"]
[endif]


[if exp="f.Eve_Time >= f.H_Good"]
[jump target="*_上限達成"]
[endif]
[_tb_end_tyrano_code]

[jump  storage="Tre_Bar_Test.ks"  target="*_HGOOD増ループ"  cond=""  ]
*_上限達成

[return  ]
[tb_start_tyrano_code]
[if exp="f.Eve_Time < f.H_Good"]
[anim name="line" width="&f.Eve_Time" time="0.1"]
[eval exp="f.Eve_Time += 0.1"]
[endif]

[if exp="f.Eve_Time_Bad < f.H_Bad"]
[anim name="line_bad" width="&f.Eve_Time_Bad" time="0.1"]
[eval exp="f.Eve_Time_Bad += 0.1"]
[endif]

;[if exp="f.Eve_Time >= f.H_Good && f.Eve_Time_Bad >= f.H_Bad"]
[if exp="f.Eve_Time >= f.H_Good"]
[jump target="*_上限達成"]
[endif]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[wa]
[_tb_end_tyrano_code]

