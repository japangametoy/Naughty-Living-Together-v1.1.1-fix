[_tb_system_call storage=system/_preview.ks ]

[mask time=10]
[mask_off time=10]
[tb_start_tyrano_code]
[layopt layer=1 visible=true opacity=255]
[layopt layer=2 visible=true opacity=255]

[_tb_end_tyrano_code]

[tb_eval  exp="f.Oni_Ero=1"  name="Oni_Ero"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.Sta_Risei=29"  name="Sta_Risei"  cmd="="  op="t"  val="29"  val_2="undefined"  ]
[call  storage="_Array_.ks"  target="*__配列宣言"  ]
[tb_start_tyrano_code]
;開発度初期値
[eval exp="f.Kaihatu[1].count = 10"]
[eval exp="f.Kaihatu[3].count = 10"]
[_tb_end_tyrano_code]

*__H_Night_Kijoui

[mask  time="0"  effect="fadeIn"  color="0x000000"  ]
[call  storage="_Array_Kaihatu.ks"  target="*__開発配列初期化"  ]
[tb_start_tyrano_code]
;ステ表示初期化
[clearfix]
[freeimage  layer="2"  ]
[_tb_end_tyrano_code]

[chara_hide_all  time="0"  wait="true"  ]
[tb_image_hide  time="0"  ]
[bg  time="0"  method="crossfade"  storage="BG_Black.png"  ]
[call  storage="Main_Sta.ks"  target="*__Hメインステ表示"  ]
[call  storage="__Main_Night_Kijoui_Shori.ks"  target="*__Backアイコン表示"  ]
[playse  volume="50"  time="1000"  buf="0"  storage="えっち系/フェラ音02.mp3"  ]
[mask_off  time="500"  effect="fadeOut"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
ーちゅぴっちゅぼっ[p]
ーくぷっ　くぽっ[p]
#&f.Oni_Name3
うっ[p]
#
ーちゅぴっ・・・ちゅぼっ・・・[p]
#
股間の妙な感触で目が覚める[p]
[_tb_end_text]

[bg  time="0"  method="crossfade"  storage="夜オナ.png"  cross="true"  ]
[tb_hide_message_window  ]
[chara_show  name="H_騎乗位"  time="1000"  wait="true"  storage="chara/13/夜フェラ01.png"  width="760"  height="660"  left="160"  top="60"  ]
[wait  time="800"  ]
[playbgm  volume="50"  time="1000"  loop="true"  storage="PerituneMaterial_RainDrop_loop.mp3"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="えっち系/フェラ音02.mp3"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
ーくぷ・・くぼっ・・[p]
[emb exp="f.Imo_Name"]！？[p]
見ると[emb exp="f.Imo_Name"]が俺の布団に来て、ちんぽをしゃぶっている[p]
#&f.Imo_Name
ん・・じゅぶ・・・じゅぼっ・・・[p]
んっ[p]
[emb exp="f.Oni_Name3"]・・・[p]
何も言わないで・・・そのまま・・・お願い・・・[p]
#
一人でオナニーすることに満足できなくなったのだろうか[p]
しゃぶりながら、オナニーをしている[p]
#

[_tb_end_text]

[chara_mod  name="H_騎乗位"  time="0"  cross="false"  storage="chara/13/夜フェラ02.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
んふっ・・・[p]
じゅぶ・・・じゅぼっ・・・[p]
ずびゅぉっ・・・ぐびゅぉ・・・[p]
#
相変わらず[emb exp="f.Imo_Name"]のフェラのテクニックは凄まじい[p]
あっという間に射精しそうになる[p]
俺は・・・[p]

[_tb_end_text]

[tb_hide_message_window  ]
[font  size="14"  color="0x000000"  face="JKG-M_3"  ]
[tb_start_tyrano_code]
;右側の選択肢　fix仕様なので注意
[glink  color="btn_05_black"  size="20" storage="__Main_Night_Kijoui_H.ks" target="*__口内射精"  text="射精する"  x="1030"  y="100" fix="" width=200 enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3"]
[glink  color="btn_05_black"  size="20" storage="__Main_Night_Kijoui_H.ks" target="*__えっちする"  text="えっちする"  x="1030"  y="160" fix="" width=200 enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3"]
[_tb_end_tyrano_code]

[resetfont  ]
[s  ]
*__口内射精

[jump  storage="__Main_Night_Kijoui_H.ks"  target="*__射精のみ2回目"  cond="f.H_Onani_Yoru_Flag>0"  ]
[tb_start_tyrano_code]
[clearfix]
[_tb_end_tyrano_code]

[tb_hide_message_window  ]
[chara_mod  name="H_騎乗位"  time="0"  cross="false"  storage="chara/13/夜フェラ03.png"  ]
[wait  time="1000"  ]
[tb_show_message_window  ]
[playse  volume="100"  time="1000"  buf="0"  storage="えっち系/射精音01.mp3"  ]
[tb_start_text mode=1 ]
ーどびゅっ・・・どびゅっ[p]
ごぷっ・・・ごぽっ[p]
[_tb_end_text]

[stopse  time="1000"  buf="0"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
んんっ・・・んん！！[p]
・・・ん・・・じゅぶ[p]
・・・ごくン[p]
んん゛！！[p]
んああああっ！！！[p]
あっ[p]
#
[_tb_end_text]

[chara_mod  name="H_騎乗位"  time="0"  cross="false"  storage="chara/13/夜フェラ04.png"  ]
[tb_start_text mode=1 ]
・・・はぁ・・・はぁ[p]
#
どうやら、俺の精子を飲むと同時に自分もイッたらしい[p]

[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="えっち系/フェラ音02.mp3"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
んちゅ・・・んちゅ[p]
#
精子を出した後の亀頭を綺麗に舐めてくれる[p]
#&f.Imo_Name
んっ[p]
ちゅっ[p]
#
[_tb_end_text]

[stopse  time="1000"  buf="0"  ]
[chara_hide_all  time="300"  wait="false"  ]
[bg  time="1000"  method="crossfade"  storage="BG_Black.png"  ]
[tb_start_text mode=1 ]
#
俺に抱きつきながら腕枕をせがむ[p]
#&f.Imo_Name
・・・えへへ[p]
一緒にイっちゃったね[p]
#
俺はリクエストに応えて腕枕をしながら、[emb exp="f.Imo_Name"]を抱き寄せる[p]
[_tb_end_text]

[bg  time="1000"  method="crossfade"  storage="事後04_2.png"  ]
[tb_start_text mode=1 ]
#&f.Oni_Name3
[emb exp="f.Imo_Name"]、フェラチオ上手くなったな[p]
#&f.Imo_Name
本当？[p]
ふふっ・・・嬉しい[p]
[emb exp="f.Oni_Name3"]の喜ぶ顔が好きで色々試してるの[p]
#
とんでもないテクニシャンが誕生してしまったもんだ[p]
#&f.Imo_Name
[emb exp="f.Oni_Name3"]の悦ぶ顔を見ると、私もキュンキュンしてすぐイッちゃうの[p]
・・・ごめんね、夜起こして[p]
#
[emb exp="f.Imo_Name"]にも欲求不満な夜はあるだろう[p]
面と向かってえっちしたいとは言えないシャイな性格が、こんな形で発散することになったのかもしれない[p]
#&f.Oni_Name3
お安い御用さ、[emb exp="f.Imo_Name"]とのえっちはいつでも大歓迎さ[p]
#&f.Imo_Name
・・・う、うん[p]
あらためて言われると恥ずかしいね[p]
・・・えへへ[p]
#
[_tb_end_text]

[bg  time="500"  method="crossfade"  storage="事後04_1.png"  ]
[tb_start_text mode=1 ]
#
照れ笑いしながら、俺の胸に顔をうずめる[p]
[emb exp="f.Imo_Name"]の吐息が俺の胸にかかり、少しくすぐったい[p]
#&f.Imo_Name
ねぇ・・・このまま一緒に寝てもいい？[p]
#&f.Oni_Name3
ああ、いいよ[p]
そういうと、[emb exp="f.Imo_Name"]の頭を撫でてやる[p]
#&f.Imo_Name
えへ[p]
えへへ・・・[p]
おやすみ・・・[emb exp="f.Oni_Name3"][p]
#&f.Oni_Name3
ああ・・・おやすみ[p]
#&f.Imo_Name
・・・[p]
#
俺は腕の中の[emb exp="f.Imo_Name"]が寝るまで、頭を優しく撫で続けるのだった[p]
[_tb_end_text]

[tb_eval  exp="f.H_Onani_Yoru_Flag=1"  name="H_Onani_Yoru_Flag"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="__Main_Night_Kijoui_H.ks"  target="*__オナニーのみ処理後"  ]
*__射精のみ2回目

[tb_hide_message_window  ]
[tb_start_tyrano_code]
[clearfix]
[_tb_end_tyrano_code]

[chara_mod  name="H_騎乗位"  time="600"  cross="false"  storage="chara/13/夜フェラ03.png"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="えっち系/射精音01.mp3"  ]
[wait  time="1000"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
俺は[emb exp="f.Imo_Name"]の好きにさせる[p]
ーびゅくっびゅくっ！！[p]
#&f.Imo_Name
ああああっ！！！[p]
#
[_tb_end_text]

[stopse  time="1000"  buf="0"  ]
[tb_start_text mode=1 ]
#
いつもどおり同時に果てて、密着しながら朝まで眠るのだった[p]
[_tb_end_text]

*__オナニーのみ処理後

[chara_hide_all  time="1000"  wait="true"  ]
[tb_hide_message_window  ]
[tb_start_tyrano_code]
[clearstack]
[wait_cancel]
[clearfix]
[_tb_end_tyrano_code]

[call  storage="Main_Sta.ks"  target="*__メインステ表示"  ]
[tb_eval  exp="f.Tre_Up=100"  name="Tre_Up"  cmd="="  op="t"  val="100"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__性欲DOWN"  ]
[tb_eval  exp="f.Sys_Seiryoku-=1"  name="Sys_Seiryoku"  cmd="-="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="Main_Sta.ks"  target="*__メインステ表示"  ]
[tb_start_tyrano_code]
;回数カウント
[eval exp="f.Kaihatu_Count[0].kazu += 1"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;絶頂回数プラスカウント
[eval exp="f.Sex_Count[5].count += 1"]
[_tb_end_tyrano_code]

[call  storage="H_Kaihatu_Upshori.ks"  target="*__開発アップ処理"  ]
[call  storage="_Array_Kaihatu.ks"  target="*__開発配列初期化"  ]
[tb_eval  exp="f.H_After_CG=3"  name="H_After_CG"  cmd="="  op="t"  val="3"  val_2="undefined"  ]
[jump  storage="__Main_Kyuuka.ks"  target="*__オナニー後"  ]
[camera  time="1000"  zoom="1"  wait="true"  ]
*__えっちする

[tb_replay_start  ]
[tb_start_tyrano_code]
;回想用
[playbgm  volume="50"  time="1000"  loop="true"  storage="PerituneMaterial_RainDrop_loop.mp3" cond="tf._tb_is_replay == true" ]
[_tb_end_tyrano_code]

[mask  time="300"  effect="fadeIn"  color="0x000000"  ]
[tb_start_tyrano_code]
[clearfix]
[_tb_end_tyrano_code]

[chara_hide_all  time="300"  wait="false"  ]
[bg  time="0"  method="crossfade"  storage="スキンシップ02.png"  ]
[call  storage="Main_Sta.ks"  target="*__Hメインステ表示"  ]
[call  storage="__Main_Night_Kijoui_Shori.ks"  target="*__射精感初期表示"  ]
[mask_off  time="300"  effect="fadeOut"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="えっち系/衣擦れ3.mp3"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
そのまま[emb exp="f.Imo_Name"]を抱き寄せる[p]
#&f.Imo_Name
あっ[p]
#
[_tb_end_text]

[tb_hide_message_window  ]
[tb_start_tyrano_code]
;挿入登場　断面図分岐
[chara_show  name="H_騎乗位"  time="0"  wait="true"  storage="chara/13/騎乗位挿入01.png"  width="760"  height="660"  left="160"  top="60" cond="f.H_Danmen_Flag == 0" ]
[chara_show  name="H_騎乗位"  time="0"  wait="true"  storage="chara/13/騎乗位挿入11.png"  width="760"  height="660"  left="160"  top="60" cond="f.H_Danmen_Flag == 1" ]
[_tb_end_tyrano_code]

[playse  volume="100"  time="1000"  buf="0"  storage="えっち系/挿入音01.mp3"  ]
[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/絶頂声のみ01.mp3"  ]
[wait  time="2000"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
ああ！！[p]
#
騎乗位に近い恰好で抱き寄せながら挿入する[p]
[_tb_end_text]

[stopse  time="1000"  buf="0"  ]
[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/02喘ぎ声(前)02.mp3"  loop="true"  ]
[tb_start_text mode=1 ]
#&f.Oni_Name3
ほら、さっきまでお前がしゃぶっていたモノがお前の中に挿入ってるよ[p]
#&f.Imo_Name
あああっ[heart][p]
熱い・・・お腹が熱いよ[emb exp="f.Oni_Name3"]・・・[p]
#&f.Oni_Name3
一人でオナニーで性欲発散させようなんて、いけない子だね[p]
#&f.Imo_Name
[emb exp="f.Oni_Name3"]・・・[p]
ご、ごめんなさい[p]
#&f.Oni_Name3
なんでオナニーなんかしてるんだい？[p]
#&f.Imo_Name
それは・・・[p]
うぅ・・・[p]
#
[emb exp="f.Imo_Name"]は恥ずかしいからか、口ごもっている[p]
聞いても教えてくれなさそうだ[p]
ぐりぐりと膣の中の竿を動かす[p]
#&f.Imo_Name
んっ[heart][p]
#&f.Oni_Name3
自分で腰を動かしてごらん[p]
#&f.Imo_Name
えっ・・・[p]
#&f.Oni_Name3
俺の亀頭を[emb exp="f.Imo_Name"]の気持ちいい所にあてるんだよ[p]
#&f.Imo_Name
う、うん・・・[p]
やってみる[p]
#
俺はオナニーしていた理由を、熱くタギった[emb exp="f.Imo_Name"]のまんこに聞いてみることにする[p]
#


[_tb_end_text]

[tb_hide_message_window  ]
[jump  storage="__Main_Night_Kijoui_H.ks"  target="*__選択開始"  ]
*__断面図飛び先

[tb_start_tyrano_code]
[clearstack]
[wait_cancel]
[_tb_end_tyrano_code]

[call  storage="__Main_Night_Kijoui_Shori.ks"  target="*__動き速さ"  ]
[jump  storage="__Main_Night_Kijoui_H.ks"  target="*__動く100"  cond="f.H_Syaseikan>100"  ]
[jump  storage="__Main_Night_Kijoui_H.ks"  target="*__動く70"  cond="f.H_Syaseikan>70"  ]
[jump  storage="__Main_Night_Kijoui_H.ks"  target="*__動く30"  cond="f.H_Syaseikan>30"  ]
[jump  storage="__Main_Night_Kijoui_H.ks"  target="*__動く"  cond="f.H_Syaseikan>0"  ]
*__選択開始

[call  storage="__Main_Night_Kijoui_H.ks"  target="*__右選択肢"  ]
[s  ]
*__動く

[tb_start_tyrano_code]
[clearstack]
[wait_cancel]
[_tb_end_tyrano_code]

[call  storage="__Main_Night_Kijoui_Shori.ks"  target="*__動き速さ"  ]
[call  storage="__Main_Night_Kijoui_H.ks"  target="*__右選択肢"  ]
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

[jump  storage="__Main_Night_Kijoui_H.ks"  target="*__射精感UP30まで"  cond="f.H_Syaseikan<30"  ]
[jump  storage="__Main_Night_Kijoui_H.ks"  target="*__30"  ]
[s  ]
*__30

[jump  storage="__Main_Night_Kijoui_H.ks"  target="*__動く"  cond="f.H_Syaseikan<30"  ]
[tb_start_tyrano_code]
[clearfix]
[clearstack]
[_tb_end_tyrano_code]

[call  storage="__Main_Night_Kijoui_Shori.ks"  target="*__Backアイコン表示"  ]
[jump  storage="__Main_Night_Kijoui_H.ks"  target="*__動く30"  cond="f.H_Syaseikan>30"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
あっ！！あああ！！[p]
気持ちいいっ！！[p]
あん！[p]
#
抱き合ったまま動いているため、俺の胸に[emb exp="f.Imo_Name"]の柔らかいおっぱいがむにゅむにゅと押し付けられる[p]
互いの乳首が擦れて刺激しあう[p]
#&f.Imo_Name
あっ！！あああ！！[p]
#
最初は恐る恐る動かしていた[emb exp="f.Imo_Name"]の腰つきは、今や自分の快楽のために激しく動いている[p]
ーぱんっ[heart]ぱんっ[heart]ぱんっ[heart][p]
#&f.Imo_Name
あっ[heart]・・・ん・・・[p]
ああっ[heart][p]
#&f.Oni_Name3
駄目だろ、オナニーじゃなくて、ちゃんと俺のおちんちんでイかないと[p]
#&f.Imo_Name
あぁっ・・・う、うん・・あっ[heart][p]
あんっ[heart]・・・ごめんね[emb exp="f.Oni_Name3"][p]
#
ーぱんっ[heart]ぱんっ[heart]ぱんっ[heart][p]
#&f.Imo_Name
あっ[heart]・・・ああっ[heart][heart][p]
#&f.Oni_Name3
ほら、どうしてオナニーしてたのか言ってごらん[p]
#&f.Imo_Name
あっ[heart]・・あっ[heart]・・・[p]
お、[emb exp="f.Oni_Name3"]に・・・え、えっちしたいって・・・[p]
あっ[heart]・・は、恥ずかしくて・・・[p]
あっ[heart]・・言えない・・・あんっ[heart][p]
#
ーぱんっ[heart]ぱんっ[heart]ぱんっ[heart][p]
#&f.Oni_Name3
言えたじゃないか[p]
[emb exp="f.Imo_Name"]は可愛いな[p]
#&f.Imo_Name
い・・・いやっ・・・あっ[heart][p]
恥ずかし・・・あん[heart][p]
#
悶える姿に満足してさらに腰を突き出すことにする[p]

[_tb_end_text]

[tb_hide_message_window  ]
*__動く30

[tb_start_tyrano_code]
[clearstack]
[wait_cancel]
[_tb_end_tyrano_code]

[call  storage="__Main_Night_Kijoui_H.ks"  target="*__右選択肢"  ]
[call  storage="__Main_Night_Kijoui_Shori.ks"  target="*__動き速さ"  ]
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

[jump  storage="__Main_Night_Kijoui_H.ks"  target="*__射精感UP70まで"  cond="f.H_Syaseikan<70"  ]
[jump  storage="__Main_Night_Kijoui_H.ks"  target="*__70"  ]
[s  ]
*__70

[jump  storage="__Main_Night_Kijoui_H.ks"  target="*__動く30"  cond="f.H_Syaseikan<30"  ]
[tb_start_tyrano_code]
[clearfix]
[clearstack]
[_tb_end_tyrano_code]

[call  storage="__Main_Night_Kijoui_Shori.ks"  target="*__Backアイコン表示"  ]
[jump  storage="__Main_Night_Kijoui_H.ks"  target="*__動く70"  cond="f.H_Syaseikan>70"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
[emb exp="f.Imo_Name"]の体が動かないように、俺の両手でがっしりと抱きつき押さえつける[p]
[emb exp="f.Imo_Name"]の腰がクイを打つたびに、子宮にばちゅん[heart]とあたる衝撃が亀頭にダイレクトに伝わる[p]
ーばちゅんっ！・・・ばちゅんっ！！[p]
#&f.Imo_Name
あ゛あ゛ぁ[heart]・・・[p]
ぎもち゛ぃぃっ[heart]・・・あ゛っ[heart]・・・あ゛っ[heart][p]
#
ーばちゅんっ！・・・ばちゅんっ！！[p]
い゛ぃぃっ[heart]・・・ぃぃっ[heart][heart][p]
#&f.Imo_Name
お゛っ[heart]・・・お゛ふっ[heart]・・・[p]
あだるっあだるっ[heart]・・・んん゛ッ[heart][heart][heart][p]
#
自分で動かしているからだろう[p]
腰をうねらせ、ピンポイントで亀頭がＧスポットにあたるようにお尻をパンパンと打ち付ける[p]
#&f.Imo_Name
お゛お゛っ[heart]・・・お゛ふっ[heart]・・・[p]
おほっ[heart][heart][heart][p]
いっちゃっ・・・いぐっ[heart]・・・[p]
んぐっっ[heart]！！！[p]
#
[emb exp="f.Imo_Name"]の腰が痙攣する[p]
子宮の入口が、きゅんきゅんと俺の亀頭の先っぽを刺激する[p]
#&f.Imo_Name
あ゛あ゛あ゛あ゛っ[heart][heart][heart][p]
あっ[heart]・・・[p]
#
全身をブルブルと震わせ、エビぞりになる[p]
#&f.Imo_Name
お゛っ[heart]・・・お゛ほっ[heart]・・・[p]
お゛お゛っ[heart][heart][heart]・・・[p]
#
全身痙攣する[emb exp="f.Imo_Name"]をがっしりと抱き、更に奥を攻め続ける[p]

[_tb_end_text]

[tb_hide_message_window  ]
*__動く70

[tb_start_tyrano_code]
[clearstack]
[wait_cancel]
[_tb_end_tyrano_code]

[call  storage="__Main_Night_Kijoui_H.ks"  target="*__右選択肢"  ]
[call  storage="__Main_Night_Kijoui_Shori.ks"  target="*__動き速さ"  ]
*__射精感100まで

[tb_start_tyrano_code]
;射精感
[wait time="500" cond="f.H_Sex_Speed == 2"]
[wait time="300" cond="f.H_Sex_Speed == 3"]
[wait time="100" cond="f.H_Sex_Speed == 4"]

[eval exp="f.H_Syaseikan += 1"]
[eval exp="f.射精度 = f.H_Syaseikan + '％' "]

[ptext layer=2 text="&f.射精度" x=1060 y=650 size=40 bold="bold" edge="0x000000" width = 100 align = "right" overwrite = "true" name="Syaseikan"]

[_tb_end_tyrano_code]

[jump  storage="__Main_Night_Kijoui_H.ks"  target="*__射精感100まで"  cond="f.H_Syaseikan<100"  ]
[jump  storage="__Main_Night_Kijoui_H.ks"  target="*__100"  ]
[s  ]
*__100

[jump  storage="__Main_Night_Kijoui_H.ks"  target="*__動く70"  cond="f.H_Syaseikan<70"  ]
[tb_start_tyrano_code]
[clearfix]
[clearstack]
[_tb_end_tyrano_code]

[call  storage="__Main_Night_Kijoui_Shori.ks"  target="*__Backアイコン表示"  ]
[jump  storage="__Main_Night_Kijoui_H.ks"  target="*__動く100"  cond="f.H_Syaseikan>100"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
ぎもちぃぃっ[heart]・・・あ゛あ゛っ[heart][p]
しゅごぃぃっ[heart][heart][heart][p]
#
俺の我慢も限界が近く、射精しそうになる[p]
俺の長くて太いモノは、根元までギチギチに入り、亀頭は子宮口に強いキスをする[p]
ーばちゅんっ！・・・ばちゅんっ！！[p]
#&f.Imo_Name
おっ[heart]・・・おおっ[heart]・・・[p]
ぎもちぃぃっ[heart]・・・ぎもぢぃぃよぉ゛[heart][heart][heart][p]
#
[emb exp="f.Imo_Name"]は一心不乱に腰を振っている[p]
#&f.Oni_Name3
[emb exp="f.Imo_Name"]、イキそうだ[p]
#
ちんぽを抜くため、[emb exp="f.Imo_Name"]の体を起こそうとする[p]
・・・が、[emb exp="f.Imo_Name"]は俺の体に強く抱きついて体を起こそうとしない[p]
#&f.Imo_Name
いぐっ[heart]・・・いぐいぐっ[heart][heart][p]
#
ーばちゅんっ[heart]！・・・ばちゅんっ[heart]！！[p]
ちんぽを抜こうと離れようとするが、[emb exp="f.Imo_Name"]が俺を抱きしめホールドする[p]
強く抱き着かれた俺は身動きが取れない[p]
[emb exp="f.Imo_Name"]は変わらず腰を打ち付けてくる[p]
俺がピストンを止めても、[emb exp="f.Imo_Name"]は腰を振って俺をイかせようとする[p]
#&f.Imo_Name
お゛お゛っ[heart]・・・お゛っ[heart][heart][p]
イグイグイグっ[heart][heart][heart][p]
#
ーばちゅんっ[heart]！・・・ばちゅんっ[heart]！！[p]
#&f.Oni_Name3
ま、待て[emb exp="f.Imo_Name"]、出そうだっ[p]
・・・まずいっ！！・・・出るっ！！[p]
#
中に出してしまうっ！！[p]

[_tb_end_text]

[tb_hide_message_window  ]
*__射精_処理

*__動く100

[tb_start_tyrano_code]
[clearstack]
[wait_cancel]
[_tb_end_tyrano_code]

[call  storage="__Main_Night_Kijoui_H.ks"  target="*__右選択肢"  ]
[call  storage="__Main_Night_Kijoui_Shori.ks"  target="*__動き速さ"  ]
*__射精感110まで

[tb_start_tyrano_code]
;射精感
[wait time="500" cond="f.H_Sex_Speed == 2"]
[wait time="300" cond="f.H_Sex_Speed == 3"]
[wait time="100" cond="f.H_Sex_Speed == 4"]

[eval exp="f.H_Syaseikan += 1"]
[eval exp="f.射精度 = f.H_Syaseikan + '％' "]

[ptext layer=2 text="&f.射精度" x=1060 y=650 size=40 bold="bold" edge="0x000000" width = 100 align = "right" overwrite = "true" name="Syaseikan"]

[_tb_end_tyrano_code]

[jump  storage="__Main_Night_Kijoui_H.ks"  target="*__射精感110まで"  cond="f.H_Syaseikan<110"  ]
[tb_start_tyrano_code]
[glink  color="btn_05_black"  size="20" storage="__Main_Night_Kijoui_H.ks" target="*__射精中"  text="中に射精する"  x="1030"  y="400" fix="true" width=200 enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3"]
[glink  color="btn_05_black"  size="20" storage="__Main_Night_Kijoui_H.ks" target="*__射精外"  text="外に射精する"  x="1030"  y="460" fix="true" width=200 enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3"]
[_tb_end_tyrano_code]

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

[jump  storage="__Main_Night_Kijoui_H.ks"  target="*__射精感120まで"  cond="f.H_Syaseikan<120"  ]
[jump  storage="__Main_Night_Kijoui_H.ks"  target="*__射精中"  cond="f.H_Syaseikan>119"  ]
[s  ]
*__射精中

[tb_start_tyrano_code]
[clearstack]
[wait_cancel]
[clearfix]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;回想用
[jump target="*__回想用飛び先" cond="tf._tb_is_replay == true"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;中だし回数プラスカウント
[if exp="f.H_Sex_Anal ==0 && f.H_Condom_On ==0"]
[eval exp="f.Sex_Count[3].bestcount += 1"]
[eval exp="f.Sex_Count[4].count += 1"]
[endif]
[_tb_end_tyrano_code]

[call  storage="__Main_Night_Option.ks"  target="*__妊娠判定"  cond=""  ]
*__回想用飛び先

[call  storage="__Main_Night_Option.ks"  target="*__中射精エフェクト"  ]
[stopse  time="1000"  buf="1"  ]
[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/絶頂声のみ01.mp3"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="えっち系/射精音02.mp3"  ]
[tb_start_tyrano_code]
;射精　分岐
[chara_mod  name="H_騎乗位"  time="0"  cross="true"  storage="chara/13/騎乗位射精01.png" && f.H_Danmen_Flag == 0"]
[chara_mod  name="H_騎乗位"  time="0"  cross="true"  storage="chara/13/騎乗位射精11.png" && f.H_Danmen_Flag == 1"]

[_tb_end_tyrano_code]

[wait  time="3000"  ]
[l  ]
[call  storage="__Main_Night_Kijoui_Shori.ks"  target="*__Backアイコン表示"  ]
[tb_show_message_window  ]
[call  storage="__Main_Night_Kijoui_Shori.ks"  target="*__射精感を0に"  ]
[tb_start_text mode=1 ]
どびゅっ[heart]・・・どびゅっ[heart]・・・[p]
びゅくっ[heart]・・ごぷっ[heart]・・・ごぽぉ[heart]・・・[p]
#&f.Imo_Name
ああああっ[heart][heart][heart][heart][heart][p]
あっ[heart][p]
抱きしめられ、ホールドされるがままに、膣に射精してしまう[p]
#&f.Imo_Name
あっ[heart]・・・あっ[heart]・・・あっ[heart][p]
#
膣内のヒダが脈動し、最後の一滴まで絞りとろうと前後に動く[p]
びゅくっ[heart][heart][heart]・・・[p]
#&f.Imo_Name
あん[heart][p]
#
[_tb_end_text]

[stopse  time="1000"  buf="1"  ]
[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/吐息02.mp3"  loop="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
・・・はぁ・・・はぁ[p]
#
お互い、繋がったまま抱きしめ続ける[p]
５分ほど経ったところで、[emb exp="f.Imo_Name"]が顔をあげ、上体を起こす[p]

[_tb_end_text]

[tb_hide_message_window  ]
[tb_start_tyrano_code]
;射精　分岐
[chara_mod  name="H_騎乗位"  time="500"  cross="false"  storage="chara/13/騎乗位03.png" && f.H_Danmen_Flag == 0"]
[chara_mod  name="H_騎乗位"  time="500"  cross="false"  storage="chara/13/騎乗位13.png" && f.H_Danmen_Flag == 1"]

[_tb_end_tyrano_code]

[wait  time="1000"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
どうかな・・・赤ちゃんできちゃうかな？[p]
うふふっ[heart][p]
#
[emb exp="f.Imo_Name"]は小悪魔っぽく笑いながら、俺にキスをする[p]
結合はしたままだ[p]
目の前に巨乳がプルンッと現れたため、両手を伸ばし、たぷたぷと揉みしだき、乳首を弄る[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="えっち系/衣擦れ1.mp3"  ]
[individual_image  layer="1"  zindex="1"  storage="default/正上カット/カット_正上_胸04.png"  width="260"  height="180"  name="乳左"  x="250"  y="140"  _clickable_img=""  time="0"  wait="true"  ]
[individual_image  layer="2"  zindex="1"  storage="default/正上カット/カット_正上_胸03.png"  width="230"  height="180"  name="乳右"  x="780"  y="140"  _clickable_img=""  time="0"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
んっ[heart]・・・あっ[heart]・・・[p]
#&f.Oni_Name3
こらっ・・・わざと抱きついてたな[p]
中出ししちゃったぞ[p]
#&f.Imo_Name
えっへへ、[emb exp="f.Oni_Name3"]の焦った顔が可愛くてつい・・・[p]
#&f.Oni_Name3
全く、いけない子だ[p]
#
目の前の大きなおっぱいをタプタプしながら喋る[p]
お互い汗だくだ[p]
#&f.Imo_Name
うふふ[heart][p]
毎回私に意地悪するんだもん[p]
たまにはいいでしょぉ～♪[p]
[emb exp="f.Oni_Name3"]の焦りかた可愛い[heart]・・・ふふっ[heart][p]
#&f.Oni_Name3
やったな、このやろー！[p]
#
そういって、乳首を揉みしだく[p]
#&f.Imo_Name
・・あんっ[heart][p]
キャー、いやんっ[heart][p]
あはははっ[heart][p]
#
乳首を擦りながら軽くつねる[p]
#&f.Imo_Name
きゃっ[heart][p]
・・あん[heart][p]
も～お返し～！！[p]
#
[emb exp="f.Imo_Name"]は俺の乳首をお返しにコロコロと弄る[p]
思わず体が反応してしまう[p]
#&f.Imo_Name
あははっ[heart][p]
[emb exp="f.Oni_Name3"]体がビクッとした！[p]
#&f.Oni_Name3
負けんぞぉ！[p]
#&f.Imo_Name
いやーっ[heart][p]
#
二人でお互いに乳首を弄りあう変なじゃれあいをしていると[p]
結合された隙間から精子が溢れてくるのを感じた[p]
こぷっっと空気の抜ける音がして、精液が俺の金玉の上を伝う[p]

[_tb_end_text]

[tb_hide_message_window  ]
[tb_start_tyrano_code]
;射精　分岐
[chara_mod  name="H_騎乗位"  time="500"  cross="false"  storage="chara/13/騎乗位04.png" && f.H_Danmen_Flag == 0"]
[chara_mod  name="H_騎乗位"  time="500"  cross="false"  storage="chara/13/騎乗位14.png" && f.H_Danmen_Flag == 1"]

[_tb_end_tyrano_code]

[wait  time="1000"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
んっ[heart]・・・[p]
#
手に埋もれるおっぱいを支えながらたぷたぷと遊んでいると、、俺の息子が元気を取り戻してきたのを感じる[p]
#&f.Imo_Name
あんっ[heart]・・・あはっ[heart][p]
ちょっとずつ大きくなってる[p]
もうこんなに・・・んっ[heart]・・・子宮が押されてる・・・んっ[heart][p]
#&f.Oni_Name3
せっかく中に出したんだ、もう一回くらい中に出しても同じことだろ[p]
[emb exp="f.Imo_Name"]、仕返しの時間だっ[p]
#&f.Imo_Name
あはっ[heart][heart][heart][p]
#
[_tb_end_text]

[delete_individual_image  layer="1"  name="乳左"  time="0"  wait="true"  ]
[delete_individual_image  layer="2"  name="乳右"  time="0"  wait="true"  ]
[playse  volume="100"  time="1000"  buf="1"  storage="ピストン系/風俗ピストン03調整版.mp3"  loop="true"  ]
[playse  volume="100"  time="1000"  buf="3"  loop="true"  storage="喘ぎ声/09喘ぎ声(挿入)04.mp3"  ]
[tb_start_tyrano_code]
;射精　分岐
[chara_mod  name="H_騎乗位"  time="0"  cross="true"  storage="chara/13/騎乗位アニメ03.png" && f.H_Danmen_Flag == 0"]
[chara_mod  name="H_騎乗位"  time="0"  cross="true"  storage="chara/13/騎乗位アニメ14.png" && f.H_Danmen_Flag == 1"]

[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
#&f.Imo_Name
あんっ[heart][p]
#
繋がったまま、再びピストンを開始する[p]
#&f.Imo_Name
あああっ[heart]あっ[heart]あっ[heart]あーーっっ[heart][heart][heart][heart]！！！[p]
#
ーばちゅんっ[heart]！・・・ばちゅんっ[heart]！！[p]
#&f.Imo_Name
ああぁああっ[heart][heart][heart]！！[p]
あはぁ[heart]・・・あぁああっ[heart][heart][heart]！！[p]
#
・・・今日は徹夜かな？[p]
心配しつつも、[emb exp="f.Imo_Name"]とのセックスライフを満喫するのだった[p]

[_tb_end_text]

[tb_hide_message_window  ]
[stopse  time="1000"  buf="1"  ]
[stopse  time="1000"  buf="3"  ]
*__回想用外だし復帰場所

[tb_start_tyrano_code]
;回想用BGM変更
[playbgm volume="20"  time="1000"  loop="true"  storage="PerituneMaterial_Sea_Breeze_loop.mp3" cond="tf._tb_is_replay == true" ]
[_tb_end_tyrano_code]

*__回想解放用

[tb_replay  id="寝込みH"  ]
[jump  storage="_Entrance.ks"  target="*__回想解放用"  cond="sf.Clear_Flag_Kaisou==1"  ]
[tb_start_tyrano_code]
;絶頂回数プラスカウント
[eval exp="f.Sex_Count[1].bestcount += 2"]
[eval exp="f.Sex_Count[3].bestcount += 2"]
[eval exp="f.Sex_Count[4].count += 2"]
[eval exp="f.Sex_Count[5].count += 2"]
[_tb_end_tyrano_code]

[tb_eval  exp="f.H_After_CG=5"  name="H_After_CG"  cmd="="  op="t"  val="5"  val_2="undefined"  ]
[jump  storage="__Main_Night_Kijoui_H.ks"  target="*__射精後処理"  ]
*__射精外

[tb_start_tyrano_code]
[clearstack]
[wait_cancel]
[clearfix]
[_tb_end_tyrano_code]

[call  storage="__Main_Night_Option.ks"  target="*__外射精エフェクト"  ]
[stopse  time="1000"  buf="1"  ]
[chara_mod  name="H_騎乗位"  time="600"  cross="false"  storage="chara/13/騎乗位外だし.png"  ]
[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/絶頂声のみ01.mp3"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="えっち系/射精音02.mp3"  ]
[call  storage="__Main_Night_Kijoui_Shori.ks"  target="*__射精感を0に"  ]
[stopse  time="1000"  buf="3"  ]
[call  storage="__Main_Night_Kijoui_Shori.ks"  target="*__Backアイコン表示"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#
どびゅっ[heart]・・・どびゅっ[heart]・・・[p]
かろうじて手を股間に伸ばし、なんとかちんぽを引き抜く[p]
#&f.Imo_Name
あんっ[heart][p]
#&f.Oni_Name3
あ、あぶねぇ・・・[p]
#&f.Imo_Name
はぁ・・・はぁ・・・[p]
ふふ[heart]、焦った[emb exp="f.Oni_Name3"]の顔可愛い[heart][p]
#
俺に唇が触れる程顔を近づけ、[emb exp="f.Imo_Name"]が妖艶な笑みを浮かべる[p]
#&f.Oni_Name3
まったく、本当に焦ったよ[p]
#&f.Imo_Name
えへへ[heart][p]
#
[emb exp="f.Imo_Name"]はそのまま倒れこみ、俺の体上に体重を乗せ抱きつく[p]
俺は頭を撫でながら、朝まで抱きしめ続けるのだった[p]

[_tb_end_text]

[tb_hide_message_window  ]
[tb_start_tyrano_code]
;回想モード用ジャンプ
[jump target="*__回想用外だし復帰場所" cond="tf._tb_is_replay == true"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;絶頂回数プラスカウント
[eval exp="f.Sex_Count[1].bestcount += 1"]
[eval exp="f.Sex_Count[5].count += 1"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[clearstack]
[wait_cancel]
[clearfix]
[_tb_end_tyrano_code]

[tb_eval  exp="f.H_After_CG=3"  name="H_After_CG"  cmd="="  op="t"  val="3"  val_2="undefined"  ]
*__射精後処理

[chara_hide_all  time="300"  wait="false"  ]
[bg  time="300"  method="crossfade"  storage="BG_Black.png"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#
・・・[p]
・・・[p]
[_tb_end_text]

[tb_hide_message_window  ]
[call  storage="Main_Sta.ks"  target="*__メインステ表示"  ]
[tb_eval  exp="f.Tre_Up=100"  name="Tre_Up"  cmd="="  op="t"  val="100"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__性欲DOWN"  ]
[tb_eval  exp="f.Sys_Seiryoku-=1"  name="Sys_Seiryoku"  cmd="-="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="Main_Sta.ks"  target="*__メインステ表示"  ]
[call  storage="H_Kaihatu_Upshori.ks"  target="*__開発アップ処理"  ]
[call  storage="_Array_Kaihatu.ks"  target="*__開発配列初期化"  ]
[jump  storage="__Main_Kyuuka.ks"  target="*__オナニー後"  ]
*__途中でやめる

[bg  time="300"  method="fadeIn"  storage="BG_Black.png"  ]
[mask  time="0"  effect="fadeIn"  color="0x000000"  ]
[tb_start_tyrano_code]
[clearstack]
[wait_cancel]
[clearfix]
[_tb_end_tyrano_code]

[stopse  time="1000"  buf="1"  ]
[stopse  time="1000"  buf="3"  ]
[chara_hide_all  time="0"  wait="true"  ]
[tb_image_hide  time="0"  ]
[call  storage="Main_Sta.ks"  target="*__メインステ表示"  ]
[mask_off  time="700"  effect="fadeOut"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#
今日はここまででやめておこう[p]
・・・[p]
[_tb_end_text]

[tb_hide_message_window  ]
[tb_eval  exp="f.H_After_CG=3"  name="H_After_CG"  cmd="="  op="t"  val="3"  val_2="undefined"  ]
[tb_eval  exp="f.Tre_Up=100"  name="Tre_Up"  cmd="="  op="t"  val="100"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__性欲DOWN"  ]
[call  storage="Main_Sta.ks"  target="*__メインステ表示"  ]
[call  storage="H_Kaihatu_Upshori.ks"  target="*__開発アップ処理"  ]
[call  storage="_Array_Kaihatu.ks"  target="*__開発配列初期化"  ]
[jump  storage="__Main_Kyuuka.ks"  target="*__オナニー後"  ]
[s  ]
*__右選択肢

[tb_start_tyrano_code]
[clearfix]
[_tb_end_tyrano_code]

[font  size="14"  color="0x000000"  face="JKG-M_3"  ]
[tb_start_tyrano_code]
;右側の選択肢　fix仕様なので注意　射精感により表示分岐
[iscript]
if (f.H_Syaseikan == 0) {
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

[glink  color="btn_05_black"  size="20" storage="__Main_Night_Kijoui_H.ks" target= &f.Target text="ゆっくり動く"  x="1030"  y="100" fix="true" width=200 exp="f.H_Sex_Speed =2" enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3"]
[glink  color="btn_05_black"  size="20" storage="__Main_Night_Kijoui_H.ks" target= &f.Target text="激しく動く"  x="1030"  y="160" fix="true" width=200 exp="f.H_Sex_Speed =3" enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3"]
[glink  color="btn_05_black"  size="20" storage="__Main_Night_Kijoui_H.ks" target= &f.Target text="全力ピストン"  x="1030"  y="220" fix="true" width=200 exp="f.H_Sex_Speed =4" enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3"]
[glink  color="btn_05_black"  size="20" storage="__Main_Night_Kijoui_H.ks" target= &f.Target_Danmen  text="断面図ON"  x="30"  y="100" fix="true" width=200 exp="f.H_Danmen_Flag =1"  cond="f.H_Danmen_Flag == 0" enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3"]
[glink  color="btn_05_black"  size="20" storage="__Main_Night_Kijoui_H.ks" target= &f.Target_Danmen  text="断面図OFF"  x="30"  y="100" fix="true" width=200 exp="f.H_Danmen_Flag =0"  cond="f.H_Danmen_Flag == 1" enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3"]

[_tb_end_tyrano_code]

[resetfont  ]
[call  storage="__Main_Night_Kijoui_Shori.ks"  target="*__Backアイコン表示"  ]
[return  ]
[s  ]
[tb_show_message_window  ]
