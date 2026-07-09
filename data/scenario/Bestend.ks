[_tb_system_call storage=system/_Bestend.ks]

[call  storage="_Array_.ks"  target="*__配列宣言"  ]
[tb_start_tyrano_code]
[layopt layer=1 visible=true opacity=255]
[layopt layer=2 visible=true opacity=255]

[_tb_end_tyrano_code]

*__BestEnd

[stopbgm  time="1000"  ]
[mask  time="500"  effect="fadeIn"  color="0x000000"  ]
[tb_start_tyrano_code]
[freeimage layer=2]
[_tb_end_tyrano_code]

[call  storage="Main_Sta.ks"  target="*__roleのみ表示"  ]
[individual_image  layer="1"  zindex="1"  storage="default/Main_Window_Pro.png"  width="1280"  height="720"  name="上枠"  ]
*__回想開始

[tb_replay_start  ]
[tb_start_tyrano_code]
;回想用
[stopbgm  cond="tf._tb_is_replay == true"]
[call  storage="Main_Sta.ks"  target="*__メインステ表示"   cond="tf._tb_is_replay == true"]
[_tb_end_tyrano_code]

[bg  time="0"  method="crossfade"  storage="BG_Black.png"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#
[emb exp="f.Imo_Name"] is now a top idol with over a million fans[p]
With her popularity at its peak pushing her forward, today marks the day of [emb exp="f.Imo_Name"]'s first solo concert at the Dome[p]
[_tb_end_text]

[bg  time="500"  method="crossfade"  storage="玄関02.png"  ]
[chara_show  name="さくら_玄関"  time="1000"  wait="true"  storage="chara/18/玄関送り11.png"  width="560"  height="670"  left="360"  top="50"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
・・・[emb exp="f.Oni_Name3"], thank you for everything[p]
I'm going to do my best[p]
#&f.Oni_Name3
Yeah, go make your dream come true[p]
#&f.Imo_Name
Yeah!![p]
#
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="ドアを開ける1.mp3"  ]
[chara_hide_all  time="500"  wait="true"  ]
[mask  time="500"  effect="fadeIn"  color="0x000000"  ]
[wait  time="1000"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="ドア閉め.mp3"  ]
[bg  time="0"  method="crossfade"  storage="BG_Black.png"  ]
[delete_individual_image  layer="1"  name="上枠"  ]
[wait  time="1000"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[playse  volume="100"  time="1000"  buf="1"  storage="スポットライトが当たる.mp3"  ]
[playbgm  volume="30"  time="1000"  loop="true"  storage="PerituneMaterial_Memories6_loop.mp3"  ]
[bg  time="1000"  method="fadeIn"  storage="ライブ一枚絵.png"  cross="true"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="スタジアムの歓声_(1).mp3"  ]
[wait  time="2000"  ]
[tb_start_text mode=1 ]
#
The concert venue was filled with excitement[p]
The venue was packed, and everyone is [emb exp="f.Imo_Name"]'s fan[p]
Cheers echoed loudly, and [emb exp="f.Imo_Name"] looked radiant on stage[p]
I・・・watched [emb exp="f.Imo_Name"], desperately trying to hold back tears of overwhelming emotion[p]
[emb exp="f.Imo_Name"] will continue to run as a top idol[p]
Our current life is like a landmine that could explode at any moment[p]
・・・[p]
・・・For [emb exp="f.Imo_Name"]'s sake too・・・[p]
Maybe it would be better to end this life[p]
Thinking about the future, I watched the concert with mixed feelings[p]
・・・[p]
[_tb_end_text]

[mask  time="1000"  effect="fadeIn"  color="0x000000"  graphic="時間経過カット04.png"  ]
[stopbgm  time="1000"  fadeout="true"  ]
[tb_start_tyrano_code]
[playse  volume="100"  time="2000"  buf="0"  storage="時計の針2.mp3"  ]
[mask  time="2000"  effect="fadeInUp"  color="0x000000"  graphic="時間経過カット04.png"  ]
[wa]

[_tb_end_tyrano_code]

[bg  time="0"  method="crossfade"  storage="スキンシップ01.png"  ]
[individual_image  layer="1"  zindex="1"  storage="default/Main_Window_Pro.png"  width="1280"  height="720"  name="上枠"  ]
[wait  time="1000"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[playbgm  volume="30"  time="1000"  loop="true"  storage="Omoide_Ha_Zutto-1(Slow).mp3"  ]
[playse  volume="100"  time="1000"  buf="1"  storage="ピストン系/EDピストン01.mp3"  loop="true"  ]
[tb_start_text mode=1 ]
-Slap Slap Slap[p]
Squelch・・・slurp・・・gloop[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/08喘ぎ声(挿入)03.mp3"  loop="true"  ]
[tb_eval  exp="f.H_Entrance_DFlag=1"  name="H_Entrance_DFlag"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_start_tyrano_code]
;キャラ登場　断面図で分岐
[chara_show  name="H_BestEnd"  time="1000"  wait="true"  storage="chara/37/EDH01.png" width="760"  height="660"  left="160"  top="60" cond="f.H_Danmen_Flag == 0" ]
[chara_show  name="H_BestEnd"  time="1000"  wait="true"  storage="chara/37/EDH11.png" width="760"  height="660"  left="160"  top="60" cond="f.H_Danmen_Flag == 1" ]

[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[button  storage="Bestend.ks"  target="*__断面図変更"  graphic="断面図on.png"  x="30"  y="100" exp="f.H_Danmen_Flag = 1" cond="f.H_Danmen_Flag == 0"  fix=true enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3"]
[button  storage="Bestend.ks"  target="*__断面図変更"  graphic="断面図off.png"  x="30"  y="100" exp="f.H_Danmen_Flag = 0" cond="f.H_Danmen_Flag == 1"  fix=true enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3"]

[_tb_end_tyrano_code]

[tb_eval  exp="f.H_Entrance_DFlag=101"  name="H_Entrance_DFlag"  cmd="="  op="t"  val="101"  val_2="undefined"  ]
[playse  volume="100"  time="1000"  buf="1"  storage="ピストン系/EDピストン01.mp3"  loop="true"  ]
[tb_start_tyrano_code]
;キャラ変更
[chara_mod  name="H_BestEnd"  time="0"  cross="false"  storage="chara/37/EDHアニメ01.png" cond="f.H_Danmen_Flag == 0" ]
[chara_mod  name="H_BestEnd"  time="0"  cross="false"  storage="chara/37/EDHアニメ11.png" cond="f.H_Danmen_Flag == 1" ]

[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
#&f.Imo_Name
Ah[heart]・・・Aaah[heart]・・・Haaah[heart][p]
Ah[heart]・・Mmn[heart]・・Aah[heart]!![p]
#
Like Pavlov's dog, thanks to my training, [emb exp="f.Imo_Name"]'s body aches before and after concerts[p]
She had become a body that craves my dick[p]
I thoroughly violate [emb exp="f.Imo_Name"]'s exhausted pussy after her solo concert[p]
-slap slap slap[p]
#&f.Imo_Name
Guh[heart]・・・feels so goood[heart]・・[p]
Mmph[heart]・・・Mmph[heart][heart][heart][p]
[emb exp="f.Oni_Name3"]・・・more・・・[p]
Thrust deeper・・・ ah[heart]・・・ ah[heart]・・・ [emb exp="f.Oni_Name3"][heart]・・・[p]
I'm getting excited・・I can't calm down・・Aaah![heart][heart][heart][p]
#
I thrust it all the way to the base, packing it in tight, and have messy sex with [emb exp="f.Imo_Name"][p]
[emb exp="f.Imo_Name"]'s pussy is even hotter than usual, melting my dick head while tightening intensely around it[p]
Maybe the adrenaline from the concert is still flowing, because [emb exp="f.Imo_Name"] is incredibly excited[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/11喘ぎ声(挿入)07.mp3"  loop="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
I'm cumming[heart]・・・ohh[heart]・・・ohh[heart]・・・[p]
Cumming, cumming, cumming[heart][p]
Iguu[heart]・・・[emb exp="f.Oni_Name3"]・・・inside・・・cum inside me[heart][p]
Together・・・[p]
#
-slap slap slap[p]
#&f.Oni_Name3
Ngh・・・I'm cumming[p]
#&f.Imo_Name
Unh[heart]・・・Ah[heart]・・・Ohh[heart]・・・Aaah[heart][heart][heart][p]
#
I thrust rapidly into [emb exp="f.Imo_Name"]'s twitching, climaxing pussy, injecting my cum deep into her womb[p]
#&f.Imo_Name
Aaaaaah[heart][heart][heart]![p]
Cumming[heart]・・・ohh[heart]・・ohhh[heart][heart][p]
Ohh[heart]・・・Oooohhh[heart][heart][heart]!!![p]
[_tb_end_text]

[tb_start_tyrano_code]
[clearfix]
[_tb_end_tyrano_code]

[tb_eval  exp="f.H_Entrance_DFlag=1001"  name="H_Entrance_DFlag"  cmd="="  op="t"  val="1001"  val_2="undefined"  ]
[tb_start_tyrano_code]
;キャラ変更
[chara_mod  name="H_BestEnd"  time="0"  cross="false"  storage="chara/37/EDHアニメ射精01.png" cond="f.H_Danmen_Flag == 0" ]
[chara_mod  name="H_BestEnd"  time="0"  cross="false"  storage="chara/37/EDHアニメ射精11.png" cond="f.H_Danmen_Flag == 1" ]

[_tb_end_tyrano_code]

[stopse  time="1000"  buf="1"  ]
[stopse  time="1000"  buf="3"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="えっち系/射精音02.mp3"  ]
[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/絶頂セリフ03_2.mp3"  loop="true"  ]
[tb_start_text mode=1 ]
#
-spurt・・・spurt・・・[p]
splurt・・・glop・・・[p]
#&f.Imo_Name
Ahh・・・ ahh・・・ ahh・・・[heart][heart][heart]・・・[p]
Ah[heart]・・・[p]
Hah・・・ hah・・・[p]
#
Still connected, we collapsed onto the bed and held each other.[p]
[_tb_end_text]

[chara_hide_all  time="500"  wait="true"  ]
[delete_individual_image  layer="1"  name="上枠"  ]
[stopse  time="1000"  buf="0"  ]
[stopse  time="1000"  buf="3"  ]
[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/吐息02.mp3"  ]
[bg  time="1000"  method="crossfade"  storage="BestEnd/ED03.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Hah・・ hah・・・[p]
#&f.Oni_Name3
Congratulations, [emb exp="f.Imo_Name"]・・・ your dream came true.[p]
The concert was the best.[p]
#
[_tb_end_text]

[bg  time="0"  method="crossfade"  storage="BestEnd/ED01.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Thank you, [emb exp="f.Oni_Name3"].[p]
Eh・・ ehehe・・・ I got too excited・・・[p]
I might not be able to sleep tonight.[p]
#
[_tb_end_text]

[stopse  time="1000"  buf="3"  ]
[bg  time="0"  method="crossfade"  storage="BestEnd/ED04.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Nnh・・・[p]
#
My dick, still somewhat hard even after I came, lets me feel the warmth of being connected thanks to [emb exp="f.Imo_Name"]'s perfect tightness.[p]
#&f.Oni_Name3
You must be tired.[p]
#
[_tb_end_text]

[bg  time="0"  method="crossfade"  storage="BestEnd/ED01.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Yeah, but・・・I want to stay like this with you forever.[p]
#
With me still inside her, she hugs me tightly.[p]
[_tb_end_text]

[bg  time="1000"  method="crossfade"  storage="BestEnd/ED03.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
・・・[p]
[emb exp="f.Oni_Name3"]・・You know, my true・・・my true dream・・・[p]
Can I say it?[p]
#&f.Oni_Name3
Ah, didn't you make it come true today?[p]
#&f.Imo_Name
That's right, the first dream came true today[p]
A dream so big, I still can't believe it[p]
But you know, there's one more[p]
The other dream・・・do you remember?[p]
#&f.Oni_Name3
Yeah[p]
#
—Another dream[p]
What she told me on our first night・・・that she wanted to be united with me[p]
#&f.Imo_Name
T-truth is・・・it's not just that I want to be united with you[p]
F-further inside・・・ um・・・[p]
#
[_tb_end_text]

[bg  time="0"  method="crossfade"  storage="BestEnd/ED04.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Uu・・・[p]
#
[emb exp="f.Imo_Name"] turns bright red and clings to me even tighter[p]
#&f.Imo_Name
Oh, I want [emb exp="f.Oni_Name3"]'s・・・ baby・・・[p]
My real dream is・・・ to become [emb exp="f.Oni_Name3"]'s bride and have cute babies[p]
Let's have lots of sex, let's love each other so much・・・I want to be with you forever, [emb exp="f.Oni_Name3"]・・・[p]
[_tb_end_text]

[bg  time="0"  method="crossfade"  storage="BestEnd/ED04_1.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
[emb exp="f.Oni_Name3"]・・・I love you[p]
I love [emb exp="f.Oni_Name3"] so much・・・I'm gonna go crazy[p]
#
Up until now, toward [emb exp="f.Imo_Name"]・・・ toward a beautiful girl who stands at the top as an idol[p]
In a corner of my heart, I'd felt a lingering sense of guilt that this life wasn't right[p]
I had a feeling that I might be in the way[p]
[emb exp="f.Imo_Name"]・・・cared about me that much all along[p]
Various thoughts running through my mind, I try to call out to [emb exp="f.Imo_Name"][p]
But・・・ all the overflowing passion inside me gathered right into my dick[p]
[_tb_end_text]

[bg  time="0"  method="crossfade"  storage="BestEnd/ED02.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Ah[p]
#
[_tb_end_text]

[bg  time="1000"  method="crossfade"  storage="BestEnd/ED03.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
N-no・・・[p]
#
My dick turned rock hard and swelled inside [emb exp="f.Imo_Name"], poking her womb[p]
[_tb_end_text]

[bg  time="0"  method="crossfade"  storage="BestEnd/ED04.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Ah, [emb exp="f.Oni_Name3"]・・・ mm・・・ it's big・・・[p]
#&f.Oni_Name3
[emb exp="f.Imo_Name"][p]
This is my answer[p]
#
[_tb_end_text]

[bg  time="0"  method="crossfade"  storage="BestEnd/ED06.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Pfft・・・ hehe・・・[p]
#
[_tb_end_text]

[bg  time="0"  method="crossfade"  storage="BestEnd/ED07.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
・・・Y・・・ you idiot![p]
What's that, geez, [emb exp="f.Oni_Name3"] you idiot・・・[p]
G・・・ give me a more romantic answer![p]
#
She hits my chest playfully while laughing.[p]
Thinking [emb exp="f.Imo_Name"] is cute like that, my dick swells up even more.[p]
[_tb_end_text]

[bg  time="0"  method="crossfade"  storage="BestEnd/ED04.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Ah・・・ nnh・・・[p]
Geez・・・ you're so lewd.[p]
#
I grab [emb exp="f.Imo_Name"]'s shoulders, look her in the eyes seriously, and speak sincerely from the bottom of my heart[p]
#&f.Oni_Name3
[emb exp="f.Imo_Name"], I love you[p]
Let's get married[p]
[_tb_end_text]

[bg  time="0"  method="crossfade"  storage="BestEnd/ED02.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
！？[p]
#
[_tb_end_text]

[bg  time="0"  method="crossfade"  storage="BestEnd/ED04_1.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Ah・・・[emb exp="f.Oni_Name3"]!・・・[emb exp="f.Oni_Name3"]![p]
Yeah・・・ yeah・・・ I love you・・・ I love you!![p]
#
—Not right now[p]
[emb exp="f.Imo_Name"] is still young・・・ in reality, she can't yet[p]
A future that will definitely come true・・・ for that promise[p]
[_tb_end_text]

[mask  time="300"  effect="fadeIn"  color="0x000000"  ]
[bg  time="1000"  method="crossfade"  storage="スキンシップ01.png"  ]
[individual_image  layer="1"  zindex="1"  storage="default/Main_Window_Pro.png"  width="1280"  height="720"  name="上枠"  ]
[mask_off  time="300"  effect="fadeOut"  ]
[tb_eval  exp="f.H_Entrance_DFlag=2"  name="H_Entrance_DFlag"  cmd="="  op="t"  val="2"  val_2="undefined"  ]
[tb_start_tyrano_code]
;キャラ登場　断面図で分岐
[chara_show  name="H_BestEnd"  time="1000"  wait="true"  storage="chara/37/EDH01.png" width="760"  height="660"  left="160"  top="60" cond="f.H_Danmen_Flag == 0" ]
[chara_show  name="H_BestEnd"  time="1000"  wait="true"  storage="chara/37/EDH21.png" width="760"  height="660"  left="160"  top="60" cond="f.H_Danmen_Flag == 1" ]

[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[button  storage="Bestend.ks"  target="*__断面図変更"  graphic="断面図on.png"  x="30"  y="100" exp="f.H_Danmen_Flag = 1" cond="f.H_Danmen_Flag == 0"  fix=true enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3"]
[button  storage="Bestend.ks"  target="*__断面図変更"  graphic="断面図off.png"  x="30"  y="100" exp="f.H_Danmen_Flag = 0" cond="f.H_Danmen_Flag == 1"  fix=true enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3"]

[_tb_end_tyrano_code]

[tb_eval  exp="f.H_Entrance_DFlag=102"  name="H_Entrance_DFlag"  cmd="="  op="t"  val="102"  val_2="undefined"  ]
[playse  volume="100"  time="1000"  buf="1"  storage="ピストン系/EDピストン01.mp3"  loop="true"  ]
[tb_start_tyrano_code]
;キャラ変更
[chara_mod  name="H_BestEnd"  time="0"  cross="false"  storage="chara/37/EDHアニメ01.png" cond="f.H_Danmen_Flag == 0" ]
[chara_mod  name="H_BestEnd"  time="0"  cross="false"  storage="chara/37/EDHアニメ21.png" cond="f.H_Danmen_Flag == 1" ]

[_tb_end_tyrano_code]

[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/09喘ぎ声(挿入)04.mp3"  loop="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Ah・・・ ah・・・ mmm[p]
I want to do it・・・ a lot, a lot・・・[p]
#&f.Oni_Name3
Yeah, we'll keep having sex from now on too[p]
#&f.Imo_Name
Ahh・・・ [emb exp="f.Oni_Name3"]・・・ c-cum a lot inside my pussy[p]
Aaah・・・ ah・・・ I want my belly filled with [emb exp="f.Oni_Name3"]'s hot cum[heart][p]
#
Her pussy squeezes my dick as if trying to swallow my sperm[p]

[_tb_end_text]

[tb_eval  exp="f.H_Entrance_DFlag=103"  name="H_Entrance_DFlag"  cmd="="  op="t"  val="103"  val_2="undefined"  ]
[playse  volume="100"  time="1000"  buf="1"  storage="ピストン系/EDピストン02.mp3"  loop="true"  ]
[tb_start_tyrano_code]
;キャラ変更
[chara_mod  name="H_BestEnd"  time="0"  cross="false"  storage="chara/37/EDHアニメ02.png" cond="f.H_Danmen_Flag == 0" ]
[chara_mod  name="H_BestEnd"  time="0"  cross="false"  storage="chara/37/EDHアニメ22.png" cond="f.H_Danmen_Flag == 1" ]

[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
#&f.Imo_Name
Nn・・・ Ah[heart]・・・ Aaaah[heart][p]
・・・Ah[heart]・・・I love it[heart]・・・Aah[heart][p]
I love you[heart]・・I love you[heart]・・・I love you・・・ahh[heart]・・・[p]
#
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/10喘ぎ声(挿入)05.mp3"  loop="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Aaaah[heart]・・・I love you[heart]・・I love you[heart]・・・I love you so much[heart][heart]・・・Aaaah[heart]・・・[p]
Ohh[heart]・・・ Ohh[heart]・・・ so good[heart][heart]・・・ Ahh[heart]・・・ so good[heart][heart][heart][p]
#
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="1"  storage="えっち系/射精音01.mp3"  ]
[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/絶頂声のみ01.mp3"  loop="true"  ]
[tb_eval  exp="f.H_Entrance_DFlag=1002"  name="H_Entrance_DFlag"  cmd="="  op="t"  val="1002"  val_2="undefined"  ]
[tb_start_tyrano_code]
;キャラ変更
[chara_mod  name="H_BestEnd"  time="0"  cross="false"  storage="chara/37/EDHアニメ射精01.png" cond="f.H_Danmen_Flag == 0" ]
[chara_mod  name="H_BestEnd"  time="0"  cross="false"  storage="chara/37/EDHアニメ射精21.png" cond="f.H_Danmen_Flag == 1" ]

[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
#
—throb・・・ throb・・・[p]
Spurt・・・ spurt[p]
I keep overflowing her womb with my sperm until [emb exp="f.Imo_Name"] gets pregnant[p]
[_tb_end_text]

[tb_eval  exp="f.H_Entrance_DFlag=104"  name="H_Entrance_DFlag"  cmd="="  op="t"  val="104"  val_2="undefined"  ]
[playse  volume="100"  time="1000"  buf="1"  storage="ピストン系/EDピストン02.mp3"  loop="true"  ]
[tb_start_tyrano_code]
;キャラ変更
[chara_mod  name="H_BestEnd"  time="0"  cross="false"  storage="chara/37/EDHアニメ02.png" cond="f.H_Danmen_Flag == 0" ]
[chara_mod  name="H_BestEnd"  time="0"  cross="false"  storage="chara/37/EDHアニメ32.png" cond="f.H_Danmen_Flag == 1" ]

[_tb_end_tyrano_code]

[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/13喘ぎ声(オホ声)01.mp3"  loop="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Ooh[heart]・・・ Ooh[heart]・・・ Ooh[heart]・・・[p]
I love you[heart][heart]・・・ I love you so much[heart][heart][heart]・・・ Ohhh[heart][p]
[emb exp="f.Oni_Name3"]'s dick・・・ more・・・ more digging[heart]・・・[p]
So big・・・ your dick・・・ ohh[heart][p]
Mmph[heart]・・Ohh[heart]・・・Oooh[heart][heart][heart][p]
Pregnancy![heart]・・・getting pregnant・・・ spurt[heart][heart][heart]・・・[p]
I'm gonna have your baby[heart]・・・ I'm gonna have [emb exp="f.Oni_Name3"]'s babyyy[heart][heart][heart][p]
With [emb exp="f.Oni_Name3"]'s thick cum, make me pregnant[heart]・・・ Make me pregnant[heart][heart][heart]・・・ Ohh[heart][heart][heart][p]
Guh[heart]・・・ Guh[heart]・・・ Gugu, guh[heart][p]
Nnnoooooooh[heart][heart][heart][heart][heart]!!!![p]
I'm cumming, I'm cumming, I'm cumming[heart]・・・ ahhh[heart][heart][heart]!![p]
#
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="1"  storage="えっち系/射精音02.mp3"  ]
[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/絶頂声のみ02.mp3"  loop="true"  ]
[tb_start_tyrano_code]
[clearfix]
[_tb_end_tyrano_code]

[tb_eval  exp="f.H_Entrance_DFlag=1003"  name="H_Entrance_DFlag"  cmd="="  op="t"  val="1003"  val_2="undefined"  ]
[tb_start_tyrano_code]
;キャラ変更
[chara_mod  name="H_BestEnd"  time="0"  cross="false"  storage="chara/37/EDHアニメ射精01.png" cond="f.H_Danmen_Flag == 0" ]
[chara_mod  name="H_BestEnd"  time="0"  cross="false"  storage="chara/37/EDHアニメ射精31.png" cond="f.H_Danmen_Flag == 1" ]

[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
#
—gush・・・ gush[p]
Spurt・・・ spurt・・・[p]
・・・[p]
・・・[p]
[_tb_end_text]

[mask  time="2000"  effect="fadeIn"  color="0x000000"  ]
[tb_hide_message_window  ]
[delete_individual_image  layer="1"  name="上枠"  ]
[stopse  time="1000"  buf="0"  ]
[stopse  time="1000"  buf="1"  ]
[stopse  time="1000"  buf="3"  ]
[stopbgm  time="1000"  fadeout="true"  ]
[chara_hide_all  time="0"  wait="true"  ]
[wait  time="2000"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="スズメが鳴く朝02.mp3"  ]
[wait  time="3000"  ]
[bg  time="0"  method="crossfade"  storage="BestEnd/ED11.png"  ]
[mask_off  time="2000"  effect="fadeOut"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
Ugh・・・[p]
I wake up to the bright sunlight[p]
When I open my eyes slightly, the beautiful girl who is now more than just a lover is smiling gently[p]
It seems I fell asleep without realizing it[p]

[_tb_end_text]

[playbgm  volume="30"  time="1000"  loop="true"  storage="PerituneMaterial_Dawning_Tale.mp3"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Hehe[p]
[emb exp="f.Oni_Name3"]・・・ morning[p]
#&f.Oni_Name3
Sorry [emb exp="f.Imo_Name"]・・・ did I fall asleep?[p]
#&f.Imo_Name
Hehe, your sleepy face・・・ is cute[p]
#&f.Oni_Name3
Mmm・・・[p]
#
I tried to sit up with my sleepy body, but I suddenly realized our lower bodies were still connected[p]
To think we fell asleep while having sex・・・[p]
As our connection is about to come apart, [emb exp="f.Imo_Name"] hugs me tightly to stop it[p]
[_tb_end_text]

[bg  time="0"  method="crossfade"  storage="BestEnd/ED13.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
No, [emb exp="f.Oni_Name3"][p]
Like this・・・ I like it like this[p]
#&f.Oni_Name3
Yeah[p]
#
[_tb_end_text]

[bg  time="0"  method="crossfade"  storage="BestEnd/ED15.png"  ]
[tb_start_text mode=1 ]
#
[emb exp="f.Imo_Name"] closes her eyes, leans in, and gives me a wake-up kiss.[p]

[_tb_end_text]

[tb_hide_message_window  ]
[playse  volume="100"  time="1000"  buf="0"  storage="えっち系/キス02.mp3"  ]
[wait  time="1000"  ]
[tb_show_message_window  ]
[bg  time="0"  method="crossfade"  storage="BestEnd/ED16.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Nn・・・[p]
Hehe, I think I'm at the peak of happiness right now♪[p]
Ehehe, [emb exp="f.Oni_Name3"][p]
#
Thinking she's an angel, I feel happy too and return the kiss.[p]
[_tb_end_text]

[bg  time="0"  method="crossfade"  storage="BestEnd/ED15.png"  ]
[tb_hide_message_window  ]
[playse  volume="100"  time="1000"  buf="0"  storage="えっち系/キス02.mp3"  ]
[wait  time="1000"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Mmh[p]
#&f.Oni_Name3
[emb exp="f.Imo_Name"][p]
#
[_tb_end_text]

[bg  time="0"  method="crossfade"  storage="BestEnd/ED11.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
What is it?[p]
#&f.Oni_Name3
I'll make all of [emb exp="f.Imo_Name"]'s dreams come true.[p]
Do you remember that from before?[p]
#&f.Imo_Name
Yeah[p]
#&f.Oni_Name3
Leave it to me[p]
Let's go buy an engagement ring together next time[p]
#
[_tb_end_text]

[bg  time="0"  method="crossfade"  storage="BestEnd/ED12.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
[emb exp="f.Oni_Name3"]！！[p]
#
[_tb_end_text]

[bg  time="1000"  method="crossfade"  storage="BestEnd/ED18.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Hehe・・・ hehehe[p]
・・[p]
・・・uuh・・・[p]
・・・sniff[p]
Hehehe・・・[p]
Ah, tears started coming out[p]
#
I gently wipe [emb exp="f.Imo_Name"]'s tears and hold her close[p]
[_tb_end_text]

[bg  time="0"  method="crossfade"  storage="BestEnd/ED14_1.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Nn・・・[p]
I don't want to let go anymore[p]
#&f.Oni_Name3
Yeah[p]
#&f.Imo_Name
Stay with me forever, forever[p]
#&f.Oni_Name3
We'll be together forever[p]
#&f.Imo_Name
Yeah・・・ yeah・・・[p]
#
[_tb_end_text]

[bg  time="0"  method="crossfade"  storage="BestEnd/ED16_1.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Ehehe・・・[p]
I love you, [emb exp="f.Oni_Name3"]![p]
I love, love, loooove you so much[heart][heart][heart][heart][heart][heart][p]
#
We continue our naughty life living together[p]
Surely, great difficulties will stand in our way time and again[p]
But with [emb exp="f.Imo_Name"], it'll be alright[p]
Whatever happens, if we're together, we can live a happy life[p]
We'll build that kind of future[p]

[_tb_end_text]

[tb_start_text mode=1 ]
From now on・・・ forever・・・[p]
[_tb_end_text]

[tb_start_tyrano_code]
;回想用BGM変更
[playbgm volume="20"  time="1000"  loop="true"  storage="PerituneMaterial_Sea_Breeze_loop.mp3" cond="tf._tb_is_replay == true" ]
[_tb_end_tyrano_code]

*__回想解放用

[tb_replay  id="HappyEnd"  ]
[jump  storage="Clear_present.ks"  target="*__回想回収戻り先"  cond="sf.Clear_Flag_Kaisou==1"  ]
[tb_hide_message_window  ]
[tb_start_tyrano_code]
;ENDテキスト
[layopt layer=0 visible=true]
[mtext layer=0 text="Happy End" x=1000 y= 600 size=50 color="0xffffff" name="happyend" bold=bold edge="0x000000" wait=false in_effect="bounceInRight" in_delay=100 fadeout=false]
[_tb_end_tyrano_code]

[l  ]
[tb_start_tyrano_code]
;ENDテキスト
[layopt layer=0 visible=true]
[mtext layer=0 text="Production: Rakorio Soft" x=200 y= 200 size=20 color="0xffffff" name="happyend" bold=bold edge="0x000000" wait=false in_effect="bounceInUp" in_delay=100 fadeout=false]
[wait time=2000]
[mtext layer=0 text="Illustration: Rakorio" x=200 y= 250 size=20 color="0xffffff" name="happyend" bold=bold edge="0x000000" wait=false in_effect="bounceInUp" in_delay=100 fadeout=false]
[wait time=2000]
[mtext layer=0 text="Scenario: Rakorio" x=200 y= 300 size=20 color="0xffffff" name="happyend" bold=bold edge="0x000000" wait=false in_effect="bounceInUp" in_delay=100 fadeout=false]
[wait time=2000]

[mtext layer=0 text="Thank  you  for  playing ! !" x=450 y= 400 size=40 color="0xffffff" name="happyend" bold=bold edge="0x000000" wait=false in_effect="bounceInUp" in_delay=100 fadeout=false]
[wait time=3000]

[_tb_end_tyrano_code]

[l  ]
[tb_start_tyrano_code]
;ENDテキスト
[free layer=0 name="happyend" time=2000 "]

[_tb_end_tyrano_code]

[l  ]
[mask  time="5000"  effect="fadeIn"  color="0xffffff"  ]
[bg  time="2000"  method="fadeIn"  storage="白背景.png"  cross="true"  ]
[tb_start_tyrano_code]
[freeimage layer=0]
[freeimage layer=2]
[_tb_end_tyrano_code]

[stopbgm  time="1000"  fadeout="true"  ]
[tb_start_tyrano_code]
[clearfix]
[_tb_end_tyrano_code]

[mask_off  time="3000"  effect="fadeOut"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
・・・[p]
Congratulations on clearing the game![p]
Thank you for playing.[p]
We would appreciate your cooperation with the survey to help us create better works in the future.[p]
[_tb_end_text]

*__ジャンプ戻り位置

[tb_hide_message_window  ]
[font  size="18"  color="0x000000"  face="JKG-M_3"  bold="true"  ]
[tb_start_tyrano_code]
;妹クリック後　選択肢
[glink  color="btn_05_black"  storage="Bestend.ks"  size="25"  x="400"  y="150"  width="450"  height="50"  text="To Endless Mode"  target="*__エンドレス" enterse="マウスオーバー.mp3"  clickse="決定ボタンを押す53.mp3" ]
[glink  color="btn_05_black"  storage="Bestend.ks"  size="25"  x="400"  y="250"  width="450"  height="50"  text="Answer Survey (External Link)"  target="*__アンケート" enterse="マウスオーバー.mp3"  clickse="決定ボタンを押す53.mp3" ]
[glink  color="btn_05_black"  storage="Bestend.ks"  size="25"  x="400"  y="300"  width="450"  height="50"  text="View Ci-en (External Link)"  target="*__シエン" enterse="マウスオーバー.mp3"  clickse="決定ボタンを押す53.mp3" ]
[glink  color="btn_05_black"  storage="Bestend.ks"  size="25"  x="400"  y="350"  width="450"  height="50"  text="Return to Title"  target="*タイトルへ" enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3" ]

[_tb_end_tyrano_code]

[resetfont  ]
[s  ]
*__エンドレス

[tb_show_message_window  ]
[tb_start_text mode=1 ]
Clear Reward[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="レジスターで精算.mp3"  ]
[tb_start_text mode=1 ]
A 1 million yen reward!![p]
[_tb_end_text]

[tb_eval  exp="f.Sys_Okane+=1000000"  name="Sys_Okane"  cmd="+="  op="t"  val="1000000"  val_2="undefined"  ]
[tb_start_text mode=1 ]
A post-clear strategy guide is now in stock at the convenience store!![p]
[_tb_end_text]

[tb_hide_message_window  ]
[tb_eval  exp="f.Clear_Flag=1"  name="Clear_Flag"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.BestEnd_Endless_Flag=1"  name="BestEnd_Endless_Flag"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="scene1.ks"  target="*__週末"  ]
*タイトルへ

[tb_start_tyrano_code]
[freeimage layer=2]
[freeimage layer=0]

[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;タイトルリロード 　タイトルへ戻る
[iscript]
location.href="./index.html";
[endscript]

[_tb_end_tyrano_code]

[s  ]
*__アンケート

[tb_start_tyrano_code]
[web url="https://forms.gle/whxA7yLkMP355sRf6"]
[_tb_end_tyrano_code]

[jump  storage="Bestend.ks"  target="*__ジャンプ戻り位置"  ]
*__シエン

[tb_start_tyrano_code]
[web url="https://ci-en.dlsite.com/creator/33052"]
[_tb_end_tyrano_code]

[jump  storage="Bestend.ks"  target="*__ジャンプ戻り位置"  ]
*__断面図変更

[tb_start_tyrano_code]
;断面図変更
[switch exp="f.H_Entrance_DFlag"]
[case is=1]
[chara_mod  name="H_BestEnd"  time="0"  cross="false"  storage="chara/37/EDH01.png" cond="f.H_Danmen_Flag == 0" ]
[chara_mod  name="H_BestEnd"  time="0"  cross="false"  storage="chara/37/EDH11.png" cond="f.H_Danmen_Flag == 1" ]
[case is=2]
[chara_mod  name="H_BestEnd"  time="0"  cross="false"  storage="chara/37/EDH02.png" cond="f.H_Danmen_Flag == 0" ]
[chara_mod  name="H_BestEnd"  time="0"  cross="false"  storage="chara/37/EDH21.png" cond="f.H_Danmen_Flag == 1" ]

[case is=101]
[chara_mod  name="H_BestEnd"  time="0"  cross="false"  storage="chara/37/EDHアニメ01.png" cond="f.H_Danmen_Flag == 0" ]
[chara_mod  name="H_BestEnd"  time="0"  cross="false"  storage="chara/37/EDHアニメ11.png" cond="f.H_Danmen_Flag == 1" ]
[case is=102]
[chara_mod  name="H_BestEnd"  time="0"  cross="false"  storage="chara/37/EDHアニメ01.png" cond="f.H_Danmen_Flag == 0" ]
[chara_mod  name="H_BestEnd"  time="0"  cross="false"  storage="chara/37/EDHアニメ21.png" cond="f.H_Danmen_Flag == 1" ]
[case is=103]
[chara_mod  name="H_BestEnd"  time="0"  cross="false"  storage="chara/37/EDHアニメ02.png" cond="f.H_Danmen_Flag == 0" ]
[chara_mod  name="H_BestEnd"  time="0"  cross="false"  storage="chara/37/EDHアニメ22.png" cond="f.H_Danmen_Flag == 1" ]
[case is=104]
[chara_mod  name="H_BestEnd"  time="0"  cross="false"  storage="chara/37/EDHアニメ02.png" cond="f.H_Danmen_Flag == 0" ]
[chara_mod  name="H_BestEnd"  time="0"  cross="false"  storage="chara/37/EDHアニメ32.png" cond="f.H_Danmen_Flag == 1" ]

[case is=1001]
[chara_mod  name="H_BestEnd"  time="0"  cross="false"  storage="chara/37/EDHアニメ射精01.png" cond="f.H_Danmen_Flag == 0" ]
[chara_mod  name="H_BestEnd"  time="0"  cross="false"  storage="chara/37/EDHアニメ射精11.png" cond="f.H_Danmen_Flag == 1" ]
[case is=1002]
[chara_mod  name="H_BestEnd"  time="0"  cross="false"  storage="chara/37/EDHアニメ射精01.png" cond="f.H_Danmen_Flag == 0" ]
[chara_mod  name="H_BestEnd"  time="0"  cross="false"  storage="chara/37/EDHアニメ射精21.png" cond="f.H_Danmen_Flag == 1" ]
[case is=1003]
[chara_mod  name="H_BestEnd"  time="0"  cross="false"  storage="chara/37/EDHアニメ射精01.png" cond="f.H_Danmen_Flag == 0" ]
[chara_mod  name="H_BestEnd"  time="0"  cross="false"  storage="chara/37/EDHアニメ射精31.png" cond="f.H_Danmen_Flag == 1" ]

[endswitch]


[_tb_end_tyrano_code]

[call  storage="Main_Sta.ks"  target="*__Hメインステ表示"  ]
[tb_start_tyrano_code]
[button  storage="Bestend.ks"  target="*__断面図変更"  graphic="断面図on.png"  x="30"  y="100" exp="f.H_Danmen_Flag = 1" cond="f.H_Danmen_Flag == 0"  fix=true enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3"]
[button  storage="Bestend.ks"  target="*__断面図変更"  graphic="断面図off.png"  x="30"  y="100" exp="f.H_Danmen_Flag = 0" cond="f.H_Danmen_Flag == 1"  fix=true enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3"]

[_tb_end_tyrano_code]

[return  ]
