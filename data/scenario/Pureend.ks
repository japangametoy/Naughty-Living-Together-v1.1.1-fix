[_tb_system_call storage=system/_Pureend.ks]

[call  storage="_Array_.ks"  target="*__配列宣言"  ]
[tb_start_tyrano_code]
[layopt layer=1 visible=true opacity=255]
[layopt layer=2 visible=true opacity=255]

[_tb_end_tyrano_code]

*__Pureend

[tb_replay_start  ]
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
With the momentum of her peak popularity behind her, today marks the day of [emb exp="f.Imo_Name"]'s first solo concert at the Dome[p]
[_tb_end_text]

[bg  time="500"  method="crossfade"  storage="玄関02.png"  ]
[chara_show  name="さくら_玄関"  time="1000"  wait="true"  storage="chara/18/玄関送り11.png"  width="560"  height="670"  left="360"  top="50"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
・・・[emb exp="f.Oni_Name3"], thank you for everything up until now[p]
I'm going to go do my best[p]
#&f.Oni_Name3
Yeah, go make your dream come true[p]
#&f.Imo_Name
Yeah!![p]
#
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="ドアを開ける1.mp3"  ]
[chara_hide_all  time="500"  wait="true"  ]
[mask  time="500"  effect="fadeIn"  color="0x000000"  ]
[call  storage="Main_Sta.ks"  target="*__roleのみ表示"  ]
[wait  time="1000"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="ドア閉め.mp3"  ]
[delete_individual_image  layer="1"  name="上枠"  ]
[bg  time="0"  method="crossfade"  storage="BG_Black.png"  ]
[wait  time="1000"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[playse  volume="100"  time="1000"  buf="1"  storage="スポットライトが当たる.mp3"  ]
[playbgm  volume="30"  time="1000"  loop="true"  storage="PerituneMaterial_Memories6_loop.mp3"  ]
[bg  time="1000"  method="fadeIn"  storage="ライブ一枚絵.png"  cross="true"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="スタジアムの歓声_(1).mp3"  ]
[wait  time="2000"  ]
[tb_start_text mode=1 ]
#
The concert venue was wrapped in a feverish heat[p]
The venue was packed, and everyone is an [emb exp="f.Imo_Name"] fan[p]
Loud cheers echoed, and [emb exp="f.Imo_Name"] on stage looked radiant[p]
I・・・ watched [emb exp="f.Imo_Name"], desperate to hold back tears of overwhelming emotion[p]
[emb exp="f.Imo_Name"], who will continue running as a top idol from here on out[p]
This current life is like a landmine that might explode at any time[p]
・・・[p]
・・・For [emb exp="f.Imo_Name"]'s sake too・・・[p]
Maybe it's better to put an end to this life[p]
Thinking about what comes next, I watched the concert through to the end with complicated feelings[p]
・・・[p]
・・・[p]
[_tb_end_text]

[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[stopbgm  time="1000"  fadeout="true"  ]
[bg  time="0"  method="crossfade"  storage="BG01.png"  ]
[individual_image  layer="1"  zindex="1"  storage="default/Main_Window_Pro.png"  width="1280"  height="720"  name="上枠"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
#
Time passed after that, our life together came to an end, and [emb exp="f.Imo_Name"] successfully became independent[p]
[emb exp="f.Imo_Name"]'s momentum after that was tremendous; in no time, she climbed to become a top celebrity in high demand for concerts, dramas, variety shows, and more[p]
I・・・ go about my daily life, remembering those sweet days[p]
I went back to living alone, and as an ordinary company employee and a fan, I've been supporting her from the shadows[p]
[emb exp="f.Imo_Name"] on the screen was beautiful, possessing a radiance that made her seem like a resident of another world[p]
・・・[p]
#&f.Oni_Name3
I have to do my best too・・・[p]
#
I spend my days unchanged[p]
I spend my days off vaguely watching the TV [emb exp="f.Imo_Name"] is appearing on[p]
[_tb_end_text]

[playse  volume="50"  time="1000"  buf="0"  storage="ドアチャイム2.mp3"  ]
[tb_start_text mode=1 ]
#&f.Oni_Name3
Coming~[p]
#
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="スリッパで歩く.mp3"  ]
[bg  time="1000"  method="slideInRight"  storage="玄関01.png"  ]
[wait  time="1000"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="ドアを開ける1.mp3"  ]
[wait  time="1000"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="ドア閉め.mp3"  ]
[tb_start_text mode=1 ]
#&f.Oni_Name3
・・・Eh!?[p]
#
[_tb_end_text]

[playbgm  volume="30"  time="1000"  loop="true"  storage="kuuhaku_to_seizyaku.mp3"  ]
[chara_show  name="さくら_玄関"  time="1000"  wait="true"  storage="chara/18/純END01.png"  width="560"  height="670"  left="360"  top="50"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
・・・[p]
I'm home・・・ [emb exp="f.Oni_Name3"][p]
#&f.Oni_Name3
[emb exp="f.Imo_Name"]!? ・・・Why[p]
#
I compare her to the [emb exp="f.Imo_Name"] appearing on TV right this moment[p]
It's definitely [emb exp="f.Imo_Name"][p]
#&f.Imo_Name
Ehehe, I retired and came back[p]
#&f.Oni_Name3
Huh!?[p]
W-why!?[p]
#
[_tb_end_text]

[chara_mod  name="さくら_玄関"  time="0"  cross="false"  storage="chara/18/純END02.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
・・・[p]
I was already satisfied with my idol activities・・・ ehehe[p]
#
[_tb_end_text]

[chara_mod  name="さくら_玄関"  time="0"  cross="false"  storage="chara/18/純END03.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
・・・[p]
H-hey・・・ the dream of becoming the number one idol[p]
When that really big dream came true・・・[p]
Instead of a sense of accomplishment・・・ [emb exp="f.Oni_Name3"]'s face came to mind[p]
[emb exp="f.Oni_Name3"], who supported me with all his might when I was a rookie and struggling the most[p]
Who cherished me・・・ and gave me so much support[p]
#&f.Oni_Name3
[emb exp="f.Imo_Name"]・・・[p]
#&f.Imo_Name
A-actually, I have another dream besides being an idol[p]
#&f.Oni_Name3
Another one?[p]
#&f.Imo_Name
Yeah・・・[p]
[_tb_end_text]

[chara_mod  name="さくら_玄関"  time="0"  cross="false"  storage="chara/18/純END02.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
E-ehehe[p]
T-to make that dream come true・・・[p]
・・・No[p]
When I realized that dream was actually more important・・・[p]
I came back here[p]
#&f.Oni_Name3
That dream is・・・[p]
#
[_tb_end_text]

[chara_mod  name="さくら_玄関"  time="0"  cross="false"  storage="chara/18/純END03.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Well・・・ that is・・・[p]
I・・・[p]
I・・・ want to live with [emb exp="f.Oni_Name3"]・・・ happily together again・・・[p]
Is・・・ is it no good・・・[p]
#
[emb exp="f.Imo_Name"]'s hands are trembling[p]
She must be nervous, afraid that I might reject her[p]
That top idol is looking at me timidly, as if frightened[p]
#&f.Oni_Name3
[emb exp="f.Imo_Name"]・・・[p]
#
I wrap her trembling hand in mine and tell her with my brightest smile[p]
#&f.Oni_Name3
Of course it is!![p]
Let's live together again・・・ happily・・・ just the two of us[p]
#
[_tb_end_text]

[chara_hide_all  time="1000"  wait="true"  ]
[playbgm  volume="30"  time="1000"  loop="true"  storage="PerituneMaterial_Dawning_Tale.mp3"  ]
[delete_individual_image  layer="1"  name="上枠"  ]
[chara_show  name="純END"  time="1000"  wait="true"  storage="chara/43/純ENDラスト01.png"  width="1280"  height="720"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Yeah・・・ yeah!![p]
[emb exp="f.Oni_Name3"]！！[p]
#
[emb exp="f.Imo_Name"] hugs me while crying[p]
I pat [emb exp="f.Imo_Name"]'s head to comfort her as she sobs loudly[p]
#&f.Oni_Name3
There's nothing to feel guilty about anymore[p]
Let's live together[p]
#&f.Imo_Name
Ugh・・・ uhh・・・ sniff・・・[p]
Yeah・・・ yeah・・・ [emb exp="f.Oni_Name3"][p]
#
I don't know how much she's been hurting inside[p]
I just feel so much love for her as she keeps crying against my chest[p]
I want to make her happy from the bottom of my heart[p]
・・・[p]
[_tb_end_text]

[chara_mod  name="純END"  time="0"  cross="false"  storage="chara/43/純ENDラスト02.png"  ]
[tb_start_text mode=1 ]
#
After a long time passes, [emb exp="f.Imo_Name"] stops crying and asks in a small voice[p]
#&f.Imo_Name
Hey・・・[p]
[emb exp="f.Oni_Name3"]・・・ when we were living together[p]
・・・why didn't you do naughty stuff with me?[p]
#
I blow away all the guilty memories in my heart and answer bravely[p]
#&f.Oni_Name3
Because you're more important to me than anything[p]
#
[_tb_end_text]

[tb_start_text mode=1 ]
#&f.Imo_Name
Ugh・・・ no・・・ I'm gonna cry again[p]
Sniffle・・・ ugh・・・[p]
Uuuugh・・・[p]
#
[_tb_end_text]

[chara_mod  name="純END"  time="0"  cross="false"  storage="chara/43/純ENDラスト02.png"  ]
[tb_start_text mode=1 ]
#
[emb exp="f.Imo_Name"] whispers to me against my chest.[p]
#&f.Imo_Name
You know・・・ [emb exp="f.Oni_Name3"][p]
・・・[emb exp="f.Oni_Name3"] protected me.[p]
My first time・・・[p]
It's still・・・ safe.[p]
#&f.Oni_Name3
[emb exp="f.Imo_Name"]・・・[p]
#&f.Imo_Name
Ehehe・・・[p]
B-because I've decided・・・ my first time belongs only to [emb exp="f.Oni_Name3"]・・・[p]
#
At those words, my crotch gets a furious hard-on.[p]
The tip of my hard dick presses against [emb exp="f.Imo_Name"]'s thigh.[p]
[_tb_end_text]

[chara_mod  name="純END"  time="0"  cross="false"  storage="chara/43/純ENDラスト03.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Ah・・・ um・・・[p]
#
[_tb_end_text]

[chara_mod  name="純END"  time="0"  cross="false"  storage="chara/43/純ENDラスト02.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
G-geeze・・・ hehe.[p]
You're as perverted as ever・・・[p]
I love you so much・・・ [emb exp="f.Oni_Name3"][heart][p]
#
She hugs me with a full smile while shedding tears.[p]
It'll be okay.[p]
Surely the two of us can spend eternity happily together.[p]
There's nothing to feel guilty about anymore.[p]
We will build a new future together.[p]
Our cool cohabitation life has only just begun!![p]
[_tb_end_text]

[bg  time="0"  method="fadeIn"  storage="白背景.png"  cross="true"  ]
[tb_hide_message_window  ]
[tb_start_tyrano_code]
;回想用BGM変更
[playbgm volume="20"  time="1000"  loop="true"  storage="PerituneMaterial_Sea_Breeze_loop.mp3" cond="tf._tb_is_replay == true" ]
[_tb_end_tyrano_code]

*__回想解放用

[tb_replay  id="PureEnd"  ]
[jump  storage="Clear_present.ks"  target="*__Pure回想回収戻り先"  cond="sf.Clear_Flag_PureEnd==1"  ]
[tb_start_tyrano_code]
;ENDテキスト
[layopt layer=0 visible=true]
[mtext layer=0 text="Pure End" x=1000 y= 600 size=50 color="0xffffff" name="happyend" bold=bold edge="0x000000" wait=false in_effect="bounceInRight" in_delay=100 fadeout=false]
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
[tb_eval  exp="sf.Title_Pure_Flag=1"  name="Title_Pure_Flag"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_start_tyrano_code]
[freeimage layer=0]
[_tb_end_tyrano_code]

[stopbgm  time="1000"  fadeout="true"  ]
[mask_off  time="3000"  effect="fadeOut"  ]
[tb_show_message_window  ]
[playse  volume="100"  time="1000"  buf="0"  storage="クイズ正解5.mp3"  ]
[tb_start_text mode=1 ]
#
Clear Bonus[p]
After clicking [emb exp="f.Imo_Name"]'s earring on the title screen[p]
Enter the number「777」for a New Game +!![p]
[_tb_end_text]

[tb_hide_message_window  ]
[font  size="18"  color="0x000000"  face="JKG-M_3"  bold="true"  ]
[tb_start_tyrano_code]
;妹クリック後　選択肢
[glink  color="btn_05_black"  storage="Bestend.ks"  size="25"  x="530"  y="300"  width="250"  height="50"  text="Return to Title"  target="*タイトルへ" enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3" ]

[_tb_end_tyrano_code]

[resetfont  ]
[s  ]
