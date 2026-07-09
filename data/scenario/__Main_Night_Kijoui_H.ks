[_tb_system_call storage=system/___Main_Night_Kijoui_H.ks]

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
-pop suck[p]
-slurp pop[p]
#&f.Oni_Name3
Ugh[p]
#
-pop・・・suck・・・[p]
#
I wake up to a strange sensation in my crotch[p]
[_tb_end_text]

[bg  time="0"  method="crossfade"  storage="夜オナ.png"  cross="true"  ]
[tb_hide_message_window  ]
[chara_show  name="H_騎乗位"  time="1000"  wait="true"  storage="chara/13/夜フェラ01.png"  width="760"  height="660"  left="160"  top="60"  ]
[wait  time="800"  ]
[playbgm  volume="50"  time="1000"  loop="true"  storage="PerituneMaterial_RainDrop_loop.mp3"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="えっち系/フェラ音02.mp3"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
-slurp・・pop・・[p]
[emb exp="f.Imo_Name"]！？[p]
When I look, [emb exp="f.Imo_Name"] has come into my futon and is sucking my dick[p]
#&f.Imo_Name
Mm・・slurp・・・suck・・・[p]
Mm[p]
[emb exp="f.Oni_Name3"]・・・[p]
Don't say anything・・・just like that・・・please・・・[p]
#
Maybe she couldn't satisfy herself with masturbating alone anymore[p]
She's masturbating while sucking me[p]
#

[_tb_end_text]

[chara_mod  name="H_騎乗位"  time="0"  cross="false"  storage="chara/13/夜フェラ02.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Mmf・・・[p]
Slurp・・・suck・・・[p]
Squelch・・・gurgle・・・[p]
#
As always, [emb exp="f.Imo_Name"]'s blowjob technique is amazing[p]
I'm about to cum in no time[p]
I・・・[p]

[_tb_end_text]

[tb_hide_message_window  ]
[font  size="14"  color="0x000000"  face="JKG-M_3"  ]
[tb_start_tyrano_code]
;右側の選択肢　fix仕様なので注意
[glink  color="btn_05_black"  size="20" storage="__Main_Night_Kijoui_H.ks" target="*__口内射精"  text="Cum"  x="1030"  y="100" fix="" width=200 enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3"]
[glink  color="btn_05_black"  size="20" storage="__Main_Night_Kijoui_H.ks" target="*__えっちする"  text="Have sex"  x="1030"  y="160" fix="" width=200 enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3"]
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
-spurt・・・spurt[p]
Gulp・・・gulp[p]
[_tb_end_text]

[stopse  time="1000"  buf="0"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Mmm・・・mmm!![p]
・・・mm・・・slurp[p]
・・・gulp[p]
Mmm!![p]
Mmaaaaah!!![p]
Ah[p]
#
[_tb_end_text]

[chara_mod  name="H_騎乗位"  time="0"  cross="false"  storage="chara/13/夜フェラ04.png"  ]
[tb_start_text mode=1 ]
・・・hah・・・hah[p]
#
It seems she came at the same time as swallowing my cum[p]

[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="えっち系/フェラ音02.mp3"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Mwah・・・ mwah[p]
#
She licks the head of my dick clean after I've cum[p]
#&f.Imo_Name
Mm[p]
Kiss[p]
#
[_tb_end_text]

[stopse  time="1000"  buf="0"  ]
[chara_hide_all  time="300"  wait="false"  ]
[bg  time="1000"  method="crossfade"  storage="BG_Black.png"  ]
[tb_start_text mode=1 ]
#
She clings to me and begs for a pillow arm[p]
#&f.Imo_Name
・・・ehehe[p]
We came together, didn't we?[p]
#
I respond to her request by giving her a pillow arm and pulling [emb exp="f.Imo_Name"] close[p]
[_tb_end_text]

[bg  time="1000"  method="crossfade"  storage="事後04_2.png"  ]
[tb_start_text mode=1 ]
#&f.Oni_Name3
[emb exp="f.Imo_Name"], you've gotten better at blowjobs[p]
#&f.Imo_Name
Really?[p]
Hehe・・・I'm happy[p]
I love seeing [emb exp="f.Oni_Name3"]'s happy face, so I've been trying various things[p]
#
What an incredible technician she's become[p]
#&f.Imo_Name
When I see [emb exp="f.Oni_Name3"]'s pleased face, my heart races and I cum right away[p]
・・・Sorry for waking you up at night[p]
#
[emb exp="f.Imo_Name"] must have nights where she's frustrated too[p]
Maybe her shy personality that can't say she wants sex face-to-face ended up expressing itself this way[p]
#&f.Oni_Name3
No problem at all, sex with [emb exp="f.Imo_Name"] is always welcome[p]
#&f.Imo_Name
・・・y-yeah[p]
It's embarrassing when you say it so directly[p]
・・・ehehe[p]
#
[_tb_end_text]

[bg  time="500"  method="crossfade"  storage="事後04_1.png"  ]
[tb_start_text mode=1 ]
#
She buries her face in my chest with a shy smile[p]
[emb exp="f.Imo_Name"]'s breath hits my chest, and it tickles a little[p]
#&f.Imo_Name
Hey・・・can we sleep together like this?[p]
#&f.Oni_Name3
Yeah, sure[p]
Saying that, I pat [emb exp="f.Imo_Name"]'s head[p]
#&f.Imo_Name
Ehe[p]
Ehehe・・・[p]
Good night・・・[emb exp="f.Oni_Name3"][p]
#&f.Oni_Name3
Yeah・・・good night[p]
#&f.Imo_Name
・・・[p]
#
I kept gently patting [emb exp="f.Imo_Name"]'s head in my arms until she fell asleep[p]
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
I let [emb exp="f.Imo_Name"] do as she pleases[p]
-spurt spurt!![p]
#&f.Imo_Name
Aaaaah!!![p]
#
[_tb_end_text]

[stopse  time="1000"  buf="0"  ]
[tb_start_text mode=1 ]
#
We climaxed together as always, and slept clinging to each other until morning[p]
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
I pull [emb exp="f.Imo_Name"] close just like that[p]
#&f.Imo_Name
Ah[p]
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
Aah!![p]
#
I thrust inside while holding her close in a position resembling cowgirl[p]
[_tb_end_text]

[stopse  time="1000"  buf="0"  ]
[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/02喘ぎ声(前)02.mp3"  loop="true"  ]
[tb_start_text mode=1 ]
#&f.Oni_Name3
See, the thing you were sucking on just a moment ago is inside you now[p]
#&f.Imo_Name
Aaah![p]
It's hot・・・ my belly feels hot, [emb exp="f.Oni_Name3"]・・・[p]
#&f.Oni_Name3
Trying to satisfy your lust all by yourself masturbating・・・ you're such a naughty girl[p]
#&f.Imo_Name
[emb exp="f.Oni_Name3"]・・・[p]
I-I'm sorry[p]
#&f.Oni_Name3
Why were you masturbating?[p]
#&f.Imo_Name
That is・・・[p]
Uu・・・[p]
#
Maybe because she's embarrassed, [emb exp="f.Imo_Name"] is stammering[p]
It doesn't seem like she'll tell me even if I ask[p]
I grind my shaft inside her pussy[p]
#&f.Imo_Name
Nnh![p]
#&f.Oni_Name3
Try moving your hips yourself[p]
#&f.Imo_Name
Eh・・・[p]
#&f.Oni_Name3
Press the head of my dick against your sweet spot, [emb exp="f.Imo_Name"][p]
#&f.Imo_Name
O-Okay・・・[p]
She tries doing it[p]
#
I decide to ask [emb exp="f.Imo_Name"]'s hot, throbbing pussy why she was masturbating[p]
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
Ah!! Aaah!![p]
It feels good!![p]
Anh![p]
#
Since we're moving while holding each other, [emb exp="f.Imo_Name"]'s soft breasts are pressed squishily against my chest[p]
Our nipples rub against each other, stimulating one another[p]
#&f.Imo_Name
Ah!! Aaah!![p]
#
[emb exp="f.Imo_Name"]'s hips, which were moving timidly at first, are now moving wildly for her own pleasure[p]
-Slap! Slap! Slap![p]
#&f.Imo_Name
Ah! ・・・Nn・・・[p]
Aaah[heart][p]
#&f.Oni_Name3
It's no good. Instead of masturbating, you have to cum properly with my dick[p]
#&f.Imo_Name
Aaah・・・ y-yeah・・・ ah[heart][p]
Anh! ・・・I'm sorry, [emb exp="f.Oni_Name3"][p]
#
-Slap! Slap! Slap![p]
#&f.Imo_Name
Ah[heart]・・・ Ahh[heart][heart][p]
#&f.Oni_Name3
Come on, tell me why you were masturbating[p]
#&f.Imo_Name
Ah[heart]・・ ah[heart]・・・[p]
I・・・ I wanted to・・・ d-do it with [emb exp="f.Oni_Name3"]・・・[p]
Ah[heart]・・・ I-I'm so embarrassed・・・[p]
Ah[heart]・・・ I can't say it・・・ Ahn[heart][p]
#
-spank[heart] spank[heart] spank[heart][p]
#&f.Oni_Name3
But you said it[p]
[emb exp="f.Imo_Name"], you're so cute[p]
#&f.Imo_Name
N・・・ No・・・ Ah![p]
So embarrassing・・・ Anh![p]
#
Satisfied by her writhing form, I decide to thrust my hips forward even more[p]

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
To keep [emb exp="f.Imo_Name"]'s body from moving, I hold her down tightly with both hands[p]
Every time [emb exp="f.Imo_Name"]'s hips jerk, the impact hitting her womb transmits directly to the head of my dick[p]
-Squelch! ・・・Squelch!![p]
#&f.Imo_Name
Aa-a-ah・・・[p]
F-feels so goood[heart]・・・Ahh[heart]・・・Ahh[heart][p]
#
ーSlap!・・・Slap!![p]
Sooo good[heart]・・・Good[heart][heart][p]
#&f.Imo_Name
Ohh[heart]・・・Ohhh[heart]・・・[p]
Ah, ahh[heart]・・・Mmmhh[heart][heart][heart][p]
#
She's probably moving on her own.[p]
She writhes her hips, slamming her butt against me so the head of my dick hits her G-spot perfectly.[p]
#&f.Imo_Name
Ohhh[heart]・・・Ohhh[heart]・・・[p]
Ohh[heart][heart][heart][p]
I'm cumming・・・I'm cumming[heart]・・・[p]
Nngghhh[heart]!!![p]
#
[emb exp="f.Imo_Name"]'s hips convulse.[p]
The entrance to her womb flutters and stimulates the tip of my dick.[p]
#&f.Imo_Name
Ahhh ahhh[heart][heart][heart][p]
Ah[heart]・・・[p]
#
Her whole body trembles and arches backward.[p]
#&f.Imo_Name
Ohh[heart]・・・Ohhh[heart]・・・[p]
Ohhh[heart][heart][heart]・・・[p]
#
I hold the convulsing [emb exp="f.Imo_Name"] tightly and continue thrusting even deeper.[p]

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
Feels so goood[heart]・・・Ahhh[heart][p]
It's amazing[heart][heart][heart][p]
#
My endurance is reaching its limit, and I'm about to cum.[p]
My long, thick dick is stuffed all the way to the base, and the head kisses her cervix hard.[p]
ーSlap!・・・Slap!![p]
#&f.Imo_Name
Oh[heart]・・・Ohhh[heart]・・・[p]
Feels so goood[heart]・・・It feels so gooood[heart][heart][heart][p]
#
[emb exp="f.Imo_Name"] is shaking her hips frantically.[p]
#&f.Oni_Name3
[emb exp="f.Imo_Name"], she's about to cum.[p]
#
I try to lift [emb exp="f.Imo_Name"]'s body to pull my dick out.[p]
・・・But [emb exp="f.Imo_Name"] clings tightly to my body and won't let me lift her up.[p]
#&f.Imo_Name
I'm cumming[heart]・・・I'm cumming, I'm cumming[heart][heart][p]
#
ーSlap[heart]!・・・Slap[heart]!![p]
I try to pull away to get my dick out, but [emb exp="f.Imo_Name"] hugs me tight and locks me in place.[p]
Held tightly, I can't move.[p]
[emb exp="f.Imo_Name"] keeps slamming her hips against me.[p]
Even when I stop thrusting, [emb exp="f.Imo_Name"] keeps moving her hips to make me cum.[p]
#&f.Imo_Name
Ohhh[heart]・・・Ohh[heart][heart][p]
Cumming cumming cumming[heart][heart][heart][p]
#
ーSlap[heart]!・・・Slap[heart]!![p]
#&f.Oni_Name3
W-wait [emb exp="f.Imo_Name"], I'm about to cum![p]
・・・This is bad!!・・・I'm cumming!![p]
#
I'm cumming inside!![p]

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
[glink  color="btn_05_black"  size="20" storage="__Main_Night_Kijoui_H.ks" target="*__射精中"  text="Cum inside"  x="1030"  y="400" fix="true" width=200 enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3"]
[glink  color="btn_05_black"  size="20" storage="__Main_Night_Kijoui_H.ks" target="*__射精外"  text="Cum outside"  x="1030"  y="460" fix="true" width=200 enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3"]
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
Spurt[heart]・・・Spurt[heart]・・・[p]
Spurt[heart]・・gulp[heart]・・・gush[heart]・・・[p]
#&f.Imo_Name
Ahhhh[heart][heart][heart][heart][heart][p]
Ah[heart][p]
Held tight in her embrace, I end up cumming inside her pussy[p]
#&f.Imo_Name
Ah[heart]・・・ah[heart]・・・ah[heart][p]
#
The folds inside her pussy pulsate, moving back and forth to squeeze out every last drop[p]
Spurt[heart][heart][heart]・・・[p]
#&f.Imo_Name
Mmh[heart][p]
#
[_tb_end_text]

[stopse  time="1000"  buf="1"  ]
[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/吐息02.mp3"  loop="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
・・・hah・・・hah[p]
#
We continue to hold each other, still connected[p]
After about 5 minutes pass, [emb exp="f.Imo_Name"] lifts her face and raises her upper body[p]

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
I wonder・・・will I get pregnant?[p]
Hehe[heart][p]
#
[emb exp="f.Imo_Name"] gives me a kiss while smiling like a little devil[p]
We're still joined together[p]
Her big breasts bounce right in front of me, so I reach out with both hands, jiggle and squeeze them, and play with her nipples[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="えっち系/衣擦れ1.mp3"  ]
[individual_image  layer="1"  zindex="1"  storage="default/正上カット/カット_正上_胸04.png"  width="260"  height="180"  name="乳左"  x="250"  y="140"  _clickable_img=""  time="0"  wait="true"  ]
[individual_image  layer="2"  zindex="1"  storage="default/正上カット/カット_正上_胸03.png"  width="230"  height="180"  name="乳右"  x="780"  y="140"  _clickable_img=""  time="0"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Mmh[heart]・・・ah[heart]・・・[p]
#&f.Oni_Name3
Hey・・・you were hugging me on purpose, weren't you[p]
I came inside you[p]
#&f.Imo_Name
Hehe, [emb exp="f.Oni_Name3"]'s flustered face was so cute, so I just couldn't help it・・・[p]
#&f.Oni_Name3
Honestly, you're such a naughty girl[p]
#
I speak while jiggling the big breasts in front of me[p]
We're both covered in sweat[p]
#&f.Imo_Name
Hehe[heart][p]
You're always being mean to me[p]
Once in a while is fine, isn't it~♪[p]
The way [emb exp="f.Oni_Name3"] gets flustered is so cute[heart]・・・hehe[heart][p]
#&f.Oni_Name3
You asked for it, you little―![p]
#
Saying that, I squeeze and massage her nipples[p]
#&f.Imo_Name
・・mmh[heart][p]
Kyaa, no[heart][p]
Ahahaha[heart][p]
#
I rub her nipples while lightly pinching them[p]
#&f.Imo_Name
Kyah[heart][p]
・・mmh[heart][p]
Geez~ payback time!![p]
#
[emb exp="f.Imo_Name"] plays with my nipples in return, rolling them around[p]
My body reacts involuntarily[p]
#&f.Imo_Name
Ahaha[heart][p]
[emb exp="f.Oni_Name3"], your body twitched![p]
#&f.Oni_Name3
I won't lose![p]
#&f.Imo_Name
No~[heart][p]
#
As we have this strange play session, playing with each other's nipples[p]
I felt sperm overflowing from the gap where we're joined[p]
A wet gloop sound of air escaping is heard, and semen trickles over my balls[p]

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
Mmh[heart]・・・[p]
#
As I support the breasts buried in my hands and play with them, jiggling them, I feel my dick coming back to life[p]
#&f.Imo_Name
Mmh[heart]・・・ahah[heart][p]
It's getting bigger little by little[p]
It's already this big・・・mmh[heart]・・・my womb is being pushed・・・mmh[heart][p]
#&f.Oni_Name3
Since I already came inside, cumming inside one more time wouldn't make a difference[p]
[emb exp="f.Imo_Name"], it's payback time[p]
#&f.Imo_Name
Ahah[heart][heart][heart][p]
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
Mmh[heart][p]
#
Still connected, I start thrusting again[p]
#&f.Imo_Name
Ahhh[heart] ah[heart] ah[heart] ahhhh[heart][heart][heart][heart]!!![p]
#
ーplap[heart]!・・・plap[heart]!![p]
#&f.Imo_Name
Aaahhh[heart][heart][heart]!![p]
Ahh[heart]・・・Aaahhh[heart][heart][heart]!![p]
#
・・・Is this going to be an all-nighter?[p]
Despite my worries, I found myself fully enjoying my sex life with [emb exp="f.Imo_Name"].[p]

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
Spurt[heart]・・・Spurt[heart]・・・[p]
I barely managed to reach my hand to my crotch and pull my dick out.[p]
#&f.Imo_Name
Mmn[heart][p]
#&f.Oni_Name3
T-that was close・・・[p]
#&f.Imo_Name
Hah・・・hah・・・[p]
Hehe[heart], [emb exp="f.Oni_Name3"]'s panicked face is so cute[heart][p]
#
[emb exp="f.Imo_Name"] brings her face close enough for her lips to touch mine, giving me a seductive smile.[p]
#&f.Oni_Name3
Seriously, I was really rattled.[p]
#&f.Imo_Name
Ehehe[heart][p]
#
[emb exp="f.Imo_Name"] collapses right onto me, putting her weight on my body and hugging me.[p]
I stroked her head and kept holding her until morning.[p]

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
Let's stop here for today.[p]
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

[glink  color="btn_05_black"  size="20" storage="__Main_Night_Kijoui_H.ks" target= &f.Target text="Slow thrust"  x="1030"  y="100" fix="true" width=200 exp="f.H_Sex_Speed =2" enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3"]
[glink  color="btn_05_black"  size="20" storage="__Main_Night_Kijoui_H.ks" target= &f.Target text="Hard thrust"  x="1030"  y="160" fix="true" width=200 exp="f.H_Sex_Speed =3" enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3"]
[glink  color="btn_05_black"  size="20" storage="__Main_Night_Kijoui_H.ks" target= &f.Target text="Max thrust"  x="1030"  y="220" fix="true" width=200 exp="f.H_Sex_Speed =4" enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3"]
[glink  color="btn_05_black"  size="20" storage="__Main_Night_Kijoui_H.ks" target= &f.Target_Danmen  text="Cross-section ON"  x="30"  y="100" fix="true" width=200 exp="f.H_Danmen_Flag =1"  cond="f.H_Danmen_Flag == 0" enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3"]
[glink  color="btn_05_black"  size="20" storage="__Main_Night_Kijoui_H.ks" target= &f.Target_Danmen  text="Cross-section OFF"  x="30"  y="100" fix="true" width=200 exp="f.H_Danmen_Flag =0"  cond="f.H_Danmen_Flag == 1" enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3"]

[_tb_end_tyrano_code]

[resetfont  ]
[call  storage="__Main_Night_Kijoui_Shori.ks"  target="*__Backアイコン表示"  ]
[return  ]
[s  ]
[tb_show_message_window  ]
