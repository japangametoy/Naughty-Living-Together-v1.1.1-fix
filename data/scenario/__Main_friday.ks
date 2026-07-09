[_tb_system_call storage=system/___Main_friday.ks]

[tb_eval  exp="f.Sta_Risei=15"  name="Sta_Risei"  cmd="="  op="t"  val="15"  val_2="undefined"  ]
*__金曜日スタート

[tb_eval  exp="f.Sys_Jikan=2"  name="Sys_Jikan"  cmd="="  op="t"  val="2"  val_2="undefined"  ]
[tb_start_tyrano_code]
;[playse  volume="100"  time="1000"  buf="0"  storage="時計の針2.mp3"  ]
;[mask  time="500"  effect="fadeInUp"  color="0x000000"  graphic="時間経過カット05.png"  ]

[playse  volume="100"  time="2000"  buf="0"  storage="時計の針2.mp3"  ]
[mask  time="500"  effect="fadeInUp"  color="0x000000"  graphic="時間経過カット05.png"  ]
[wa]

[_tb_end_tyrano_code]

[wait  time="1000"  ]
[bg  time="0"  method="crossfade"  storage="BG_Black.png"  ]
[call  storage="Main_Sta.ks"  target="*__メインステ表示"  ]
[playbgm  volume="30"  time="1000"  loop="true"  storage="町の喧騒.mp3"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_tyrano_code]
;DLC用
[jump storage="dlc02.ks" target="*__DLC02" cond="f.DLC_On_Flag ==1"]
[_tb_end_tyrano_code]

*__DLCからの復帰

[tb_show_message_window  ]
[tb_start_text mode=1 ]
#
I ended up working overtime again today and got back late[p]
On weekdays, both [emb exp="f.Imo_Name"] and I get home late, and our schedules are all over the place[p]
Because of that, we often end up eating dinner separately[p]
But the lights are on today[p]
[emb exp="f.Imo_Name"] must have gotten home first[p]
[_tb_end_text]

[stopbgm  time="1000"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="ドアを開ける1.mp3"  ]
[wait  time="1000"  ]
[tb_start_text mode=1 ]
#&f.Oni_Name3
I'm home~[p]
#
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="ドア閉め.mp3"  ]
[wait  time="1000"  ]
[bg  time="1000"  method="crossfade"  storage="玄関02.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Welcome back~[p]
#
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="朝玄関足音.mp3"  ]
[playbgm  volume="50"  time="1000"  loop="true"  storage="Peritune_Hanadoki.mp3"  ]
[chara_show  name="さくら金曜日"  time="1000"  wait="true"  storage="chara/35/金曜日01.png"  width="560"  height="670"  left="360"  top="50"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Good work today[p]
#&f.Oni_Name3
You're home early today[p]
#&f.Imo_Name
Yeah[p]
Hehe, [emb exp="f.Oni_Name3"][p]
Do you want dinner? Or a bath?[p]
#
[_tb_end_text]

[tb_start_tyrano_code]
;ジャンプえっち選択肢　精力22以上　理性15以下
[jump target="*__玄関えっち" cond="f.Sys_Seiryoku >= 2 && f.Sta_Risei <= 15"]
[_tb_end_tyrano_code]

[font  size="18"  color="0x000000"  face="JKG-M_3"  bold="true"  ]
[tb_start_tyrano_code]
;選択肢
[glink  color="btn_05_black"  storage="__Main_friday.ks"  size="25"  x="530"  y="200"  width="250"  height="50"  text="Dinner"  _clickable_img=""  target="*__ごはん" enterse="マウスオーバー.mp3"  clickse="決定ボタンを押す53.mp3" ]
[glink  color="btn_05_black"  storage="__Main_friday.ks"  size="25"  x="530"  y="250"  width="250"  height="50"  text="Bath"  _clickable_img=""  target="*__お風呂" enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3" ]
[glink  color="btn_05_black"  storage="__Main_friday.ks"  size="25"  x="530"  y="300"  width="250"  height="50"  text="A kiss"  _clickable_img=""  target="*__キス" cond="f.Sta_Risei <= 80" enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3" ]
[_tb_end_tyrano_code]

[resetfont  ]
[s  ]
*__玄関えっち

[chara_mod  name="さくら金曜日"  time="600"  cross="false"  storage="chara/35/金曜日04.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
O-or maybe・・・ m-me?[p]
J-just kidding, ehehe[p]
#
[_tb_end_text]

[font  size="18"  color="0x000000"  face="JKG-M_3"  bold="true"  ]
[tb_start_tyrano_code]
;選択肢
[glink  color="btn_05_black"  storage="__Main_friday.ks"  size="25"  x="530"  y="200"  width="250"  height="50"  text="Dinner"  _clickable_img=""  target="*__ごはん" enterse="マウスオーバー.mp3"  clickse="決定ボタンを押す53.mp3" ]
[glink  color="btn_05_black"  storage="__Main_friday.ks"  size="25"  x="530"  y="250"  width="250"  height="50"  text="Bath"  _clickable_img=""  target="*__お風呂" enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3" ]
[glink  color="btn_05_black"  storage="__Main_friday.ks"  size="25"  x="530"  y="300"  width="250"  height="50"  text="A kiss"  _clickable_img=""  target="*__キス" enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3" ]
[glink  color="btn_05_black"  storage="__Main_friday.ks"  size="25"  x="530"  y="350"  width="250"  height="50"  text="Me"  _clickable_img=""  target="*__わたし" enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3" ]

[_tb_end_tyrano_code]

[resetfont  ]
[s  ]
*__キス

[tb_start_text mode=1 ]
#&f.Imo_Name
Hm?[p]
#
[_tb_end_text]

[tb_hide_message_window  ]
[chara_mod  name="さくら金曜日"  time="0"  cross="false"  storage="chara/35/金曜日06.png"  ]
[individual_image  layer="1"  zindex="1"  storage="default/玄関カット/玄関カット04.png"  width="250"  height="200"  name="キス"  x="400"  y="115"  _clickable_img=""  time="600"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="えっち系/キス01.mp3"  ]
[wait  time="2000"  ]
[delete_individual_image  layer="1"  name="キス"  time="600"  wait="true"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Nn・・・[p]
#
[_tb_end_text]

[stopse  time="1000"  buf="0"  ]
[chara_mod  name="さくら金曜日"  time="0"  cross="false"  storage="chara/35/金曜日05.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
・・・[p]
#&f.Oni_Name3
I'm home.[p]
#
[_tb_end_text]

[chara_mod  name="さくら金曜日"  time="0"  cross="false"  storage="chara/35/金曜日05.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Y-yeah・・・[p]
W・・・welcome home.[p]
・・・[p]

[_tb_end_text]

[chara_mod  name="さくら金曜日"  time="0"  cross="false"  storage="chara/35/金曜日04.png"  ]
[tb_start_text mode=1 ]
・・・////[heart][heart][heart][p]
#
[_tb_end_text]

[tb_eval  exp="f.Tre_Up=1"  name="Tre_Up"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_start_tyrano_code]
;ランダムで妹の能力アップ
[getrand var="f.Kaiwa_Random" min="1" max="4"]

[switch exp="f.Kaiwa_Random"]
[case is=1]
[call storage=Tre_Sta_Up.ks target=*__歌UP]
[case is=2]
[call storage=Tre_Sta_Up.ks target=*__ダンスUP]
[case is=3]
[call storage=Tre_Sta_Up.ks target=*__演技UP]
[case is=4]
[call storage=Tre_Sta_Up.ks target=*__話術UP]
[case]
Error
[endswitch]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;ランダムで妹の能力アップ
[getrand var="f.Kaiwa_Random" min="1" max="4"]

[switch exp="f.Kaiwa_Random"]
[case is=1]
[call storage=Tre_Sta_Up.ks target=*__歌UP]
[case is=2]
[call storage=Tre_Sta_Up.ks target=*__ダンスUP]
[case is=3]
[call storage=Tre_Sta_Up.ks target=*__演技UP]
[case is=4]
[call storage=Tre_Sta_Up.ks target=*__話術UP]
[case]
Error
[endswitch]
[_tb_end_tyrano_code]

[tb_eval  exp="f.Tre_Up=10"  name="Tre_Up"  cmd="="  op="t"  val="10"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__性欲UP"  ]
[call  storage="Main_Sta.ks"  target="*__メインステ表示"  ]
[font  size="18"  color="0x000000"  face="JKG-M_3"  bold="true"  ]
[tb_start_tyrano_code]
;選択肢
[glink  color="btn_05_black"  storage="__Main_friday.ks"  size="25"  x="530"  y="200"  width="250"  height="50"  text="Dinner"  _clickable_img=""  target="*__ごはん" enterse="マウスオーバー.mp3"  clickse="決定ボタンを押す53.mp3" ]
[glink  color="btn_05_black"  storage="__Main_friday.ks"  size="25"  x="530"  y="250"  width="250"  height="50"  text="Bath"  _clickable_img=""  target="*__お風呂" enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3" ]
[glink  color="btn_05_black"  storage="__Main_friday.ks"  size="25"  x="530"  y="350"  width="250"  height="50"  text="Me"  _clickable_img=""  target="*__わたし" cond="f.Sys_Seiryoku >= 2 && f.Sta_Risei <= 15" enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3" ]

[_tb_end_tyrano_code]

[resetfont  ]
[s  ]
*__ごはん

[intrandom_ko10panda  max="6"  count="1"  show_result="false"  show_style="style_a"  show_detail="false"  detail_length="10"  show_log="log_4"  var_name="tf.rand"  ]
[tb_start_tyrano_code]
;ごはん内容ランダム
[switch exp="tf.rand"]
[case is=1]
[eval exp="f.Gohan = 'Special Omurice' "]
[case is=2]
[eval exp="f.Gohan = 'Special Hamburger Steak' "]
[case is=3]
[eval exp="f.Gohan = 'Mild Curry Rice' "]
[case is=4]
[eval exp="f.Gohan = 'Spicy Fried Chicken' "]
[case is=5]
[eval exp="f.Gohan = 'Fried White Fish' "]
[case is=5]
[eval exp="f.Gohan = 'Refreshing Udon' "]
[case]
[eval exp="f.Gohan = 'Sparkling Udon' "]
[endswitch]
[_tb_end_tyrano_code]

[chara_mod  name="さくら金曜日"  time="0"  cross="false"  storage="chara/35/金曜日01.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Yeah, I'll get it ready right away[p]
Hehe, today is [emb exp="f.Gohan"]![p]
#
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="朝玄関足音.mp3"  ]
[chara_hide_all  time="600"  wait="true"  ]
[tb_start_text mode=1 ]
#
[emb exp="f.Imo_Name"] trotted off toward the kitchen with quick, light steps[p]
#&f.Oni_Name3
So cute[p]
#
[_tb_end_text]

[bg  time="500"  method="crossfade"  storage="BG_Black.png"  ]
[tb_start_text mode=1 ]
#
[emb exp="f.Imo_Name"]'s home cooking today, huh? Can't wait.[p]
I forgot my tiredness and spent a cheerful Friday[p]
・・・[p]
・・・[p]
[_tb_end_text]

[tb_eval  exp="f.Tre_Up=1"  name="Tre_Up"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__好きUP"  ]
[jump  storage="scene1.ks"  target="*__金曜日終了"  ]
[s  ]
*__お風呂

[chara_mod  name="さくら金曜日"  time="0"  cross="false"  storage="chara/35/金曜日01.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Yeah[p]
#&f.Oni_Name3
[emb exp="f.Imo_Name"], want to get in together?[p]
#
[_tb_end_text]

[chara_mod  name="さくら金曜日"  time="0"  cross="false"  storage="chara/35/金曜日05.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
G-geeze, [emb exp="f.Oni_Name3"], you pervert.[p]
#
[_tb_end_text]

[chara_mod  name="さくら金曜日"  time="0"  cross="false"  storage="chara/35/金曜日02.png"  ]
[intrandom_ko10panda  max="6"  count="1"  show_result="false"  show_style="style_a"  show_detail="false"  detail_length="10"  show_log="log_4"  var_name="tf.rand"  ]
[tb_start_tyrano_code]
;ごはん内容ランダム
[switch exp="tf.rand"]
[case is=1]
[eval exp="f.Gohan = 'Special Omurice' "]
[case is=2]
[eval exp="f.Gohan = 'Special Hamburger Steak' "]
[case is=3]
[eval exp="f.Gohan = 'Mild Curry Rice' "]
[case is=4]
[eval exp="f.Gohan = 'Spicy Fried Chicken' "]
[case is=5]
[eval exp="f.Gohan = 'Fried White Fish' "]
[case is=5]
[eval exp="f.Gohan = 'Refreshing Udon' "]
[case]
[eval exp="f.Gohan = 'Sparkling Udon' "]
[endswitch]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
I-I'm cooking right now, so go ahead and get in first.[p]
#&f.Oni_Name3
Yeah, smells good.[p]
Looking forward to [emb exp="f.Imo_Name"]'s home cooking.[p]
#
[_tb_end_text]

[chara_mod  name="さくら金曜日"  time="0"  cross="false"  storage="chara/35/金曜日01.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Hehe.[p]
Today it's [emb exp="f.Gohan"]![p]
Take your time in the bath♪[p]
#
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="朝玄関足音.mp3"  ]
[chara_hide_all  time="600"  wait="true"  ]
[tb_start_text mode=1 ]
#
[emb exp="f.Imo_Name"] heads back to the kitchen humming.[p]
#&f.Oni_Name3
She's so cute.[p]
#
[_tb_end_text]

[bg  time="500"  method="crossfade"  storage="BG_Black.png"  ]
[tb_start_text mode=1 ]
#
A bath and [emb exp="f.Imo_Name"]'s home cooking.[p]
I was having the best weekend.[p]
・・・[p]
・・・[p]
[_tb_end_text]

[tb_eval  exp="f.Tre_Up=20"  name="Tre_Up"  cmd="="  op="t"  val="20"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__性欲UP"  ]
[jump  storage="scene1.ks"  target="*__金曜日終了"  ]
[s  ]
*__わたし

[tb_replay_start  ]
[playbgm  volume="30"  time="1000"  loop="true"  storage="PerituneMaterial_RainDrop_loop.mp3"  ]
[bg  time="0"  method="crossfade"  storage="玄関02.png"  ]
[tb_start_tyrano_code]
;[clearfix]
;[freeimage  layer="2" ]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;回想用
[tb_show_message_window  cond="tf._tb_is_replay == true" ]
[call storage="Main_Sta.ks" target="*__メインステ表示"  cond="tf._tb_is_replay == true" ]
[chara_show  name="さくら金曜日"  time="1000"  wait="true"  storage="chara/35/金曜日01.png"  width="560"  height="670"  left="360"  top="50"  cond="tf._tb_is_replay == true"  ]
[_tb_end_tyrano_code]

[chara_mod  name="さくら金曜日"  time="600"  cross="false"  storage="chara/35/金曜日02.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
No, w-wait, [emb exp="f.Oni_Name3"], I told you I was joking[p]
#
I take off my shoes and approach [emb exp="f.Imo_Name"] just like that[p]
[_tb_end_text]

[chara_mod  name="さくら金曜日"  time="600"  cross="false"  storage="chara/35/金曜日03.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Eh, [emb exp="f.Oni_Name3"]?[p]
#
[_tb_end_text]

[individual_image  layer="1"  zindex="1"  storage="default/玄関カット/玄関カット04.png"  width="250"  height="200"  name="kiss"  x="420"  y="135"  _clickable_img=""  ]
[playse  volume="100"  time="1000"  buf="1"  storage="えっち系/キス01.mp3"  loop="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Nn, nnn・・[p]
Kiss[p]
#
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="えっち系/衣擦れ3.mp3"  ]
[individual_image  layer="1"  zindex="1"  storage="default/玄関カット/尻カット01.png"  width="400"  height="300"  name="siri"  x="750"  y="250"  _clickable_img=""  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Nn!・・Nnn・・[p]
Kiss[p]
Slurp[p]
#
[_tb_end_text]

[stopse  time="1000"  buf="1"  ]
[stopse  time="1000"  buf="0"  ]
[chara_mod  name="さくら金曜日"  time="0"  cross="false"  storage="chara/35/金曜日05.png"  ]
[delete_individual_image  layer="1"  name="kiss"  ]
[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/吐息01.mp3"  loop="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Nnhah・・・[p]
N-no・・・I haven't taken a bath yet[p]
Because I smell sweaty・・・[p]
#
While caress her butt, I breathe in [emb exp="f.Imo_Name"]'s scent[p]
It has a very floral, pleasant fragrance[p]
#&f.Oni_Name3
It smells good[p]
#&f.Imo_Name
Mmm・・th-that's embarrassing[p]
#
As I kissed her nape and tried to start things, [emb exp="f.Imo_Name"] pulled back a little[p]
[_tb_end_text]

[delete_individual_image  layer="1"  name="siri"  ]
[chara_mod  name="さくら金曜日"  time="600"  cross="false"  storage="chara/35/金曜日03.png"  ]
[stopse  time="1000"  buf="3"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
W-wait, it's dirty after all, so let's do it after I take a bath[p]
#
[_tb_end_text]

[chara_hide_all  time="600"  wait="true"  ]
[tb_start_text mode=1 ]
My crotch is already on the verge of exploding, and I can't hold back[p]
As she was about to return to the kitchen, I hugged her from behind and roughly stripped off her clothes[p]

[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="えっち系/衣擦れ2.mp3"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Ah・・・ Don't・・・[p]
#
I pull down [emb exp="f.Imo_Name"]'s panties and suddenly thrust inside[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="1"  storage="えっち系/挿入音01.mp3"  ]
[wait  time="500"  ]
[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/絶頂声のみ02.mp3"  ]
[chara_show  name="さくら金曜日"  time="500"  wait="true"  storage="chara/35/金曜日H03.png"  width="560"  height="670"  left="360"  top="50"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Aaaah[p]
Ah・・ nnh・・・[p]
Hah・・ hah・・・[p]
#
I thought she wouldn't be very wet since I put it in so suddenly, but・・・[p]
#&f.Oni_Name3
[emb exp="f.Imo_Name"], you're soaking wet.[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/02喘ぎ声(前)02.mp3"  loop="true"  ]
[chara_mod  name="さくら金曜日"  time="0"  cross="false"  storage="chara/35/金曜日H02.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
No・・ nnh[p]
#
She shakes her head, looking embarrassed.[p]
I stay inside her without moving and lick her neck.[p]
I take her arms and lightly restrain her.[p]
[_tb_end_text]

[chara_mod  name="さくら金曜日"  time="600"  cross="false"  storage="chara/35/金曜日H11.png"  ]
[tb_start_text mode=1 ]
#&f.Oni_Name3
Why were you wet, I wonder?[p]
[_tb_end_text]

[chara_mod  name="さくら金曜日"  time="0"  cross="false"  storage="chara/35/金曜日H12.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Fah・・・ aah[p]
#&f.Oni_Name3
Come on, if you don't answer, I won't move?[p]
#
[_tb_end_text]

[chara_mod  name="さくら金曜日"  time="0"  cross="false"  storage="chara/35/金曜日H13.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Nnn・・・ hah・・ hah・・[p]
[emb exp="f.Oni_Name3"], you're so mean.[p]
Hey・・・ nnh[heart][p]
#
[emb exp="f.Imo_Name"] grinds her hips, urging me to move my dick.[p]
It feels amazing to have my crotch stimulated by her grinding butt, but I keep teasing her.[p]
#&f.Oni_Name3
Nope.[p]
#
[_tb_end_text]

[chara_mod  name="さくら金曜日"  time="0"  cross="false"  storage="chara/35/金曜日H13.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Nnh・・・[p]
Uu・・・ well・・・[p]
#
[_tb_end_text]

[chara_mod  name="さくら金曜日"  time="0"  cross="false"  storage="chara/35/金曜日H12.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
I・・・ I wanted to try acting like newlyweds・・・[p]
#&f.Oni_Name3
So you wanted to try 'welcome home sex' too?[p]
#
[_tb_end_text]

[chara_mod  name="さくら金曜日"  time="0"  cross="false"  storage="chara/35/金曜日H11.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
・・・[p]
She nods.[p]
#
[emb exp="f.Imo_Name"] nods silently, blushing all the way to her ears[p]
#&f.Imo_Name
B-but・・・ mmm・・・[p]
I・・・ I wanted to make you happy, [emb exp="f.Oni_Name3"]・・・ mmm・・・ I wanted this・・・[p]
#
Contrary to her shy words, her hips grind against me[p]
She sticks her butt out, desperate to get pleasure from my dick as soon as possible, taking it to the base and rubbing against it[p]
#&f.Oni_Name3
I'm happy, [emb exp="f.Imo_Name"][p]
You've gotten so lewd[p]
#&f.Imo_Name
・・・Mmm・・・[p]
#&f.Oni_Name3
There[p]
#
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="1"  storage="ピストン系/金曜日ピストン01.mp3"  loop="true"  ]
[chara_mod  name="さくら金曜日"  time="0"  cross="false"  storage="chara/35/金曜日アニメ11.png"  ]
[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/08喘ぎ声(挿入)03.mp3"  loop="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Ah・・・ ahh・・・[p]
Haaah・・・ ah・・・[p]
#&f.Oni_Name3
I love lewd [emb exp="f.Imo_Name"][p]
#
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="1"  storage="ピストン系/騎乗位金曜日ピストン02.mp3"  loop="true"  ]
[playse  volume="100"  time="1000"  buf="1"  storage="ピストン系/金曜日ピストン01.mp3"  loop="true"  ]
[chara_mod  name="さくら金曜日"  time="0"  cross="false"  storage="chara/35/金曜日アニメ21.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
[emb exp="f.Oni_Name3"]・・・ ahh・・・ ah・・・[p]
Really? ・・・ Ah・・・ an・・・[p]
#&f.Oni_Name3
Yeah, I love watching [emb exp="f.Imo_Name"] go crazy on my dick[p]
#
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="1"  storage="ピストン系/金曜日ピストン01.mp3"  loop="true"  ]
[chara_mod  name="さくら金曜日"  time="0"  cross="false"  storage="chara/35/金曜日アニメ01.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Ahh・・・ me too・・・ I love・・・ being lewd・・・ mmm・・・[p]
It feels・・・ so good・・・ ah・・・[p]
I・・・ might be a・・・ lewd girl・・・ ahh・・・[p]
#&f.Oni_Name3
You're really lewd, [emb exp="f.Imo_Name"].[p]
#&f.Imo_Name
I・・・ I'm embarrassed・・・"[p]"
Nnnaah![p]
#&f.Oni_Name3
What does lewd [emb exp="f.Imo_Name"] want?[p]
#
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="1"  storage="ピストン系/金曜日ピストン01.mp3"  loop="true"  ]
[chara_mod  name="さくら金曜日"  time="0"  cross="false"  storage="chara/35/金曜日アニメ21.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Mmh・・・ [emb exp="f.Oni_Name3"]'s dick・・・ lots・・・ mmh・・・[p]
I want・・・ lots・・・ mmh・・・[p]
#&f.Oni_Name3
Here, I'll give you lots.[p]
#
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/08喘ぎ声(挿入)03.mp3"  loop="true"  ]
[playse  volume="100"  time="1000"  buf="1"  storage="ピストン系/金曜日ピストン02.mp3"  loop="true"  ]
[chara_mod  name="さくら金曜日"  time="0"  cross="false"  storage="chara/35/金曜日アニメ02.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Nnh・・・ Ngh・・・ Aaah!![p]
Ohh・・・ Ooh・・・ Ooh・・・[p]
Amazing・・・ So good・・・ Ahh・・・[p]
#
Lewd sounds echo throughout the entrance.[p]
The sounds of sex and moaning might be heard outside the house.[p]
I screw my dick into her pussy to make faster, louder sounds.[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/11喘ぎ声(挿入)07.mp3"  loop="true"  ]
[playse  volume="100"  time="1000"  buf="1"  storage="ピストン系/騎乗位ピストン03.mp3"  loop="true"  ]
[chara_mod  name="さくら金曜日"  time="0"  cross="false"  storage="chara/35/金曜日アニメ23.png"  ]
[tb_start_text mode=1 ]
-Slap! Slap! Slap![p]
#&f.Imo_Name
Ngh・・・ Ngh・・・ Ngh・・・[p]
#
-Slap! Slap! Slap![p]
#&f.Imo_Name
Ngh・・・ Ngh・・・ Ngh・・・[p]
#
[emb exp="f.Imo_Name"]'s hips start shaking uncontrollably, and she can't stand anymore.[p]
She seems to be cumming inside.[p]
#&f.Imo_Name
Nnngh・・・ Nnngh・・・ Nnngh・・・[p]
#&f.Oni_Name3
You can't just cum in silence. You have to report it to me properly, you lewd [emb exp="f.Imo_Name"].[p]
#&f.Imo_Name
Nnngh・・・ I'm sorry・・・ Ngh・・・[p]
I'm cumming・・・ Ngh・・・ Ngh・・・ I'm cumming right now・・・ Ngh![p]
#
Supporting her shaking hips, I keep thrusting against her womb.[p]
-Slap! Slap! Slap![p]
#&f.Imo_Name
W・・・ wait・・・[p]
#
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="1"  storage="ピストン系/金曜日ピストン03.mp3"  loop="true"  ]
[chara_mod  name="さくら金曜日"  time="0"  cross="false"  storage="chara/35/金曜日アニメ33.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
[emb exp="f.Oni_Name3"]! ・・・I'm cumming・・・ Cum・・・ Ngh・・・[p]
I'm already cumming・・・ I said・・・ Ngh![p]
#
-Slap! Slap! Slap![p]
#&f.Imo_Name
W・・・ wait・・・[p]
Not yet・・・ I・・・ I'm cum・・・ I'm cum・・・[p]
Nnngh・・・ Ngh!![p]
#
She desperately tries to escape my thrusts, but I hold her tight and keep thrusting.[p]
#&f.Imo_Name
No, no・・・ I'm going crazy!![p]
Aaaaaaah![p]
#
-Slap! Slap! Slap![p]
#&f.Imo_Name
Ooh・・・ Ngh・・・ Ooh・・・[p]
#
[_tb_end_text]

[font  size="18"  color="0x000000"  face="JKG-M_3"  bold="true"  ]
[tb_start_tyrano_code]
;選択肢
[glink  color="btn_05_black"  storage="__Main_friday.ks"  size="25"  x="530"  y="200"  width="250"  height="50"  text="Cum inside"  _clickable_img=""  target="*__中だし" enterse="マウスオーバー.mp3"  clickse="決定ボタンを押す53.mp3" ]
[glink  color="btn_05_black"  storage="__Main_friday.ks"  size="25"  x="530"  y="300"  width="250"  height="50"  text="Cum outside"  _clickable_img=""  target="*__外だし" enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3" ]

[_tb_end_tyrano_code]

[resetfont  ]
[s  ]
*__中だし

[tb_start_text mode=1 ]
#&f.Oni_Name3
Here, I'll spray my thick, smelly husband sperm, fresh from work, inside my filthy new wife.[p]
#&f.Imo_Name
Ngh・・・ Aha・・・[p]
C・・・ cum inside・・・ your thick, smelly sperm・・・[p]
Lots・・・ mmh・・・ give me lots・・・ darling・・・[p]
#&f.Oni_Name3
Here I come![p]
#
[_tb_end_text]

[stopse  time="1000"  buf="0"  ]
[stopse  time="1000"  buf="1"  ]
[stopse  time="1000"  buf="3"  ]
[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/絶頂声のみ01.mp3"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="射精音/射精音風呂.mp3"  ]
[call  storage="__Main_Night_Option.ks"  target="*__外射精エフェクト"  ]
[chara_mod  name="さくら金曜日"  time="0"  cross="false"  storage="chara/35/金曜日H03.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Ahhh・・・ Aaah![p]
#
-Spurt・・・ Spurt・・・[p]
Squirt・・・ Splurt・・・[p]
I shoot a week's worth of my seed into her womb, not leaving a single drop.[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="えっち系/射精音01.mp3"  ]
[tb_start_text mode=1 ]
#
-Squirt・・・ Squirt・・・[p]
Spurt・・・ Splurt・・・[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/絶頂声のみ02.mp3"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Aaah[heart]・・・Ahhh[heart][heart][heart][p]
#
[emb exp="f.Imo_Name"] is still shaking her hips, still coming[p]
-schlp・・schlop[p]
I finally finished cumming and stayed inside for a while to enjoy the afterglow[p]
[emb exp="f.Imo_Name"]'s hips gave out, so when I let her go, she collapsed right there[p]
[_tb_end_text]

[chara_hide_all  time="1000"  wait="true"  ]
[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/吐息03.mp3"  loop="true"  ]
[tb_start_text mode=1 ]
She's slumped on the floor, twitching and jerking a little[p]
#&f.Imo_Name
Ahh・・・Ah[heart]・・・[p]
Hah・・hah・・・[p]
Mmm・・・hehe[heart][p]
・・・ehehe・・・ehehe[p]
・・・hehehe[heart][p]
#
I guess she really enjoyed the newlywed roleplay[p]
[emb exp="f.Imo_Name"] is still lying on the floor, grinning goofily[p]
[_tb_end_text]

[stopse  time="1000"  buf="3"  ]
[tb_start_text mode=1 ]
#&f.Oni_Name3
[emb exp="f.Imo_Name"], can you stand?[p]
#&f.Imo_Name
Y-yeah・・・dehehe[p]
To think I'd be grinning like this after having such lewd sex・・・maybe I really am a lewd girl[p]
Ugh, that's a bit of a shock[p]
#&f.Oni_Name3
I told you, didn't I? I love a lewd [emb exp="f.Imo_Name"][p]
#&f.Imo_Name
Mmmnn, it's so complicated[p]
#&f.Oni_Name3
Here[p]
#
I take her hand and pull her to her feet[p]
[_tb_end_text]

[tb_start_tyrano_code]
;回想用
[jump target="*__射精後" cond="tf._tb_is_replay == true"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;中だし回数プラスカウント
[eval exp="f.Sex_Count[3].bestcount += 1"]
[_tb_end_tyrano_code]

[call  storage="__Main_Night_Option.ks"  target="*__妊娠判定"  cond=""  ]
[jump  storage="__Main_friday.ks"  target="*__射精後"  ]
*__外だし

[chara_mod  name="さくら金曜日"  time="0"  cross="false"  storage="chara/35/金曜日H04.png"  ]
[stopse  time="1000"  buf="0"  ]
[stopse  time="1000"  buf="1"  ]
[stopse  time="1000"  buf="3"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="えっち系/射精音01.mp3"  ]
[call  storage="__Main_Night_Option.ks"  target="*__外射精エフェクト"  ]
[tb_start_text mode=1 ]
-Spurt・・・spurt[p]
Squirt・・・splurt[p]
I shoot every last drop of my seed onto her skirt.[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/絶頂声のみ01.mp3"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Ahhhh[heart]・・・Ahhhh![heart][p]
#
[emb exp="f.Imo_Name"] is still jerking her hips, cumming continuously.[p]
[emb exp="f.Imo_Name"]'s hips gave out, so when I release her, she collapses right there.[p]
[_tb_end_text]

[chara_hide_all  time="1000"  wait="true"  ]
[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/吐息03.mp3"  loop="true"  ]
[tb_start_text mode=1 ]
She's collapsed on the floor, twitching and convulsing slightly[p]
#&f.Imo_Name
Ahh・・・Ahh[heart]・・・[p]
Hah・・hah・・・[p]
#
・・・[p]
After letting her rest for a bit, I call out to her[p]
[_tb_end_text]

[stopse  time="1000"  buf="3"  ]
[tb_start_text mode=1 ]
#&f.Oni_Name3
[emb exp="f.Imo_Name"], can you stand?[p]
#&f.Imo_Name
Hah・・・hah・・・[p]
[emb exp="f.Oni_Name3"], I was such a naughty girl, wasn't I?[p]
It's a bit of a shock[p]
#&f.Oni_Name3
I told you, didn't I? I love lewd [emb exp="f.Imo_Name"].[p]
#&f.Imo_Name
Waaah, that's kinda complicated~[p]
#&f.Oni_Name3
Come on.[p]
#
I pull her up by the hand.[p]
[_tb_end_text]

*__射精後

[bg  time="1000"  method="slideInLeft"  storage="風呂02.png"  ]
[playse  volume="50"  time="1000"  buf="1"  storage="シャワー中.mp3"  ]
[tb_start_text mode=1 ]
After sweaty sex, we take a bath together.[p]
#&f.Imo_Name
[emb exp="f.Oni_Name3"], I'll wash you, okay? [heart][p]
#
[emb exp="f.Imo_Name"] lathers up the soap with her breasts and rubs my entire body[p]
We wash each other's bodies, pressed close together and flirting[p]
We end up in an embrace, and [emb exp="f.Imo_Name"] washes my back with her hands while simultaneously washing my chest with her soapy breasts, squishing them against me[p]
Her big breasts are softly crushed and bouncing right in front of my eyes.[p]
While enjoying the sight of her flattened breasts getting covered in foam, I play with [emb exp="f.Imo_Name"]'s bottom, gently stroking its softness.[p]
Naturally, my dick regains its energy and gets rock hard.[p]
#&f.Imo_Name
Ah・・・ Hehe[heart][p]
[emb exp="f.Oni_Name3"][heart]・・・[p]
#
I press my dick against [emb exp="f.Imo_Name"]'s pussy and push it inside, just like that[p]

[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="えっち系/挿入音01.mp3"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
・・・Ah[heart][p]
Hah・・・Mmh[heart][heart][p]
#
I grab [emb exp="f.Imo_Name"]'s hips firmly and thrust hard against her・・・[p]

[_tb_end_text]

[playse  volume="100"  time="1000"  buf="1"  storage="ピストン系/風俗ピストン03調整版.mp3"  loop="true"  ]
[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/08喘ぎ声(挿入)03.mp3"  loop="true"  ]
[tb_start_text mode=1 ]
#
Ah[heart]・・・Hah[heart]・・・Mmh[heart][p]
Ah[heart]・・・Ah[heart]・・・Mmh[heart]・・・Aaaah[heart][p]
Right there, I began the second round of sweaty sex.[p]
・・・[p]
[_tb_end_text]

[stopse  time="1000"  buf="3"  ]
[stopse  time="1000"  buf="1"  ]
[stopse  time="1000"  buf="2"  ]
[stopse  time="0"  buf="0"  ]
[tb_start_tyrano_code]
;回想用BGM変更
[playbgm volume="20"  time="1000"  loop="true"  storage="PerituneMaterial_Sea_Breeze_loop.mp3" cond="tf._tb_is_replay == true" ]
[_tb_end_tyrano_code]

*__回想解放用

[tb_replay  id="お出迎えH"  ]
[jump  storage="__Main_Night_Kijoui_H.ks"  target="*__回想解放用"  cond="sf.Clear_Flag_Kaisou==1"  ]
[tb_start_tyrano_code]
;えっち回数プラスカウント
[eval exp="f.Sex_Count[1].bestcount += 1"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;回数カウント
[eval exp="f.Kaihatu_Count[0].kazu += 1"]
[eval exp="f.Kaihatu_Count[1].kazu += 1"]
[eval exp="f.Kaihatu_Count[2].kazu += 1"]
[eval exp="f.Kaihatu_Count[3].kazu += 1"]
[_tb_end_tyrano_code]

[tb_eval  exp="f.Tre_Up=1"  name="Tre_Up"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__理性DOWN"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__好きUP"  ]
[tb_eval  exp="f.Tre_Up=100"  name="Tre_Up"  cmd="="  op="t"  val="100"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__性欲DOWN"  ]
[call  storage="Main_Sta.ks"  target="*__メインステ表示"  ]
[tb_eval  exp="f.Sys_Seiryoku-=2"  name="Sys_Seiryoku"  cmd="-="  op="t"  val="2"  val_2="undefined"  ]
*

[call  storage="H_Kaihatu_Upshori.ks"  target="*__開発アップ処理"  ]
[call  storage="_Array_Kaihatu.ks"  target="*__開発配列初期化"  ]
[jump  storage="scene1.ks"  target="*__金曜日終了"  ]
[s  ]
