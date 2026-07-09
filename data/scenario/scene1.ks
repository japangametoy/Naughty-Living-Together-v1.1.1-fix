[_tb_system_call storage=system/_scene1.ks]

[playbgm  volume="30"  time="1000"  loop="true"  storage="PerituneMaterial_RainDrop_loop.mp3"  ]
[bg  time="0"  method="crossfade"  storage="BG_Black.png"  ]
[bg  time="0"  method="slideInLeft"  storage="BG_Black.png"  cross="true"  ]
[tb_start_tyrano_code]
[layopt layer=2 visible=true opacity=255]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;初期化、コンフィグ表示
[clearfix]
[freeimage  layer="2"  ]
[layopt layer="2" visible="true" x=0 y=0]

[button name="role_button" role="save" graphic="button/save.png" enterimg="button/save2.png" x=1180 y=560]
[button name="role_button" role="load" graphic="button/load.png" enterimg="button/load2.png" x=1180 y=590]
[button name="role_button" role="sleepgame" graphic="button/config.png" enterimg="button/config2.png" x=1180 y=620 storage="config.ks"]
[button name="role_button" role="auto" graphic="button/auto.png" enterimg="button/auto2.png" x=1180 y=650]
[button name="role_button" role="title" graphic="button/title.png" enterimg="button/title2.png" x=1180 y=680]
[_tb_end_tyrano_code]

[call  storage="_Array_.ks"  target="*__配列宣言"  ]
[cm  ]
*__ヒロイン名再入力

[tb_show_message_window  ]
[tb_start_text mode=1 ]
Decide the heroine's name[p]
[_tb_end_text]

[tb_start_tyrano_code]
[edit name="f.Imo_Name" initial="Sakura" left=550 top=300 maxchars=5]
[_tb_end_tyrano_code]

[button  storage="scene1.ks"  target="*__ヒロイン名決定"  graphic="決定ボタン.png"  width="100"  height="50"  x="734"  y="412"  _clickable_img=""  name="img_11"  ]
[s  ]
*__ヒロイン名決定

[playse  volume="100"  time="1000"  buf="0"  storage="決定ボタンを押す53.mp3"  ]
[commit  ]
[cm  ]
[tb_start_text mode=1 ]
The heroine's name is [emb exp="f.Imo_Name"], right?[p]
[_tb_end_text]

[tb_start_tyrano_code]
;はい　いいえ選択肢
[glink  color="btn_14_black"  storage="scene1.ks"  size="20"  text="Yes"  target="*__確認OK"  x="550"  y="250"  width="200"   enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3" ]
[glink  color="btn_14_black"  storage="scene1.ks"  size="20"  text="No"  target="*__ヒロイン名再入力"  x="550"  y="350" width="200" enterse="マウスオーバー.mp3" clickse="キャンセル1.mp3" ]
[_tb_end_tyrano_code]

[s  ]
*__確認OK

[cm  ]
[jump  storage="SyokiStatus.ks"  target="*__初期ステ"  ]
*____ゲームスタート

[tb_show_message_window  ]
[tb_start_text mode=1 ]
Skip the prologue (about 3 mins)?[p]
[_tb_end_text]

[tb_hide_message_window  ]
[tb_start_tyrano_code]
;プロローグをみる　選択肢
[glink  color="btn_14_black"  storage="scene1.ks"  size="20"  text="Watch Prologue"  target="*__プロローグ開始"  x="500"  y="250"  width="300"   enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3" ]
[glink  color="btn_14_black"  storage="scene1.ks"  size="20"  text="Skip Prologue"  target="*____プロローグ終了"  x="500"  y="350"  width="300"  enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3"]
[_tb_end_tyrano_code]

[s  ]
*__プロローグ開始

[jump  storage="Prologue.ks"  target="*__プロローグ"  ]
*____プロローグ終了

[tb_show_message_window  ]
[tb_start_text mode=1 ]
View the game's initial explanation?[p]
[_tb_end_text]

[tb_hide_message_window  ]
[tb_start_tyrano_code]
;初期説明をみる　選択肢
[glink  color="btn_14_black"  storage="scene1.ks"  size="20"  text="View Explanation"  target="*__チュートリアル"  x="500"  y="250"  width="300"  enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3"]
[glink  color="btn_14_black"  storage="scene1.ks"  size="20"  text="Skip"  target="*__週末"  x="500"  y="350"  width="300"  enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3"]
[_tb_end_tyrano_code]

[s  ]
*__チュートリアル

[tb_eval  exp="f.Tutorial_On=1"  name="Tutorial_On"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="Tutorial.ks"  target="*__チュートリアル開始"  ]
*__週末

[stopbgm  time="1000"  ]
[tb_eval  exp="f.Sys_Syume+=1"  name="Sys_Syume"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="スズメが鳴く朝02.mp3"  ]
[mask  time="2000"  effect="fadeIn"  color="0x000000"  graphic="時間経過カット01_3.png"  storage=""  ]
[jump  storage="Tre_Select.ks"  target="*__トレーニング"  ]
*__トレーニング終了

[intrandom_ko10panda  max="10"  count="1"  show_result="false"  show_style="style_a"  show_detail="false"  detail_length="0"  show_log="log_4"  var_name="tf.rand"  ]
[tb_start_tyrano_code]
;金曜日　確率３０％でジャンプ
[jump storage="__Main_friday.ks" target="*__金曜日スタート" cond ="tf.rand <= 3 && f.Sys_Syume >= 5"]
[_tb_end_tyrano_code]

*__金曜日終了

[tb_eval  exp="f.Sys_Youbi=5"  name="Sys_Youbi"  cmd="="  op="t"  val="5"  val_2="undefined"  ]
*__土日開始

[jump  storage="__Main_Kyuuka.ks"  target="*__メイン休暇"  ]
*___メイン休暇終了

[tb_eval  exp="f.Sys_Youbi+=1"  name="Sys_Youbi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="scene1.ks"  target="*__土日開始"  cond="f.Sys_Youbi<7"  ]
[tb_eval  exp="f.Sys_Youbi=0"  name="Sys_Youbi"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[mask_off  time="500"  effect="fadeOut"  ]
[tb_start_tyrano_code]
;4週目判定
[if exp="f.Sys_Syume%4 == 0"]
[if exp="f.Sta_Suki < 10"]
[jump target=*__好感度低いEND]
[endif]
[jump storage="Kyuryou_Syori.ks" target="*__給料処理"]
[endif]

[_tb_end_tyrano_code]

*___週末処理後

[tb_start_tyrano_code]
;体験版用ジャンプ　変数フラグと11週　変数は休暇のトップにあり
[jump storage="Taikenban.ks" target="*__体験版" cond="f.Sys_Syume > 11 && sf.Taikenban == 1"]
[_tb_end_tyrano_code]

[jump  storage="scene1.ks"  target="*__疑惑100"  cond="f.Sys_Giwaku>99"  ]
[jump  storage="scene1.ks"  target="*__妊娠発覚"  cond="f.H_Ninsin_On>0"  ]
[tb_start_tyrano_code]
;ファン１００万人　ベストエンド　クリアフラグ条件つき
[jump target="*__ファン１００万人" cond="f.Fan >= 1000000 && f.BestEnd_Endless_Flag == 0"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;ピアスネックレス処理
[jump  storage="_Pias.ks"  target="*__清純ピアス処理"  cond="f.my_Item[17].my_kazu > 0 && f.Sex_Count[0].bestcount ==0"  ]

*__ピアス戻り先

[jump  storage="_Pias.ks"  target="*__輝ネックレス処理" cond="f.my_Item[18].my_kazu > 0 && f.Sex_Count[0].bestcount ==0" ]

*__ネックレス戻り先

[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;疑惑の風化
[call  storage="_Pias.ks"  target="*__疑惑の風化" cond="f.Sys_Giwaku > 0"]
[_tb_end_tyrano_code]

[jump  storage="scene1.ks"  target="*__週末"  cond="f.Sys_Syume<100"  ]
[jump  storage="scene1.ks"  target="*__週末"  cond="f.BestEnd_Endless_Flag>0"  ]
*__ED1卒業

[mask  time="500"  effect="fadeIn"  color="0x000000"  ]
[call  storage="Main_Sta.ks"  target="*__メインステ表示"  ]
[bg  time="0"  method="crossfade"  storage="玄関02.png"  ]
[mask_off  time="500"  effect="fadeOut"  ]
[chara_show  name="さくら_玄関"  time="1000"  wait="true"  storage="chara/18/玄関送り01.png"  width="560"  height="670"  left="360"  top="50"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
Today is [emb exp="f.Imo_Name"]'s graduation ceremony[p]
#&f.Oni_Name3
Congratulations on graduating.[p]
#&f.Imo_Name
[emb exp="f.Oni_Name3"], thank you for everything up until now[p]
#
・・・[p]
[emb exp="f.Imo_Name"] is set to live with her manager starting next week[p]
It's to focus more on her entertainment career[p]
I realized during our time living together that [emb exp="f.Imo_Name"]'s talent is the real deal[p]
The fact that she hasn't made her break yet・・・might be my fault[p]
I must have been holding [emb exp="f.Imo_Name"] back[p]
#&f.Imo_Name
Well then, I'm off[p]
#&f.Oni_Name3
Yeah, enjoy your graduation ceremony[p]
#&f.Imo_Name
Okay[p]
See you, [emb exp="f.Oni_Name3"][p]
#
[_tb_end_text]

[chara_hide_all  time="1000"  wait="true"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="ドアを閉める3.mp3"  ]
[wait  time="1000"  ]
[tb_start_text mode=1 ]
#
It was fun・・・[p]
From now on, she walks a different path in life[p]
・・・Feeling a sense of regret over such an ending, I prepared for [emb exp="f.Imo_Name"]'s move[p]
END 1 Graduation[p]
[_tb_end_text]

[tb_hide_message_window  ]
[l  ]
[tb_start_tyrano_code]
[freeimage layer=2]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;タイトルリロード 　タイトルへ戻る
[iscript]
location.href="./index.html";
[endscript]
[_tb_end_tyrano_code]

[s  ]
*__好感度低いEND

[mask  time="500"  effect="fadeIn"  color="0x000000"  ]
[chara_hide_all  time="1000"  wait="true"  ]
[tb_image_hide  time="1000"  ]
[call  storage="Main_Sta.ks"  target="*__メインステ表示"  ]
[bg  time="0"  method="crossfade"  storage="玄関01.png"  ]
[mask_off  time="500"  effect="fadeOut"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#
Today is the day [emb exp="f.Imo_Name"] moves out[p]
[_tb_end_text]

[bg  time="1000"  method="crossfade"  storage="玄関02.png"  ]
[chara_show  name="さくら_玄関"  time="1000"  wait="true"  storage="chara/18/玄関送り11.png"  width="560"  height="670"  left="360"  top="50"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
[emb exp="f.Oni_Name3"], thank you for everything[p]

#&f.Oni_Name3
Yeah, are you okay now?[p]

#&f.Imo_Name
Yeah, until things settle down, I'll be living with the manager at a new place in Tokyo[p]

#&f.Oni_Name3
Ah, that female manager[p]

#&f.Imo_Name
Yeah[p]
I'm going to work hard to become an amazing idol, so watch me![p]

#&f.Oni_Name3
Yeah, if it's you, [emb exp="f.Imo_Name"], you can do it[p]
#
[_tb_end_text]

[chara_hide_all  time="500"  wait="true"  ]
[bg  time="500"  method="crossfade"  storage="玄関01.png"  ]
[tb_start_text mode=1 ]
#
・・・[p]
・・・And so, our short life together came to an end[p]

END 2 End of Cohabitation[p]

[_tb_end_text]

[tb_hide_message_window  ]
[l  ]
[tb_start_tyrano_code]
[freeimage layer=2]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;タイトルリロード 　タイトルへ戻る
[iscript]
location.href="./index.html";
[endscript]

[_tb_end_tyrano_code]

[s  ]
*__ファン１００万人

[mask  time="500"  effect="fadeIn"  color="0x000000"  ]
[tb_start_tyrano_code]
[jump storage="Pureend.ks" target="*__Pureend" cond="f.Sex_Count[0].bestcount == 0" ]
[_tb_end_tyrano_code]

[jump  storage="Bestend.ks"  target="*__BestEnd"  ]
[s  ]
*__妊娠発覚

[mask  time="500"  effect="fadeIn"  color="0x000000"  ]
[chara_hide_all  time="0"  wait="true"  ]
[tb_image_hide  time="1000"  ]
[bg  time="0"  method="crossfade"  storage="BG00.png"  ]
[call  storage="Main_Sta.ks"  target="*__メインステ表示"  ]
[mask_off  time="500"  effect="fadeOut"  ]
[chara_show  name="さくら01_1"  time="1000"  wait="true"  storage="chara/15/キャラ待機16.png"  width="500"  height="560"  left="750"  top="170"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#
I got her pregnant・・・[p]
#&f.Imo_Name
・・・[emb exp="f.Oni_Name3"][p]
・・・[p]
・・・I want to have the baby・・・[p]
#&f.Oni_Name3
Eh!?[p]
・・・[p]
・・・I understand[p]
#

[_tb_end_text]

[chara_hide  name="さくら01_1"  time="0"  wait="false"  pos_mode="false"  ]
[chara_show  name="さくら01"  time="0"  wait="true"  storage="chara/1/キャラ待機01.png"  width="500"  height="550"  left="750"  top="170"  reflect="false"  ]
[chara_part  name="さくら01"  time="0"  目="キャラ待機01_23.png"  wait="true"  ]
[wait  time="500"  ]
[tb_start_text mode=1 ]
#&f.Oni_Name3
Leave it to me[p]
I'll take full responsibility[p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_33.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
・・・[emb exp="f.Oni_Name3"][p]
・・・Yeah[p]
#
[_tb_end_text]

[chara_hide_all  time="500"  wait="true"  ]
[bg  time="500"  method="crossfade"  storage="BG_Black.png"  ]
[tb_start_text mode=1 ]
#
Several months passed since then[p]
I was yelled at from all directions and busy with apologies[p]
[emb exp="f.Imo_Name"] was fired from the agency, and her path as an idol was closed off[p]
For some reason, [emb exp="f.Imo_Name"] apologized to me, looking guilty[p]
—And then, several more months later—[p]
[_tb_end_text]

[tb_hide_message_window  ]
[bg  time="1000"  method="crossfade"  storage="BG01.png"  ]
[chara_show  name="さくら妊娠"  time="1000"  wait="true"  storage="chara/36/BADEND01.png"  width="500"  height="550"  left="750"  top="170"  reflect="false"  ]
[wait  time="1000"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
[emb exp="f.Oni_Name3"], I don't regret this[p]
#
There stood my beautiful wife, her belly swollen[p]
She cradled the belly carrying my child with care[p]
#&f.Imo_Name
No, I'm actually happy[p]
Hehe, I love you, [emb exp="f.Oni_Name3"][heart][p]
#&f.Oni_Name3
Yeah, I love you too, [emb exp="f.Imo_Name"][p]
#
・・・[p]
・・・This is a form of happiness too[p]
END 3 Pregnancy Marriage[p]

[_tb_end_text]

[tb_hide_message_window  ]
[l  ]
[tb_start_tyrano_code]
[freeimage layer=2]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;タイトルリロード 　タイトルへ戻る
[iscript]
location.href="./index.html";
[endscript]

[_tb_end_tyrano_code]

[s  ]
*__疑惑100

[mask  time="500"  effect="fadeIn"  color="0x000000"  ]
[tb_image_hide  time="1000"  ]
[bg  time="0"  method="crossfade"  storage="BG_Black.png"  ]
[mask_off  time="500"  effect="fadeOut"  ]
[tb_show_message_window  ]
[cm  ]
[tb_start_text mode=1 ]
The next day, a weekly magazine ran a scoop that [emb exp="f.Imo_Name"] was living with a man[p]
The agency was flooded with complaint calls, and social media was abuzz with the topic[p]
Since [emb exp="f.Imo_Name"] was put on house arrest, she went back to her parents' home for now[p]
I・・・what have I done[p]
Feeling responsible too late, I decided to vanish from [emb exp="f.Imo_Name"]'s life[p]
I sent just 'I'm sorry' to [emb exp="f.Imo_Name"] on my phone, changed my contact info and address, and went on to live quietly[p]

END 4 Collapse of a Dream[p]
[_tb_end_text]

[tb_hide_message_window  ]
[l  ]
[tb_start_tyrano_code]
[freeimage layer=2]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;タイトルリロード 　タイトルへ戻る
[iscript]
location.href="./index.html";
[endscript]

[_tb_end_tyrano_code]

[s  ]
