[_tb_system_call storage=system/_Prologue.ks]

*__プロローグ

[playbgm  volume="100"  time="1000"  loop="true"  storage="雨.mp3"  ]
[bg  time="2000"  method="crossfade"  storage="BG_Black.png"  ]
[individual_image  layer="2"  zindex="1"  storage="default/Main_Window_Pro.png"  width="1280"  height="720"  name="Pro_Window"  ]
[wait  time="1000"  ]
[playse  volume="70"  time="1000"  buf="0"  storage="ドアチャイム2.mp3"  ]
[wait  time="1000"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#
#&f.Oni_Name3
Okay![p]
#
[_tb_end_text]

[tb_hide_message_window  ]
[bg  storage="玄関01.png"  time="500"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="ドアを開ける1.mp3"  ]
[wait  time="1000"  ]
[bg  time="500"  method="crossfade"  storage="玄関02.png"  ]
[wait  time="1000"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="ドアを閉める3.mp3"  ]
[playbgm  volume="50"  time="1000"  loop="true"  storage="雨2.mp3"  ]
[tb_start_tyrano_code]
[button name="role_button" role="save" graphic="button/save.png" enterimg="button/save2.png" x=1180 y=560]
[button name="role_button" role="load" graphic="button/load.png" enterimg="button/load2.png" x=1180 y=590]
[button name="role_button" role="sleepgame" graphic="button/config.png" enterimg="button/config2.png" x=1180 y=620 storage="config.ks"]
[button name="role_button" role="auto" graphic="button/auto.png" enterimg="button/auto2.png" x=1180 y=650]
[button name="role_button" role="title" graphic="button/title.png" enterimg="button/title2.png" x=1180 y=680]
[_tb_end_tyrano_code]

[tb_show_message_window  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
・・・[p]
Long time no see, [emb exp="f.Oni_Name3"][p]
#
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="えっち系/吐息01.mp3"  loop="true"  fadein="true"  ]
[tb_hide_message_window  ]
[wait  time="1000"  ]
[chara_show  name="プロローグ_カット"  time="1200"  wait="true"  storage="chara/23/プロローグ21.png"  width="560"  height="670"  left="360"  top="50"  ]
[wait  time="1000"  ]
[chara_mod  name="プロローグ_カット"  time="1000"  cross="false"  storage="chara/23/プロローグ22.png"  ]
[wait  time="1000"  ]
[chara_mod  name="プロローグ_カット"  time="1000"  cross="false"  storage="chara/23/プロローグ23.png"  ]
[wait  time="1000"  ]
[chara_hide  name="プロローグ_カット"  time="500"  wait="true"  pos_mode="false"  ]
[stopse  time="1000"  buf="0"  fadeout="true"  ]
[playbgm  volume="50"  time="1000"  loop="true"  storage="Peritune_Hanadoki.mp3"  ]
[chara_show  name="プロローグ"  time="2000"  wait="true"  storage="chara/22/プロローグ01.png"  width="560"  height="670"  left="360"  top="50"  reflect="false"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Hehe[p]
I came straight here[p]
#&f.Oni_Name3
Welcome・・・[p]
Whoa, [emb exp="f.Imo_Name"]-chan, you're soaking wet![p]


[_tb_end_text]

[chara_mod  name="プロローグ"  time="0"  cross="false"  storage="chara/22/プロローグ02.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
I forgot my umbrella[p]
Hehe, I got all wet[p]
#&f.Oni_Name3
If you'd contacted me, I would've come to pick you up[p]
#&f.Imo_Name
It was within walking distance, so I thought it'd be fine・・・ hehe[p]
#&f.Oni_Name3
Haha, you haven't changed a bit[p]
Come on, go inside and take a shower right away[p]
You'll catch a cold[p]
[_tb_end_text]

[chara_mod  name="プロローグ"  time="0"  cross="true"  storage="chara/22/プロローグ03.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Eh, but・・・[p]
#&f.Oni_Name3
I don't mind if the floor gets wet[p]
Put your luggage there[r]I'll wipe it down later[p]

[_tb_end_text]

[chara_mod  name="プロローグ"  time="0"  cross="true"  storage="chara/22/プロローグ01.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Thank you[p]
Sorry for this when we haven't seen each other in so long[p]
#&f.Oni_Name3
We're close enough that you don't need to be so considerate now[p]
#&f.Imo_Name
Hehe, I might take you up on that offer[p]
[_tb_end_text]

[tb_hide_message_window  ]
[chara_hide_all  time="0"  wait="true"  ]
[bg  time="1000"  method="fadeInLeft"  storage="BG02.png"  cross="true"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="雨で濡れた道路を歩く01.mp3"  loop="true"  ]
[chara_show  name="プロローグ_カット"  time="1000"  wait="true"  storage="chara/23/プロローグ24.png"  width="560"  height="670"  left="360"  top="50"  ]
[wait  time="1000"  ]
[chara_mod  name="プロローグ_カット"  time="1000"  cross="false"  storage="chara/23/プロローグ25.png"  ]
[wait  time="1000"  ]
[chara_hide_all  time="1000"  wait="true"  ]
[stopse  time="1000"  buf="0"  fadeout="true"  ]
[bg  time="1000"  method="fadeInLeft"  storage="風呂01.png"  cross="true"  ]
[wait  time="1000"  ]
[playse  volume="50"  time="1000"  buf="0"  storage="bathing1.mp3"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#&f.Oni_Name3
I'll wash your wet clothes[p]
#&f.Imo_Name
Yeah, thank you[p]
#
[_tb_end_text]

[bg  time="1000"  method="fadeInRight"  storage="BG02.png"  cross="true"  ]
[stopse  time="1000"  buf="0"  fadeout="true"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="ドア閉め.mp3"  ]
[wait  time="1000"  ]
[playse  volume="50"  time="1000"  buf="0"  storage="シャワー中.mp3"  loop="true"  ]
[tb_start_text mode=1 ]
#
#&f.Oni_Name3
Phew[p]
#
It's been a few years since I came to Tokyo from my hometown[p]
Just when I was finally settling into living alone, my aunt contacted me asking me to look after her daughter [emb exp="f.Imo_Name"] for a month[p]
[emb exp="f.Imo_Name"] lived nearby and we used to play together often, so she was almost like a childhood friend[p]
Back then, she was very attached to me, and we saw each other almost every day[p]
But when I went to Tokyo for university, we completely lost touch[p]
・・・That same [emb exp="f.Imo_Name"]・・・[p]
Apparently she was scouted by a talent agency last year[p]
She was certainly a very cute girl from before, so it's not surprising・・・[p]
#&f.Oni_Name3
But the shy [emb exp="f.Imo_Name"] becoming an idol・・・[p]
#
She's already joined an idol group and says she's aiming to become a top idol[p]
・・・You never know what'll happen in this world[p]

Her idol activities were becoming more serious, and she needed to move to Tokyo[p]
So it was decided that I'd look after her at my place for just one month until she finds a home[p]
[_tb_end_text]

[stopse  time="2000"  buf="0"  fadeout="true"  ]
[stopbgm  time="1000"  fadeout="true"  ]
[tb_start_text mode=1 ]
・・・[p]
But・・・[p]
[_tb_end_text]

[chara_show  name="プロローグ_カット"  time="1000"  wait="true"  storage="chara/23/プロローグ21.png"  width="560"  height="670"  left="360"  top="50"  ]
[wait  time="500"  ]
[chara_mod  name="プロローグ_カット"  time="1000"  cross="false"  storage="chara/23/プロローグ22.png"  ]
[chara_mod  name="プロローグ_カット"  time="1000"  cross="false"  storage="chara/23/プロローグ24.png"  ]
[chara_hide_all  time="500"  wait="true"  ]
[tb_start_text mode=1 ]
#
She's grown in ways I couldn't have imagined back then・・・[p]
・・・[p]
[_tb_end_text]

[mask  time="300"  effect="fadeIn"  color="0x000000"  ]
[mask_off  time="300"  effect="fadeOut"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="ドアを閉める3.mp3"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Excuse me for intruding[p]
#
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="衣擦れ3.mp3"  ]
[playbgm  volume="30"  time="1000"  loop="true"  storage="Peritune_Hanadoki.mp3"  fadein="true"  ]
[chara_show  name="プロローグ_ベッド"  time="1000"  wait="true"  storage="chara/24/プロローグ11.png"  width="560"  height="670"  left="360"  top="50"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Phew, I'm all warmed up now[p]
Thanks for the bath[p]
#&f.Oni_Name3
Yeah[p]
#
It must be pajamas[p]
The camisole [emb exp="f.Imo_Name"] put on after her bath had such a provocative neckline that I involuntarily looked away[p]
She doesn't seem to realize the destructive power of her own breasts・・・ What a handful.[p]

[_tb_end_text]

[chara_mod  name="プロローグ_ベッド"  time="0"  cross="false"  storage="chara/24/プロローグ12.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Wow, so this is [emb exp="f.Oni_Name3"]'s place・・・[p]
[_tb_end_text]

[chara_mod  name="プロローグ_ベッド"  time="0"  cross="false"  storage="chara/24/プロローグ11.png"  ]
[tb_start_text mode=1 ]
Hehe, I'm a little nervous[p]

#&f.Oni_Name3
You've grown up, [emb exp="f.Imo_Name"]-chan[p]
#
[_tb_end_text]

[chara_mod  name="プロローグ_ベッド"  time="0"  cross="false"  storage="chara/24/プロローグ15.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Hehe[p]
It's been a long time, hasn't it?[p]
Were you surprised?[p]

#&f.Oni_Name3
Yeah, I was surprised[p]
You've become really beautiful[p]
[_tb_end_text]

[chara_mod  name="プロローグ_ベッド"  time="0"  cross="false"  storage="chara/24/プロローグ13.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Eh?[p]
[_tb_end_text]

[chara_mod  name="プロローグ_ベッド"  time="0"  cross="false"  storage="chara/24/プロローグ18.png"  ]
[tb_start_text mode=1 ]
・・・Oh, come on[p]
・・・You haven't changed[p]
・・・[p]
[_tb_end_text]

[chara_mod  name="プロローグ_ベッド"  time="0"  cross="false"  storage="chara/24/プロローグ15.png"  ]
[tb_start_text mode=1 ]
Oh right, this is from my mom[p]
#
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="紙を広げる2.mp3"  ]
[tb_image_show  time="1000"  storage="default/イベントカット46OP手紙.png"  width="500"  height="300"  x="450"  y="170"  _clickable_img=""  name="img_91"  ]
[tb_start_text mode=1 ]
#&f.Oni_Name3
Ah, from Aunt Saya?[p]
#
I open the letter and read it[p]
・・・[p]
Please take care of [emb exp="f.Imo_Name"] for one month, until she finds a place to move.[p]
For the two years until she graduates from school, please also give her advice about her entertainment activities.[p]

P.S. Even if you're living together, don't make a move on her.[p]
But if you do, make sure to take responsibility♪[p]
Kiss♪[p]
#&f.Oni_Name3
・・・That aunt of mine, honestly.[p]
#
[_tb_end_text]

[tb_image_hide  time="500"  ]
[chara_mod  name="プロローグ_ベッド"  time="0"  cross="false"  storage="chara/24/プロローグ13.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
What was written there?[p]
#&f.Oni_Name3
It said to take good care of your life from now on.[p]
#&f.Imo_Name
I see.[p]
#&f.Oni_Name3
[emb exp="f.Imo_Name"], make yourself at home and feel free to do whatever you like.[p]
[_tb_end_text]

[chara_mod  name="プロローグ_ベッド"  time="0"  cross="false"  storage="chara/24/プロローグ14.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Yeah, thank you.[p]
#&f.Oni_Name3
What about school?[p]
[_tb_end_text]

[chara_mod  name="プロローグ_ベッド"  time="0"  cross="false"  storage="chara/24/プロローグ11.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
It starts tomorrow.[p]
I'll be going to school as a transfer student, after all.[p]
[_tb_end_text]

[chara_mod  name="プロローグ_ベッド"  time="0"  cross="false"  storage="chara/24/プロローグ11.png"  ]
[tb_start_text mode=1 ]
A city school, huh・・・[p]
Ugh・・・ I'm so nervous~[p]
#&f.Oni_Name3
Does the agency training start tomorrow too?[p]
#&f.Imo_Name
Right away, it's a whole week of nothing but training~[p]
#&f.Oni_Name3
Hahaha, if you have any troubles, come talk to me about anything.[p]
[_tb_end_text]

[chara_mod  name="プロローグ_ベッド"  time="0"  cross="false"  storage="chara/24/プロローグ14.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Yeah![p]
I'm counting on you, [emb exp="f.Oni_Name3"]♪[p]
#&f.Oni_Name3
Yeah, let's do our best from today on.[p]
#&f.Imo_Name
Hehe♪[p]
#
[_tb_end_text]

[chara_hide_all  time="500"  wait="true"  ]
[tb_hide_message_window  ]
[bg  time="1000"  method="crossfade"  storage="白背景.png"  ]
[tb_ptext_hide  time="500"  ]
[tb_ptext_show  x="313"  y="350"  size="30"  color="0x000000"  time="3000"  text="From now on, living together with this beautiful idol-in-training・・・"  anim="false"  face="undefined"  edge="undefined"  shadow="undefined"  ]
[tb_ptext_hide  time="1000"  ]
[tb_ptext_show  x="454"  y="350"  size="30"  color="0x000000"  time="2000"  text="・・・Will I be able to endure it?"  anim="false"  face="undefined"  edge="undefined"  shadow="undefined"  ]
[tb_ptext_hide  time="1000"  ]
[tb_ptext_show  x="329"  y="350"  size="30"  color="0x000000"  time="2000"  text="・・・No, do I even need to endure it in the first place??"  anim="false"  face="undefined"  edge="undefined"  shadow="undefined"  ]
[tb_ptext_hide  time="1000"  ]
[tb_ptext_show  x="508"  y="350"  size="30"  color="0x000000"  time="2000"  text="A precarious cohabitation life"  anim="false"  face="undefined"  edge="undefined"  shadow="undefined"  ]
[tb_ptext_hide  time="700"  ]
[tb_ptext_show  x="528"  y="350"  size="30"  color="0x000000"  time="2000"  text="Now begins・・・"  anim="false"  face="undefined"  edge="undefined"  shadow="undefined"  ]
[tb_ptext_hide  time="1000"  ]
[stopbgm  time="1000"  fadeout="true"  ]
[jump  storage="scene1.ks"  target="*____プロローグ終了"  ]
