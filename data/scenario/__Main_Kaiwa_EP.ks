[_tb_system_call storage=system/___Main_Kaiwa_EP.ks]

[chara_show  name="さくら01"  time="0"  wait="true"  storage="chara/1/キャラ待機01.png"  width="500"  height="550"  ]
*0

[tb_start_text mode=1 ]
#
#&f.Oni_Name3
Have you gotten used to school?[p]

[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_11.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Hmm, I'm still nervous.[p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_01.png"  wait="true"  ]
[tb_start_text mode=1 ]
But the other day, the girl in front of me talked to me, and I think we got a little closer.[p]
Her name is Yuki-chan.[p]
#&f.Oni_Name3
Ohh.[p]
[_tb_end_text]

[tb_start_text mode=1 ]
#&f.Imo_Name
She seems calm and quiet, but suddenly she turns around and makes funny faces to make me laugh.[p]
#&f.Oni_Name3
S-she sounds unique.[p]
Think you'll become good friends?[p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_17.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Hehe, I think we might get along well.[p]
#&f.Oni_Name3
[emb exp="f.Imo_Name"]'s pretty unique too, so you'd probably get along great.[p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_19.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Hmm? [emb exp="f.Oni_Name3"], what do you mean?[p]
#&f.Oni_Name3
Hahaha, I mean you're cute.[p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_18.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Hmph.[p]
#
[_tb_end_text]

[tb_eval  exp="f.Tre_Up=1"  name="Tre_Up"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__好きUP"  ]
[jump  storage="__Main_kaiwa.ks"  target="*__会話終了"  ]
*1

[chara_show  name="さくら01"  time="1000"  wait="true"  storage="chara/1/キャラ待機01.png"  width="1000"  height="1100"  ]
[chara_part  name="さくら01"  time="0"  目="キャラ待機01_01.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Oni_Name3
Have you gotten used to your new life?[p]
How's the house to live in?[p]
#&f.Imo_Name
Yeah. It's bigger than I thought, and the room is clean, so it's nice.[p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_21.png"  wait="true"  ]
[tb_start_text mode=1 ]
Also, the kitchen looks easy to use, so I might try cooking.[p]
#&f.Oni_Name3
Did you learn how to cook?[p]
You used to turn everything into charcoal before.[p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_12.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
S-stop! Forget about that![p]
Back then, I didn't understand heat control at all![p]
Now even Mom praises my skills.[p]
#&f.Oni_Name3
Ohh, I'm looking forward to that.[p]
I plan to cook usually, but I might ask you sometimes.[p]
#
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_32.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Yeah![p]
#
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_11.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
But when it comes to actually having [emb exp="f.Oni_Name3"] eat my cooking, I might get nervous.[p]
#&f.Oni_Name3
I'll happily eat anything [emb exp="f.Imo_Name"] makes for me.[p]
#
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_30.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Hehe.[p]
I'll do my best to make it delicious.[p]
#&f.Oni_Name3
Yeah.[p]
#
[_tb_end_text]

[tb_eval  exp="f.Tre_Up=1"  name="Tre_Up"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__好きUP"  ]
[jump  storage="__Main_kaiwa.ks"  target="*__会話終了"  ]
*2

[tb_start_text mode=1 ]
I'll put some of my earnings from entertainment activities into the household.[p]
#&f.Oni_Name3
Dummy, you don't have to worry about that.[p]
I can support [emb exp="f.Imo_Name"] by myself.[p]

[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_12.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
No way, Mom said absolutely not.[p]
#&f.Oni_Name3
・・・Well, Auntie might be okay with it.[p]
Then let's make a joint bank account for the two of us.[p]

[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_13.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Yeah.[p]

[_tb_end_text]

[tb_start_text mode=1 ]
Hehe, it's like married life.[p]
#&f.Oni_Name3
Huh?[p]

[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_20.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
N-never mind![p]
#
[_tb_end_text]

[tb_eval  exp="f.Tre_Up=1"  name="Tre_Up"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__好きUP"  ]
[jump  storage="__Main_kaiwa.ks"  target="*__会話終了"  ]
*3

[tb_start_text mode=1 ]
#&f.Oni_Name3
Has [emb exp="f.Imo_Name"] ever had a lover?[p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_23.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Eh, no I haven't.[p]
#&f.Oni_Name3
But you must have been popular.[p]

[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_20.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
U-umm, I'm not really sure if I was popular.[p]
#&f.Oni_Name3
But you must have been confessed to a lot.[p]
#&f.Imo_Name
Everyone my age just looks like kids to me.[p]
#&f.Oni_Name3
Then what type do you like?[p]

[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_13.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
I think I like someone with more mature charm, who is kind.[p]
#&f.Oni_Name3
Mature, huh・・・[p]
Like your homeroom teacher!?[p]

[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_23.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
No way![p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_29.png"  wait="true"  ]
[tb_start_text mode=1 ]
G-geez, it's a secret![p]
Enough about me![p]
#&f.Oni_Name3
Aww, now I'm curious.[p]
#
[_tb_end_text]

[tb_eval  exp="f.Tre_Up=1"  name="Tre_Up"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__好きUP"  ]
[jump  storage="__Main_kaiwa.ks"  target="*__会話終了"  ]
*4

[tb_start_text mode=1 ]
#&f.Oni_Name3
Why did you want to become an idol? You used to be so shy, [emb exp="f.Imo_Name"].[p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_21.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Hmm, I've admired them since I was a child.[p]
But I thought someone like me could never become one.[p]
#&f.Oni_Name3
Eh, of course you could.[p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_20.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Really?[p]
#&f.Oni_Name3
You're super cute. And you have a great figure.[p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_13.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Geez! Flattery won't get you anything![p]
#&f.Oni_Name3
No, I'm serious. There's no idol as cute as [emb exp="f.Imo_Name"].[p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_29.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
G-geez・・・ I'll get carried away, so stop it!//[p]
#
[_tb_end_text]

[tb_eval  exp="f.Tre_Up=1"  name="Tre_Up"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__容姿UP"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__歌UP"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__ダンスUP"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__演技UP"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__話術UP"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__好きUP"  ]
[jump  storage="__Main_kaiwa.ks"  target="*__会話終了"  ]
*5

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_11.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
I felt somewhat relieved.[p]
#&f.Oni_Name3
Why?[p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_01.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Because [emb exp="f.Oni_Name3"] hasn't changed at all since back then.[p]
#&f.Oni_Name3
Ugh, you mean I grew up but stayed a brat?[p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_14.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Hehe, there are some childish parts, but still・・・ you know[p]
#&f.Oni_Name3
Hm?[p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_20.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
・・Th-That is・・・ Ugh[p]
[_tb_end_text]

[chara_hide_all  time="0"  wait="true"  ]
[chara_show  name="さくら01_1"  time="0"  wait="true"  storage="chara/15/キャラ待機18.png"  width="500"  height="550"  left="750"  top="170"  ]
[tb_start_text mode=1 ]
No, it's nothing.[p]
#&f.Oni_Name3
Hey, I'm curious. Finish what you were saying.[p]
#&f.Imo_Name
Ugh・・[p]
[_tb_end_text]

[chara_hide_all  time="0"  wait="true"  ]
[chara_show  name="さくら01"  time="0"  wait="true"  storage="chara/1/キャラ待機01.png"  width="500"  height="550"  left="750"  top="170"  ]
[chara_part  name="さくら01"  time="0"  目="キャラ待機01_20.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Ah![p]

[_tb_end_text]

[tb_start_tyrano_code]
;ステータスにより分岐
[if exp="f.Oni_Youshi >=7"]
That's right, like・・ the way you headbutt people?
[elsif exp="f.Oni_Taikaku >= 7"]
That's right, the big thing・・・?
[elsif exp="f.Oni_Work >= 7"]
That's right, being considerate!
[elsif exp="f.Oni_Ero >= 7"]
Um・・・ being good at massages!
[else]
That's right, having a nice vibe!?
[endif]
[p]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
#&f.Oni_Name3
Oh, thank you.[p]
#
Hmm.[p]
Is that supposed to be a good rating?[p]
[_tb_end_text]

[tb_eval  exp="f.Tre_Up=1"  name="Tre_Up"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__歌UP"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__ダンスUP"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__演技UP"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__話術UP"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__好きUP"  ]
[jump  storage="__Main_kaiwa.ks"  target="*__会話終了"  ]
*6

[tb_start_text mode=1 ]
#&f.Imo_Name
What type of girl is [emb exp="f.Oni_Name3"]'s type?[p]
#&f.Oni_Name3
Hmm, I don't really have a specific preference.[p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_12.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Ehh, you're dodging the question~[p]
#&f.Oni_Name3
I'm not dodging anything.[p]
If I had to say・・・ someone I feel calm with.[p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_20.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Heh.[p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_24.png"  wait="true"  ]
[tb_start_text mode=1 ]
A-Are you calm right now?[p]
#&f.Oni_Name3
Hahaha, I guess I am calm.[p]
[emb exp="f.Imo_Name"] looks a little red in the face.[p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_23.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
N-N-Not at all![p]
I'm calm! I'm totally calm![p]
#&f.Oni_Name3
Haha, saying it while panicking isn't very convincing.[p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_28.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Hmph![p]
#
[_tb_end_text]

[tb_eval  exp="f.Tre_Up=1"  name="Tre_Up"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__歌UP"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__ダンスUP"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__演技UP"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__話術UP"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__好きUP"  ]
[jump  storage="__Main_kaiwa.ks"  target="*__会話終了"  ]
*7

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_24.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Um, [emb exp="f.Oni_Name3"]・・・ do you・・・ um・・・ have a girlfriend?[p]
#&f.Oni_Name3
Eh, what's up?[p]
I don't.[p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_13.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
O-Oh.[p]
・・I see.[p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_20.png"  wait="true"  ]
[tb_start_text mode=1 ]
D-Do you have someone you like?[p]
#&f.Oni_Name3
Is this girl talk?[p]
Hmm, I don't right now.[p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_13.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
O-Oh, I see.[p]
#&f.Oni_Name3
Ah, but I do love [emb exp="f.Imo_Name"].[p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_23.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Geez! Don't say weird things all of a sudden![p]
#&f.Oni_Name3
Eh, is it weird?[p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_29.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
It is weird![p]
#
[_tb_end_text]

[tb_eval  exp="f.Tre_Up=1"  name="Tre_Up"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__歌UP"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__ダンスUP"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__演技UP"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__話術UP"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__好きUP"  ]
[jump  storage="__Main_kaiwa.ks"  target="*__会話終了"  ]
*8

[chara_hide_all  time="0"  wait="true"  ]
[chara_show  name="さくら01_1"  time="0"  wait="true"  storage="chara/15/キャラ待機13.png"  width="500"  height="550"  left="750"  top="170"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
・・・[p]
#&f.Oni_Name3
？[p]
[_tb_end_text]

[chara_mod  name="さくら01_1"  time="0"  cross="true"  storage="chara/15/キャラ待機12.png"  ]
[wait  time="1000"  ]
[chara_mod  name="さくら01_1"  time="0"  cross="true"  storage="chara/15/キャラ待機13.png"  ]
[tb_start_text mode=1 ]
#&f.Oni_Name3
？[p]
[_tb_end_text]

[chara_mod  name="さくら01_1"  time="0"  cross="true"  storage="chara/15/キャラ待機12.png"  ]
[tb_start_text mode=1 ]
What's wrong, [emb exp="f.Imo_Name"]?[p]
#&f.Imo_Name
I-It's nothing.[p]
・・・[p]
[_tb_end_text]

[chara_mod  name="さくら01_1"  time="0"  cross="true"  storage="chara/15/キャラ待機13.png"  ]
[tb_start_text mode=1 ]
Um, [emb exp="f.Oni_Name3"], do you like me?[p]
#&f.Oni_Name3
Eh? I love you.[p]
[_tb_end_text]

[chara_hide_all  time="0"  wait="true"  ]
[chara_show  name="さくら01"  time="0"  wait="true"  storage="chara/1/キャラ待機01.png"  width="500"  height="550"  left="750"  top="170"  ]
[chara_part  name="さくら01"  time="0"  目="キャラ待機01_23.png"  wait="true"  ]
[wait  time="1000"  ]
[chara_part  name="さくら01"  time="0"  目="キャラ待機01_24.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
U-Ugh.[p]
S-So easily.[p]
#&f.Oni_Name3
What about [emb exp="f.Imo_Name"]?[p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_27.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Um・・・ well・・・[p]
#&f.Oni_Name3
Hm?[p]
[_tb_end_text]

[chara_hide_all  time="0"  wait="true"  ]
[chara_show  name="さくら01_1"  time="0"  wait="true"  storage="chara/15/キャラ待機18.png"  width="500"  height="550"  left="750"  top="170"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
・・・Lo・・[p]
Love you.[p]
#&f.Oni_Name3
Ehh, really? How much?[p]
#&f.Imo_Name
・・・[p]
I・・ I love you a lot.[p]
#&f.Oni_Name3
I'm happy.[p]
[_tb_end_text]

[chara_hide_all  time="0"  wait="true"  ]
[chara_show  name="さくら01"  time="0"  wait="true"  storage="chara/1/キャラ待機01.png"  width="500"  height="550"  left="750"  top="170"  ]
[chara_part  name="さくら01"  time="0"  目="キャラ待機01_30.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Heh, ehehehe.[p]
Ehehehe.[p]
#
I want to protect this smile.[p]
[_tb_end_text]

[tb_eval  exp="f.Tre_Up=1"  name="Tre_Up"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__歌UP"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__ダンスUP"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__演技UP"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__話術UP"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__好きUP"  ]
[jump  storage="__Main_kaiwa.ks"  target="*__会話終了"  ]
*9

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_12.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
[emb exp="f.Oni_Name3"], pat my head.[p]
#&f.Oni_Name3
Okay, okay.[p]
[emb exp="f.Imo_Name"] really loves being spoiled.[p]
#
[_tb_end_text]

[individual_image  layer="1"  zindex="1"  name="kaiwaEP9"  storage="default/スキンシップ02.png"  width="300"  height="400"  wait="true"  x="900"  y="100"  time="300"  ]
[wait  time="2000"  ]
[delete_individual_image  layer="1"  time="300"  name="kaiwaEP9"  wait="true"  ]
[chara_part  name="さくら01"  time="0"  目="キャラ待機01_13.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Ehehe[p]
#&f.Oni_Name3
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_20.png"  wait="true"  ]
[tb_start_text mode=1 ]
[emb exp="f.Oni_Name3"], can I hold your hand?[p]
#&f.Oni_Name3
Yeah.[p]
#
[_tb_end_text]

[individual_image  layer="1"  zindex="1"  name="kaiwaEP9"  storage="default/スキンシップ04.png"  width="300"  height="400"  wait="true"  x="900"  y="100"  time="300"  ]
[wait  time="2000"  ]
[delete_individual_image  layer="1"  time="300"  name="kaiwaEP9"  wait="true"  ]
[chara_part  name="さくら01"  time="0"  目="キャラ待機01_32.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Hehe♪[p]
#&f.Oni_Name3
You're cute today too.[p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_13.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Mmm, thanks[p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_26.png"  wait="true"  ]
[tb_start_text mode=1 ]
・・・[p]
[emb exp="f.Oni_Name3"]・・・[p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_27.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Oni_Name3
Ah[p]
#
[_tb_end_text]

[individual_image  layer="1"  zindex="1"  name="kaiwaEP9"  storage="default/スキンシップ08_1.png"  width="300"  height="400"  wait="true"  x="900"  y="100"  time="300"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="えっち系/キス01.mp3"  ]
[wait  time="2000"  ]
[delete_individual_image  layer="1"  time="300"  name="kaiwaEP9"  wait="true"  ]
[chara_part  name="さくら01"  time="0"  目="キャラ待機01_30.png"  wait="true"  ]
[stopse  time="1000"  buf="0"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Heh, ehehe[p]
#
Ah, so cute[p]
#&f.Oni_Name3
Is once enough?[p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_27.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
No, more・・・[p]
#
[_tb_end_text]

[individual_image  layer="1"  zindex="1"  name="kaiwaEP9"  storage="default/スキンシップ08_1.png"  width="300"  height="400"  wait="true"  x="900"  y="100"  time="300"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="えっち系/キス01.mp3"  ]
[wait  time="2000"  ]
[delete_individual_image  layer="1"  time="300"  name="kaiwaEP9"  wait="true"  ]
[chara_part  name="さくら01"  time="0"  目="キャラ待機01_26.png"  wait="true"  ]
[stopse  time="1000"  buf="0"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
I love you・・・[p]
#
・・・[p]
Phew[p]
Makes me wanna do naughty stuff[p]

[_tb_end_text]

[tb_start_tyrano_code]
;回数カウント
[eval exp="f.Kaihatu_Count[0].kazu += 1"]
[_tb_end_tyrano_code]

[tb_eval  exp="f.Tre_Up=2"  name="Tre_Up"  cmd="="  op="t"  val="2"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__歌UP"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__ダンスUP"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__演技UP"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__話術UP"  ]
[tb_eval  exp="f.Tre_Up=1"  name="Tre_Up"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__好きUP"  ]
[jump  storage="__Main_kaiwa.ks"  target="*__会話終了"  ]
*10

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_26.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
[emb exp="f.Oni_Name3"]. I・・I love you[p]
・・・I love you so much.[p]
#&f.Oni_Name3
There, there[p]
#
[_tb_end_text]

[individual_image  layer="1"  zindex="1"  name="kaiwaEP9"  storage="default/スキンシップ02.png"  width="300"  height="400"  wait="true"  x="900"  y="100"  time="300"  ]
[wait  time="2000"  ]
[delete_individual_image  layer="1"  time="300"  name="kaiwaEP9"  wait="true"  ]
[chara_part  name="さくら01"  time="0"  目="キャラ待機01_27.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
・・I love you.[p]
#&f.Oni_Name3
I love you too.[p]
#
[_tb_end_text]

[individual_image  layer="1"  zindex="1"  name="kaiwaEP9"  storage="default/スキンシップ08_1.png"  width="300"  height="400"  wait="true"  x="900"  y="100"  time="300"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="えっち系/キス01.mp3"  ]
[wait  time="2000"  ]
[delete_individual_image  layer="1"  time="300"  name="kaiwaEP9"  wait="true"  ]
[chara_part  name="さくら01"  time="0"  目="キャラ待機01_30.png"  wait="true"  ]
[stopse  time="1000"  buf="0"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Hehe[p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_26.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
・・・I love you.[p]
・・・[p]
#
[_tb_end_text]

[individual_image  layer="1"  zindex="1"  name="kaiwaEP9"  storage="default/スキンシップ08_1.png"  width="300"  height="400"  wait="true"  x="900"  y="100"  time="300"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="えっち系/キス01.mp3"  ]
[wait  time="2000"  ]
[delete_individual_image  layer="1"  time="300"  name="kaiwaEP9"  wait="true"  ]
[chara_hide_all  time="0"  wait="true"  ]
[chara_show  name="さくら01_1"  time="0"  wait="true"  storage="chara/15/キャラ待機18.png"  width="500"  height="550"  left="750"  top="170"  ]
[stopse  time="1000"  buf="0"  ]
[tb_start_text mode=1 ]
#&f.Oni_Name3
What is this little animal?[p]
So cute[p]
#&f.Imo_Name
・・・[p]
・・・I love you[p]
#
[_tb_end_text]

[tb_start_tyrano_code]
;回数カウント
[eval exp="f.Kaihatu_Count[0].kazu += 1"]
[_tb_end_tyrano_code]

[tb_eval  exp="f.Tre_Up=2"  name="Tre_Up"  cmd="="  op="t"  val="2"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__容姿UP"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__歌UP"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__ダンスUP"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__演技UP"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__話術UP"  ]
[jump  storage="__Main_kaiwa.ks"  target="*__会話終了"  ]
*11

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_26.png"  wait="true"  ]
[tb_start_text mode=1 ]
#
Lately, every day when I sit on the sofa, [emb exp="f.Imo_Name"] slips right in beside me[p]
She leans against me without a word, resting her head on my shoulder.[p]
Immediately, I wrap my arm around her waist and pull her close, pressing our bodies together[p]
[_tb_end_text]

[individual_image  layer="1"  zindex="1"  name="kaiwaEP11"  storage="default/スキンシップ07.png"  width="300"  height="400"  wait="true"  x="900"  y="100"  time="300"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Mm・・・[p]
#
Spending time in silence while feeling each other's warmth has become part of our daily routine[p]
#&f.Imo_Name
・・・[p]
#
[_tb_end_text]

[individual_image  layer="1"  zindex="1"  name="kaiwaEP11"  storage="default/スキンシップ08.png"  width="300"  height="400"  wait="true"  x="900"  y="100"  time="300"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Mmh・・・[p]
#
Suddenly, [emb exp="f.Imo_Name"] turns toward me and begs for a kiss[p]
#
I bring my face closer, gazing into [emb exp="f.Imo_Name"]'s eyes as her cheeks flush red[p]
[_tb_end_text]

[individual_image  layer="1"  zindex="1"  name="kaiwaEP11"  storage="default/スキンシップ08_1.png"  width="300"  height="400"  wait="true"  x="900"  y="100"  time="300"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="えっち系/キス01.mp3"  loop="true"  ]
[l  ]
[stopse  time="0"  buf="0"  ]
[delete_individual_image  layer="1"  name="kaiwaEP11"  ]
[chara_part  name="さくら01"  time="0"  目="キャラ待機01_27.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
・・・Nnhah[p]
#
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_26.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
I love you・・・[p]
#
[emb exp="f.Imo_Name"] always whispers that in my ear[p]
Today, in return, I whisper into [emb exp="f.Imo_Name"]'s ear with a calm voice[p]
#&f.Oni_Name3
I love you[p]
#
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_27.png"  wait="true"  ]
[tb_start_text mode=1 ]
#
As I whispered that in her ear, [emb exp="f.Imo_Name"] shuddered and clung to me.[p]
#&f.Imo_Name
[emb exp="f.Oni_Name3"][heart][emb exp="f.Oni_Name3"][heart][emb exp="f.Oni_Name3"][heart]・・・[p]
#
[_tb_end_text]

[individual_image  layer="1"  zindex="1"  name="kaiwaEP11"  storage="default/スキンシップ08_1.png"  width="300"  height="400"  wait="true"  x="900"  y="100"  time="300"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="えっち系/キス01.mp3"  loop="true"  ]
[l  ]
[stopse  time="0"  buf="0"  ]
[delete_individual_image  layer="1"  name="kaiwaEP11"  ]
[chara_part  name="さくら01"  time="0"  目="キャラ待機01_26.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Haa・・・Haa・・・[p]
[emb exp="f.Oni_Name3"][heart]・・・[p]
#
[_tb_end_text]

[individual_image  layer="1"  zindex="1"  name="kaiwaEP11"  storage="default/スキンシップ08_1.png"  width="300"  height="400"  wait="true"  x="900"  y="100"  time="300"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="えっち系/キス01.mp3"  loop="true"  ]
[l  ]
[stopse  time="0"  buf="0"  ]
[delete_individual_image  layer="1"  name="kaiwaEP11"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Haa・・・Haa・・・I love you[heart][p]
・・・I love you・・・[p]
・・・I love you[heart][p]
#
While feeling [emb exp="f.Imo_Name"]'s sweet scent and body heat warm enough to make her sweat, we entwined our tongues over and over, and I truly felt happy[p]
[_tb_end_text]

[tb_start_tyrano_code]
;回数カウント
[eval exp="f.Kaihatu_Count[0].kazu += 1"]
[_tb_end_tyrano_code]

[tb_eval  exp="f.Tre_Up=3"  name="Tre_Up"  cmd="="  op="t"  val="3"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__容姿UP"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__歌UP"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__ダンスUP"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__演技UP"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__話術UP"  ]
[jump  storage="__Main_kaiwa.ks"  target="*__会話終了"  ]
*12

[chara_hide_all  time="0"  wait="false"  ]
[chara_show  name="さくら03"  time="0"  wait="true"  storage="chara/4/キャラ待機31.png"  width="500"  height="550"  left="750"  top="170"  ]
[tb_start_text mode=1 ]
I remember that [emb exp="f.Imo_Name"] has been secretly masturbating every day behind my back[p]
The usual [emb exp="f.Imo_Name"] doesn't seem to have much interest in naughty stuff[p]
I thought she was actually averse to it, but・・・[p]

[_tb_end_text]

[chara_hide_all  time="0"  wait="false"  ]
[chara_show  name="さくら01"  time="0"  wait="false"  storage="chara/1/キャラ待機01.png"  width="500"  height="550"  left="750"  top="170"  ]
[chara_part  name="さくら01"  time="0"  目="キャラ待機01_01.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Hm? What's wrong, [emb exp="f.Oni_Name3"][p]
#&f.Oni_Name3
Nah, it's nothing[p]
#
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_19.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Really?[p]
#
・・・[p]
Maybe she's just holding back with reason[p]
・・・[p]
[_tb_end_text]

[tb_eval  exp="f.Tre_Up=1"  name="Tre_Up"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__好きUP"  ]
[tb_eval  exp="f.Tre_Up=10"  name="Tre_Up"  cmd="="  op="t"  val="10"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__性欲UP"  ]
[jump  storage="__Main_kaiwa.ks"  target="*__会話終了"  ]
*13

[chara_hide_all  time="0"  wait="true"  ]
[chara_show  name="さくら01_1"  time="0"  wait="true"  storage="chara/15/キャラ待機12.png"  width="500"  height="550"  left="750"  top="170"  ]
[tb_start_text mode=1 ]
#
When I look at [emb exp="f.Imo_Name"], she's blushing and squirming.[p]
She's probably holding back her lust with reason.[p]
Maybe masturbating every night is reaching its limit.[p]
#&f.Oni_Name3
[emb exp="f.Imo_Name"][p]
#&f.Imo_Name
Mmh・・・[p]
#&f.Oni_Name3
[emb exp="f.Imo_Name"]？[p]
[_tb_end_text]

[chara_mod  name="さくら01_1"  time="0"  cross="true"  storage="chara/15/キャラ待機13.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
W-what is it?[p]
#&f.Oni_Name3
No, I was just spacing out.[p]
[_tb_end_text]

[chara_mod  name="さくら01_1"  time="0"  cross="true"  storage="chara/15/キャラ待機12.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
I-I'm okay[p]
Just going to the restroom.[p]
#&f.Oni_Name3
Ah[p]
[_tb_end_text]

[chara_hide_all  time="1000"  wait="true"  ]
[tb_start_text mode=1 ]
#
・・・[p]
[_tb_end_text]

[tb_eval  exp="f.Tre_Up=1"  name="Tre_Up"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__好きUP"  ]
[tb_eval  exp="f.Tre_Up=40"  name="Tre_Up"  cmd="="  op="t"  val="40"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__性欲UP"  ]
[jump  storage="__Main_kaiwa.ks"  target="*__会話終了"  ]
*14

[chara_hide_all  time="0"  wait="false"  ]
[tb_eval  exp="f.H_Furo_First=1"  name="H_Furo_First"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[chara_show  name="さくら03"  time="0"  wait="false"  storage="chara/4/キャラ待機31.png"  width="500"  height="550"  left="750"  top="170"  ]
[tb_start_text mode=1 ]
#
I remember [emb exp="f.Imo_Name"] taking a bath.[p]
We used to take baths together often back then・・・[p]
I remember her body from back then, when she was still so young.[p]
[_tb_end_text]

[jump  storage="__Main_Kaiwa_EP.ks"  target="*14_分岐"  cond="f.H_Furo_First>0"  ]
[tb_start_text mode=1 ]
I fantasize while gazing at [emb exp="f.Imo_Name"]'s matured, voluptuous body and recalling old memories[p]
・・・I'm starting to want to see her breasts[p]
If I barged in on her bath right now・・・I bet she wouldn't say no[p]
・・・Maybe I'll try that next[p]
While thinking that, I studied her adorable profile.[p]
[_tb_end_text]

[tb_eval  exp="f.Tre_Up=1"  name="Tre_Up"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__好きUP"  ]
[jump  storage="__Main_kaiwa.ks"  target="*__会話終了"  ]
*14_分岐

[tb_start_text mode=1 ]
#
I compare the [emb exp="f.Imo_Name"] in my memories with the fully-grown, voluptuous [emb exp="f.Imo_Name"] of today, right here where we first did it[p]
Even hidden by my hands, her soft, heavy breasts are too big to cover, perfectly shaped and perky.[p]
Just remembering it gets me hard[p]

[_tb_end_text]

[chara_hide_all  time="0"  wait="false"  ]
[chara_show  name="さくら01"  time="0"  wait="false"  storage="chara/1/キャラ待機01.png"  width="500"  height="550"  left="750"  top="170"  ]
[chara_part  name="さくら01"  time="0"  目="キャラ待機01_01.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
What's wrong, [emb exp="f.Oni_Name3"]?[p]
#&f.Oni_Name3
Come to think of it, she didn’t pull away when we were pressed together in the bath.[p]
#
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_20.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
I know you're a perv, [emb exp="f.Oni_Name3"]・・・[p]
B-But touching weird places is a bit・・・[p]
#&f.Oni_Name3
Ah, sorry sorry, I'll be more careful next time[p]
#
[_tb_end_text]

[chara_hide_all  time="0"  wait="false"  ]
[chara_show  name="さくら01_1"  time="0"  wait="false"  storage="chara/15/キャラ待機13.png"  width="500"  height="550"  left="750"  top="170"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Y-Yeah[p]
#
・・・Huh? You looked a little disappointed?[p]
・・・[p]
・・・Guess I'd better start living up to those expectations from here on out[p]
I can't wait for tonight[p]
[_tb_end_text]

[tb_eval  exp="f.Tre_Up=1"  name="Tre_Up"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__好きUP"  ]
[tb_eval  exp="f.Tre_Up=30"  name="Tre_Up"  cmd="="  op="t"  val="30"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__性欲UP"  ]
[jump  storage="__Main_kaiwa.ks"  target="*__会話終了"  ]
*15

[chara_hide_all  time="0"  wait="true"  ]
[chara_show  name="さくら01_1"  time="0"  wait="true"  storage="chara/15/キャラ待機16.png"  width="500"  height="550"  left="750"  top="170"  ]
[tb_start_text mode=1 ]
[emb exp="f.Imo_Name"] is clutching her shoulder and sighing[p]
#&f.Imo_Name
Haaaah[p]
#&f.Oni_Name3
What's wrong? [emb exp="f.Imo_Name"][p]
#

[_tb_end_text]

[chara_hide_all  time="0"  wait="false"  ]
[chara_show  name="さくら01"  time="0"  wait="false"  storage="chara/1/キャラ待機01.png"  width="500"  height="550"  left="750"  top="170"  ]
[chara_part  name="さくら01"  time="0"  目="キャラ待機01_12.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
My shoulders have gotten all stiff・・・[p]
#&f.Oni_Name3
Eh? Why? Even though she's so young?[p]
#
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_21.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Maybe it's training fatigue[p]
#
・・・I think it's clearly because of those breasts, but[p]
#&f.Oni_Name3
Want me to give you a massage tonight?[p]
#
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_23.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Eh, is that okay?[p]
#
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_17.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Yay![p]
#&f.Oni_Name3
Yeah, let's do that after my bath.[p]
It works best right after a bath when your blood circulation is better[p]
#

[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_20.png"  ]
[tb_start_text mode=1 ]
#
As I said that and touched her shoulder・・・ [emb exp="f.Imo_Name"]'s body twitched.[p]
#&f.Imo_Name
Oh, I see[p]
[emb exp="f.Oni_Name3"] the know-it-all[p]
#
Lately, [emb exp="f.Imo_Name"]'s behavior has been changing.[p]
When I touch her body, I feel the heat, and her cheeks are flushed.[p]
It seems her resistance to naughty stuff has lessened[p]
#&f.Oni_Name3
Does [emb exp="f.Imo_Name"] hate naughty stuff?[p]
#
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_23.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Huh!?[p]
What's wrong all of a sudden, [emb exp="f.Oni_Name3"]!?[p]
#&f.Oni_Name3
Does [emb exp="f.Imo_Name"] dislike naughty stuff?[p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_24.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
・・・I-I don't dislike it, but・・・[p]
#&f.Oni_Name3
Do you love me?[p]
[_tb_end_text]

[chara_hide_all  time="0"  wait="true"  ]
[chara_show  name="さくら01_1"  time="0"  wait="true"  storage="chara/15/キャラ待機12.png"  width="500"  height="550"  left="750"  top="170"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
・・・[p]
・・・[p]
・・・nod[p]
[_tb_end_text]

[chara_mod  name="さくら01_1"  time="0"  cross="true"  storage="chara/15/キャラ待機13.png"  ]
[tb_start_text mode=1 ]
S-sorry, I'll go bring the laundry in![p]
[_tb_end_text]

[chara_hide_all  time="1000"  wait="true"  ]
[tb_start_text mode=1 ]
#
・・・[p]
・・・Maybe she won't turn me down anymore before long.[p]
[_tb_end_text]

[tb_eval  exp="f.Tre_Up=1"  name="Tre_Up"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__好きUP"  ]
[tb_eval  exp="f.Tre_Up=40"  name="Tre_Up"  cmd="="  op="t"  val="40"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__性欲UP"  ]
[jump  storage="__Main_kaiwa.ks"  target="*__会話終了"  ]
*16

[chara_show  name="さくら01"  time="1000"  wait="true"  storage="chara/1/キャラ待機01.png"  width="1000"  height="1100"  ]
[chara_part  name="さくら01"  time="0"  目="キャラ待機01_01.png"  ]
[tb_start_text mode=1 ]
#
Come to think of it, lately after we take a bath together, I get the feeling [emb exp="f.Imo_Name"] looks a bit unsatisfied[p]
・・・The pleasure of pressing our naked bodies together and touching each other is beyond compare, but・・・[p]
Up until now, I've been holding back on how much I touched her in the bathroom[p]
#&f.Oni_Name3
[emb exp="f.Imo_Name"], do you dislike being touched when we take a bath together?[p]

[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_23.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Huh!?[p]
#
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_24.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
・・・I-I don't mind, though[p]
#
Seeing that reaction, I whisper into her ear[p]
#&f.Oni_Name3
Can I touch you more lewdly?[p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_23.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Fwah!?[p]
#&f.Oni_Name3
Let's do something even lewder[p]
#&f.Imo_Name
Fwehh?[p]
#
・・・[p]
Seeing her not bad reaction, I whisper even more[p]
#&f.Oni_Name3
I want to do more naughty stuff with cute [emb exp="f.Imo_Name"][p]
#
[_tb_end_text]

[chara_hide_all  time="0"  wait="false"  ]
[chara_show  name="さくら01_1"  time="0"  wait="true"  storage="chara/15/キャラ待機19_1.png"  width="500"  height="550"  left="750"  top="170"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
・・・[p]
・・・[p]
Oh, if [emb exp="f.Oni_Name3"] wants to do it・・・[p]
#
Seeing [emb exp="f.Imo_Name"] fidget and look down, blushing red to her ears, my crotch reacts intensely.[p]
Phew[p]
I'm looking forward to tonight[p]

[_tb_end_text]

[tb_eval  exp="f.Tre_Up=1"  name="Tre_Up"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__好きUP"  ]
[tb_eval  exp="f.Tre_Up=40"  name="Tre_Up"  cmd="="  op="t"  val="40"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__性欲UP"  ]
[jump  storage="__Main_kaiwa.ks"  target="*__会話終了"  ]
*17

[chara_hide_all  time="0"  wait="false"  ]
[chara_show  name="さくら01_1"  time="0"  wait="true"  storage="chara/15/キャラ待機14.png"  width="500"  height="550"  left="750"  top="170"  ]
[tb_start_text mode=1 ]
#
Recently, when I sit on the sofa, [emb exp="f.Imo_Name"] naturally comes and sits so that our shoulders touch[p]
She must be expecting to be touched[p]

[_tb_end_text]

[chara_mod  name="さくら01_1"  time="0"  cross="false"  storage="chara/15/キャラ待機19_3.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Ah・・・[p]
#
[_tb_end_text]

[individual_image  layer="1"  zindex="1"  name="kaiwaEP17"  storage="default/スキンシップ07.png"  width="300"  height="400"  wait="true"  x="900"  y="100"  time="300"  ]
[tb_start_text mode=1 ]
#
Without a word, I wrap my arms around her waist and pull [emb exp="f.Imo_Name"] close[p]
Staying pressed close, feeling [emb exp="f.Imo_Name"]'s warmth, I spend the time in silence[p]
#&f.Imo_Name
・・・[p]
・・・[p]
#
As we stayed pressed together like that for a while, I felt [emb exp="f.Imo_Name"] getting a little sweaty[p]
It seems she's expecting something more[p]

[_tb_end_text]

[individual_image  layer="1"  zindex="1"  name="kaiwaEP17"  storage="default/スキンシップ08_1.png"  width="300"  height="400"  wait="true"  x="900"  y="100"  time="300"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="えっち系/キス01.mp3"  loop="true"  ]
[tb_start_text mode=1 ]
#
When I tease her a little with a kiss, she doesn't resist—rather, she kisses me back even more intensely[p]
#&f.Imo_Name
Mmm・・・[p]
#

[_tb_end_text]

[l  ]
[stopse  time="0"  buf="0"  ]
[chara_mod  name="さくら01_1"  time="0"  cross="false"  storage="chara/15/キャラ待機19_1.png"  ]
[delete_individual_image  layer="1"  name="kaiwaEP17"  ]
[tb_start_text mode=1 ]
#
She wouldn't turn me down if I stripped her right here[p]
・・・I'm getting turned on[p]
As I gazed at [emb exp="f.Imo_Name"], blushing in my arms, I was overcome with emotion[p]
[_tb_end_text]

[tb_eval  exp="f.Tre_Up=1"  name="Tre_Up"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__好きUP"  ]
[tb_eval  exp="f.Tre_Up=40"  name="Tre_Up"  cmd="="  op="t"  val="40"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__性欲UP"  ]
[jump  storage="__Main_kaiwa.ks"  target="*__会話終了"  ]
*18

[tb_start_text mode=1 ]
#&f.Oni_Name3
[emb exp="f.Imo_Name"], could you lick it for me a little?[p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_23.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Wh-what are you saying all of a sudden, [emb exp="f.Oni_Name3"]?[p]
#&f.Oni_Name3
[emb exp="f.Imo_Name"][p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_24.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
W-well, it can't be helped then[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="1"  storage="えっち系/衣擦れ3.mp3"  ]
[chara_part  name="さくら01"  time="0"  目="キャラ待機01_27.png"  wait="true"  ]
[tb_start_text mode=1 ]
#
[emb exp="f.Imo_Name"] takes off my pants while rubbing my crotch[p]
[_tb_end_text]

[chara_hide  name="さくら01"  time="1000"  wait="true"  pos_mode="false"  ]
[chara_show  name="さくら_フェラ"  time="1000"  wait="true"  storage="chara/17/フェラ01.png"  width="400"  height="300"  left="800"  top="200"  ]
[tb_start_text mode=1 ]
#
Tucking her flowing hair behind her ear, she bends forward and buries her face in my crotch[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="えっち系/フェラ音01.mp3"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Kiss[p]
Nnmh・・・ kiss・・・ slurp[p]
Nnh[p]
Slurp[p]
#
Is it natural talent?[p]
Despite her clumsy handiwork, the suction of her mouth and the stimulation of her tongue on the head bring an intense urge to cum rushing up[p]
#&f.Oni_Name3
・・・Ngh![p]
#
Unable to hold back, I shoot it all inside [emb exp="f.Imo_Name"]'s mouth[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="えっち系/射精音01.mp3"  ]
[chara_mod  name="さくら_フェラ"  time="0"  cross="true"  storage="chara/17/フェラ03.png"  ]
[playse  volume="100"  time="1000"  buf="1"  storage="えっち系/ごっくん01.mp3"  ]
[tb_start_text mode=1 ]
Gulk, gulp[p]
[_tb_end_text]

[chara_hide  name="さくら_フェラ"  time="1000"  wait="true"  pos_mode="false"  ]
[stopse  time="1000"  buf="0"  ]
[chara_show  name="さくら01"  time="1000"  wait="true"  storage="chara/1/キャラ待機01.png"  width="500"  height="550"  left="750"  top="170"  ]
[chara_part  name="さくら01"  time="0"  目="キャラ待機01_34.png"  wait="true"  ]
[tb_start_text mode=1 ]
Pwah[p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_35.png"  wait="true"  ]
[playse  volume="100"  time="1000"  buf="1"  storage="えっち系/ごっくん01.mp3"  ]
[tb_start_text mode=1 ]
Nn・・・ gulp・・・[p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_36.png"  wait="true"  ]
[tb_start_text mode=1 ]
It's thick・・・ so much came out[heart][p]
#&f.Oni_Name3
Phew[p]
#
[_tb_end_text]

[chara_hide_all  time="1000"  wait="true"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="えっち系/衣擦れ3.mp3"  ]
[tb_start_text mode=1 ]
#
[emb exp="f.Imo_Name"] turns around and reaches for a tissue, pointing her butt right at me[p]
From beneath her skirt, I catch a glimpse of cute white lace panties[p]
If I hadn't just came, I would have pounced on her butt right then and there[p]
・・・Yeah[p]
Tonight, after getting out of the bath, I'll grab [emb exp="f.Imo_Name"]'s butt tight and thrust into her hard from behind[p]
It's sure to be a great view[p]
・・・[p]
I'm falling into depravity・・・[p]
I can't stop anymore[p]
[_tb_end_text]

[tb_eval  exp="f.Tre_Up=1"  name="Tre_Up"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__好きUP"  ]
[tb_eval  exp="f.Tre_Up=40"  name="Tre_Up"  cmd="="  op="t"  val="40"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__性欲UP"  ]
[tb_eval  exp="f.Sys_Seiryoku-=1"  name="Sys_Seiryoku"  cmd="-="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="__Main_kaiwa.ks"  target="*__会話終了"  ]
*19

[tb_start_text mode=1 ]
#
As I gaze at [emb exp="f.Imo_Name"], who has recently become more proactive about naughty stuff[p]
There are moments where I feel she still has some reason left[p]
I wonder what would happen if I made her cum over and over・・・[p]
#&f.Oni_Name3
[emb exp="f.Imo_Name"], which do you like better: getting thrust hard, or getting thrust deep?[p]
#
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_23.png"  wait="false"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Fwaa!?[p]
#
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_31.png"  wait="false"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
[emb exp="f.Oni_Name3"], what are you saying all of a sudden!![p]
#&f.Oni_Name3
What? I'm talking about when we had sex[p]
#
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_15.png"  wait="false"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
I-I don't know![p]
#
Hmm・・・did I make her a little angry?[p]
I scratched my head, thinking that might've been a bit of sexual harassment, and I heard [emb exp="f.Imo_Name"] mutter softly.[p]
[_tb_end_text]

[chara_hide_all  time="0"  wait="false"  ]
[chara_show  name="さくら01_1"  time="0"  wait="true"  storage="chara/15/キャラ待機19_2.png"  width="500"  height="550"  left="750"  top="170"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
・・・[p]
・・・B-both, I guess・・・[p]
Mmm・・・ I think I might want to be ravaged wildly・・・[p]
#
Seeing her turn bright red and murmur shyly made me happy, and I couldn't help but whisper back.[p]
#&f.Oni_Name3
[emb exp="f.Imo_Name"]'s so lewd, isn't she?[p]
#
[_tb_end_text]

[chara_mod  name="さくら01_1"  time="0"  cross="false"  storage="chara/15/キャラ待機19_3.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
！？[p]
#
[_tb_end_text]

[chara_mod  name="さくら01_1"  time="0"  cross="false"  storage="chara/15/キャラ待機19_5.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
・・・[p]
#
I get hard while feeling satisfied by [emb exp="f.Imo_Name"]'s reaction, unable to lift her head at all[p]
Tonight, I'll try something new in missionary position[p]
I swore that to myself[p]
[_tb_end_text]

[tb_eval  exp="f.Tre_Up=1"  name="Tre_Up"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__好きUP"  ]
[tb_eval  exp="f.Tre_Up=40"  name="Tre_Up"  cmd="="  op="t"  val="40"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__性欲UP"  ]
[jump  storage="__Main_kaiwa.ks"  target="*__会話終了"  ]
*20

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_26.png"  wait="true"  ]
[tb_start_text mode=1 ]
I feel like [emb exp="f.Imo_Name"]'s sex drive has been getting stronger lately[p]
#&f.Oni_Name3
[emb exp="f.Imo_Name"][p]
#&f.Imo_Name
Y-yeah[p]
#
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="1"  storage="えっち系/衣擦れ3.mp3"  ]
[tb_start_text mode=1 ]
#
She's come to understand my intent just from me calling her, opening my zipper and sucking my dick[p]
[_tb_end_text]

[chara_show  name="さくら_フェラ"  time="1000"  wait="true"  storage="chara/17/フェラ01.png"  width="400"  height="300"  left="800"  top="200"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="えっち系/フェラ音01.mp3"  loop="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Slurp[p]
Squelch[p]
Gulp[p]
#
#&f.Oni_Name3
Kh・・・[p]
#
She's gotten better at this・・・[p]
Stimulating my balls with her right hand while stroking my shaft with her left[p]
Wrapping the head in saliva, making sucking sounds on the ridge as she bobs intensely up and down[p]
I-isn't she too good at this・・・?[p]

[_tb_end_text]

[chara_mod  name="さくら_フェラ"  time="0"  cross="false"  storage="chara/17/フェラ02.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Mmh[p]
Mm・・・mmh[p]
#
I try my best to hold back to prolong the pleasure even a little[p]
But she moves intensely without a care, sucking strongly to try to squeeze out my cum[p]
#&f.Imo_Name
Mmf♪[p]
Mm[p]
Mm♪[p]
#&f.Oni_Name3
Uh・・・[p]
#
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="えっち系/射精音01.mp3"  ]
[chara_mod  name="さくら_フェラ"  time="0"  cross="false"  storage="chara/17/フェラ03.png"  ]
[tb_start_text mode=1 ]
#
Her tongue work makes me cum before I know it[p]
#&f.Imo_Name
Mm・・・[p]
#
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="1"  storage="えっち系/ごっくん01.mp3"  ]
[chara_mod  name="さくら_フェラ"  time="0"  cross="true"  storage="chara/17/フェラ04.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Gulp[p]
#
[_tb_end_text]

[chara_hide  name="さくら_フェラ"  time="1000"  wait="true"  pos_mode="false"  ]
[chara_show  name="さくら01"  time="0"  wait="true"  storage="chara/1/キャラ待機01.png"  width="500"  height="550"  left="750"  top="170"  ]
[chara_part  name="さくら01"  time="0"  目="キャラ待機01_34.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Pwah[p]
Mm, today it's thick・・・ I think・・・[p]
#
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_35.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
・・・mmh[p]
#
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="1"  storage="えっち系/ごっくん01.mp3"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Gulp[p]
#
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_33.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Ehehe[p]
#&f.Oni_Name3
[emb exp="f.Imo_Name"], do you like giving blowjobs?[p]
#
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_36.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Yeah, I think I like it[p]
Seeing [emb exp="f.Oni_Name3"] feel good makes me happy[p]
#
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_30.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Ehehe[p]
#
・・・Feeling a bit guilty about [emb exp="f.Imo_Name"] blurting out such things[p]
My pleasure center is stimulated by how erotic she is[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="えっち系/衣擦れ3.mp3"  ]
[chara_hide_all  time="1000"  wait="true"  ]
[tb_start_text mode=1 ]
#
[emb exp="f.Imo_Name"] turns around to get some tissues[p]
Once again, she shows me her cute panties with a pink ribbon[p]
Her butt wiggles right in front of me, making me suspect she's showing it off on purpose[p]
・・・Just thrusting from behind isn't enough[p]
I want to pound into her from doggy style hard enough to make her scream・・・[p]
Maybe I'll try a new position tonight・・・[p]
I let my desire boil as I watch the panties in front of me[p]
[_tb_end_text]

[tb_eval  exp="f.Tre_Up=1"  name="Tre_Up"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__好きUP"  ]
[tb_eval  exp="f.Tre_Up=40"  name="Tre_Up"  cmd="="  op="t"  val="40"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__性欲UP"  ]
[tb_eval  exp="f.Sys_Seiryoku-=1"  name="Sys_Seiryoku"  cmd="-="  op="t"  val="1"  val_2="undefined"  ]
[tb_start_tyrano_code]
;精力マイナスを０に
[if exp="f.Sys_Seiryoku <=0"]
[eval exp="f.Sys_Seiryoku = 0"]
[endif]
[_tb_end_tyrano_code]

[jump  storage="__Main_kaiwa.ks"  target="*__会話終了"  ]
*21

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_26.png"  wait="true"  ]
[tb_start_text mode=1 ]
#
Without saying anything, [emb exp="f.Imo_Name"] starts rubbing my crotch.[p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_33.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Hehe, [emb exp="f.Oni_Name3"], you're energetic[heart][p]
#&f.Oni_Name3
Ah, hey [emb exp="f.Imo_Name"][p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_26.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Being this energetic must be tough[heart][p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="1"  storage="えっち系/衣擦れ3.mp3"  ]
[chara_hide  name="さくら01"  time="1000"  wait="true"  pos_mode="false"  ]
[chara_show  name="さくら_フェラ"  time="1000"  wait="true"  storage="chara/17/フェラ01.png"  width="400"  height="300"  left="800"  top="200"  ]
[tb_start_text mode=1 ]
#
She pulls down my pants and sucks on my dick.[p]

[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="えっち系/フェラ音01.mp3"  loop="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Mmh mmp[p]
Pop[p]
Mm・・・mm・・・[p]
#
With practiced hands, she rhythmically strokes my dick while stimulating the head with saliva[p]
The pleasure of her sucking intensely to draw out my cum, I can't last even a few seconds[p]
#&f.Oni_Name3
Kh![p]
#
・・・[p]

[_tb_end_text]

[chara_mod  name="さくら_フェラ"  time="0"  cross="true"  storage="chara/17/フェラ02.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Mmh mmp[p]
Mmf[heart][p]
Mm・・・[p]
#

[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="えっち系/射精音01.mp3"  ]
[chara_mod  name="さくら_フェラ"  time="0"  cross="true"  storage="chara/17/フェラ03.png"  ]
[playse  volume="100"  time="1000"  buf="1"  storage="えっち系/ごっくん01.mp3"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Gulp gulp[p]
Pop[p]
[_tb_end_text]

[chara_mod  name="さくら_フェラ"  time="0"  cross="true"  storage="chara/17/フェラ04.png"  ]
[tb_start_text mode=1 ]
Mmh・・・ it's yummy[p]
#&f.Oni_Name3
Phew[p]
#
[emb exp="f.Imo_Name"], who had somehow become an incredible technician, whispers while still keeping me in her mouth[p]
[_tb_end_text]

[tb_start_text mode=1 ]
#&f.Imo_Name
Mmf[heart] You can still go, [emb exp="f.Oni_Name3"][heart][p]
#&f.Oni_Name3
Whoa![p]
#&f.Imo_Name
Cum inside me lots more, okay?[heart][p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="えっち系/フェラ音01.mp3"  loop="true"  ]
[chara_mod  name="さくら_フェラ"  time="0"  cross="true"  storage="chara/17/フェラ03.png"  ]
[tb_start_text mode=1 ]
#
Saying that, she sucks on it even harder with her mouth covered in cum.[p]
・・・[p]
I can feel my cum rising immediately from that technique and the pleasure[p]
#&f.Imo_Name
Mm-hehe[heart][p]
#
Looking down at [emb exp="f.Imo_Name"] happily sucking away, I found myself feeling a strange sense of conquest.[p]
#&f.Oni_Name3
Phew[p]
#
Let's try even more naughty stuff from now on[p]
・・・I've become completely depraved, haven't I[p]
Well・・・ I guess this kind of life isn't so bad・・・[p]

[_tb_end_text]

[stopse  time="1000"  buf="0"  fadeout="true"  ]
[tb_eval  exp="f.Tre_Up=1"  name="Tre_Up"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__好きUP"  ]
[tb_eval  exp="f.Tre_Up=40"  name="Tre_Up"  cmd="="  op="t"  val="40"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__性欲UP"  ]
[tb_start_tyrano_code]
;精力マイナス１
[eval exp="f.Sys_Seiryoku -= 1" cond="f.Sys_Seiryoku >0"]
[_tb_end_tyrano_code]

[jump  storage="__Main_kaiwa.ks"  target="*__会話終了"  ]
*22

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_28.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
I was so nervous for my first concert[p]
#&f.Oni_Name3
Well done, [emb exp="f.Imo_Name"]![p]
You looked so cool and cute![p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_14.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Eh, hehehe, you think so?[p]
#&f.Oni_Name3
I was rooting for you, so I'm proud too[p]
She was the cutest, after all[p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_30.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
I'm happy[p]
But I messed up a bunch of things, and there weren't many customers either, so[p]
I'll do my best from now on too![p]
#&f.Oni_Name3
Yeah, that's it[p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_17.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Yeah![p]
#
[_tb_end_text]

[tb_eval  exp="f.Tre_Up=1"  name="Tre_Up"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__歌UP"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__ダンスUP"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__演技UP"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__話術UP"  ]
[tb_eval  exp="f.Sys_Seiryoku-=0"  name="Sys_Seiryoku"  cmd="-="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__好きUP"  ]
[jump  storage="__Main_kaiwa.ks"  target="*__会話終了"  ]
*23

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_12.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
[emb exp="f.Oni_Name3"], I think your face is just too perfect.[p]
#&f.Oni_Name3
Nah, you too, right?[p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_30.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Eh, hehe, you think so?[p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_29.png"  wait="true"  ]
[tb_start_text mode=1 ]
・・・That's not it![p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_12.png"  wait="true"  ]
[tb_start_text mode=1 ]
I'm worried, you know. Do you really not have a girlfriend? Like, women hitting on you and stuff...[p]
#&f.Oni_Name3
I'm devoted only to you[p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_23.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
・・・Huh? No way[p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_30.png"  wait="true"  ]
[tb_start_text mode=1 ]
・・・Hehe.[p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_23.png"  wait="true"  ]
[tb_start_text mode=1 ]
Ah・・・geez! How many people have you seduced like that![p]
#&f.Oni_Name3
Maybe around a million people?[p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_29.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Geez! I don't know!![p]
[_tb_end_text]

[tb_eval  exp="f.Tre_Up=2"  name="Tre_Up"  cmd="="  op="t"  val="2"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__好きUP"  ]
[jump  storage="__Main_kaiwa.ks"  target="*__会話終了"  ]
*24

[tb_start_text mode=1 ]
#&f.Imo_Name
[emb exp="f.Oni_Name3"], you're so tall![p]
#&f.Oni_Name3
You can count on me, right?[p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_21.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Hmm, my space in this house might get smaller[p]
#&f.Oni_Name3
Hey[p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_17.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Hehe. I love how you catch me when I hug you~.[p]
Next time, carry me like a princess, okay?[p]
#&f.Oni_Name3
Don’t you realize I always carry you to bed when you’re half-asleep?[p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_23.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Eh?! No way!?[p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_24.png"  wait="true"  ]
[tb_start_text mode=1 ]
Geez, wake me up~ It's embarrassing~[p]
#&f.Oni_Name3
Eh・・・ [emb exp="f.Imo_Name"] won't wake up no matter what I do・・・[p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_20.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
I don't knoooow[p]
#
[_tb_end_text]

[tb_eval  exp="f.Tre_Up=2"  name="Tre_Up"  cmd="="  op="t"  val="2"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__好きUP"  ]
[jump  storage="__Main_kaiwa.ks"  target="*__会話終了"  ]
*25

[tb_start_text mode=1 ]
#&f.Imo_Name
[emb exp="f.Oni_Name3"], are you done cleaning the bath already?[p]
#&f.Oni_Name3
Piece of cake, piece of cake[p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_12.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Work finished way too fast[p]
#&f.Oni_Name3
[emb exp="f.Imo_Name"], let's try a little harder, okay?[p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_18.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
I'm normal, it's [emb exp="f.Oni_Name3"] who works way too fast[p]
#&f.Oni_Name3
Bow before me[p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_22.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Wow, amazing! While you're at it, wash the dishes too~[p]
#&f.Oni_Name3
Anyone who says that gets the tickle torture![p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_30.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Kyaa! Ahaha, nooo~ I said I'm sorry! Help meee~ Ahaha![p]
#
[_tb_end_text]

[tb_eval  exp="f.Tre_Up=2"  name="Tre_Up"  cmd="="  op="t"  val="2"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__好きUP"  ]
[jump  storage="__Main_kaiwa.ks"  target="*__会話終了"  ]
*26

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_12.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
[emb exp="f.Oni_Name3"], do you have a massage therapist license?[p]
#&f.Oni_Name3
Why do you think that?[p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_24.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
B-Because・・・ your hands feel like an octopus.[p]
It's like it's sucking me in・・・ or rather・・・[p]
When [emb exp="f.Oni_Name3"] touches me, my mind goes blank and I can't think straight anymore[p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_15.png"  wait="true"  ]
[tb_start_text mode=1 ]
You might be hiding something in your hand・・・[p]
Or maybe you took a smoke break・・・[p]
#&f.Oni_Name3
Am I a criminal or something?[p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_28.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Uu・・・[p]
It's practically criminal, you know[p]
#
[_tb_end_text]

[tb_eval  exp="f.Tre_Up=2"  name="Tre_Up"  cmd="="  op="t"  val="2"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__好きUP"  ]
[tb_eval  exp="f.Tre_Up=20"  name="Tre_Up"  cmd="="  op="t"  val="20"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__性欲UP"  ]
[jump  storage="__Main_kaiwa.ks"  target="*__会話終了"  ]
*27

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_28.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
・・・[emb exp="f.Oni_Name3"], you're such a pervert, aren't you?[p]
#&f.Oni_Name3
That's right[p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_24.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
N-no, we can't. Naughty stuff is・・・[p]
That kind of thing is for when you're an adult.[p]
#&f.Oni_Name3
I'm an adult, but[p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_22.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Oh, is that so? Then I wonder if it's okay for [emb exp="f.Oni_Name3"] to be lewd[p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_29.png"  wait="true"  ]
[tb_start_text mode=1 ]
B-But I'm not an adult, so I think doing lewd things is a no-no![p]
#&f.Oni_Name3
Then [emb exp="f.Imo_Name"] has to be pure.[p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_25.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Y-yeah.[p]
#&f.Oni_Name3
But I'm an adult, so it's fine to stay this horny[p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_20.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Ah, huh? So I guess it's fine just like this, then.[p]
#&f.Oni_Name3
That's right. Problem solved.[p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_21.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Yeah・・・Hm??[p]
#
[_tb_end_text]

[tb_eval  exp="f.Tre_Up=1"  name="Tre_Up"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__理性DOWN"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__好きUP"  ]
[tb_eval  exp="f.Tre_Up=20"  name="Tre_Up"  cmd="="  op="t"  val="20"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__性欲UP"  ]
[jump  storage="__Main_kaiwa.ks"  target="*__会話終了"  ]
*28

[chara_hide_all  time="0"  wait="true"  ]
[chara_show  name="さくら01_1"  time="0"  wait="true"  storage="chara/15/キャラ待機13.png"  width="500"  height="550"  left="750"  top="170"  ]
[tb_start_text mode=1 ]
#&f.Oni_Name3
What's wrong, [emb exp="f.Imo_Name"]?[p]
[_tb_end_text]

[chara_mod  name="さくら01_1"  time="0"  cross="true"  storage="chara/15/キャラ待機12.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
We just shared our first kiss.[p]
Oh, I just kissed [emb exp="f.Oni_Name3"]. [p]
#&f.Oni_Name3
Ah, yeah, that's right.[p]
[_tb_end_text]

[chara_hide_all  time="0"  wait="true"  ]
[chara_show  name="さくら01"  time="0"  wait="true"  storage="chara/1/キャラ待機01.png"  width="500"  height="550"  left="750"  top="170"  ]
[chara_part  name="さくら01"  time="0"  目="キャラ待機01_26.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
You suddenly kissed me, so my heart's racing![p]
It was my first kiss, after all[p]
#&f.Oni_Name3
Eh, well, my bad.[p]

[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_24.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
No, I'm not blaming you.[p]
I just・・・ I wanted it to be a little more romantic, that's all.[p]
#&f.Oni_Name3
Eh, that way?[p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_29.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
It's a big deal![p]
#&f.Oni_Name3
Got it.[p]
Let's share lots of romantic kisses from now on[p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_23.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
！？[p]
[_tb_end_text]

[chara_hide_all  time="0"  wait="true"  ]
[chara_show  name="さくら01_1"  time="0"  wait="true"  storage="chara/15/キャラ待機16.png"  width="500"  height="550"  left="750"  top="170"  ]
[tb_start_text mode=1 ]
・・・Uu[p]
[_tb_end_text]

[chara_mod  name="さくら01_1"  time="0"  cross="true"  storage="chara/15/キャラ待機17.png"  ]
[tb_start_text mode=1 ]
・・・Yeah.[p]
#
[_tb_end_text]

[tb_eval  exp="f.Tre_Up=1"  name="Tre_Up"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__理性DOWN"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__好きUP"  ]
[tb_eval  exp="f.Tre_Up=20"  name="Tre_Up"  cmd="="  op="t"  val="20"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__性欲UP"  ]
[jump  storage="__Main_kaiwa.ks"  target="*__会話終了"  ]
*29

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_21.png"  ]
[tb_start_text mode=1 ]
#
I remember the feeling of touching [emb exp="f.Imo_Name"]'s breasts for the first time.[p]
A size that spills over when held with one hand, and a softness so deep your fingers sink right in[p]
Even through her clothes and bra, the perfect shape is unmistakable[p]
I want to touch you again・・・[p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_22.png"  ]
[tb_start_text mode=1 ]
Suddenly, [emb exp="f.Imo_Name"] notices my gaze is glued to her breasts.[p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_20.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Oh, [emb exp="f.Oni_Name3"], my・・・ my breasts are・・・ um・・・[p]
#&f.Oni_Name3
Ah, sorry, I went too far last time.[p]
I couldn't help but touch it[p]
#
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_24.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Y-yeah・・・[p]
#&f.Oni_Name3
But, I might touch you again[p]
#
I face [emb exp="f.Imo_Name"] with a straight face and declare that[p]

[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_29.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
C-come on, don't say such naughty stuff with a straight face![p]
#&f.Oni_Name3
Hahaha[p]
#
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_31.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
D-don't touch me there・・・[p]
I-It's not allowed, okay![p]
#
・・・[p]
Hehe, what should I do・・・[p]
[_tb_end_text]

[tb_eval  exp="f.Tre_Up=1"  name="Tre_Up"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__好きUP"  ]
[tb_eval  exp="f.Tre_Up=20"  name="Tre_Up"  cmd="="  op="t"  val="20"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__性欲UP"  ]
[jump  storage="__Main_kaiwa.ks"  target="*__会話終了"  ]
*30

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_20.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
It's been a while since we took a bath・・We ended up getting in together, huh.[p]
#&f.Oni_Name3
Ah, it's been since [emb exp="f.Imo_Name"] was in elementary school, huh[p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_24.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Geez, you just barged right in. You scared me![p]
#&f.Oni_Name3
Sorry, sorry, I just got a little nostalgic there[p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_28.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
It was so embarrassing, you know[p]
#&f.Oni_Name3
Back in the day, if I was inside, [emb exp="f.Imo_Name"] would come in through me, didn't she?[p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_31.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Kyaa! Don't say that![p]
That was a long time ago![p]
#&f.Oni_Name3
Hahaha.[p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_28.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Geez・・・ I've already seen [emb exp="f.Oni_Name3"] naked[p]
#&f.Oni_Name3
Different from before?[p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_20.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
He looked solid and big・・・[p]
#&f.Oni_Name3
[emb exp="f.Imo_Name"]'s gotten so pretty, you know.[p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_29.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
G-geez! I told you not to look![p]
#&f.Oni_Name3
Ahaha, sorry, sorry[p]
#
[_tb_end_text]

[tb_eval  exp="f.Tre_Up=1"  name="Tre_Up"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__理性DOWN"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__好きUP"  ]
[tb_eval  exp="f.Tre_Up=20"  name="Tre_Up"  cmd="="  op="t"  val="20"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__性欲UP"  ]
[jump  storage="__Main_kaiwa.ks"  target="*__会話終了"  ]
*31

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_24.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
・・・[p]
#&f.Oni_Name3
What's wrong? You're spacing out.[p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_23.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
I-It's nothing[p]

[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_24.png"  wait="true"  ]
[tb_start_text mode=1 ]
・・・[p]
Uu・・・[p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_14.png"  wait="true"  ]
[tb_start_text mode=1 ]
Hehe♪[p]
#&f.Oni_Name3
What a weirdo, spacing out and grinning like that.[p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_29.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Right now, I'm all mixed up with all sorts of feelings![p]
#&f.Oni_Name3
It's fine as long as it's fun to watch[p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_24.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Moo[p]
[emb exp="f.Oni_Name3"], you're acting way too calm.[p]
#
[emb exp="f.Imo_Name"] mutters in a low voice.[p]
Of course, there's no way I'm calm.[p]
Inside, my crotch is about to swell up right now, I want to hold [emb exp="f.Imo_Name"] again.[p]
#&f.Oni_Name3
[emb exp="f.Imo_Name"]・・・[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="えっち系/衣擦れ3.mp3"  ]
[individual_image  layer="1"  zindex="1"  storage="default/スキンシップ07.png"  width="300"  height="400"  x="900"  y="100"  wait="true"  name="EP31"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Ah・・・[p]
#
I pull [emb exp="f.Imo_Name"] close.[p]
Maybe it's because we just had sex, but just pulling her close makes me uncontrollably excited, even more than usual.[p]

[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="えっち系/衣擦れ2.mp3"  ]
[individual_image  layer="1"  zindex="1"  storage="default/スキンシップ09.png"  width="300"  height="400"  x="900"  y="100"  wait="true"  name="EP31"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Mmh・・・[p]
N-No・・・[p]
I'm still・・・not ready yet・・・[p]
#
[_tb_end_text]

[delete_individual_image  layer="1"  name="EP31"  wait="true"  time="500"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="えっち系/衣擦れ2.mp3"  ]
[chara_part  name="さくら01"  time="0"  目="キャラ待機01_27.png"  wait="false"  ]
[tb_start_text mode=1 ]

#&f.Imo_Name
R-Right now・・・no・・・[p]
Please・・・if it's after a bath・・・[p]
S-Sorry・・・[p]
[_tb_end_text]

[chara_hide_all  time="500"  wait="true"  ]
[tb_start_text mode=1 ]
#
[emb exp="f.Imo_Name"] went off toward the toilet.[p]
・・・Should I wait until late at night・・・[p]
I tried meditating to somehow settle my raging hard-on that felt ready to burst[p]
[_tb_end_text]

[tb_eval  exp="f.Tre_Up=1"  name="Tre_Up"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__理性DOWN"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__好きUP"  ]
[tb_eval  exp="f.Tre_Up=50"  name="Tre_Up"  cmd="="  op="t"  val="50"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__性欲UP"  ]
[jump  storage="__Main_kaiwa.ks"  target="*__会話終了"  ]
*32

[chara_hide_all  time="0"  wait="true"  ]
[chara_show  name="さくら01_1"  time="0"  wait="true"  storage="chara/15/キャラ待機12.png"  width="500"  height="550"  left="750"  top="170"  ]
[tb_start_text mode=1 ]
#
I noticed [emb exp="f.Imo_Name"] has been looking down and fidgeting for a while now[p]
#&f.Oni_Name3
[emb exp="f.Imo_Name"]？[p]
#
[_tb_end_text]

[chara_mod  name="さくら01_1"  time="0"  cross="false"  storage="chara/15/キャラ待機13.png"  ]
[tb_start_text mode=1 ]
#
I can feel her gaze glancing my way every now and then[p]
[_tb_end_text]

[chara_mod  name="さくら01_1"  time="0"  cross="false"  storage="chara/15/キャラ待機12.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
N-no・・・it's nothing[p]
#
[_tb_end_text]

[chara_mod  name="さくら01_1"  time="0"  cross="false"  storage="chara/15/キャラ待機13.png"  ]
[tb_start_text mode=1 ]
She glances my way again[p]
I was watching to see what was up, but one thing came to mind[p]
Now that I think about it, [emb exp="f.Imo_Name"] realized I was awake late last night while she was touching herself[p]
Is she trying to figure out if I know she was playing with herself?[p]
I'll just pretend I didn't notice[p]
[_tb_end_text]

[chara_mod  name="さくら01_1"  time="0"  cross="false"  storage="chara/15/キャラ待機19_1.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Oh, [emb exp="f.Oni_Name3"]・・・last night・・・[p]
Well・・・[p]
#&f.Oni_Name3
Hm? Did something happen?[p]
I was fast asleep, though.[p]
[_tb_end_text]

[chara_hide_all  time="0"  wait="true"  ]
[chara_show  name="さくら01"  time="0"  wait="true"  storage="chara/1/キャラ待機01.png"  width="500"  height="550"  left="750"  top="170"  ]
[chara_part  name="さくら01"  time="0"  目="キャラ待機01_23.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Eh!?[p]
#
[_tb_end_text]

[chara_hide_all  time="0"  wait="true"  ]
[chara_show  name="さくら01_1"  time="0"  wait="true"  storage="chara/15/キャラ待機19_3.png"  width="500"  height="550"  left="750"  top="170"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
No![p]
N-nothing happened!![p]
It's nothing!![p]
#
[emb exp="f.Imo_Name"] wears an expression that looks a mix of confusion and relief.[p]
To think that serious, pure-looking [emb exp="f.Imo_Name"] would play with herself like that・・・[p]
I felt happy seeing an unexpected side of her, but[p]
I decided to keep this incident to myself.[p]
[_tb_end_text]

[tb_eval  exp="f.Tre_Up=1"  name="Tre_Up"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__理性DOWN"  ]
[tb_eval  exp="f.Tre_Up=1"  name="Tre_Up"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__好きUP"  ]
[tb_eval  exp="f.Tre_Up=10"  name="Tre_Up"  cmd="="  op="t"  val="10"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__性欲UP"  ]
[jump  storage="__Main_kaiwa.ks"  target="*__会話終了"  ]
*33

[chara_hide_all  time="0"  wait="true"  ]
[chara_show  name="さくら01_1"  time="0"  wait="true"  storage="chara/15/キャラ待機19_1.png"  width="500"  height="550"  left="750"  top="170"  ]
[tb_start_text mode=1 ]
#
[emb exp="f.Imo_Name"] has been looking down all morning.[p]
#&f.Oni_Name3
What's wrong? [emb exp="f.Imo_Name"][p]
#&f.Imo_Name
Um, [emb exp="f.Oni_Name3"], about what happened in the bath・・・[p]
#
[_tb_end_text]

[chara_mod  name="さくら01_1"  time="0"  cross="false"  storage="chara/15/キャラ待機19_2.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Well・・・[p]
#&f.Oni_Name3
Ah.[p]
#
I suddenly realized.[p]
The other day, when I toyed with [emb exp="f.Imo_Name"]'s clit in the bath, she must have cum[p]
[_tb_end_text]

[chara_mod  name="さくら01_1"  time="0"  cross="false"  storage="chara/15/キャラ待機19_6.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Uu・・・Uuu・・・[p]
I・・・ I'm so embarrassed, I can't even look at [emb exp="f.Oni_Name3"] properly[p]
#
It was the first time I made [emb exp="f.Imo_Name"] cum with my own hand[p]
[emb exp="f.Imo_Name"]'s warmth and soft touch still linger on my hand[p]
[_tb_end_text]

[chara_mod  name="さくら01_1"  time="0"  cross="false"  storage="chara/15/キャラ待機19_1.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
N-no, that's not it![p]
F-forget it・・・ it was just a coincidence[p]
That's・・・ I'm not a lewd girl or anything[p]
#
It seems she doesn't want to be seen as lewd[p]
She won't look me in the eye[p]
#&f.Oni_Name3
You were really cute[p]
#
[_tb_end_text]

[chara_mod  name="さくら01_1"  time="0"  cross="false"  storage="chara/15/キャラ待機19_5.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
My face is hot・・・ ha・・・ I'm so embarrassed・・・[p]
#
I remember [emb exp="f.Imo_Name"]'s disheveled figure when she climaxed[p]
Just from that alone, I start getting a little hard[p]
#&f.Oni_Name3
[emb exp="f.Oni_Name3"]'s happy that I'm being lewd[p]
So cute[p]
#
[_tb_end_text]

[chara_hide_all  time="0"  wait="true"  ]
[chara_show  name="さくら01"  time="0"  wait="true"  storage="chara/1/キャラ待機01.png"  width="500"  height="550"  left="750"  top="170"  ]
[chara_part  name="さくら01"  time="0"  目="キャラ待機01_23.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
・・・I・・・ is that so?[p]
#
[_tb_end_text]

[chara_hide_all  time="0"  wait="true"  ]
[chara_show  name="さくら01_1"  time="0"  wait="true"  storage="chara/15/キャラ待機19_3.png"  width="500"  height="550"  left="750"  top="170"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
B-but it's embarrassing, so no![p]
#
[_tb_end_text]

[chara_hide_all  time="1000"  wait="true"  ]
[tb_start_text mode=1 ]
I grab [emb exp="f.Imo_Name"]'s arm as she tries to leave the sofa and pull her close[p]
[_tb_end_text]

[individual_image  layer="1"  zindex="1"  name="kaiwaEP65"  storage="default/スキンシップ07.png"  width="300"  height="400"  wait="true"  x="900"  y="100"  time="300"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Ah[p]
#
I hold her waist, pull her close, and press my body against hers.[p]
#&f.Oni_Name3
I want to see more.[p]
#&f.Imo_Name
N-no, no・・・it's embarrassing・・・[p]
#&f.Oni_Name3
I want to see more of [emb exp="f.Imo_Name"]'s cute side[p]
#&f.Imo_Name
H-hey・・・[p]
#
[_tb_end_text]

[individual_image  layer="1"  zindex="1"  name="kaiwaEP65"  storage="default/スキンシップ08_1.png"  width="300"  height="400"  wait="true"  x="900"  y="100"  time="300"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="えっち系/キス01.mp3"  ]
[wait  time="2000"  ]
[stopse  time="1000"  buf="0"  ]
[delete_individual_image  layer="1"  name="kaiwaEP65"  ]
[individual_image  layer="1"  zindex="1"  name="kaiwaEP65"  storage="default/スキンシップ07.png"  width="300"  height="400"  wait="true"  x="900"  y="100"  time="300"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Mmh・・・[p]
#
#&f.Oni_Name3
Let's take a bath together today too, okay?[p]
#&f.Imo_Name
・・・[p]
#
She turned bright red, looked down, and fell silent.[p]
I took that as a yes and leaned back against the sofa[p]
Let me savor [emb exp="f.Imo_Name"]'s soft, melting naked body once more[p]
How should I make her cum today, I wonder[p]
I spent the whole day lost in such wild fantasies[p]
#
[_tb_end_text]

[tb_start_tyrano_code]
[iscript]
f.Kaihatu[0].kazu += 1;
[endscript]
[_tb_end_tyrano_code]

[tb_eval  exp="f.Tre_Up=1"  name="Tre_Up"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__好きUP"  ]
[tb_eval  exp="f.Tre_Up=25"  name="Tre_Up"  cmd="="  op="t"  val="25"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__性欲UP"  ]
[jump  storage="__Main_kaiwa.ks"  target="*__会話終了"  ]
*34

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_24.png"  ]
[tb_start_text mode=1 ]
#
I remember the first time I came inside [emb exp="f.Imo_Name"][p]
It was an indescribable pleasure, a mix of accomplishment and immorality.[p]
The sense of conquest from filling [emb exp="f.Imo_Name"]'s pussy with my cum is something I can't get anywhere else.[p]
When I glance at [emb exp="f.Imo_Name"], she looks like she wants to say something[p]
#&f.Imo_Name
[emb exp="f.Oni_Name3"], u-um, you see・・・[p]
Well・・・[p]
Uu・・・[p]
#
She looks like she's having trouble saying it.[p]
It's probably about cumming inside.[p]
I feel guilty, so I'll apologize.[p]
#&f.Oni_Name3
Sorry for cumming inside.[p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_23.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Ah・・uhh・・・um・・・[p]
#
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_24.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
・・・Mm・・・・[p]
If I get pregnant・・・um・・・that would be a problem・・・[p]
#&f.Oni_Name3
Yeah, I get it[p]
#
Not getting scolded for the sex, but for cumming inside[p]
Having sex had already become a part of our daily lives.[p]
[emb exp="f.Imo_Name"]'s pussy is tight, and its shape is top-notch[p]
The suction from raw insertion is intense, giving me unbelievable pleasure and an urge to cum.[p]
The satisfaction is on a completely different level with or without a rubber[p]
I don't want to stop doing it raw[p]
#&f.Oni_Name3
Is it no good even on a safe day?[p]
#
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_23.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Eh・・・[p]
・・・[p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_24.png"  ]
[tb_start_text mode=1 ]
Oh, [emb exp="f.Oni_Name3"]・・・ you want to cum inside・・・ that much?[p]
#&f.Oni_Name3
Ah, I want to cum inside [emb exp="f.Imo_Name"] no matter what[p]
#
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_23.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Fah!?[p]
#
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_27.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
・・・N- no more[p]
That directly・・・[p]
You're so naughty・・・[p]
#
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_24.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
・・・[p]
・・・・・・[p]
#
[emb exp="f.Imo_Name"] turns bright red and squirms[p]
#&f.Imo_Name
・・・[p]
#
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_27.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Haa・・・ [emb exp="f.Oni_Name3"], you're lewder than I imagined[p]
#
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_20.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Ah, it's a safe day・・・[p]
It's a safe day, you know.[p]
#&f.Oni_Name3
Thank you, [emb exp="f.Imo_Name"][p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_13.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Mmh・・・ yeah[p]
・・・[p]
#
I must not get her pregnant[p]
I need to be extremely careful.[p]
I wavered between the desire to cum inside and my reason.[p]
[_tb_end_text]

[tb_eval  exp="f.Tre_Up=1"  name="Tre_Up"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__好きUP"  ]
[tb_eval  exp="f.Tre_Up=10"  name="Tre_Up"  cmd="="  op="t"  val="10"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__性欲UP"  ]
[jump  storage="__Main_kaiwa.ks"  target="*__会話終了"  ]
*35

[tb_start_text mode=1 ]
#&f.Oni_Name3
Oh, something's dripping down your leg[p]
#
[_tb_end_text]

[chara_hide_all  time="0"  wait="true"  ]
[chara_show  name="さくら01_1"  time="0"  wait="true"  storage="chara/15/キャラ待機19_3.png"  width="500"  height="550"  left="750"  top="170"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Eh? No way[p]
Ah・・・[p]
#
It looked like my cum left inside her womb was running down [emb exp="f.Imo_Name"]'s thighs.[p]
[emb exp="f.Imo_Name"] is wiping the cum from her thighs and inside her skirt with a tissue[p]
When I wipe deep inside the skirt, cute pink panties catch my eye[p]
#&f.Oni_Name3
What a lewd sight・・・[p]
#
[_tb_end_text]

[chara_hide_all  time="0"  wait="true"  ]
[chara_show  name="さくら01"  time="0"  wait="true"  storage="chara/1/キャラ待機01.png"  width="500"  height="550"  left="750"  top="170"  ]
[chara_part  name="さくら01"  time="0"  目="キャラ待機01_24.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Oh, [emb exp="f.Oni_Name3"]'s gonna cum inside me so much that my tummy gets all stuffed and round[p]
I'm worried I might get pregnant・・・[p]
#&f.Oni_Name3
Eh, what's with that lewd line?[p]
Say it one more time[p]
#
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_29.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Y-you dummy, [emb exp="f.Oni_Name3"][p]
That's sexual harassment~[p]
#&f.Oni_Name3
Haha, my bad, my bad[p]
But, I wanna cum inside [emb exp="f.Imo_Name"] a whole lot more.[p]
#
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_23.png"  wait="true"  ]
[tb_start_text mode=1 ]
Ah, sexual harassment again![p]
Hahaha, my bad.[p]
#
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_29.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Geez![p]
#
[_tb_end_text]

[chara_hide_all  time="0"  wait="true"  ]
[chara_show  name="さくら01_1"  time="0"  wait="true"  storage="chara/15/キャラ待機19_1.png"  width="500"  height="550"  left="750"  top="170"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
・・・[p]
・・・B-but・・・[p]
Um・・・[p]
If [emb exp="f.Oni_Name3"] wants to cum・・・[p]
#

[_tb_end_text]

[chara_mod  name="さくら01_1"  time="0"  cross="false"  storage="chara/15/キャラ待機19_2.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Ah, if it's a safe day・・・[p]
・・・you can cum a lot, okay?[p]
#
Seeing [emb exp="f.Imo_Name"] turn bright red and murmur in a small voice makes me happy[p]
#&f.Oni_Name3
You're cute, [emb exp="f.Imo_Name"]![p]
#
[_tb_end_text]

[individual_image  layer="1"  zindex="1"  name="kaiwaEP64"  storage="default/スキンシップ10_1.png"  width="300"  height="400"  wait="true"  x="900"  y="100"  time="300"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="えっち系/衣擦れ3.mp3"  loop="false"  ]
[chara_hide_all  time="0"  wait="true"  ]
[chara_show  name="さくら01"  time="0"  wait="true"  storage="chara/1/キャラ待機01.png"  width="500"  height="550"  left="750"  top="170"  ]
[chara_part  name="さくら01"  time="0"  目="キャラ待機01_31.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Ah, don't[p]
Nn・・・[p]
#
[_tb_end_text]

[stopse  time="1000"  buf="0"  ]
[delete_individual_image  layer="1"  name="kaiwaEP64"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
・・・Idiot[p]
#&f.Oni_Name3
Hahaha[p]
#
[_tb_end_text]

[tb_eval  exp="f.Tre_Up=1"  name="Tre_Up"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__好きUP"  ]
[tb_eval  exp="f.Tre_Up=20"  name="Tre_Up"  cmd="="  op="t"  val="20"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__性欲UP"  ]
[jump  storage="__Main_kaiwa.ks"  target="*__会話終了"  ]
*36

[tb_start_text mode=1 ]
#&f.Oni_Name3
Hmm?・・・[emb exp="f.Imo_Name"], something's dripping from your thighs[p]
[_tb_end_text]

[chara_hide_all  time="0"  wait="true"  ]
[chara_show  name="さくら01_1"  time="0"  wait="true"  storage="chara/15/キャラ待機19_3.png"  width="500"  height="550"  left="750"  top="170"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Eh?・・・Ah・・・[p]
N-no・・・oh, [emb exp="f.Oni_Name3"]'s・・・[p]
#
Looking closely, it seems the leftover cum from when I came inside [emb exp="f.Imo_Name"]'s pussy for a full 24 hours straight is finally dripping out.[p]
[_tb_end_text]

[chara_mod  name="さくら01_1"  time="0"  cross="false"  storage="chara/15/キャラ待機18.png"  ]
[tb_start_text mode=1 ]
When I picked up the tissue box to hand it to her, [emb exp="f.Imo_Name"] scooped up the semen dripping down her thigh with her hand[p]
She licked the white liquid like it was delicious[p]
[_tb_end_text]

[chara_hide_all  time="0"  wait="true"  ]
[chara_show  name="さくら01"  time="0"  wait="true"  storage="chara/1/キャラ待機01.png"  width="500"  height="550"  left="750"  top="170"  ]
[chara_part  name="さくら01"  time="0"  目="キャラ待機01_34.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Mm・・・ slurp・・・[p]
#
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_35.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
・・・gulp[p]
#
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_36.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
It's delicious・・・ mmf[p]
[emb exp="f.Oni_Name3"]'s cum is still left in my belly・・・[p]
Mm-hehe・・・ I wonder if I'll get pregnant?[p]
#
I want to believe it's fine, but [emb exp="f.Imo_Name"] smiles with a bewitching allure that makes it seem like she'd get pregnant even on a safe day.[p]
[_tb_end_text]

[tb_start_text mode=1 ]
#&f.Imo_Name
Look, [emb exp="f.Oni_Name3"].[p]
#
[emb exp="f.Imo_Name"] stands up right there and flips up her skirt.[p]
When I look, semen is still dripping down from her thighs.[p]
#&f.Imo_Name
Ehehe, my pussy is twitching.[p]
I might end up feeling happy[p]
#
I'm amazed at how she's become someone who says such naughty things, as she approaches me and whispers in my ear[p]
[_tb_end_text]

[tb_hide_message_window  ]
[chara_hide_all  time="0"  wait="true"  ]
[chara_show  name="さくら08"  time="1000"  wait="true"  storage="chara/28/キャラ待機84.png"  width="530"  height="660"  left="745"  top="55"  reflect="false"  ]
[wait  time="1000"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Let's do it again, [emb exp="f.Oni_Name3"][p]
Next time too, put your dick deep inside, and fill me up with your sperm[p]
#
[_tb_end_text]

[tb_hide_message_window  ]
[chara_mod  name="さくら08"  time="0"  cross="false"  storage="chara/28/キャラ待機83.png"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="えっち系/キス02.mp3"  ]
[wait  time="1000"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#
She gives me a quick kiss on the cheek[p]

[_tb_end_text]

[chara_mod  name="さくら08"  time="600"  cross="false"  storage="chara/28/キャラ待機82.png"  ]
[tb_start_text mode=1 ]
#
[emb exp="f.Imo_Name"] just leans against my shoulder[p]
・・・Once my stamina's back, I'm gonna fill [emb exp="f.Imo_Name"]'s womb to the brim right away[p]
I found myself thinking such things[p]
[_tb_end_text]

[tb_eval  exp="f.Tre_Up=3"  name="Tre_Up"  cmd="="  op="t"  val="3"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__理性DOWN"  ]
[tb_eval  exp="f.Tre_Up=1"  name="Tre_Up"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__好きUP"  ]
[tb_eval  exp="f.Tre_Up=30"  name="Tre_Up"  cmd="="  op="t"  val="30"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__性欲UP"  ]
[jump  storage="__Main_kaiwa.ks"  target="*__会話終了"  ]
*37

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_17.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Hehe[p]
Look, look, [emb exp="f.Oni_Name3"][p]
I got a fan letter[p]
#
[_tb_end_text]

[individual_image  layer="1"  zindex="1"  storage="default/イベントカット46OP手紙.png"  width="500"  height="300"  name="EP32画像"  x="450"  y="170"  _clickable_img=""  time="500"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Oni_Name3
Huh, so people still send letters these days[p]
#&f.Imo_Name
It says 'I'm cheering for you'♪[p]
#&f.Oni_Name3
That's great.[p]
#
[_tb_end_text]

[delete_individual_image  layer="1"  name="EP32画像"  ]
[chara_part  name="さくら01"  time="0"  目="キャラ待機01_32.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Yeah!![p]
I have to work harder on my lessons for the people cheering me on.[p]
It's still just the beginning, but I'll do my best!![p]
#&f.Oni_Name3
Yeah, you can do it, [emb exp="f.Imo_Name"].[p]
#
[_tb_end_text]

[tb_eval  exp="f.Tre_Up=1"  name="Tre_Up"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__歌UP"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__ダンスUP"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__演技UP"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__話術UP"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__好きUP"  ]
[jump  storage="__Main_kaiwa.ks"  target="*__会話終了"  ]
*38

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_12.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Lately, people have started calling out to me in town.[p]
#&f.Oni_Name3
[emb exp="f.Imo_Name"]'s become famous, too.[p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_18.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Muu, it's getting hard to go out now.[p]
#&f.Oni_Name3
You've been home this whole time, haven't you?[p]
#&f.Imo_Name
That's true, but・・・[p]
Now I can't go out with [emb exp="f.Oni_Name3"] anymore・・・[p]
#&f.Oni_Name3
Just settle for a date at home.[p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_28.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Ehh, I wanna go outside~[p]
#&f.Oni_Name3
No, no, the manager will scold me.[p]
Even our current living arrangement is being viewed with suspicion[p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_18.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Boo[p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_20.png"  wait="true"  ]
[tb_start_text mode=1 ]
Then I'll be patient at home, so give me a head pat.[p]
#&f.Oni_Name3
Yes, yes, you spoiled girl.[p]
#
[_tb_end_text]

[individual_image  layer="1"  zindex="1"  name="kaiwaEP24"  storage="default/スキンシップ02.png"  width="300"  height="400"  wait="true"  x="900"  y="100"  time="300"  ]
[wait  time="2000"  ]
[delete_individual_image  layer="1"  time="300"  name="kaiwaEP24"  wait="true"  ]
[chara_part  name="さくら01"  time="0"  目="キャラ待機01_13.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Hehe♪[p]
#
[_tb_end_text]

[tb_eval  exp="f.Tre_Up=1"  name="Tre_Up"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__容姿UP"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__歌UP"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__ダンスUP"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__演技UP"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__話術UP"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__好きUP"  ]
[jump  storage="__Main_kaiwa.ks"  target="*__会話終了"  ]
*39

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_12.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
[emb exp="f.Oni_Name3"][p]
Yesterday, the agency president asked me why I couldn't show a bit more sex appeal.[p]
#&f.Oni_Name3
Is that so?[p]
You're an idol, so isn't being cute enough?[p]
#&f.Imo_Name
He said he wants to expand my range as a talent, not just as an idol.[p]
#
Hmm, I feel like you're plenty erotic as it is, though・・・[p]
#
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_24.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
I don't really want to wear super lewd outfits, though・・・[p]
What should I do, [emb exp="f.Oni_Name3"]?[p]
#&f.Oni_Name3
Let me see・・・[p]
I'll lend you a special secret tool that'll make you give off more sex appeal without showing any skin.[p]
Try it out at the next concert.[p]
#
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_22.png"  ]
[tb_start_text mode=1 ]
Eh, is there a tool like magic?[p]
#
[_tb_end_text]

[individual_image  layer="1"  zindex="1"  storage="default/ローター.png"  width="300"  height="248"  name="ローター"  x="480"  y="180"  _clickable_img=""  ]
[tb_start_text mode=1 ]
#&f.Oni_Name3
Here.[p]
#
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_19.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Eh・・・[p]
What's this?[p]
#&f.Oni_Name3
It's a tool you attach to your special place to bring out a mature sex appeal.[p]
#&f.Imo_Name
・・・[p]
#
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_23.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
・・・！？[p]
#
[_tb_end_text]

[chara_hide_all  time="0"  wait="true"  ]
[chara_show  name="さくら01_1"  time="0"  wait="true"  storage="chara/15/キャラ待機13.png"  width="500"  height="550"  left="750"  top="170"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
T-That's・・・[p]
A lewd・・・ tool?[p]
#&f.Oni_Name3
Don't worry, it's a magic tool used by legendary idols, passed down since ancient times.[p]
#
[_tb_end_text]

[chara_hide_all  time="0"  wait="true"  ]
[chara_show  name="さくら01"  time="0"  wait="true"  storage="chara/1/キャラ待機01.png"  width="500"  height="550"  left="750"  top="170"  ]
[chara_part  name="さくら01"  time="0"  目="キャラ待機01_23.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
・・・Is that so?[p]
#&f.Oni_Name3
While you're enduring this, you'll naturally give off a sex appeal that captivates everyone.[p]
#
・・・Well, it's just a remote rotor, though.[p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_24.png"  wait="false"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
O-Oh・・・[p]
#&f.Oni_Name3
I heard that all the idols with legendary careers used to do this.[p]
It's like a cheat code to get sexier without showing more skin.[p]
#
#&f.Imo_Name
・・・[p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_25.png"  wait="false"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
・・・T-True.[p]
#
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_27.png"  wait="false"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
・・・B-But it's lewd・・・[p]
#&f.Oni_Name3
You just put it under your clothes, so no one will notice.[p]
Well, just try it out, and if it doesn't work, you can stop.[p]
#
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_24.png"  wait="false"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
I see・・・[p]
・・・[p]
#
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_20.png"  wait="false"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
・・・Maybe I'll try it・・・[p]
#
She hesitated a little, but to [emb exp="f.Imo_Name"], whose reason is currently collapsing, it seemed like an attractive proposal.[p]
It was half a joke, but・・・[p]
I guess I'll put it on her when I see her off for the next concert・・・[p]
Watching the concert just got a little more interesting.[p]
・・・[p]
[_tb_end_text]

[tb_eval  exp="f.Tre_Up=1"  name="Tre_Up"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__好きUP"  ]
[tb_eval  exp="f.Tre_Up=10"  name="Tre_Up"  cmd="="  op="t"  val="10"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__性欲UP"  ]
[jump  storage="__Main_kaiwa.ks"  target="*__会話終了"  ]
*40

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_17.png"  wait="false"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Hey hey, listen [emb exp="f.Oni_Name3"]![p]
Lately, when I do streams, a lot of people have been coming to watch.[p]
#&f.Oni_Name3
You're amazing, [emb exp="f.Imo_Name"].[p]
#
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_32.png"  wait="false"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Hehe, there are lots of people who found out about me through my streams and became fans.[p]
#
Streaming・・・ huh・・・[p]
A faint sense of mischief and desire for conquest wells up inside me.[p]
Usually, I stay in another room so I don't make any noise, but・・・[p]
#&f.Oni_Name3
Hey, [emb exp="f.Imo_Name"].[p]
Can I watch you while you stream next time?[p]
#
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_01.png"  wait="false"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Eh, sure, but you can't make any noise.[p]
#&f.Oni_Name3
Of course I know that.[p]
#
・・・I just have to not make any noise, right?[p]
Even though I know it's wrong, all sorts of desires are welling up inside me.[p]

・・・Next time, I'll have her try streaming on a day off.[p]
[_tb_end_text]

[tb_eval  exp="f.Tre_Up=1"  name="Tre_Up"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__好きUP"  ]
[jump  storage="__Main_kaiwa.ks"  target="*__会話終了"  ]
*41

[chara_hide_all  time="0"  wait="true"  ]
[chara_show  name="さくら09"  time="500"  wait="true"  storage="chara/41/キャラ待機A11.png"  width="430"  height="600"  left="845"  top="115"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Ehehe~ [emb exp="f.Oni_Name3"][heart]~[p]
#
Still in her uniform, [emb exp="f.Imo_Name"] leans her body against mine.[p]
#&f.Oni_Name3
[emb exp="f.Imo_Name"], what's with the uniform?[p]
[_tb_end_text]

[chara_mod  name="さくら09"  time="0"  cross="false"  storage="chara/41/キャラ待機A12.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
I have make-up classes at school now.[p]
I missed a lot of school because of my entertainment work.[p]
#&f.Oni_Name3
Want me to take you there?[p]
#&f.Imo_Name
No, it's okay.[p]
#
[_tb_end_text]

[chara_mod  name="さくら09"  time="0"  cross="false"  storage="chara/41/キャラ待機A11.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
More importantly, just keep holding me tight like this.[p]
Let me recharge my energy for school.[p]
#&f.Oni_Name3
Yeah.[p]
#&f.Imo_Name
Ehehe.[p]
Mmm~ Recharging with [emb exp="f.Oni_Name3"][heart]~[p]
#&f.Oni_Name3
Hmm, holding her while she's in her uniform gives me a strange sense of immorality.[p]
#
[_tb_end_text]

[chara_mod  name="さくら09"  time="0"  cross="false"  storage="chara/41/キャラ待機A12.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Ehh~ What's that~?[p]
Hehe[heart][p]
#
[_tb_end_text]

[chara_mod  name="さくら09"  time="0"  cross="false"  storage="chara/41/キャラ待機A13.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
You're hopeless~ This is special, okay?[p]
Here, [emb exp="f.Oni_Name3"][heart][p]
Do you want to・・・ squeeze my breasts・・・?[p]
#
[_tb_end_text]

[tb_hide_message_window  ]
[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/01喘ぎ声(前)01.mp3"  loop="true"  ]
[chara_mod  name="さくら09"  time="1000"  cross="false"  storage="chara/41/キャラ待機A11アニメ.png"  ]
[wait  time="2000"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Ah[heart]・・・ Ah[heart]・・・ Mmh[heart]・・・[p]
#
I knew she was teasing me, but I squeezed her breasts in a split second[p]
I pinch her nipples through her clothes[p]
#&f.Imo_Name
Mmmh[heart]・・・ Mmh[heart]・・・ Mmh[heart]・・・[p]
Ah[heart]・・・ Anh[heart][p]
#
I rub her nipples stiffly, massaging her with the intent to make her cum from her nipples alone[p]
#&f.Imo_Name
Ahh[heart]・・・ W-wait・・・ No[heart]・・・[p]
I'm getting wet・・・[p]
N-no・・・[p]
Ahh[heart]・・・ Nooo[heart]・・・ Mmmh[heart][heart][heart][p]
#
[_tb_end_text]

[chara_mod  name="さくら09"  time="500"  cross="false"  storage="chara/41/キャラ待機A15.png"  ]
[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/吐息01.mp3"  loop="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Ah・・・[p]
#
I stop squeezing right at the edge[p]
#&f.Imo_Name
Hah・・・ hah・・・[p]
#&f.Oni_Name3
We'll continue after I get back[p]
Come back quickly once your make-up lessons are over[p]
#
[_tb_end_text]

[chara_mod  name="さくら09"  time="0"  cross="false"  storage="chara/41/キャラ待機A13.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Mm・・・ okay[heart]・・・ Okay[heart][p]
I'll be right back[heart][p]
#
[_tb_end_text]

[stopse  time="1000"  buf="3"  ]
[chara_hide_all  time="500"  wait="true"  ]
[tb_start_text mode=1 ]
#
I see her off and get lost in thought[p]
Touching [emb exp="f.Imo_Name"] in her uniform is something special・・・[p]
#&f.Oni_Name3
Should I squeeze them again・・・?[p]
#
Excited by the sense of immorality, I decided to squeeze her uniform-clad breasts again[p]

[_tb_end_text]

[tb_start_tyrano_code]
;回数カウント
[eval exp="f.Kaihatu_Count[1].kazu += 1"]

[_tb_end_tyrano_code]

[tb_eval  exp="f.Tre_Up=1"  name="Tre_Up"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__好きUP"  ]
[tb_eval  exp="f.Tre_Up=20"  name="Tre_Up"  cmd="="  op="t"  val="20"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__性欲UP"  ]
[jump  storage="__Main_kaiwa.ks"  target="*__会話終了"  ]
*42

[chara_hide_all  time="0"  wait="true"  ]
[chara_show  name="さくら09"  time="500"  wait="true"  storage="chara/41/キャラ待機B1.png"  width="430"  height="600"  left="845"  top="115"  reflect="false"  ]
[tb_start_text mode=1 ]
#&f.Oni_Name3
Umm・・・[p]
[emb exp="f.Imo_Name"]-san?[p]
#&f.Imo_Name
Yeah, what's wrong? [emb exp="f.Oni_Name3"][p]
#&f.Oni_Name3
No, it's not so much what's wrong・・・[p]
#&f.Imo_Name
Yeah[heart][p]
#
We were watching TV together, but [emb exp="f.Imo_Name"] got bored halfway through and climbed onto my lap[p]
She's been hugging me tightly, staring at me in silence for about five minutes now[p]
#&f.Oni_Name3
I-I can't see the TV・・・[p]
#&f.Imo_Name
Eh, is that so?[p]
Hehe, maybe I can't see it either~[heart][p]
#
She brings her face close enough that our lips are almost touching, staring at me[p]
[emb exp="f.Imo_Name"]'s sweet breath hits my face, and she smells so good[p]
Our bodies are pressed together, and our crotches are lightly touching[p]
#&f.Oni_Name3
Um・・・ My・・・ my dick is going to get hard・・・[p]
#&f.Imo_Name
Oh my! That's terrible[heart][p]
Then・・・ do you want to have sex?[p]
#
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="えっち系/衣擦れ3.mp3"  ]
[tb_start_text mode=1 ]
#
[emb exp="f.Imo_Name"] grinds her crotch against mine[p]
#&f.Oni_Name3
Y-you idiot, we're in the middle of watching TV[p]
#
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="えっち系/衣擦れ3.mp3"  ]
[tb_start_text mode=1 ]
#
-Grind grind grind squish[p]
#&f.Oni_Name3
Ugh[p]
W-wait, wait, I'm really going to get an erection[p]
#&f.Imo_Name
Eh!?[p]
Is that so? Oh no~[heart][p]
#
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="えっち系/衣擦れ3.mp3"  ]
[tb_start_text mode=1 ]
#
-Grind grind squish squish[p]
#&f.Imo_Name
・・・Then, want to have sex?[p]
#
Geez, when did she become such a pervert?[p]
When a beautiful girl whispers something like that right in front of you, your dick is bound to get energetic[p]
The thing that had gotten rock hard pushes up softly against [emb exp="f.Imo_Name"]'s pussy flesh[p]
#&f.Imo_Name
Ah[heart]・・・ Aha[heart][p]
[emb exp="f.Oni_Name3"]'s dick[heart]・・・ It's gotten big, you know?[p]
#
She pokes the tip of my glans with her pussy opening through her panties[p]
#&f.Oni_Name3
Ugh・・・[p]
#&f.Imo_Name
Hey~ [emb exp="f.Oni_Name3"][heart][p]
Come on~[heart][heart][heart][p]
#
-Poke poke・・・ squish[p]
#&f.Imo_Name
Sex[heart]・・・Aren't we going to do it[heart][heart][heart]?[p]
#&f.Oni_Name3
Ahh!! Damn it! I lost!![p]
#
The urge to thrust my dick inside wins over the desire to watch TV[p]
I take off her panties and thrust my meat rod inside[p]
[_tb_end_text]

[tb_hide_message_window  ]
[playse  volume="100"  time="1000"  buf="0"  storage="えっち系/挿入音01.mp3"  ]
[chara_mod  name="さくら09"  time="0"  cross="false"  storage="chara/41/キャラ待機B2.png"  ]
[wait  time="1000"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Ahaa[heart][heart][heart][p]
#
[_tb_end_text]

[tb_hide_message_window  ]
[font  size="18"  color="0x000000"  face="JKG-M_3"  bold="true"  ]
[tb_start_tyrano_code]
;妹クリック後　選択肢
[glink  color="btn_05_black"  storage="__Main_Kaiwa_EP.ks"  size="25"  x="530"  y="200"  width="250"  height="50"  text="Move"  target="*__動く" enterse="マウスオーバー.mp3"  clickse="決定ボタンを押す53.mp3" ]
[_tb_end_tyrano_code]

[resetfont  ]
[s  ]
*__動く

[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/06喘ぎ声(挿入)01.mp3"  loop="true"  ]
[playse  volume="100"  time="1000"  buf="1"  storage="ピストン系/EDピストン01.mp3"  loop="true"  ]
[chara_mod  name="さくら09"  time="0"  cross="false"  storage="chara/41/キャラ待機アニメB1.png"  ]
[wait  time="1000"  ]
[l  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Ah[heart]・・・Ah[heart]・・・Ahh[heart][heart][heart][p]
#
[emb exp="f.Imo_Name"] slams against me with incredible hip movements[p]
She hugs me tight, burying my face in her breasts, making it hard to breathe[p]

[_tb_end_text]

[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/08喘ぎ声(挿入)03.mp3"  loop="true"  ]
[playse  volume="100"  time="1000"  buf="1"  storage="ピストン系/EDピストン02.mp3"  loop="true"  ]
[chara_mod  name="さくら09"  time="0"  cross="false"  storage="chara/41/キャラ待機アニメB2.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Nnn[heart]・・・Ag[heart][p]
[emb exp="f.Oni_Name3"][heart]・・・[emb exp="f.Oni_Name3"][heart]・・・Ahh[heart][heart][heart][p]
#
Making lewd sounds, [emb exp="f.Imo_Name"]'s hip movements become more intense[p]
I feel the sperm rising immediately[p]
#&f.Oni_Name3
[emb exp="f.Imo_Name"], I'm about to cum[p]
#&f.Imo_Name
Not yet, not yet[heart][p]
Ah[heart]・・・Agah[heart][heart][heart][p]
More[heart]・・・Ah[heart]・・・More[heart][heart][heart][p]
[_tb_end_text]

[tb_hide_message_window  ]
[wait  time="2000"  ]
[l  ]
[font  size="18"  color="0x000000"  face="JKG-M_3"  bold="true"  ]
[tb_start_tyrano_code]
;妹クリック後　選択肢
[glink  color="btn_05_black"  storage="__Main_Kaiwa_EP.ks"  size="25"  x="530"  y="200"  width="250"  height="50"  text="Cum inside"  target="*__中に出す" enterse="マウスオーバー.mp3"  clickse="決定ボタンを押す53.mp3" ]
[glink  color="btn_05_black"   storage="__Main_Kaiwa_EP.ks"  size="25"  x="530"  y="250"  width="250"  height="50"  text="Cum outside" target="*__外に出す" enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3" ]
[_tb_end_tyrano_code]

[resetfont  ]
[s  ]
*__中に出す

[tb_start_tyrano_code]
;中だし回数プラスカウント
[if exp="f.H_Sex_Anal ==0 && f.H_Condom_On ==0"]
[eval exp="f.Sex_Count[3].bestcount += 1"]
[eval exp="f.Sex_Count[4].count += 1"]
[endif]
[_tb_end_tyrano_code]

[call  storage="__Main_Night_Option.ks"  target="*__妊娠判定"  cond=""  ]
[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/絶頂声のみ02.mp3"  loop="false"  ]
[playse  volume="100"  time="1000"  buf="1"  storage="えっち系/射精音02.mp3"  loop="false"  ]
[chara_mod  name="さくら09"  time="0"  cross="false"  storage="chara/41/キャラ待機B3.png"  ]
[wait  time="2000"  ]
[jump  storage="__Main_Kaiwa_EP.ks"  target="*__射精後"  ]
*__外に出す

[playse  volume="100"  time="1000"  buf="3"  storage="お触り単発/お触り17.mp3"  loop="false"  ]
[playse  volume="100"  time="1000"  buf="1"  storage="えっち系/射精音02.mp3"  loop="false"  ]
[chara_mod  name="さくら09"  time="0"  cross="false"  storage="chara/41/キャラ待機B4.png"  ]
[wait  time="2000"  ]
*__射精後

[tb_show_message_window  ]
[tb_start_text mode=1 ]
#
ーSpurt・・・Spurt・・・[p]
#&f.Oni_Name3
・・・Phew[p]
[_tb_end_text]

[stopse  time="1000"  buf="0"  ]
[stopse  time="1000"  buf="1"  ]
[stopse  time="1000"  buf="3"  ]
[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/吐息02.mp3"  loop="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Nn[heart][p]
Hehe[heart][p]
The TV show・・・was interesting, wasn't it?[p]
#
The beautiful girl in front of me floats a triumphant smile with a melted, flushed face[p]
#&f.Oni_Name3
Kuh・・・I lost・・・[emb exp="f.Imo_Name"]・・・[p]
But I'll get back at you plenty later[p]
I'll make you cry and beg until you can't even stand![p]
#&f.Imo_Name
Kyaa[heart], how scary~![p]
Help me, police officer![p]
There's a pervert over here~[p]
#
[emb exp="f.Imo_Name"] laughs happily on top of my waist[p]
Even after sex, we cuddle and play around together[p]
I felt a great sense of happiness in such everyday moments[p]
[_tb_end_text]

[stopse  time="1000"  buf="3"  ]
[tb_start_tyrano_code]
;回数カウント
[eval exp="f.Kaihatu_Count[3].kazu += 1"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;sex回数プラスカウント
[eval exp="f.Sex_Count[1].bestcount += 1"]
[eval exp="f.Sex_Count[5].count += 1"]
[eval exp="f.Sex_Count[7].bestcount += 1"]

[_tb_end_tyrano_code]

[tb_eval  exp="f.Sys_Seiryoku-=1"  name="Sys_Seiryoku"  cmd="-="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.Tre_Up=100"  name="Tre_Up"  cmd="="  op="t"  val="100"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__性欲DOWN"  ]
[call  storage="Main_Sta.ks"  target="*__メインステ表示"  ]
[jump  storage="__Main_kaiwa.ks"  target="*__会話終了"  ]
*43

[tb_start_text mode=1 ]
#&f.Oni_Name3
Do you have work tomorrow?[p]
#&f.Imo_Name
No, just a simple lesson[p]
Mane-chan said she'll drive me[p]
#
Mane-chan・・・is the manager from the agency[p]
Since [emb exp="f.Imo_Name"] has become popular and her work has increased, a dedicated manager was assigned to her a while ago[p]
#&f.Oni_Name3
The manager used to drive you to and from concert too, right?[p]
#&f.Imo_Name
Yeah[p]
#&f.Oni_Name3
A man?[p]
#
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_32.png"  wait="false"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Eh, what what? [emb exp="f.Oni_Name3"], are you worried?[p]
Hehe, it's okay, it's a woman[p]
#&f.Oni_Name3
O-oh, I see[p]
#
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_30.png"  wait="false"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Ehehe♪[p]
#&f.Oni_Name3
What is it?[p]
#
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_17.png"  wait="false"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
No-thing♪[p]
#

[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_28.png"  wait="false"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Ah, but, every time there's a concert, I get nervous wondering if people will notice I'm wearing that device[p]
#&f.Oni_Name3
You've become more sexy, right?[p]
#
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_31.png"  wait="false"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Hmm, the agency president has been praising me a lot lately, so I have mixed feelings[p]
Maybe it really had an effect[p]
#&f.Oni_Name3
Hahaha[p]
#
・・・A manager, huh[p]
It was when seeing her off for concert[p]
・・・[p]
[_tb_end_text]

[tb_eval  exp="f.Tre_Up=1"  name="Tre_Up"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__好きUP"  ]
[jump  storage="__Main_kaiwa.ks"  target="*__会話終了"  ]
*44

[jump  storage="__Main_tv_H.ks"  target="*__TVえっち"  ]
[jump  storage="__Main_kaiwa.ks"  target="*__会話終了"  ]
*45

[chara_hide_all  time="0"  wait="true"  ]
[chara_show  name="さくら09"  time="0"  wait="true"  storage="chara/41/キャラ待機A1.png"  width="430"  height="600"  left="845"  top="115"  ]
[tb_start_text mode=1 ]
#
It's been quite a while since we started playing pranks during live streams[p]
Both [emb exp="f.Imo_Name"] and I have gotten used to it, and broadcasting while performing cunnilingus has become normal[p]
#&f.Oni_Name3
・・・[p]
Should I try inserting it・・・[p]
#
[_tb_end_text]

[chara_mod  name="さくら09"  time="0"  cross="false"  storage="chara/41/キャラ待機A3.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Eh, no no, they'll definitely find out[p]
#
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/01喘ぎ声(前)01.mp3"  loop="true"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="えっち系/衣擦れ3.mp3"  ]
[chara_mod  name="さくら09"  time="0"  cross="false"  storage="chara/41/キャラ待機A1アニメ.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Ah[heart]・・・Ah[heart]・・・Nn[heart]・・・[p]
#&f.Oni_Name3
Having sex while being watched by thousands, tens of thousands of people feels absolutely amazing[p]
You want to feel good, right?[p]
#
When I whisper in her ear, [emb exp="f.Imo_Name"]'s body jumps with a start[p]
#&f.Imo_Name
Mmh[heart]・・・[p]
E-even so・・・ I・・・ it's too embarrassing・・・ I can't・・・[p]
#&f.Oni_Name3
Yeah, it is embarrassing[p]
#&f.Imo_Name
Y-yeah・・・ ah[heart][p]
#
I calm [emb exp="f.Imo_Name"] down for now[p]
But・・・ I want to put it in・・・[p]
I want to put it in during the stream・・・[p]
I'll slip it in while playing around[p]
While faintly realizing that my actions are crossing the line[p]
I feel my brain being dominated by pleasure[p]
・・・[p]
#
[_tb_end_text]

[stopse  time="1000"  buf="3"  ]
[tb_start_tyrano_code]
;挿入カード追加
[notice color=black top=150 right=0 width=150 height=45 size=15 text="Obtained 'Penetrate' card" wait=false wait_time=2000]

[_tb_end_tyrano_code]

[tb_eval  exp="f.Tre_Up=1"  name="Tre_Up"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__好きUP"  ]
[tb_eval  exp="f.Tre_Up=20"  name="Tre_Up"  cmd="="  op="t"  val="20"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__性欲UP"  ]
[jump  storage="__Main_kaiwa.ks"  target="*__会話終了"  ]
*46

[tb_start_text mode=1 ]
#&f.Oni_Name3
[emb exp="f.Imo_Name"], you're really popular lately[p]
You've been appearing in all kinds of media more and more[p]
You're practically a hot celebrity now[p]
#
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_32.png"  wait="false"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Yeah, thank you, [emb exp="f.Oni_Name3"]![p]
It's thanks to you, [emb exp="f.Oni_Name3"][p]
#&f.Oni_Name3
It's your own power, [emb exp="f.Imo_Name"]. I'm happy too[p]
#
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_17.png"  wait="false"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Oh right, come visit me in the dressing room after the concert next time[p]
#&f.Oni_Name3
Huh, that would be bad[p]
#
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_01.png"  wait="false"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
It's fine, it's fine. I told the agency you're my brother[p]
#&f.Oni_Name3
Is that so[p]
#
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_30.png"  wait="false"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Hehe, I want [emb exp="f.Oni_Name3"] to see my workplace too![p]
#&f.Oni_Name3
Alright, I'll do that[p]
#
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_32.png"  wait="false"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Yeah![p]
#
・・・Maybe I'll prepare a bouquet and go[p]
She already has hundreds of thousands of loyal fans[p]
A million fans isn't just a dream anymore[p]
A solo concert at the Dome・・・ might actually be possible[p]
[_tb_end_text]

[tb_eval  exp="f.Tre_Up=1"  name="Tre_Up"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__好きUP"  ]
[jump  storage="__Main_kaiwa.ks"  target="*__会話終了"  ]
*47

[tb_start_text mode=1 ]
#
Having sex during live streams is becoming routine[p]
The thrilling situation of whether we'll be found out or not is incredibly exciting[p]
#&f.Oni_Name3
Are you streaming today too?[p]
#
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_27.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Oh, [emb exp="f.Oni_Name3"]・・・[p]
Y-yeah・・・[p]
#
Just from being asked, [emb exp="f.Imo_Name"] presses her hand against her lower belly where her womb is[p]
Her womb must be aching with need[p]
[emb exp="f.Imo_Name"] has fallen so deep into the pleasure of being watched・・・ she's practically waiting for me to put it in during live streams[p]
#&f.Oni_Name3
Starting from the next stream, I'll use a special technique that'll make you shine the brightest[p]
#
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_23.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Eh?[p]
・・・W-what?[p]
#&f.Oni_Name3
Hehe, it's a secret[p]
Do your best to endure it[p]
#
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_27.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Yeah・・・ I'll do my best[p]
#
I'll thoroughly attack the holes in her lower body[p]
I'll attack her clit, pussy, and butt all at once[p]
Seeking more excitement, we engage in more dangerous acts[p]
Both of our brains are being fried, paralyzed[p]
[_tb_end_text]

[tb_start_tyrano_code]
;挿入カード追加
[notice color=black top=150 right=0 width=200 height=45 size=15 text="Obtained 'Multiple Orgasm' card" wait=false wait_time=2000]

[_tb_end_tyrano_code]

[tb_eval  exp="f.Tre_Up=1"  name="Tre_Up"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__好きUP"  ]
[tb_eval  exp="f.Tre_Up=20"  name="Tre_Up"  cmd="="  op="t"  val="20"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__性欲UP"  ]
[jump  storage="__Main_kaiwa.ks"  target="*__会話終了"  ]
*48

[tb_start_text mode=1 ]
#
The solo live is coming soon[p]
[emb exp="f.Imo_Name"], whose popularity is at its peak, is busy every day practicing for the concert[p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_24.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
[emb exp="f.Oni_Name3"]・・・ I'm already nervous[p]
#&f.Oni_Name3
You'll be fine, [emb exp="f.Imo_Name"][p]
#
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_26.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Can I come over there?[p]
#&f.Oni_Name3
Yeah[p]
#
[_tb_end_text]

[chara_hide_all  time="500"  wait="true"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="えっち系/衣擦れ3.mp3"  ]
[chara_show  name="さくら09"  time="500"  wait="true"  storage="chara/41/キャラ待機A3.png"  width="430"  height="600"  left="845"  top="115"  ]
[tb_start_text mode=1 ]
#
I feel her heartbeat from [emb exp="f.Imo_Name"]'s back as we press close[p]
I gently embrace her and whisper[p]
#&f.Oni_Name3
You'll be fine, [emb exp="f.Imo_Name"][p]
You can do it, [emb exp="f.Imo_Name"][p]
#
[_tb_end_text]

[tb_start_text mode=1 ]
#&f.Imo_Name
Yeah・・・ yeah・・・[p]
I'll do my best・・・[p]
I'll show you the best performance・・・ [emb exp="f.Oni_Name3"][p]
#
Is this lifestyle really for [emb exp="f.Imo_Name"]'s benefit?[p]
The beautiful girl in my arms is becoming a distant existence, slipping beyond my reach.[p]
Such is her popularity and idol nature that a single scandal could blow away everything she has built up.[p]
I've been indulging in my own desires and her kindness,[p]
but if I really think about what's best for her, this dangerous cohabitation is・・・[p]
・・・[p]
I felt a little conflicted as I held [emb exp="f.Imo_Name"] in my arms.[p]
[_tb_end_text]

[tb_eval  exp="f.Tre_Up=1"  name="Tre_Up"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__容姿UP"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__歌UP"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__ダンスUP"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__演技UP"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__話術UP"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__好きUP"  ]
[jump  storage="__Main_kaiwa.ks"  target="*__会話終了"  ]
*49

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_27.png"  wait="true"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="えっち系/キス01.mp3"  ]
[individual_image  layer="1"  zindex="1"  name="kaiwaEP38"  storage="default/スキンシップ08_1.png"  width="300"  height="400"  wait="true"  x="900"  y="100"  time="300"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Kiss[p]
Smooch[p]
Mmh・・・[p]
#
Lately, whenever we kiss, [emb exp="f.Imo_Name"] actively entangles her tongue with mine.[p]
She sucks my tongue into her mouth, and we caress each other, exchanging saliva with the tips of our tongues.[p]
[_tb_end_text]

[stopse  time="1000"  buf="0"  ]
[individual_image  layer="1"  zindex="1"  name="kaiwaEP38"  storage="default/スキンシップ08.png"  width="300"  height="400"  wait="true"  x="900"  y="100"  time="300"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Hah・・・Hah・・・[p]
#
When our lips part, a string of saliva connects our mouths, dripping down.[p]
[_tb_end_text]

[delete_individual_image  layer="1"  name="kaiwaEP38"  ]
[chara_part  name="さくら01"  time="0"  目="キャラ待機01_35.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Mmh・・・[p]
#
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_36.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Hehe[p]
#
The string drips, wetting her lips.[p]
As if enjoying it, [emb exp="f.Imo_Name"] gives a bewitching smile she doesn't usually show.[p]
・・・You've really gotten hooked on kissing, haven't you.[p]
[_tb_end_text]

[individual_image  layer="1"  zindex="1"  name="kaiwaEP38"  storage="default/スキンシップ08.png"  width="300"  height="400"  wait="true"  x="900"  y="100"  time="300"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Mm, [emb exp="f.Oni_Name3"]・・・[p]
#
Saying that, she brings her face close, sticking out her tongue.[p]
[_tb_end_text]

[individual_image  layer="1"  zindex="1"  name="kaiwaEP38"  storage="default/スキンシップ08_1.png"  width="300"  height="400"  wait="true"  x="900"  y="100"  time="300"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="えっち系/キス01.mp3"  ]
[tb_start_text mode=1 ]
I lay my tongue on hers and lose myself in the kiss once more.[p]
・・・[p]
[_tb_end_text]

[stopse  time="1000"  buf="0"  ]
[tb_start_tyrano_code]
;回数カウント
[eval exp="f.Kaihatu_Count[0].kazu += 1"]
[_tb_end_tyrano_code]

[tb_eval  exp="f.Tre_Up=1"  name="Tre_Up"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__好きUP"  ]
[tb_eval  exp="f.Tre_Up=15"  name="Tre_Up"  cmd="="  op="t"  val="15"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__性欲UP"  ]
[jump  storage="__Main_kaiwa.ks"  target="*__会話終了"  ]
*50

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_27.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
[emb exp="f.Oni_Name3"]・・・[p]
Mm・・・[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="えっち系/キス01.mp3"  ]
[individual_image  layer="1"  zindex="1"  name="kaiwaEP25"  storage="default/スキンシップ08_1.png"  width="300"  height="400"  wait="true"  x="900"  y="100"  time="300"  ]
[wait  time="2000"  ]
[delete_individual_image  layer="1"  time="300"  name="kaiwaEP25"  wait="true"  ]
[chara_part  name="さくら01"  time="0"  目="キャラ待機01_30.png"  wait="true"  ]
[tb_start_text mode=1 ]
Ehehe・・[p]
#&f.Oni_Name3
You really love kissing, don't you.[p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_27.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Yeah. It's still not enough-[p]
#&f.Oni_Name3
Okay, okay.[p]
#
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="えっち系/キス01.mp3"  ]
[individual_image  layer="1"  zindex="1"  name="kaiwaEP25"  storage="default/スキンシップ08_1.png"  width="300"  height="400"  wait="true"  x="900"  y="100"  time="300"  ]
[wait  time="2000"  ]
[delete_individual_image  layer="1"  time="300"  name="kaiwaEP25"  wait="true"  ]
[chara_part  name="さくら01"  time="0"  目="キャラ待機01_13.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Hehe, I love you so much, [emb exp="f.Oni_Name3"][heart][p]
#&f.Oni_Name3
Okay, okay, me too.[p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_15.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Eh- That sounds like you're just doing your duty-[p]
#&f.Oni_Name3
・・・[p]
[emb exp="f.Imo_Name"], I love you.[p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_23.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
――!! Geez! Don't say that so seriously all of a sudden.[p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_24.png"  wait="true"  ]
[tb_start_text mode=1 ]
You're so cool, geez.[p]
#&f.Oni_Name3
There.[p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_27.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Mm.[p]
#
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="えっち系/キス01.mp3"  ]
[individual_image  layer="1"  zindex="1"  name="kaiwaEP25"  storage="default/スキンシップ08_1.png"  width="300"  height="400"  wait="true"  x="900"  y="100"  time="300"  ]
[wait  time="2000"  ]
[delete_individual_image  layer="1"  time="300"  name="kaiwaEP25"  wait="true"  ]
[tb_start_tyrano_code]
;回数カウント
[eval exp="f.Kaihatu_Count[0].kazu += 1"]
[_tb_end_tyrano_code]

[tb_eval  exp="f.Tre_Up=1"  name="Tre_Up"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__理性DOWN"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__好きUP"  ]
[tb_eval  exp="f.Tre_Up=30"  name="Tre_Up"  cmd="="  op="t"  val="30"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__性欲UP"  ]
[jump  storage="__Main_kaiwa.ks"  target="*__会話終了"  ]
*51

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_24.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
[emb exp="f.Oni_Name3"]・・・um, do you like breasts?[p]
#&f.Oni_Name3
Huh?[p]
Why?[p]
#
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_28.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Ugh・・・the moment I let my guard down, you start squeezing them.[p]
#
[emb exp="f.Imo_Name"]'s breasts are so big they don't fit in one hand.[p]
They're definitely bigger than an F-cup.[p]
Honestly, I want to bury my face in them and squeeze them all the time.[p]
#&f.Oni_Name3
Listen, [emb exp="f.Imo_Name"], [emb exp="f.Oni_Name3"] is sighing here.[p]
#
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_19.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Huh?[p]
#&f.Oni_Name3
Your shoulders are always stiff, right?[p]
#
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_16.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Y-yeah.[p]
#&f.Oni_Name3
Because your breasts are so huge, your shoulders are screaming in pain.[p]
So, I'm massaging them to relieve the pain.[p]
The breasts?[p]
#
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_21.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Hm?[p]
#
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_22.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Does massaging breasts get rid of stiff shoulders?[p]
#&f.Oni_Name3
It does-[p]
#
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_19.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
・・・[p]
・・・[p]
#
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_29.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
That doesn't make any sense![p]
[emb exp="f.Oni_Name3"], you liar-[p]
#&f.Oni_Name3
Hahahaha.[p]
#
[_tb_end_text]

[tb_eval  exp="f.Tre_Up=1"  name="Tre_Up"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__好きUP"  ]
[tb_eval  exp="f.Tre_Up=15"  name="Tre_Up"  cmd="="  op="t"  val="15"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__性欲UP"  ]
[jump  storage="__Main_kaiwa.ks"  target="*__会話終了"  ]
*52

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_12.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
[emb exp="f.Oni_Name3"], you always start touching my breasts right away.[p]
#&f.Oni_Name3
If there was a huge mountain in front of you, you'd want to climb it, right?[p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_19.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
？[p]
What are you talking about?[p]
#&f.Oni_Name3
It would be rude not to touch them.[p]
There.[p]
#
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="えっち系/衣擦れ1.mp3"  ]
[individual_image  layer="1"  zindex="1"  name="kaiwaEP25"  storage="default/スキンシップ09.png"  width="300"  height="400"  wait="true"  x="900"  y="100"  time="300"  ]
[wait  time="2000"  ]
[delete_individual_image  layer="1"  time="300"  name="kaiwaEP25"  wait="true"  ]
[chara_part  name="さくら01"  time="0"  目="キャラ待機01_26.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Geez, [emb exp="f.Oni_Name3"], you pervert.[p]
Lately, just being touched a little makes me jolt.[p]
#
Your sensitivity must be getting better.[p]
In fact, I can feel her nipples hardening and standing up even through her clothes.[p]
Without hesitation, I pinch her nipples between my thumb and index finger.[p]
#&f.Imo_Name
Ah・・・[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="1"  storage="えっち系/吐息02.mp3"  loop="true"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="えっち系/衣擦れ1.mp3"  ]
[individual_image  layer="1"  zindex="1"  name="kaiwaEP25"  storage="default/スキンシップ09.png"  width="300"  height="400"  wait="true"  x="900"  y="100"  time="300"  ]
[wait  time="2000"  ]
[delete_individual_image  layer="1"  time="300"  name="kaiwaEP25"  wait="true"  ]
[chara_hide_all  time="0"  wait="true"  ]
[chara_show  name="さくら01_1"  time="0"  wait="true"  storage="chara/15/キャラ待機19_3.png"  width="500"  height="550"  left="750"  top="170"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Mmh・・・[p]
N-No・・・[p]
#&f.Oni_Name3
No?[p]
Do you really hate being touched?[p]
[_tb_end_text]

[chara_mod  name="さくら01_1"  time="０"  cross="false"  storage="chara/15/キャラ待機19_2.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
・・・[p]
・・・Ugh・・・[p]
#&f.Oni_Name3
See, you don't look like you hate it?[p]
#&f.Imo_Name
Mmh・・・[p]
#
[_tb_end_text]

[chara_mod  name="さくら01_1"  time="０"  cross="false"  storage="chara/15/キャラ待機19_5.png"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="えっち系/衣擦れ1.mp3"  ]
[individual_image  layer="1"  zindex="1"  name="kaiwaEP25"  storage="default/スキンシップ09.png"  width="300"  height="400"  wait="true"  x="900"  y="100"  time="300"  ]
[wait  time="2000"  ]
[delete_individual_image  layer="1"  time="300"  name="kaiwaEP25"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
・・・Hah・・・Hah[p]
#&f.Oni_Name3
You actually like it, don't you?[p]
#&f.Imo_Name
・・・Hah・・・Hah[p]
・・・[p]
Nod[p]
#
I feel satisfied seeing [emb exp="f.Imo_Name"] nod slightly, hesitating and looking shy.[p]
You've gotten pretty naughty, huh.[p]
Thinking that, I kept stimulating her hardened nipples, rubbing them.[p]
[_tb_end_text]

[stopse  time="1000"  buf="1"  ]
[tb_start_tyrano_code]
;回数カウント
[eval exp="f.Kaihatu_Count[1].kazu += 1"]
[_tb_end_tyrano_code]

[tb_eval  exp="f.Tre_Up=1"  name="Tre_Up"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__理性DOWN"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__好きUP"  ]
[tb_eval  exp="f.Tre_Up=30"  name="Tre_Up"  cmd="="  op="t"  val="30"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__性欲UP"  ]
[jump  storage="__Main_kaiwa.ks"  target="*__会話終了"  ]
*53

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_18.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
W-When you touch my butt, it makes my heart race like I'm being groped・・・[p]
#&f.Oni_Name3
I touch you because I like that reaction.[p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_26.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Geez, [emb exp="f.Oni_Name3"], you pervert~[p]
#&f.Oni_Name3
You do so much dancing, so why are you so soft?[p]
So bouncy, I'd mistake them for breasts.[p]
It really gets to me.[p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_28.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Don't say it so seriously・・・[p]
#
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="えっち系/衣擦れ1.mp3"  ]
[individual_image  layer="1"  zindex="1"  name="kaiwaEP27"  storage="default/スキンシップ05.png"  width="300"  height="400"  wait="true"  x="900"  y="100"  time="300"  ]
[wait  time="2000"  ]
[delete_individual_image  layer="1"  time="300"  name="kaiwaEP27"  wait="true"  ]
[chara_part  name="さくら01"  time="0"  目="キャラ待機01_29.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
No, not again![p]
#&f.Oni_Name3
Hahaha[p]
#
[_tb_end_text]

[tb_start_tyrano_code]
;回数カウント
[eval exp="f.Kaihatu_Count[2].kazu += 1"]
[_tb_end_tyrano_code]

[tb_eval  exp="f.Tre_Up=1"  name="Tre_Up"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__理性DOWN"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__好きUP"  ]
[tb_eval  exp="f.Tre_Up=30"  name="Tre_Up"  cmd="="  op="t"  val="30"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__性欲UP"  ]
[jump  storage="__Main_kaiwa.ks"  target="*__会話終了"  ]
*54

[chara_hide_all  time="0"  wait="true"  ]
[chara_show  name="さくら01_1"  time="0"  wait="true"  storage="chara/15/キャラ待機13.png"  width="500"  height="550"  left="750"  top="170"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
[emb exp="f.Oni_Name3"], um・・・[p]
T-Touching *there* is a bit・・・[p]
#&f.Oni_Name3
I see, sorry.[p]
#
Feeling suddenly rejected by [emb exp="f.Imo_Name"], I reflected internally that I might have gone too far.[p]
#&f.Oni_Name3
Did you hate it?[p]
#
[_tb_end_text]

[chara_mod  name="さくら01_1"  time="0"  cross="false"  storage="chara/15/キャラ待機19_1.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Y-Yeah, um・・・[p]
I・・・ I have to change my panties・・・[p]
#
She mutters in a barely audible voice, turning bright red.[p]
#&f.Oni_Name3
Huh?[p]
#
[_tb_end_text]

[chara_mod  name="さくら01_1"  time="0"  cross="false"  storage="chara/15/キャラ待機19_2.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
・・・[p]
#&f.Oni_Name3
・・・[p]
・・・Ah! I see![p]
Did your panties get wet?[p]
#
[_tb_end_text]

[chara_mod  name="さくら01_1"  time="0"  cross="false"  storage="chara/15/キャラ待機19_3.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
！？[p]
#
[_tb_end_text]

[chara_hide_all  time="0"  wait="true"  ]
[chara_show  name="さくら01"  time="0"  wait="true"  storage="chara/1/キャラ待機01.png"  width="500"  height="550"  left="750"  top="170"  ]
[chara_part  name="さくら01"  time="0"  目="キャラ待機01_31.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
N-No, they didn't!![p]
They didn't! You dummy, dummy![p]
It's not like that!![p]
#
[_tb_end_text]

[chara_hide_all  time="500"  wait="true"  ]
[tb_start_text mode=1 ]
#
・・・She turned bright red and ran away.[p]
・・・Oh?[p]
・・・[p]
[_tb_end_text]

[tb_eval  exp="f.Tre_Up=1"  name="Tre_Up"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__好きUP"  ]
[tb_eval  exp="f.Tre_Up=20"  name="Tre_Up"  cmd="="  op="t"  val="20"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__性欲UP"  ]
[jump  storage="__Main_kaiwa.ks"  target="*__会話終了"  ]
*55

[chara_hide_all  time="0"  wait="true"  ]
[chara_show  name="さくら01_1"  time="0"  wait="true"  storage="chara/15/キャラ待機13.png"  width="500"  height="550"  left="750"  top="170"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
[emb exp="f.Oni_Name3"], you're・・・ um・・・[p]
A-Aren't you too good at naughty stuff?[p]
#&f.Oni_Name3
Thanks.[p]
[_tb_end_text]

[chara_mod  name="さくら01_1"  time="0"  cross="true"  storage="chara/15/キャラ待機12.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
It always feels too good・・・[p]
I・・・ I'm going to go crazy.[p]
#&f.Oni_Name3
I love seeing you cum too, [emb exp="f.Imo_Name"].[p]
[_tb_end_text]

[chara_hide_all  time="0"  wait="true"  ]
[chara_show  name="さくら01"  time="0"  wait="true"  storage="chara/1/キャラ待機01.png"  width="500"  height="550"  left="750"  top="170"  ]
[chara_part  name="さくら01"  time="0"  目="キャラ待機01_29.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Y-You dummy.[p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_24.png"  wait="true"  ]
[tb_start_text mode=1 ]
Ugh, even though I'm always holding back, in the end you make my mind go blank.[p]
#&f.Oni_Name3
You were holding back?[p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_24.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Because, I don't want to be hated for making weird noises.[p]
#&f.Oni_Name3
Is that so! Alright, I'll do my best to make you make even weirder noises.[p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_27.png"  wait="true"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="えっち系/衣擦れ3.mp3"  loop="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Ah[p]
#
[_tb_end_text]

[individual_image  layer="1"  zindex="1"  name="kaiwaEP28"  storage="default/スキンシップ10_1.png"  width="300"  height="400"  wait="true"  x="900"  y="100"  time="300"  ]
[wait  time="2000"  ]
[delete_individual_image  layer="1"  time="300"  name="kaiwaEP28"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
N-No[p]
#
[_tb_end_text]

[individual_image  layer="1"  zindex="1"  name="kaiwaEP28"  storage="default/スキンシップ10_1.png"  width="300"  height="400"  wait="true"  x="900"  y="100"  time="300"  ]
[wait  time="2000"  ]
[delete_individual_image  layer="1"  time="300"  name="kaiwaEP28"  wait="true"  ]
[stopse  time="1000"  buf="0"  fadeout="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Hah, hah[p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_29.png"  wait="true"  ]
[tb_start_text mode=1 ]
Geez, [emb exp="f.Oni_Name3"], you pervert![p]
#
[_tb_end_text]

[tb_start_tyrano_code]
;回数カウント
[eval exp="f.Kaihatu_Count[3].kazu += 1"]
[_tb_end_tyrano_code]

[tb_eval  exp="f.Tre_Up=1"  name="Tre_Up"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__理性DOWN"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__好きUP"  ]
[tb_eval  exp="f.Tre_Up=30"  name="Tre_Up"  cmd="="  op="t"  val="30"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__性欲UP"  ]
[jump  storage="__Main_kaiwa.ks"  target="*__会話終了"  ]
*56

[tb_start_text mode=1 ]
I slowly stroke [emb exp="f.Imo_Name"]'s clit through her panties.[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="1"  storage="えっち系/吐息02.mp3"  loop="true"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="えっち系/衣擦れ3.mp3"  loop="false"  ]
[individual_image  layer="1"  zindex="1"  name="kaiwaEP45"  storage="default/スキンシップ10_1.png"  width="300"  height="400"  wait="true"  x="900"  y="100"  time="300"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Hyah!?[p]
・・・Mmh[p]
Oh, [emb exp="f.Oni_Name3"]・・・[p]
#
Even though I'm just stroking it a little, I can feel her clit swelling up.[p]
In no time, her panties got wet.[p]
#&f.Oni_Name3
Did she get wet imagining what's about to happen?[p]
#&f.Imo_Name
Mmh・・・[p]
・・・Y-You're being mean.[p]
#
Satisfied by [emb exp="f.Imo_Name"] clinging to my arm, I stimulate the entrance with my finger along her slit.[p]
#&f.Imo_Name
Hyah・・・[p]
Nnh・・・ Ahh・・・[p]
#
From her already soaking wet panties, squishy, lewd sounds are coming out.[p]
#&f.Imo_Name
Ah・・・ hh・・・[p]
Ahh・・・ ah![p]
I rub her clit even more intensely, yet gently, stimulating her.[p]
#&f.Imo_Name
N・・・ No・・・[p]
Hnngh・・・ No more・・・[p]
#
At those words, I vibrate my fingers rapidly, giving her clit squelchy friction[p]

#&f.Imo_Name
Hyaaah!![p]
Aaaaaah!![p]
#
[emb exp="f.Imo_Name"]'s body twitches and convulses as she clings to me[p]

[_tb_end_text]

[stopse  time="1000"  buf="0"  ]
[chara_hide_all  time="0"  wait="true"  ]
[chara_show  name="さくら01_1"  time="0"  wait="true"  storage="chara/15/キャラ待機19_6.png"  width="500"  height="550"  left="750"  top="170"  ]
[delete_individual_image  layer="1"  time="300"  name="kaiwaEP45"  wait="true"  ]
[tb_start_text mode=1 ]
Looks like she came completely[p]
At the tip of her soaking wet panties, she's dripping enough juices to wet the sofa[p]
#&f.Imo_Name
Hah・・hah・・・[p]
Hah・・・hah・・・[p]
#
I whisper a single word into [emb exp="f.Imo_Name"]'s ear as she goes limp, completely leaning against my shoulder[p]
#&f.Oni_Name3
We'll continue this another time[p]

#
[_tb_end_text]

[chara_mod  name="さくら01_1"  time="0"  cross="false"  storage="chara/15/キャラ待機19_3.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
！？[p]
#
[_tb_end_text]

[stopse  time="1000"  buf="1"  ]
[chara_mod  name="さくら01_1"  time="0"  cross="false"  storage="chara/15/キャラ待機19_4.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Hah・・・hah・・・[p]
・・・Y-you're so mean・・・[p]
#
I'm satisfied seeing her protest, her body still twitching a little.[p]
I'm actually getting a raging hard-on, but this kind of teasing is nice once in a while[p]
Maybe I'll let it explode tonight・・・ I found myself thinking that[p]
[_tb_end_text]

[tb_start_tyrano_code]
;開発回数プラスカウント
[eval exp="f.Kaihatu_Count[3].kazu += 1"]

[_tb_end_tyrano_code]

[tb_eval  exp="f.Tre_Up=1"  name="Tre_Up"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__理性DOWN"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__好きUP"  ]
[tb_eval  exp="f.Tre_Up=50"  name="Tre_Up"  cmd="="  op="t"  val="50"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__性欲UP"  ]
[jump  storage="__Main_kaiwa.ks"  target="*__会話終了"  ]
*57

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_32.png"  ]
[tb_start_text mode=1 ]
Lately, I can feel [emb exp="f.Imo_Name"]'s anus loosening up just right[p]
It might be possible to start training her for anal sex soon[p]
#&f.Imo_Name
Hmm hm-hmm♪[p]
#
I ponder this while she hums a tune without a care in the world[p]
If I ask her beforehand, she'll probably say no・・・[p]
Should I just try it out of the blue?[p]
That's what I decided[p]
・・・[p]
[_tb_end_text]

[tb_eval  exp="f.Tre_Up=1"  name="Tre_Up"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__好きUP"  ]
[tb_eval  exp="f.Tre_Up=10"  name="Tre_Up"  cmd="="  op="t"  val="10"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__性欲UP"  ]
[jump  storage="__Main_kaiwa.ks"  target="*__会話終了"  ]
*58

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_28.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Uu, my butt's been feeling all tingly lately[p]
#&f.Oni_Name3
What? Are you feeling sick?[p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_27.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Uu, and whose fault do you think that is・・・[p]
Even just sitting down makes me twitch.[p]
#&f.Oni_Name3
You're getting trained nicely.[p]
I've never been trained before, so I wouldn't know.[p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_31.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Muu-[p]
I'm gonna get you back next time![p]
[_tb_end_text]

[tb_eval  exp="f.Tre_Up=1"  name="Tre_Up"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__理性DOWN"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__好きUP"  ]
[tb_eval  exp="f.Tre_Up=30"  name="Tre_Up"  cmd="="  op="t"  val="30"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__性欲UP"  ]
[jump  storage="__Main_kaiwa.ks"  target="*__会話終了"  ]
*59

[tb_start_text mode=1 ]
#&f.Oni_Name3
Is your aunt doing well?[p]
#&f.Imo_Name
She's super energetic.[p]
She was actually worrying until the very end about whether to come with us all the way to Tokyo.[p]
#&f.Oni_Name3
That sounds just like her.[p]
#&f.Imo_Name
I think she felt safe leaving me to you because you're here, [emb exp="f.Oni_Name3"].[p]
#&f.Oni_Name3
Hmm, I'm not so confident.[p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_32.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Hehe, I trust you♪[p]
#
[_tb_end_text]

[tb_eval  exp="f.Tre_Up=1"  name="Tre_Up"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__好きUP"  ]
[jump  storage="__Main_kaiwa.ks"  target="*__会話終了"  ]
*60

[tb_start_text mode=1 ]
#&f.Oni_Name3
Is your sister-chan doing well?[p]
#&f.Imo_Name
Kaede?[p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_11.png"  wait="true"  ]
[tb_start_text mode=1 ]
Kaede really wanted to come too. She said it's unfair that it's just me.[p]
#&f.Oni_Name3
Hahaha, that can't be helped.[p]
She's still at that age where the city is dazzling and fun.[p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_22.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Eh, no, no.[p]
She wants to see you, [emb exp="f.Oni_Name3"].[p]
#&f.Oni_Name3
Eh・・・ is that so?[p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_16.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
You really are a sinful man, honestly.[p]
#
[_tb_end_text]

[tb_eval  exp="f.Tre_Up=1"  name="Tre_Up"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__好きUP"  ]
[jump  storage="__Main_kaiwa.ks"  target="*__会話終了"  ]
*61

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_21.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Oni_Name3
What's wrong? You look kinda tired.[p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_11.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Hmm, last week various people talked to me, and I got a little tired.[p]
#&f.Oni_Name3
Classmates?[p]
#&f.Imo_Name
Yeah, kids in my class・・・ and also kids from other grades.[p]
#&f.Oni_Name3
When a super cute transfer student arrives, of course they're going to pay attention.[p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_28.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Geez, don't tease me.[p]
I get tired trying to be considerate.[p]
#&f.Oni_Name3
Haha.[p]
Well, as someone aiming to be an idol, standing out can't be helped.[p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_24.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
I wanted to stay quiet at school・・・ but it feels like everyone just comes up to me on their own.[p]
#&f.Oni_Name3
That's what they call charm, right?[p]
If any guy tries to get close to you, I'll send him flying, so consult me first.[p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_12.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Ehh, I won't go near them. [emb exp="f.Oni_Name3"] is enough for me when it comes to boys.[p]
#&f.Oni_Name3
Are you praising me or dissing me?[p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_32.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Hehe, I'm barely dissing you.[p]
#
[_tb_end_text]

[tb_eval  exp="f.Tre_Up=1"  name="Tre_Up"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__容姿UP"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__話術UP"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__好きUP"  ]
[jump  storage="__Main_kaiwa.ks"  target="*__会話終了"  ]
*62

[tb_start_text mode=1 ]
#&f.Imo_Name
Milk chocolate really is the best, isn't it?[p]
#&f.Oni_Name3
I feel like you say that every time.[p]
What do you like so much about it?[p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_21.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Hmm, the gentle sweetness is irresistible.[p]
The way it slowly melts in your mouth.[p]
The milk mellows the chocolate, giving it a brilliance that's different from just a lump of cacao.[p]
#&f.Oni_Name3
Aren't other chocolates pretty similar?[p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_01.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
No, they're not![p]
The good thing about milk chocolate is that balance![p]
The slight bitterness of the cacao, the mellowness of the milk, the just-right sweetness of the sugar.[p]
That creates a perfect harmony.[p]
#&f.Oni_Name3
O-oh.[p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_20.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
・・・So, you know?[p]
#&f.Oni_Name3
Alright, alright. I'll go make some tea.[p]
Let's have a snack.[p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_32.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Yeah![p]
#
[_tb_end_text]

[tb_eval  exp="f.Tre_Up=1"  name="Tre_Up"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__話術UP"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__好きUP"  ]
[jump  storage="__Main_kaiwa.ks"  target="*__会話終了"  ]
*63

[tb_start_text mode=1 ]
#
On weekdays, [emb exp="f.Imo_Name"] has lessons and entertainment work, and I have my job, so we often come home late.[p]
Inevitably, we often eat meals separately.[p]
On weekends, I mostly cook, and [emb exp="f.Imo_Name"] makes dinner occasionally.[p]
#&f.Oni_Name3
Is stir-fried vegetables okay for dinner tonight?[p]
#
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_31.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Ugh, vegetables・・・ Just not green peppers・・・[p]
#&f.Oni_Name3
Being a picky eater isn't good, you know.[p]
#
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_31.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Please![p]
I'll make it next time![p]
Just don't put in green peppers.[p]
Come on! Come on! [emb exp="f.Oni_Name3"]~[p]
#&f.Oni_Name3
You're hopeless.[p]
I'll leave out the green peppers.[p]
#
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_23.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
[emb exp="f.Oni_Name3"]！！[p]
#&f.Oni_Name3
Mmm.[p]
・・・I'll put in paprika instead.[p]
#
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_31.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
No, I hate both of those!![p]
#
[_tb_end_text]

[tb_eval  exp="f.Tre_Up=1"  name="Tre_Up"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__話術UP"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__好きUP"  ]
[jump  storage="__Main_kaiwa.ks"  target="*__会話終了"  ]
*64

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_12.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
When you work in show business, you can't go out to play anymore, huh.[p]
#&f.Oni_Name3
[emb exp="f.Imo_Name"], you've always played at home since way back.[p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_16.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
I do want to go out and play.[p]
It's just that the games won't let me go.[p]
#&f.Oni_Name3
What a lame excuse.[p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_18.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Besides, it's your fault for being too good at games, [emb exp="f.Oni_Name3"].[p]
You're too merciless.[p]
#&f.Oni_Name3
Oh, you wanna go?[p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_17.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Heheh, I'll crush you.[p]
Ah, as a handicap, you can't use your right hand.[p]
#&f.Oni_Name3
How am I supposed to play?[p]
#
[_tb_end_text]

[tb_eval  exp="f.Tre_Up=1"  name="Tre_Up"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__理性DOWN"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__好きUP"  ]
[jump  storage="__Main_kaiwa.ks"  target="*__会話終了"  ]
*65

[tb_start_text mode=1 ]
#&f.Oni_Name3
We used to play together a lot back then.[p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_32.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
It's nostalgic. [emb exp="f.Oni_Name3"], my sister, and I used to play at my parents' house often.[p]
#&f.Oni_Name3
Back then, I thought, 'What a tomboy she is'.[p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_28.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
No way, I was usually quiet back then too.[p]
When I play with [emb exp="f.Oni_Name3"], I just get too excited.[p]
It's embarrassing.[p]
Nostalgic.[p]
#&f.Oni_Name3
You were cute back then.[p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_18.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Mmm, what about now?[p]
#&f.Oni_Name3
Hmm・・・[p]
Now you're hundreds of times cuter.[p]
[_tb_end_text]

[chara_hide_all  time="0"  wait="true"  ]
[chara_show  name="さくら01_1"  time="0"  wait="true"  storage="chara/15/キャラ待機18.png"  width="500"  height="550"  left="750"  top="170"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
・・・O-okay, I forgive you.[p]
#
[_tb_end_text]

[tb_eval  exp="f.Tre_Up=1"  name="Tre_Up"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__容姿UP"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__好きUP"  ]
[jump  storage="__Main_kaiwa.ks"  target="*__会話終了"  ]
*66

[tb_start_text mode=1 ]
#&f.Oni_Name3
The fried chicken today was really good.[p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_32.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Eh, hehe, really?[p]
#&f.Oni_Name3
Your cooking has really gotten better.[p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_17.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Hehe, I know, right? I know, right?[p]
#&f.Oni_Name3
With these skills, I wouldn't be ashamed to marry myself off anywhere![p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_25.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
You call me a wife・・・ geez[p]
#&f.Oni_Name3
I want to marry you that much![p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_23.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
・・・Eh? ・・・Um・・・[p]
[_tb_end_text]

[chara_hide_all  time="0"  wait="true"  ]
[chara_show  name="さくら01_1"  time="0"  wait="true"  storage="chara/15/キャラ待機18.png"  width="500"  height="550"  left="750"  top="170"  ]
[tb_start_text mode=1 ]
・・・Y-yeah[p]
#&f.Oni_Name3
Just kidding.[p]
[_tb_end_text]

[chara_hide_all  time="0"  wait="true"  ]
[chara_show  name="さくら01"  time="0"  wait="true"  storage="chara/1/キャラ待機01.png"  width="500"  height="550"  left="750"  top="170"  ]
[chara_part  name="さくら01"  time="0"  目="キャラ待機01_22.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Eh・・・[p]
#&f.Oni_Name3
Nah, I'd be happy if you keep making it for me from now on[p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_15.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
・・・I won't make it for you[p]
#&f.Oni_Name3
Eh[p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_29.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
I won't make it for you anymore[p]
#&f.Oni_Name3
W-why!?[p]
#
[_tb_end_text]

[tb_eval  exp="f.Tre_Up=1"  name="Tre_Up"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__好きUP"  ]
[jump  storage="__Main_kaiwa.ks"  target="*__会話終了"  ]
*67

[tb_start_text mode=1 ]
#&f.Oni_Name3
[emb exp="f.Imo_Name"], you're really stylish, huh[p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_19.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Eh, what brought this on?[p]
#&f.Oni_Name3
Are you trying to become a gal?[p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_22.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Ehh, you're calling this introvert a gal?[p]
#&f.Oni_Name3
You're not aiming for it?[p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_01.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
I like gals, but I'm not trying to become one[p]
I just like cute clothes, accessories, and small items[p]
#&f.Oni_Name3
Is that how it is?[p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_32.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Exactly. Being stylish is fun, you know.[p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_17.png"  wait="true"  ]
[tb_start_text mode=1 ]
Here, here, I'll paint your nails, [emb exp="f.Oni_Name3"]-[p]
#&f.Oni_Name3
Ah, hey[p]
Stop trying to lead me down that path.[p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_12.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Ehh, but I think it'd suit you-[p]
#
[_tb_end_text]

[tb_eval  exp="f.Tre_Up=1"  name="Tre_Up"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__容姿UP"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__好きUP"  ]
[jump  storage="__Main_kaiwa.ks"  target="*__会話終了"  ]
*68

[tb_start_text mode=1 ]
#&f.Oni_Name3
Did you do your homework?[p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_20.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Eh, hmm, I'll do it in an hour[p]
#&f.Oni_Name3
I heard that an hour ago[p]
#&f.Imo_Name
Eh, really?[p]
#&f.Oni_Name3
Actually, I heard it two hours ago too[p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_31.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
W-was that so?[p]
#&f.Oni_Name3
You'll probably say the same thing in an hour too[p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_29.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Geez, what do you think I am![p]
How rude! Hmph![p]
#&f.Oni_Name3
I heard that line an hour ago too[p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_31.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Eh, ahahaha[p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_28.png"  wait="true"  ]
[tb_start_text mode=1 ]
Ugh, one more hour~[p]
#&f.Oni_Name3
You're hopeless. Make sure to do it properly in an hour, okay?[p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_31.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Okay, I love you [emb exp="f.Oni_Name3"][p]
#&f.Oni_Name3
That's a cheap 'I love you'[p]
#
[_tb_end_text]

[tb_eval  exp="f.Tre_Up=1"  name="Tre_Up"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__好きUP"  ]
[jump  storage="__Main_kaiwa.ks"  target="*__会話終了"  ]
*69

[tb_start_text mode=1 ]
#&f.Oni_Name3
Are you writing lyrics?[p]
#&f.Imo_Name
Yeah.[p]
It's not for entertainment activities, it's more like a hobby.[p]
#&f.Oni_Name3
Ehh, let me see, let me see[p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_29.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
N-no way-[p]
It's embarrassing[p]
#&f.Oni_Name3
Listen, [emb exp="f.Imo_Name"]. Creative work is only completed when you show it to others[p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_23.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Eh, what's that?[p]
Is that how it works?[p]
#&f.Oni_Name3
Come on, come on.[p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_28.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Ugh.[p]
N-no, it's embarrassing, so no[p]
[_tb_end_text]

[chara_hide_all  time="1000"  wait="true"  ]
[tb_start_text mode=1 ]
#
Hmm.[p]
I wonder if a day will come when I sing a song I wrote myself.[p]

[_tb_end_text]

[tb_eval  exp="f.Tre_Up=1"  name="Tre_Up"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__歌UP"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__好きUP"  ]
[jump  storage="__Main_kaiwa.ks"  target="*__会話終了"  ]
*70

[tb_start_text mode=1 ]
#&f.Imo_Name
[emb exp="f.Oni_Name3"], what's wrong?[p]
#&f.Oni_Name3
Nah, there was a drinking party late last week.[p]
I haven't shaken off the fatigue.[p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_22.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Ehh, I'm not good at hanging out with large groups of people.[p]
#&f.Oni_Name3
Nah, me too[p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_12.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
When there are a lot of people, I end up thinking I don't have to talk.[p]
But if it's like a stream where I talk alone, I can talk as much as I want.[p]
#&f.Oni_Name3
That's cute like a small animal, but if you want to make it in showbiz, won't you need to talk in front of large groups?[p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_24.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Ugh・・・[p]
I might get nervous when there are lots of adults.[p]
[emb exp="f.Oni_Name3"], come with me-[p]
#&f.Oni_Name3
That's something to work on from here on out.[p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_28.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Uuu, I'll do my best~[p]
#
[_tb_end_text]

[tb_eval  exp="f.Tre_Up=1"  name="Tre_Up"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__演技UP"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__好きUP"  ]
[jump  storage="__Main_kaiwa.ks"  target="*__会話終了"  ]
*71

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_28.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
[emb exp="f.Oni_Name3"], how do you think I can cure my shyness around strangers?[p]
#&f.Oni_Name3
What's wrong? What happened?[p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_12.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
I meet a lot of people for work, but my shyness kicks in and I can't really talk to them properly.[p]
I just get nervous, you know?[p]
#&f.Oni_Name3
Well, I get how you feel. Even I get a little hesitant when meeting people for the first time sometimes.[p]
But if someone shy suddenly opens up, it makes them look really attractive, you know?[p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_01.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Ohh.[p]
#&f.Oni_Name3
So don't worry about it. Just think of your shyness as one of your charms.[p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_11.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Mmm, thanks. I feel a little better now.[p]
#&f.Oni_Name3
Just・・・ if you get super friendly with strangers, I might cry from jealousy.[p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_13.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
J-jeez, [emb exp="f.Oni_Name3"], you're always number one to me.[p]
#&f.Oni_Name3
Hehe, you're cute, [emb exp="f.Imo_Name"].[p]
[_tb_end_text]

[chara_hide_all  time="0"  wait="true"  ]
[chara_show  name="さくら01_1"  time="0"  wait="true"  storage="chara/15/キャラ待機18.png"  width="500"  height="550"  left="750"  top="170"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
・・・//[p]
#
[_tb_end_text]

[tb_eval  exp="f.Tre_Up=1"  name="Tre_Up"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__演技UP"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__好きUP"  ]
[jump  storage="__Main_kaiwa.ks"  target="*__会話終了"  ]
*72

[tb_start_text mode=1 ]
I look once more at the beautiful girl sitting next to me.[p]
I almost doubt we're the same species; her eyes, nose, mouth, even the sheen of her hair are all perfectly arranged.[p]
So this is celebrity-caliber beauty.[p]
Mmm, she's really cute.[p]
#&f.Oni_Name3
Cute.[p]
#
I end up muttering what I'm thinking out loud.[p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_23.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Eh・・・?[p]
#&f.Oni_Name3
Cute.[p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_23.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
・・・W-what, what?[p]
#&f.Oni_Name3
Really cute.[p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_31.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
What, what, what?![p]
#
As always, she gets embarrassed right away when praised.[p]
That part of her is cute too, though・・・[p]
#&f.Oni_Name3
Hmm・・・[p]
[emb exp="f.Imo_Name"], you're so easy to handle, I'm a bit worried.[p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_29.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Muu! That's not true![p]
Even so, I pass as a cool, pure type in public, you know.[p]
#&f.Oni_Name3
That part is cute too.[p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_26.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
・・・[p]
・・・[p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_29.png"  wait="true"  ]
[tb_start_text mode=1 ]
Geez, what is it![p]
#&f.Oni_Name3
You're cute even when you're angry.[p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_31.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Geez!![p]
#&f.Oni_Name3
Hahahaha.[p]
#
[_tb_end_text]

[tb_eval  exp="f.Tre_Up=2"  name="Tre_Up"  cmd="="  op="t"  val="2"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__好きUP"  ]
[jump  storage="__Main_kaiwa.ks"  target="*__会話終了"  ]
*73

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_22.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
[emb exp="f.Oni_Name3"], listen! This is from the day before yesterday.[p]
I was supposed to be doing homework, but before I knew it, I was making an omelet![p]
#&f.Oni_Name3
Even aliens would be surprised.[p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_19.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
The other day, I was cleaning, and before I knew it, I started dancing![p]
#&f.Oni_Name3
I've never really known if you had any concentration or not.[p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_18.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Hmm, you can do what you love forever, you know[p]
#&f.Oni_Name3
But can you learn to love studying?[p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_31.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Umm・・・ hehe, maybe not[p]
#
[_tb_end_text]

[tb_eval  exp="f.Tre_Up=1"  name="Tre_Up"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__ダンスUP"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__好きUP"  ]
[jump  storage="__Main_kaiwa.ks"  target="*__会話終了"  ]
*74

[tb_start_text mode=1 ]
#&f.Oni_Name3
You've been going to training a lot lately, are you okay?[p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_25.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
I want to show [emb exp="f.Oni_Name3"] my sparkling side too[p]
I'm the worst at it, so I have to work hard.[p]
#&f.Oni_Name3
That's amazing. Good job. I'm rooting for you.[p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_01.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Thanks.[p]
#&f.Oni_Name3
You're usually so quiet, but when it comes to something you like, your focus is on another level[p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_14.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
My dream is to become an amazing idol someday and invite Mom and [emb exp="f.Oni_Name3"] to the best seats in the house.[p]
#&f.Oni_Name3
Yeah, I'm looking forward to it.[p]
It will definitely come true.[p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_32.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Yeah, I'll do my best![p]
#
[_tb_end_text]

[tb_eval  exp="f.Tre_Up=1"  name="Tre_Up"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__容姿UP"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__歌UP"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__ダンスUP"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__演技UP"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__話術UP"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__好きUP"  ]
[jump  storage="__Main_kaiwa.ks"  target="*__会話終了"  ]
*75

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_24.png"  ]
[tb_start_text mode=1 ]
Lately, [emb exp="f.Imo_Name"]'s streams have been buzzing in a weird way online[p]
There are tons of posts on social media saying she's really erotic[p]
#&f.Imo_Name
[emb exp="f.Oni_Name3"]・・・ what should I do[p]
#
Fortunately, looking at the stream comments, it's just people saying she's sexy, so no suspicion has been raised yet[p]
#&f.Oni_Name3
[emb exp="f.Imo_Name"], isn't this actually a chance?[p]
Let's use this buzz to show off [emb exp="f.Imo_Name"]'s personality and cuteness[p]
#
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_25.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
I-I wonder if it'll be okay[p]
Um・・・ if you tease me while I'm streaming, I feel like I might make lewd noises[p]
Y-You might do something naughty[p]
#&f.Oni_Name3
You say that, but is that how you really feel?[p]
#
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_27.png"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="えっち系/衣擦れ2.mp3"  ]
[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/02喘ぎ声(前)02.mp3"  loop="true"  ]
[individual_image  layer="1"  zindex="1"  storage="default/スキンシップ10_1.png"  width="300"  height="400"  name="75"  x="930"  y="130"  _clickable_img=""  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Mmh・・・ Ahh・・・[p]
#&f.Oni_Name3
You've started to find pleasure in having sex while everyone watches, haven't you?[p]
#&f.Imo_Name
Annh・・・ Ahh・・・[p]
Yeah・・・ Yeah・・・[p]
Being watched・・・ it gets me really excited・・・[p]
Uu・・・ Mmh[p]
A-Am I・・・ a pervert, I wonder[p]
#&f.Oni_Name3
It just means you've developed some sex appeal to go along with your cuteness[p]
#&f.Imo_Name
Nnnh・・・[p]
When I'm streaming・・・ I start looking forward to・・・ being ravaged by [emb exp="f.Oni_Name3"]・・・[p]
Ahh・・・ Maybe I've gone weird・・・ Aaah・・・[p]
#&f.Oni_Name3
I'll play with [emb exp="f.Imo_Name"]'s pussy a whole lot again, so just stream without worrying[p]
#&f.Imo_Name
Aaahh・・・[p]
[emb exp="f.Oni_Name3"][heart]！・・・[emb exp="f.Oni_Name3"][heart]！[p]
#
-Twitch・・・ Twitch[p]
[emb exp="f.Imo_Name"] reaches her climax[p]
[_tb_end_text]

[delete_individual_image  layer="1"  name="75"  wait="true"  ]
[stopse  time="1000"  buf="3"  ]
[playse  volume="100"  time="1000"  buf="1"  storage="えっち系/キス01.mp3"  loop="true"  ]
[individual_image  layer="1"  zindex="1"  storage="default/スキンシップ08_1.png"  width="300"  height="400"  name="75"  x="930"  y="130"  _clickable_img=""  ]
[tb_start_text mode=1 ]
#
Satisfied by the squishy wetness conveyed to my hand, I kiss her[p]
Should we do stream sex again after this・・・[p]
The thoughts of the two of us, lacking reason, gradually fell into depravity[p]
[_tb_end_text]

[delete_all_image  layer="1"  wait="true"  ]
[stopse  time="1000"  buf="1"  ]
[tb_start_tyrano_code]
[iscript]
f.Kaihatu[0].kazu += 1;
f.Kaihatu[3].kazu += 1;
[endscript]
[_tb_end_tyrano_code]

[tb_eval  exp="f.Tre_Up=1"  name="Tre_Up"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__好きUP"  ]
[tb_eval  exp="f.Tre_Up=20"  name="Tre_Up"  cmd="="  op="t"  val="20"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__性欲UP"  ]
[jump  storage="__Main_kaiwa.ks"  target="*__会話終了"  ]
*76

[chara_hide_all  time="0"  wait="true"  ]
[chara_show  name="さくら09"  time="500"  wait="true"  storage="chara/41/キャラ待機A1.png"  width="430"  height="600"  left="845"  top="115"  reflect="false"  ]
[tb_start_text mode=1 ]
#
I feel like lately we've just been doing live stream sex all weekend[p]
While [emb exp="f.Imo_Name"]'s popularity is tremendous, suspicions are starting to grow that there might be someone else in the room lately[p]
[_tb_end_text]

[chara_mod  name="さくら09"  time="0"  cross="false"  storage="chara/41/キャラ待機A3.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
[emb exp="f.Oni_Name3"], I'm going to stream again, okay?[p]
#
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/02喘ぎ声(前)02.mp3"  loop="true"  ]
[chara_mod  name="さくら09"  time="0"  cross="false"  storage="chara/41/キャラ待機A1アニメ.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Mmh・・・ Mmh・・・[p]
#
Is [emb exp="f.Imo_Name"] addicted to streaming・・・? No, is she addicted to stream sex?[p]
Her brain is fried to the point where she feels pleasure from streaming while I eat her out[p]
A beautiful girl smiling at thousands, tens of thousands of people watching her upper body, while under the desk, her lower body is having sloppy sex[p]
She's an incredible sex fiend[p]
#&f.Imo_Name
Ahh・・・ Mmh・・・[p]
#
However, I can't resist this carnal lust, and I always end up releasing all my desires[p]
I have to control myself・・・ I feel like I'll see hell if I don't[p]
[_tb_end_text]

[chara_hide_all  time="0"  wait="true"  ]
[playse  volume="100"  time="1000"  buf="3"  storage="えっち系/フェラ音05.mp3"  loop="true"  ]
[chara_show  name="さくら_フェラ"  time="1000"  wait="true"  storage="chara/17/フェラ01.png"  width="400"  height="300"  left="800"  top="200"  ]
[tb_start_text mode=1 ]
#&f.Oni_Name3
・・・！？[p]
#
Before I know it, she's groping my crotch and giving me an intense blowjob[p]
#&f.Imo_Name
Slurp・・・ Slurp・・・[p]
#&f.Oni_Name3
Ugh・・・[p]
#
A warning siren blares in my head that it's dangerous, but the two of us, having lost all reason, can't think of anything[p]
・・・This is bad・・・[p]
This is bad if it keeps up・・・[p]
[_tb_end_text]

[stopse  time="1000"  buf="3"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="えっち系/射精音01.mp3"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="えっち系/ごっくん01.mp3"  ]
[chara_mod  name="さくら_フェラ"  time="0"  cross="false"  storage="chara/17/フェラ04.png"  ]
[tb_start_text mode=1 ]
#
Despite my brain urging self-control, I shoot a huge load into [emb exp="f.Imo_Name"]'s mouth[p]
#&f.Imo_Name
Mmh・・・[p]
#&f.Oni_Name3
Phew・・・[p]
#
・・・Well, I can think about the details later[p]
My heart races at the thought of the stream sex to come, and I pat [emb exp="f.Imo_Name"]'s head as she licks up my cum[p]
・・・[p]
[_tb_end_text]

[tb_start_tyrano_code]
[iscript]
f.Kaihatu[0].kazu += 1;
f.Kaihatu[1].kazu += 1;
[endscript]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;精0以上のとき力マイナス1
[eval exp="f.Sys_Seiryoku -= 1" cond="f.Sys_Seiryoku > 0"]
[_tb_end_tyrano_code]

[tb_eval  exp="f.Tre_Up=20"  name="Tre_Up"  cmd="="  op="t"  val="20"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__性欲UP"  ]
[jump  storage="__Main_kaiwa.ks"  target="*__会話終了"  ]
*77

[chara_hide_all  time="0"  wait="true"  ]
[chara_show  name="さくら01_1"  time="0"  wait="true"  storage="chara/15/キャラ待機19.png"  width="500"  height="550"  left="750"  top="170"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
・・・[emb exp="f.Oni_Name3"][p]
The other day was・・・ um・・・ intense, wasn't it?[p]
#&f.Oni_Name3
Yeah, we ended up having sex all day long[p]
#
[_tb_end_text]

[chara_hide_all  time="0"  wait="true"  ]
[chara_show  name="さくら01"  time="0"  wait="true"  storage="chara/1/キャラ待機01.png"  width="500"  height="550"  left="750"  top="170"  ]
[chara_part  name="さくら01"  time="0"  目="キャラ待機01_31.png"  wait="false"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Hey! Don't say it so directly![p]
#&f.Oni_Name3
But [emb exp="f.Imo_Name"] was totally into it too, wasn't she?[p]
#
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_29.png"  wait="false"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
T-That's not true![p]
[emb exp="f.Oni_Name3"] is just too energetic![p]
#
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_27.png"  wait="false"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
I-It's just that [emb exp="f.Oni_Name3"] touches my breasts right away so・・・ um・・・[p]
#&f.Oni_Name3
Hehe, like this?[p]
#
[_tb_end_text]

[individual_image  layer="1"  zindex="1"  name="kaiwaEP65"  storage="default/スキンシップ09.png"  width="300"  height="400"  wait="true"  x="900"  y="100"  time="300"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="えっち系/衣擦れ1.mp3"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Anh・・・[p]
・・・Mmh[p]
#
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_29.png"  wait="false"  ]
[delete_individual_image  layer="1"  name="kaiwaEP65"  ]
[stopse  time="1000"  buf="0"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
G-geez![p]
[emb exp="f.Oni_Name3"], you pervert![p]
#&f.Oni_Name3
Once you've recovered your energy, let's have lots of sex again[p]
#&f.Imo_Name
N-no way![p]
#

[_tb_end_text]

[individual_image  layer="1"  zindex="1"  name="kaiwaEP65"  storage="default/スキンシップ09.png"  width="300"  height="400"  wait="true"  x="900"  y="100"  time="300"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="えっち系/衣擦れ1.mp3"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Ah[p]
・・・Mmm[p]
Ahh・・・Mmm[p]
#

[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_26.png"  wait="false"  ]
[delete_individual_image  layer="1"  name="kaiwaEP65"  ]
[stopse  time="1000"  buf="0"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
・・・You're such a pervert, geez・・・[p]
#
I felt satisfied seeing [emb exp="f.Imo_Name"]'s reaction, which was the complete opposite of her words[p]

[_tb_end_text]

[tb_eval  exp="f.Tre_Up=1"  name="Tre_Up"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_start_tyrano_code]
;開発回数プラスカウント
[eval exp="f.Kaihatu_Count[1].kazu += 1"]

[_tb_end_tyrano_code]

[call  storage="Tre_Sta_Up.ks"  target="*__理性DOWN"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__好きUP"  ]
[tb_eval  exp="f.Tre_Up=20"  name="Tre_Up"  cmd="="  op="t"  val="20"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__性欲UP"  ]
[jump  storage="__Main_kaiwa.ks"  target="*__会話終了"  ]
*78

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_27.png"  wait="false"  ]
[tb_start_text mode=1 ]
#&f.Oni_Name3
The other day, my dick was inside you all day long[p]
#&f.Imo_Name
[emb exp="f.Oni_Name3"]・・・that's too much・・・[p]
#
[_tb_end_text]

[chara_hide_all  time="0"  wait="true"  ]
[chara_show  name="さくら01_1"  time="0"  wait="true"  storage="chara/15/キャラ待機19_2.png"  width="500"  height="550"  left="750"  top="170"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
From morning to night, we were・・・h-having sex[p]
My legs and hips couldn't even support me anymore[p]
#&f.Oni_Name3
It felt good, right?[p]
#
[_tb_end_text]

[chara_mod  name="さくら01_1"  time="0"  cross="false"  storage="chara/15/キャラ待機19_3.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
W-well・・・[p]
・・・Um・・・[p]
#
[_tb_end_text]

[chara_mod  name="さくら01_1"  time="0"  cross="false"  storage="chara/15/キャラ待機19_5.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
・・・Ugh[p]
#&f.Oni_Name3
You were cumming the whole time, [emb exp="f.Imo_Name"][p]
#
[_tb_end_text]

[chara_hide_all  time="0"  wait="true"  ]
[chara_show  name="さくら01"  time="0"  wait="true"  storage="chara/1/キャラ待機01.png"  width="500"  height="550"  left="750"  top="170"  ]
[chara_part  name="さくら01"  time="0"  目="キャラ待機01_31.png"  wait="false"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
N-no![p]
Don't say that[p]
I-It's embarrassing[p]
#&f.Oni_Name3
Let's have lots of sex again[p]
#
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_23.png"  wait="false"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
・・・!?[p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_20.png"  wait="false"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
・・・[p]
Oh, if [emb exp="f.Oni_Name3"] wants to[p]
#&f.Oni_Name3
Does [emb exp="f.Imo_Name"] not want to?[p]
#&f.Imo_Name
・・・W-well・・・[p]
#

[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_27.png"  wait="false"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
・・・I might want to[p]
#&f.Oni_Name3
Hehe, I love my perverted [emb exp="f.Imo_Name"][p]
#
[_tb_end_text]

[individual_image  layer="1"  zindex="1"  name="kaiwaEP66"  storage="default/スキンシップ10_1.png"  width="300"  height="400"  wait="true"  x="900"  y="100"  time="300"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="えっち系/衣擦れ3.mp3"  loop="false"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Mmm[p]
Ah・・・Ahh[p]
#&f.Oni_Name3
Oh right[p]
On the next safe day, I'm going to cum inside [emb exp="f.Imo_Name"] all day long[p]
I'll keep my dick inside for 24 hours, never pulling out once, just continuously filling you with my sperm[p]
Okay? [emb exp="f.Imo_Name"][p]
#
[_tb_end_text]

[delete_individual_image  layer="1"  name="kaiwaEP66"  ]
[stopse  time="1000"  buf="0"  ]
[chara_hide_all  time="0"  wait="true"  ]
[chara_show  name="さくら01_1"  time="0"  wait="true"  storage="chara/15/キャラ待機19_5.png"  width="500"  height="550"  left="750"  top="170"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Ah[p]
Mmm・・・[p]
Y-yeah[p]
C-cum a lot inside me・・・[p]
#
[_tb_end_text]

[chara_mod  name="さくら01_1"  time="0"  cross="false"  storage="chara/15/キャラ待機19_2.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Mmm・・・[p]
I want my pussy filled with [emb exp="f.Oni_Name3"]'s sperm all day long[p]
#
Those words spoken while being shy make my crotch swell to the max[p]
I wish the next safe day would come soon[p]
My sex life with [emb exp="f.Imo_Name"] is the best[p]

[_tb_end_text]

[tb_start_tyrano_code]
;開発回数プラスカウント
[eval exp="f.Kaihatu_Count[3].kazu += 1"]

[_tb_end_tyrano_code]

[tb_eval  exp="f.Tre_Up=1"  name="Tre_Up"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__理性DOWN"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__好きUP"  ]
[tb_eval  exp="f.Tre_Up=20"  name="Tre_Up"  cmd="="  op="t"  val="20"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__性欲UP"  ]
[jump  storage="__Main_kaiwa.ks"  target="*__会話終了"  ]
*79

[tb_start_text mode=1 ]
I remember making [emb exp="f.Imo_Name"] cum over and over the other day[p]
Maybe my technique has improved too[p]
#&f.Oni_Name3
Hey, where does it feel good when [emb exp="f.Imo_Name"] gets touched?[p]
#
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_31.png"  wait="false"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
W-what, [emb exp="f.Oni_Name3"]!?[p]
#&f.Oni_Name3
I can't forget how [emb exp="f.Imo_Name"] was the other day[p]
I want to make you feel even better[p]

[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_28.png"  wait="false"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
[emb exp="f.Oni_Name3"], you pervert[p]
#&f.Oni_Name3
How rude[p]
I'd prefer you call it a spirit of service[p]
It's to fulfill the mission of making [emb exp="f.Imo_Name"] feel as good as possible[p]
#
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_19.png"  wait="false"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
W-what is that[p]
#
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_20.png"  wait="false"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Hmm, let me see[p]
I don't think there's any particular spot that's good[p]
But sometimes I feel a little sensitive where [emb exp="f.Oni_Name3"] is persistently teasing[p]
#&f.Oni_Name3
I see[p]
#
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_25.png"  wait="false"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
More than that, I like being touched with love[p]
#&f.Oni_Name3
What do you mean?[p]
#
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_13.png"  wait="false"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
I want you to start with a kiss and touch me gently[p]
T-touching the naughty parts might be better when the mood has built up[p]
#&f.Oni_Name3
I see[p]
So I should change where I touch depending on how excited you are[p]
Alright.[p]
I'll try my best to make you cum even more today.[p]
#
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_31.png"  wait="false"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Oh, [emb exp="f.Oni_Name3"]!?[p]

[_tb_end_text]

[tb_eval  exp="f.Tre_Up=1"  name="Tre_Up"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__好きUP"  ]
[tb_eval  exp="f.Tre_Up=20"  name="Tre_Up"  cmd="="  op="t"  val="20"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__性欲UP"  ]
[jump  storage="__Main_kaiwa.ks"  target="*__会話終了"  ]
*90

[tb_replay_start  ]
[tb_start_tyrano_code]
;回想用
[bg  time="0"  method="crossfade"  storage="BG01.png" cond="tf._tb_is_replay == true"]
[playbgm  volume="30"  time="500"  loop="true"  storage="調整版.mp3"  fadein="true"  cond="tf._tb_is_replay == true"]
[call  storage="Main_Sta.ks"  target="*__メインステ表示"   cond="tf._tb_is_replay == true"]
[tb_show_message_window  cond="tf._tb_is_replay == true"]
[_tb_end_tyrano_code]

[chara_hide_all  time="0"  wait="true"  ]
[chara_show  name="さくら01_1"  time="0"  wait="true"  storage="chara/15/キャラ待機19_5.png"  width="500"  height="550"  left="750"  top="170"  ]
[tb_start_text mode=1 ]
I remember the sex we had the other day.[p]
[emb exp="f.Imo_Name"] was climaxing all day long, and by now her whole body had become an erogenous zone.[p]
But [emb exp="f.Imo_Name"] seems a little off today.[p]
#&f.Oni_Name3
[emb exp="f.Imo_Name"], what's wrong?[p]
Are you feeling sick?[p]
#
[_tb_end_text]

[chara_mod  name="さくら01_1"  time="0"  cross="false"  storage="chara/15/キャラ待機19_2.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Oh, [emb exp="f.Oni_Name3"]・・・ [emb exp="f.Oni_Name3"]・・・[p]
#
She looks at me pleadingly while desperately holding her crotch.[p]
She steps closer and starts touching my crotch.[p]
#&f.Oni_Name3
[emb exp="f.Imo_Name"]？[p]
#
[_tb_end_text]

[playbgm  volume="40"  time="1000"  loop="true"  storage="PerituneMaterial_RainDrop_loop.mp3"  ]
[chara_hide_all  time="0"  wait="true"  ]
[chara_show  name="さくら01"  time="0"  wait="true"  storage="chara/1/キャラ待機01.png"  width="500"  height="550"  left="750"  top="170"  ]
[chara_part  name="さくら01"  time="0"  目="キャラ待機01_26.png"  wait="false"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
[emb exp="f.Oni_Name3"]・・・ please・・・[p]
#
While rubbing my crotch, she plays with her clit over her panties.[p]
She probably can't forget the pleasure from the other day.[p]
Without hesitation, she unzips my pants and starts sucking my dick.[p]
#
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="1"  storage="えっち系/衣擦れ3.mp3"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="えっち系/フェラ音01.mp3"  loop="true"  ]
[chara_hide  name="さくら01"  time="1000"  wait="true"  pos_mode="false"  ]
[chara_show  name="さくら_フェラ"  time="1000"  wait="true"  storage="chara/17/フェラ01.png"  width="400"  height="300"  left="800"  top="200"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Mm・・ mmh・・・[p]
#
[emb exp="f.Imo_Name"]'s blowjob is intense as always, and I'm immediately hit by the urge to cum.[p]
It seems she's fallen into a state of sex addiction at the height of her pleasure.[p]
I slide my body under [emb exp="f.Imo_Name"]'s crotch and get into a sixty-nine position.[p]

[_tb_end_text]

[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/05喘ぎ声(69).mp3"  loop="true"  ]
[chara_mod  name="さくら_フェラ"  time="0"  cross="false"  storage="chara/17/フェラ02.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Mmh![p]
・・・Mmm!![p]
#
I immediately pull her panties aside and suck [emb exp="f.Imo_Name"]'s pussy intensely.[p]
To answer [emb exp="f.Imo_Name"]'s expectations, I suck and lick her clit with my mouth.[p]
#&f.Imo_Name
Mmh[p]
Mmh[p]
Mmmm!!![p]
#
[emb exp="f.Imo_Name"], whose whole body is an erogenous zone, immediately moves her hips in spasms, letting me know she climaxed.[p]
Even so, [emb exp="f.Imo_Name"] keeps my dick in her mouth; she has completely fallen into the swamp of sex.[p]
#
[_tb_end_text]

[stopse  time="1000"  buf="0"  ]
[stopse  time="1000"  buf="3"  ]
[chara_hide_all  time="1000"  wait="true"  ]
[bg  time="1000"  method="crossfade"  storage="BG_Black.png"  cross="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Please, [emb exp="f.Oni_Name3"]・・・[p]
P・・・ please・・・ your dick・・・[p]
Put your dick inside・・・[p]
#
I carry [emb exp="f.Imo_Name"], who can think of nothing but sex, to the bed and undress her.[p]
I push the naked [emb exp="f.Imo_Name"] down and insert my dick into her pussy.[p]

[_tb_end_text]

[mask  time="300"  effect="fadeIn"  color="0x000000"  ]
[call  storage="Main_Sta.ks"  target="*__roleのみ表示"  ]
[call  storage="Main_Sta.ks"  target="*__Hメインステ表示"  ]
[bg  time="800"  method="crossfade"  storage="スキンシップ01.png"  ]
[tb_eval  exp="f.H_Entrance_DFlag=0"  name="H_Entrance_DFlag"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_start_tyrano_code]
[chara_show  name="H_種付け"  time="0"  wait="true"  storage="chara/27/種付け00.png"  width="760"  height="660"  left="160"  top="60" cond="f.H_Danmen_Flag == 0" ]
[chara_show  name="H_種付け"  time="0"  wait="true"  storage="chara/27/種付け10.png"  width="760"  height="660"  left="160"  top="60" cond="f.H_Danmen_Flag == 1" ]

[_tb_end_tyrano_code]

[mask_off  time="300"  effect="fadeOut"  ]
[playse  volume="100"  time="1000"  buf="1"  storage="えっち系/挿入音01.mp3"  ]
[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/絶頂声のみ02.mp3"  loop="false"  ]
[tb_start_tyrano_code]
[chara_mod  name="H_種付け"  time="0"  cross="false"  storage="chara/27/種付け挿入01.png" cond="f.H_Danmen_Flag == 0" ]
[chara_mod  name="H_種付け"  time="0"  cross="false"  storage="chara/27/種付け挿入11.png" cond="f.H_Danmen_Flag == 1" ]
[_tb_end_tyrano_code]

[wait  time="2000"  ]
[tb_start_tyrano_code]
[button  storage="__Main_Kaiwa_EP.ks"  target="*__断面図変更"  graphic="断面図on.png"  x="30"  y="100" exp="f.H_Danmen_Flag = 1" cond="f.H_Danmen_Flag == 0"  fix=true enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3"]
[button  storage="__Main_Kaiwa_EP.ks"  target="*__断面図変更"  graphic="断面図off.png"  x="30"  y="100" exp="f.H_Danmen_Flag = 0" cond="f.H_Danmen_Flag == 1"  fix=true enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3"]

[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[chara_mod  name="H_種付け"  time="0"  cross="false"  storage="chara/27/種付け01.png" cond="f.H_Danmen_Flag == 0" ]
[chara_mod  name="H_種付け"  time="0"  cross="false"  storage="chara/27/種付け11.png" cond="f.H_Danmen_Flag == 1" ]

[_tb_end_tyrano_code]

[tb_eval  exp="f.H_Entrance_DFlag=1"  name="H_Entrance_DFlag"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Aah![p]
#
Both of us naked, we desperately seek each other.[p]
I move my dick, buried deep inside, with intense vigor.[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="2"  storage="えっち系/吐息02.mp3"  loop="true"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="ピストン系/種付けピストン01.mp3"  loop="true"  ]
[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/07喘ぎ声(挿入)02.mp3"  loop="true"  ]
[tb_start_tyrano_code]
[chara_mod  name="H_種付け"  time="0"  cross="false"  storage="chara/27/種付けアニメ01.png" cond="f.H_Danmen_Flag == 0" ]
[chara_mod  name="H_種付け"  time="0"  cross="false"  storage="chara/27/種付けアニメ11.png" cond="f.H_Danmen_Flag == 1" ]

[_tb_end_tyrano_code]

[tb_eval  exp="f.H_Entrance_DFlag=11"  name="H_Entrance_DFlag"  cmd="="  op="t"  val="11"  val_2="undefined"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Aah![p]
#
I thrust against her womb over and over, making [emb exp="f.Imo_Name"] climax.[p]
#&f.Imo_Name
Aah![p]
Amazing![p]
It feels so good[heart][p]
Ah[heart]・・・ mmh[heart][p]
Aoh[heart]・・ Aaah[heart]!!![p]
She wraps her whole body around me to keep me from pulling away and climaxes.[p]
#
[_tb_end_text]

[tb_hide_message_window  ]
[stopse  time="1000"  buf="0"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="射精音/射精音正上位とプレス.mp3"  loop="false"  ]
[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/絶頂声のみ02.mp3"  loop="false"  ]
[tb_start_tyrano_code]
[chara_mod  name="H_種付け"  time="0"  cross="false"  storage="chara/27/種付け射精01.png" cond="f.H_Danmen_Flag == 0" ]
[chara_mod  name="H_種付け"  time="0"  cross="false"  storage="chara/27/種付け射精11.png" cond="f.H_Danmen_Flag == 1" ]

[_tb_end_tyrano_code]

[tb_eval  exp="f.H_Entrance_DFlag=1001"  name="H_Entrance_DFlag"  cmd="="  op="t"  val="1001"  val_2="undefined"  ]
[wait  time="3000"  ]
[tb_start_tyrano_code]
[clearfix]
[_tb_end_tyrano_code]

[call  storage="Main_Sta.ks"  target="*__roleのみ表示"  ]
[call  storage="Main_Sta.ks"  target="*__Hメインステ表示"  ]
[chara_hide_all  time="0"  wait="true"  ]
[bg  time="1000"  method="crossfade"  storage="事後07.png"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#
-Spurt・・・ spurt・・・[p]
I pour my fresh seed into [emb exp="f.Imo_Name"]'s womb.[p]
Her empty womb welcomes it, accepting it with a gulping sound.[p]
#&f.Imo_Name
Ogh[heart]・・・ aah[heart]・・・[p]
Mmh[heart]・・・ it's warm[heart][heart][p]
#
Her pussy convulses and squeezes, the folds contracting back and forth to milk my sperm.[p]
Having emptied everything out, we embrace each other intensely without pulling out.[p]
#&f.Imo_Name
I can feel [emb exp="f.Oni_Name3"]'s sperm filling my belly・・・[p]
Mmh・・・ It's twitching inside[heart][heart][heart][p]
#
With it still inside her, after a short while, my dick gets hard again almost immediately[p]
#&f.Imo_Name
[emb exp="f.Oni_Name3"], that's amazing・・・[p]
It's already getting big[heart][p]
#
Feeling my energy return, I immediately start thrusting my hips[p]

[_tb_end_text]

[bg  time="1000"  method="crossfade"  storage="スキンシップ01.png"  ]
[tb_start_tyrano_code]
[button  storage="__Main_Kaiwa_EP.ks"  target="*__断面図変更"  graphic="断面図on.png"  x="30"  y="100" exp="f.H_Danmen_Flag = 1" cond="f.H_Danmen_Flag == 0"  fix=true enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3"]
[button  storage="__Main_Kaiwa_EP.ks"  target="*__断面図変更"  graphic="断面図off.png"  x="30"  y="100" exp="f.H_Danmen_Flag = 0" cond="f.H_Danmen_Flag == 1"  fix=true enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3"]

[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[chara_show  name="H_種付け"  time="0"  wait="true"  storage="chara/27/種付けアニメ02.png"  width="760"  height="660"  left="160"  top="60" cond="f.H_Danmen_Flag == 0" ]
[chara_show  name="H_種付け"  time="0"  wait="true"  storage="chara/27/種付けアニメ15.png"  width="760"  height="660"  left="160"  top="60" cond="f.H_Danmen_Flag == 1" ]

[_tb_end_tyrano_code]

[tb_eval  exp="f.H_Entrance_DFlag=15"  name="H_Entrance_DFlag"  cmd="="  op="t"  val="15"  val_2="undefined"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="ピストン系/種付けピストン02.mp3"  loop="true"  ]
[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/06喘ぎ声(挿入)01.mp3"  loop="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Ah・・・ Ahh[heart][p]
#&f.Oni_Name3
[emb exp="f.Imo_Name"]・・・[p]
I'm going to fill [emb exp="f.Imo_Name"]'s womb up with my cum[p]
#&f.Imo_Name
Ahhhhhh[heart][heart][heart][heart][heart][heart][p]
[emb exp="f.Oni_Name3"][heart]・・・ [emb exp="f.Oni_Name3"][heart][heart][heart][p]
Stuff [emb exp="f.Imo_Name"]'s pussy full of [emb exp="f.Oni_Name3"]'s cum[heart][heart][heart][heart][heart][p]
#
I don't pull my dick out even once[p]
From the slight gap where we're joined, white fluid overflows and spurts out[p]
[emb exp="f.Imo_Name"] clings to me with all her might, her legs stretched straight out, her body tensed up and convulsing[p]
Without giving her a moment to rest, I thrust my hips even harder[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="ピストン系/種付けピストン03.mp3"  loop="true"  ]
[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/10喘ぎ声(挿入)05.mp3"  loop="true"  ]
[tb_start_tyrano_code]
[chara_mod  name="H_種付け"  time="0"  cross="false"  storage="chara/27/種付けアニメ03.png" cond="f.H_Danmen_Flag == 0" ]
[chara_mod  name="H_種付け"  time="0"  cross="false"  storage="chara/27/種付けアニメ16.png" cond="f.H_Danmen_Flag == 1" ]

[_tb_end_tyrano_code]

[tb_eval  exp="f.H_Entrance_DFlag=16"  name="H_Entrance_DFlag"  cmd="="  op="t"  val="16"  val_2="undefined"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Nngh[heart]・・・ It feels・・・ so good[heart][heart][p]
・・・Ohh[heart]・・・ I'm cumming[heart][p]
I'm cumming!![heart][p]
Ohh![heart] Ahhh!![heart] Nngh![heart][p]
#
[_tb_end_text]

[stopse  time="1000"  buf="0"  ]
[playse  volume="100"  time="1000"  buf="1"  storage="射精音/射精音風呂.mp3"  loop="false"  ]
[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/絶頂声のみ01.mp3"  loop="false"  ]
[tb_hide_message_window  ]
[tb_start_tyrano_code]
[chara_mod  name="H_種付け"  time="0"  cross="false"  storage="chara/27/種付け射精01.png" cond="f.H_Danmen_Flag == 0" ]
[chara_mod  name="H_種付け"  time="0"  cross="false"  storage="chara/27/種付け射精12.png" cond="f.H_Danmen_Flag == 1" ]

[_tb_end_tyrano_code]

[tb_eval  exp="f.H_Entrance_DFlag=1002"  name="H_Entrance_DFlag"  cmd="="  op="t"  val="1002"  val_2="undefined"  ]
[wait  time="3000"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#
Climax・・Creampie・・Climax・・・Creampie・・・・[p]
I make her cum, then cum inside, make her cum, then cum inside, over and over[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="ピストン系/種付けピストン03.mp3"  loop="true"  ]
[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/11喘ぎ声(挿入)07.mp3"  loop="true"  ]
[tb_start_tyrano_code]
[chara_mod  name="H_種付け"  time="0"  cross="false"  storage="chara/27/種付けアニメ03.png" cond="f.H_Danmen_Flag == 0" ]
[chara_mod  name="H_種付け"  time="0"  cross="false"  storage="chara/27/種付けアニメ16.png" cond="f.H_Danmen_Flag == 1" ]

[_tb_end_tyrano_code]

[tb_eval  exp="f.H_Entrance_DFlag=16"  name="H_Entrance_DFlag"  cmd="="  op="t"  val="16"  ]
[tb_start_text mode=1 ]
#
Her pussy is stuffed full of cum and juices, but my dick head moves back and forth inside her without leaving a gap, pumping sperm inside over and over to replace what spills from her womb[p]
With the tip of my dick, I can feel her womb twitching[p]
After pumping the fluids inside, I push the head of my dick against the opening of her womb to seal it tight so nothing spills out, and dump my sperm right inside[p]

[_tb_end_text]

[stopse  time="1000"  buf="0"  ]
[playse  volume="100"  time="1000"  buf="1"  storage="射精音/射精音後背位とプレス.mp3"  loop="false"  ]
[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/絶頂声のみ03.mp3"  loop="false"  ]
[tb_hide_message_window  ]
[tb_start_tyrano_code]
[chara_mod  name="H_種付け"  time="0"  cross="false"  storage="chara/27/種付け射精03.png" cond="f.H_Danmen_Flag == 0" ]
[chara_mod  name="H_種付け"  time="0"  cross="false"  storage="chara/27/種付け射精13.png" cond="f.H_Danmen_Flag == 1" ]

[_tb_end_tyrano_code]

[tb_eval  exp="f.H_Entrance_DFlag=1003"  name="H_Entrance_DFlag"  cmd="="  op="t"  val="1003"  val_2="undefined"  ]
[wait  time="3000"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#
Spurt・・Spurt・・・The sound of her stomach being filled with sperm echoes[p]
The semen that still overflowed ran down her anus and butt, flowing gloppily onto the bed and forming a pool[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="ピストン系/種付けピストン03.mp3"  loop="true"  ]
[tb_start_tyrano_code]
[chara_mod  name="H_種付け"  time="0"  cross="false"  storage="chara/27/種付けアニメ09.png" cond="f.H_Danmen_Flag == 0" ]
[chara_mod  name="H_種付け"  time="0"  cross="false"  storage="chara/27/種付けアニメ19.png" cond="f.H_Danmen_Flag == 1" ]

[_tb_end_tyrano_code]

[tb_eval  exp="f.H_Entrance_DFlag=19"  name="H_Entrance_DFlag"  cmd="="  op="t"  val="19"  val_2="undefined"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Ohh!![heart][heart][p]

#
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/絶頂セリフ03_1.mp3"  loop="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
I'm cumming, I'm cumming, I'm cumming!![heart][heart][p]
Ohh![heart] Nngh![heart]! Nngh!![heart][heart][p]
I'm cumming[heart]・・・ Ohhhhhh!![heart][heart][heart][p]
#
[_tb_end_text]

[stopse  time="1000"  buf="0"  ]
[playse  volume="100"  time="1000"  buf="1"  storage="射精音/射精音正上位とプレス.mp3"  loop="false"  ]
[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/絶頂セリフ03_2.mp3"  loop="false"  ]
[tb_hide_message_window  ]
[tb_start_tyrano_code]
[chara_mod  name="H_種付け"  time="0"  cross="false"  storage="chara/27/種付け射精03.png" cond="f.H_Danmen_Flag == 0" ]
[chara_mod  name="H_種付け"  time="0"  cross="false"  storage="chara/27/種付け射精13.png" cond="f.H_Danmen_Flag == 1" ]

[_tb_end_tyrano_code]

[tb_eval  exp="f.H_Entrance_DFlag=1003"  name="H_Entrance_DFlag"  cmd="="  op="t"  val="1003"  ]
[wait  time="3000"  ]
[stopse  time="1000"  buf="3"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#
Climax・・Creampie・・Climax・・・Creampie・・・・[p]

[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="ピストン系/種付けピストン03.mp3"  loop="true"  ]
[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/15喘ぎ声(オホ声)03.mp3"  loop="true"  ]
[tb_start_tyrano_code]
[chara_mod  name="H_種付け"  time="0"  cross="false"  storage="chara/27/種付けアニメ09.png" cond="f.H_Danmen_Flag == 0" ]
[chara_mod  name="H_種付け"  time="0"  cross="false"  storage="chara/27/種付けアニメ19.png" cond="f.H_Danmen_Flag == 1" ]

[_tb_end_tyrano_code]

[tb_eval  exp="f.H_Entrance_DFlag=19"  name="H_Entrance_DFlag"  cmd="="  op="t"  val="19"  ]
[tb_start_text mode=1 ]
#
We're covered in sweat, juices, and sperm, and I cum inside her so much that the area around our crotches turns pure white and sloppy[p]
Of course, I keep having sex without pulling my dick out once[p]
The lewd slapping sounds continue, echoing throughout the room・・・ no, even outside the room[p]
Dominated by pleasure beyond climax, [emb exp="f.Imo_Name"] convulses her whole body every few minutes, letting out erotic, cute, and filthy moans[p]
#&f.Imo_Name
Nngh[heart]・・・ [emb exp="f.Oni_Name3"][heart] [emb exp="f.Oni_Name3"][heart][heart][p]
Ohh[heart]・・・ My tummy・・・ is stuffed[heart][heart][p]
Amaz・・・ Amazing・・・[heart][heart][p]
Ohh[heart][heart][heart][p]
#
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/絶頂セリフ03_1.mp3"  loop="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
I'm cumming[heart]・・・ Ahh[heart]・・・ I'm cumming, I'm cumming[heart]・・・[p]
Again・・・ I'm cumming again・・・ I'm cumming[heart][p]
Nghh!![heart][p]
Oooh[heart][heart][heart] Oooohhh!!![heart][heart][heart][p]
Ohhh!!![heart][heart][heart][heart][heart][heart][heart][heart][heart][heart][p]
#
[_tb_end_text]

[stopse  time="1000"  buf="0"  ]
[playse  volume="100"  time="1000"  buf="1"  storage="射精音/射精音風呂.mp3"  loop="false"  ]
[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/絶頂セリフ03_2.mp3"  loop="false"  ]
[tb_hide_message_window  ]
[tb_start_tyrano_code]
[chara_mod  name="H_種付け"  time="0"  cross="false"  storage="chara/27/種付け射精03.png" cond="f.H_Danmen_Flag == 0" ]
[chara_mod  name="H_種付け"  time="0"  cross="false"  storage="chara/27/種付け射精13.png" cond="f.H_Danmen_Flag == 1" ]

[_tb_end_tyrano_code]

[tb_eval  exp="f.H_Entrance_DFlag=1003"  name="H_Entrance_DFlag"  cmd="="  op="t"  val="1003"  ]
[wait  time="4000"  ]
[tb_show_message_window  ]
[tb_start_tyrano_code]
[chara_mod  name="H_種付け"  time="0"  cross="false"  storage="chara/27/種付け絶頂09.png" cond="f.H_Danmen_Flag == 0" ]
[chara_mod  name="H_種付け"  time="0"  cross="false"  storage="chara/27/種付け絶頂19.png" cond="f.H_Danmen_Flag == 1" ]

[_tb_end_tyrano_code]

[tb_eval  exp="f.H_Entrance_DFlag=109"  name="H_Entrance_DFlag"  cmd="="  op="t"  val="109"  val_2="undefined"  ]
[tb_start_text mode=1 ]
#
Spurt・・・spurt・・・[p]
Glug・・・gurgle・・・[p]
#&f.Imo_Name
Nghhh[heart]・・・[p]
Nghhh・・・[heart][heart][heart][heart][heart][p]
I've been cumming for over 12 hours straight, and I can tell her womb is already full of my sperm[p]
For good measure, I pump spurt after spurt right into her womb・・・it overflows from the edges[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="1"  storage="射精音/射精音後背位とプレス.mp3"  loop="false"  ]
[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/絶頂セリフ03_2.mp3"  loop="true"  ]
[tb_start_text mode=1 ]
#
[emb exp="f.Imo_Name"]'s womb makes sounds of joy・・・glug[heart]・・・gurgle[heart][heart][heart][p]
Nghhh・・・[heart][heart][heart][heart][heart][p]
#
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="ピストン系/種付けピストン03.mp3"  loop="true"  ]
[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/12喘ぎ声(挿入)08.mp3"  loop="true"  ]
[tb_start_tyrano_code]
[chara_mod  name="H_種付け"  time="0"  cross="false"  storage="chara/27/種付けアニメ09.png" cond="f.H_Danmen_Flag == 0" ]
[chara_mod  name="H_種付け"  time="0"  cross="false"  storage="chara/27/種付けアニメ19.png" cond="f.H_Danmen_Flag == 1" ]

[_tb_end_tyrano_code]

[tb_eval  exp="f.H_Entrance_DFlag=19"  name="H_Entrance_DFlag"  cmd="="  op="t"  val="19"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
I・・・I love you・・・Nghh[heart]・・・Nghh[heart]・・・[p]
I・・・love you so much・・・Nghhh[heart][heart][heart][heart][heart][heart][heart][p]
Ahh[heart]・・・I'm gonna have a baby[heart]・・・Nghh[heart][heart][heart][heart][p]
[emb exp="f.Oni_Name3"]'s・・・I wanna have [emb exp="f.Oni_Name3"]'s baby・・・・Nghh[heart][heart][heart][heart][p]
I'm gonna get pregnantーーー[heart][heart][heart][heart][heart][heart][heart][p]
I'm gonna get pregnant with the sperm from [emb exp="f.Oni_Name3"]'s dick[heart][heart][heart][heart][heart][heart][heart][p]
Nghh hahhh[heart][heart][heart][heart][heart][heart][heart]!![p]
#
[_tb_end_text]

[tb_hide_message_window  ]
[l  ]
[tb_start_tyrano_code]
[chara_mod  name="H_種付け"  time="0"  cross="false"  storage="chara/27/種付け射精03.png" cond="f.H_Danmen_Flag == 0" ]
[chara_mod  name="H_種付け"  time="0"  cross="false"  storage="chara/27/種付け射精13.png" cond="f.H_Danmen_Flag == 1" ]

[_tb_end_tyrano_code]

[tb_eval  exp="f.H_Entrance_DFlag=1003"  name="H_Entrance_DFlag"  cmd="="  op="t"  val="1003"  ]
[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/絶頂声のみ01.mp3"  loop="false"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="射精音/射精音正上位とプレス.mp3"  loop="false"  ]
[wait  time="3000"  ]
[stopse  time="1000"  buf="0"  ]
[tb_start_tyrano_code]
[chara_mod  name="H_種付け"  time="0"  cross="false"  storage="chara/27/種付け絶頂09.png" cond="f.H_Danmen_Flag == 0" ]
[chara_mod  name="H_種付け"  time="0"  cross="false"  storage="chara/27/種付け絶頂19.png" cond="f.H_Danmen_Flag == 1" ]

[_tb_end_tyrano_code]

[tb_eval  exp="f.H_Entrance_DFlag=109"  name="H_Entrance_DFlag"  cmd="="  op="t"  val="109"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#
ーSpurt・・・slurp・・・[p]
Squirt・・・spurt・・・[p]

[_tb_end_text]

[chara_hide_all  time="0"  wait="false"  ]
[tb_start_tyrano_code]
[clearfix]
[_tb_end_tyrano_code]

[call  storage="Main_Sta.ks"  target="*__roleのみ表示"  ]
[call  storage="Main_Sta.ks"  target="*__Hメインステ表示"  ]
[bg  time="1000"  method="crossfade"  storage="事後07.png"  ]
[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/04喘ぎ声(前)04.mp3"  loop="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Ahh[heart]・・・Ahh[heart][heart][heart][p]
I'm・・・so happy[heart][heart][heart][p]
My・・・tummy・・・is so full[heart]・・・[p]
・・・It's amazing[heart][heart][heart][heart]・・・It feels amazing[heart][heart][heart][heart][p]
I'm going crazy[heart][heart][heart][heart][heart][heart][heart][heart][p]
#

[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="ピストン系/種付けピストン03.mp3"  loop="true"  ]
[tb_start_text mode=1 ]
#
A life where we do nothing but have sex naked all day like beasts[p]
Spending time having sex from the moment we wake up until we sleep[p]
The sheets are a sloppy mess of sperm and love juices, and we keep holding each other, covered in sweat and fluids[p]
The room is filled with the raw smell of semen, rising like a humid steam[p]
The slapping sounds of sex and the obscene sounds of our nonstop moaning are probably reaching the neighbors on both sides[p]
But my brain is so consumed by [emb exp="f.Imo_Name"]'s softness and how good her pussy feels that I can't think of anything but sex[p]
#&f.Imo_Name
Ahh ahh[heart][heart][heart][heart][heart][heart][heart][p]
I・・・I'm cumming, I'm cumming[heart][heart]・・・[p]
More[heart][heart]・・・Ahh[heart]・・・I'm gonna break[heart][heart][heart][heart][p]
#
That seems to be the same for [emb exp="f.Imo_Name"][p]
Pinned beneath me, getting my dick slammed into her over and over, she still moans lewdly[p]
Her hair is a mess, tears and drool dripping down, she shakes her hips wildly with empty eyes[p]
There lay the figure of a depraved girl, seeking nothing but sex[p]
・・・[p]
I kept my dick inside her, thrusting non-stop even if my sperm ran dry, making her climax over and over until late at night when she was finally satisfied and lost consciousness[p]
・・・[p]
・・・[p]

[_tb_end_text]

[call  storage="Main_Sta.ks"  target="*__メインステ表示"  ]
[stopse  time="1000"  buf="0"  ]
[stopse  time="1000"  buf="1"  ]
[stopse  time="1000"  buf="2"  ]
[stopse  time="1000"  buf="3"  ]
[tb_start_tyrano_code]
;回想用BGM変更
[playbgm volume="20"  time="1000"  loop="true"  storage="PerituneMaterial_Sea_Breeze_loop.mp3" cond="tf._tb_is_replay == true" ]
[_tb_end_tyrano_code]

*__回想解放用

[tb_replay  id="２４時間H"  ]
[jump  storage="Bestend.ks"  target="*__回想解放用"  cond="sf.Clear_Flag_Kaisou==1"  ]
[call  storage="__Main_Night_Option.ks"  target="*__妊娠判定"  cond="f.H_Sex_Anal==0"  ]
[call  storage="__Main_Night_Option.ks"  target="*__妊娠判定"  cond="f.H_Sex_Anal==0"  ]
[call  storage="__Main_Night_Option.ks"  target="*__妊娠判定"  cond="f.H_Sex_Anal==0"  ]
[tb_start_tyrano_code]
[iscript]
f.Kaihatu[0].kazu += 1;
f.Kaihatu[1].kazu += 1;
f.Kaihatu[2].kazu += 1;
f.Kaihatu[3].kazu += 1;
f.Kaihatu[4].kazu += 1;
[endscript]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;sex回数プラスカウント
[eval exp="f.Sex_Count[1].bestcount += f.Sys_Seiryoku"]
[eval exp="f.Sex_Count[3].bestcount += f.Sys_Seiryoku"]
[eval exp="f.Sex_Count[4].count += f.Sys_Seiryoku"]
[eval exp="f.Sex_Count[5].count += f.Sys_Seiryoku+5"]

[_tb_end_tyrano_code]

[tb_eval  exp="f.H_24H_Flag=1"  name="H_24H_Flag"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.H_After_CG=6"  name="H_After_CG"  cmd="="  op="t"  val="6"  val_2="undefined"  ]
[tb_eval  exp="f.Sys_Jikan=3"  name="Sys_Jikan"  cmd="="  op="t"  val="3"  val_2="undefined"  ]
[intrandom_ko10panda  max="5"  count="1"  show_result="false"  show_style="style_a"  show_detail="false"  detail_length="10"  show_log="log_4"  var_name="tf.rand"  ]
[tb_start_tyrano_code]
[eval exp="f.Tre_Up = tf.rand"]
[_tb_end_tyrano_code]

[call  storage="Tre_Sta_Up.ks"  target="*__疑惑UP"  ]
[tb_eval  exp="f.Tre_Up=3"  name="Tre_Up"  cmd="="  op="t"  val="3"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__理性DOWN"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__好きUP"  ]
[tb_eval  exp="f.Tre_Up=100"  name="Tre_Up"  cmd="="  op="t"  val="100"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__性欲DOWN"  ]
[tb_eval  exp="f.Sys_Seiryoku=0"  name="Sys_Seiryoku"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.Sta_Seiyoku=0"  name="Sta_Seiyoku"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="H_Kaihatu_Upshori.ks"  target="*__開発アップ処理"  ]
[call  storage="_Array_Kaihatu.ks"  target="*__開発配列初期化"  ]
[jump  storage="__Main_Kyuuka.ks"  target="*__直寝の飛び先"  ]
*__断面図変更

[tb_start_tyrano_code]
;f.H_Entrance_DFlag の変数解説
;0~9 静止画　10~19 アニメ　100~109絶頂 1000~1009　射精
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;断面図変更
[switch exp="f.H_Entrance_DFlag"]
[case is=0]
[chara_mod  name="H_種付け"  time="0"  cross="false"  storage="chara/27/種付け00.png" cond="f.H_Danmen_Flag == 0" ]
[chara_mod  name="H_種付け"  time="0"  cross="false"  storage="chara/27/種付け10.png" cond="f.H_Danmen_Flag == 1" ]
[case is=1]
[chara_mod  name="H_種付け"  time="0"  cross="false"  storage="chara/27/種付け01.png" cond="f.H_Danmen_Flag == 0" ]
[chara_mod  name="H_種付け"  time="0"  cross="false"  storage="chara/27/種付け11.png" cond="f.H_Danmen_Flag == 1" ]
[case is=2]
[chara_mod  name="H_種付け"  time="0"  cross="false"  storage="chara/27/種付け02.png" cond="f.H_Danmen_Flag == 0" ]
[chara_mod  name="H_種付け"  time="0"  cross="false"  storage="chara/27/種付け12.png" cond="f.H_Danmen_Flag == 1" ]
[case is=3]
[chara_mod  name="H_種付け"  time="0"  cross="false"  storage="chara/27/種付け03.png" cond="f.H_Danmen_Flag == 0" ]
[chara_mod  name="H_種付け"  time="0"  cross="false"  storage="chara/27/種付け13.png" cond="f.H_Danmen_Flag == 1" ]

[case is=11]
[chara_mod  name="H_種付け"  time="0"  cross="false"  storage="chara/27/種付けアニメ01.png" cond="f.H_Danmen_Flag == 0" ]
[chara_mod  name="H_種付け"  time="0"  cross="false"  storage="chara/27/種付けアニメ11.png" cond="f.H_Danmen_Flag == 1" ]
[case is=12]
[chara_mod  name="H_種付け"  time="0"  cross="false"  storage="chara/27/種付けアニメ02.png" cond="f.H_Danmen_Flag == 0" ]
[chara_mod  name="H_種付け"  time="0"  cross="false"  storage="chara/27/種付けアニメ12.png" cond="f.H_Danmen_Flag == 1" ]
[case is=13]
[chara_mod  name="H_種付け"  time="0"  cross="false"  storage="chara/27/種付けアニメ03.png" cond="f.H_Danmen_Flag == 0" ]
[chara_mod  name="H_種付け"  time="0"  cross="false"  storage="chara/27/種付けアニメ13.png" cond="f.H_Danmen_Flag == 1" ]
[case is=14]
[chara_mod  name="H_種付け"  time="0"  cross="false"  storage="chara/27/種付けアニメ01.png" cond="f.H_Danmen_Flag == 0" ]
[chara_mod  name="H_種付け"  time="0"  cross="false"  storage="chara/27/種付けアニメ14.png" cond="f.H_Danmen_Flag == 1" ]
[case is=15]
[chara_mod  name="H_種付け"  time="0"  cross="false"  storage="chara/27/種付けアニメ02.png" cond="f.H_Danmen_Flag == 0" ]
[chara_mod  name="H_種付け"  time="0"  cross="false"  storage="chara/27/種付けアニメ15.png" cond="f.H_Danmen_Flag == 1" ]
[case is=16]
[chara_mod  name="H_種付け"  time="0"  cross="false"  storage="chara/27/種付けアニメ03.png" cond="f.H_Danmen_Flag == 0" ]
[chara_mod  name="H_種付け"  time="0"  cross="false"  storage="chara/27/種付けアニメ16.png" cond="f.H_Danmen_Flag == 1" ]
[case is=17]
[chara_mod  name="H_種付け"  time="0"  cross="false"  storage="chara/27/種付けアニメ07.png" cond="f.H_Danmen_Flag == 0" ]
[chara_mod  name="H_種付け"  time="0"  cross="false"  storage="chara/27/種付けアニメ17.png" cond="f.H_Danmen_Flag == 1" ]
[case is=18]
[chara_mod  name="H_種付け"  time="0"  cross="false"  storage="chara/27/種付けアニメ08.png" cond="f.H_Danmen_Flag == 0" ]
[chara_mod  name="H_種付け"  time="0"  cross="false"  storage="chara/27/種付けアニメ18.png" cond="f.H_Danmen_Flag == 1" ]
[case is=19]
[chara_mod  name="H_種付け"  time="0"  cross="false"  storage="chara/27/種付けアニメ09.png" cond="f.H_Danmen_Flag == 0" ]
[chara_mod  name="H_種付け"  time="0"  cross="false"  storage="chara/27/種付けアニメ19.png" cond="f.H_Danmen_Flag == 1" ]

[case is=101]
[chara_mod  name="H_種付け"  time="0"  cross="false"  storage="chara/27/種付け絶頂01.png" cond="f.H_Danmen_Flag == 0" ]
[chara_mod  name="H_種付け"  time="0"  cross="false"  storage="chara/27/種付け絶頂11.png" cond="f.H_Danmen_Flag == 1" ]
[case is=102]
[chara_mod  name="H_種付け"  time="0"  cross="false"  storage="chara/27/種付け絶頂02.png" cond="f.H_Danmen_Flag == 0" ]
[chara_mod  name="H_種付け"  time="0"  cross="false"  storage="chara/27/種付け絶頂12.png" cond="f.H_Danmen_Flag == 1" ]
[case is=103]
[chara_mod  name="H_種付け"  time="0"  cross="false"  storage="chara/27/種付け絶頂03.png" cond="f.H_Danmen_Flag == 0" ]
[chara_mod  name="H_種付け"  time="0"  cross="false"  storage="chara/27/種付け絶頂13.png" cond="f.H_Danmen_Flag == 1" ]
[case is=104]
[chara_mod  name="H_種付け"  time="0"  cross="false"  storage="chara/27/種付け絶頂01.png" cond="f.H_Danmen_Flag == 0" ]
[chara_mod  name="H_種付け"  time="0"  cross="false"  storage="chara/27/種付け絶頂14.png" cond="f.H_Danmen_Flag == 1" ]
[case is=105]
[chara_mod  name="H_種付け"  time="0"  cross="false"  storage="chara/27/種付け絶頂02.png" cond="f.H_Danmen_Flag == 0" ]
[chara_mod  name="H_種付け"  time="0"  cross="false"  storage="chara/27/種付け絶頂15.png" cond="f.H_Danmen_Flag == 1" ]
[case is=106]
[chara_mod  name="H_種付け"  time="0"  cross="false"  storage="chara/27/種付け絶頂03.png" cond="f.H_Danmen_Flag == 0" ]
[chara_mod  name="H_種付け"  time="0"  cross="false"  storage="chara/27/種付け絶頂16.png" cond="f.H_Danmen_Flag == 1" ]
[case is=107]
[chara_mod  name="H_種付け"  time="0"  cross="false"  storage="chara/27/種付け絶頂07.png" cond="f.H_Danmen_Flag == 0" ]
[chara_mod  name="H_種付け"  time="0"  cross="false"  storage="chara/27/種付け絶頂17.png" cond="f.H_Danmen_Flag == 1" ]
[case is=108]
[chara_mod  name="H_種付け"  time="0"  cross="false"  storage="chara/27/種付け絶頂08.png" cond="f.H_Danmen_Flag == 0" ]
[chara_mod  name="H_種付け"  time="0"  cross="false"  storage="chara/27/種付け絶頂18.png" cond="f.H_Danmen_Flag == 1" ]
[case is=109]
[chara_mod  name="H_種付け"  time="0"  cross="false"  storage="chara/27/種付け絶頂09.png" cond="f.H_Danmen_Flag == 0" ]
[chara_mod  name="H_種付け"  time="0"  cross="false"  storage="chara/27/種付け絶頂19.png" cond="f.H_Danmen_Flag == 1" ]

[case is=1001]
[chara_mod  name="H_種付け"  time="0"  cross="false"  storage="chara/27/種付け射精01.png" cond="f.H_Danmen_Flag == 0" ]
[chara_mod  name="H_種付け"  time="0"  cross="false"  storage="chara/27/種付け射精11.png" cond="f.H_Danmen_Flag == 1" ]
[case is=1002]
[chara_mod  name="H_種付け"  time="0"  cross="false"  storage="chara/27/種付け射精01.png" cond="f.H_Danmen_Flag == 0" ]
[chara_mod  name="H_種付け"  time="0"  cross="false"  storage="chara/27/種付け射精12.png" cond="f.H_Danmen_Flag == 1" ]
[case is=1003]
[chara_mod  name="H_種付け"  time="0"  cross="false"  storage="chara/27/種付け射精03.png" cond="f.H_Danmen_Flag == 0" ]
[chara_mod  name="H_種付け"  time="0"  cross="false"  storage="chara/27/種付け射精13.png" cond="f.H_Danmen_Flag == 1" ]

[endswitch]


[_tb_end_tyrano_code]

[call  storage="Main_Sta.ks"  target="*__Hメインステ表示"  ]
[tb_start_tyrano_code]
[button  storage="__Main_Kaiwa_EP.ks"  target="*__断面図変更"  graphic="断面図on.png"  x="30"  y="100" exp="f.H_Danmen_Flag = 1" cond="f.H_Danmen_Flag == 0"  fix=true enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3"]
[button  storage="__Main_Kaiwa_EP.ks"  target="*__断面図変更"  graphic="断面図off.png"  x="30"  y="100" exp="f.H_Danmen_Flag = 0" cond="f.H_Danmen_Flag == 1"  fix=true enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3"]

[_tb_end_tyrano_code]

[return  ]
*91

[font  size="18"  color="0x000000"  face="JKG-M_3"  bold="true"  ]
[tb_start_tyrano_code]
;スキップ選択肢
[glink  color="btn_05_black"  storage="__Main_Kaiwa_EP.ks"  size="25"  x="530"  y="200"  width="250"  height="50"  text="Skip"  target="*__スキップする" enterse="マウスオーバー.mp3"  clickse="決定ボタンを押す53.mp3" ]
[glink  color="btn_05_black"   storage="__Main_Kaiwa_EP.ks"  size="25"  x="530"  y="250"  width="250"  height="50"  text="Flirt" target="*__いちゃつく" enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3" ]
[_tb_end_tyrano_code]

[resetfont  ]
[s  ]
*__いちゃつく

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_26.png"  wait="true"  ]
[tb_start_text mode=1 ]
#
Lately, every day when I sit on the sofa, [emb exp="f.Imo_Name"] sits right next to me[p]
Silently leaning against me and resting her head on my shoulder[p]
I immediately wrap my arm around her waist, pull her close, and press our bodies together[p]
[_tb_end_text]

[individual_image  layer="1"  zindex="1"  name="kaiwaEP11"  storage="default/スキンシップ07.png"  width="300"  height="400"  wait="true"  x="900"  y="100"  time="300"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Mmm・・・[p]
#
Feeling each other's body heat, spending time in silence has become our daily routine[p]
#&f.Imo_Name
・・・[p]
#
[_tb_end_text]

[individual_image  layer="1"  zindex="1"  name="kaiwaEP11"  storage="default/スキンシップ08.png"  width="300"  height="400"  wait="true"  x="900"  y="100"  time="300"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Mmm・・・[p]
#
In a fleeting moment, [emb exp="f.Imo_Name"] turns to me and begs for a kiss[p]
#
I look into the eyes of [emb exp="f.Imo_Name"], whose cheeks are blushing, and bring my face closer[p]
[_tb_end_text]

[individual_image  layer="1"  zindex="1"  name="kaiwaEP11"  storage="default/スキンシップ08_1.png"  width="300"  height="400"  wait="true"  x="900"  y="100"  time="300"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="えっち系/キス01.mp3"  loop="true"  ]
[l  ]
[stopse  time="0"  buf="0"  ]
[delete_individual_image  layer="1"  name="kaiwaEP11"  ]
[chara_part  name="さくら01"  time="0"  目="キャラ待機01_27.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
・・・Mmmhah[p]
#
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_26.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
I love you・・・[p]
#
[emb exp="f.Imo_Name"] always whispers that in my ear[p]
Today, in return, I whisper to her in a calm voice right by her ear[p]
#&f.Oni_Name3
I love you[p]
#
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_27.png"  wait="true"  ]
[tb_start_text mode=1 ]
#
When I whisper that in her ear, [emb exp="f.Imo_Name"]'s body trembles with a jolt, and she clings to me[p]
#&f.Imo_Name
[emb exp="f.Oni_Name3"][heart][emb exp="f.Oni_Name3"][heart][emb exp="f.Oni_Name3"][heart]・・・[p]
#
[_tb_end_text]

[individual_image  layer="1"  zindex="1"  name="kaiwaEP11"  storage="default/スキンシップ08_1.png"  width="300"  height="400"  wait="true"  x="900"  y="100"  time="300"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="えっち系/キス01.mp3"  loop="true"  ]
[l  ]
[stopse  time="0"  buf="0"  ]
[delete_individual_image  layer="1"  name="kaiwaEP11"  ]
[chara_part  name="さくら01"  time="0"  目="キャラ待機01_26.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Hah・・・ hah・・・[p]
[emb exp="f.Oni_Name3"][heart]・・・[p]
#
[_tb_end_text]

[individual_image  layer="1"  zindex="1"  name="kaiwaEP11"  storage="default/スキンシップ08_1.png"  width="300"  height="400"  wait="true"  x="900"  y="100"  time="300"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="えっち系/キス01.mp3"  loop="true"  ]
[l  ]
[stopse  time="0"  buf="0"  ]
[delete_individual_image  layer="1"  name="kaiwaEP11"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Hah・・・ hah・・・ I love you so much[heart][p]
・・・I love you so much・・・[p]
・・・I love you so much[heart][p]
#
Feeling [emb exp="f.Imo_Name"]'s sweet scent and body heat warm enough to make us sweat, we entangle our tongues again and again, realizing how happy we are[p]
[_tb_end_text]

[jump  storage="__Main_Kaiwa_EP.ks"  target="*__最愛合流"  ]
*__スキップする

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_26.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
I love you so much, [emb exp="f.Oni_Name3"][heart][heart][heart][heart][p]
#
[_tb_end_text]

*__最愛合流

[tb_start_tyrano_code]
;回数カウント
[eval exp="f.Kaihatu_Count[0].kazu += 1"]
[_tb_end_tyrano_code]

[tb_eval  exp="f.Tre_Up=1"  name="Tre_Up"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__歌UP"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__ダンスUP"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__演技UP"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__話術UP"  ]
[jump  storage="__Main_kaiwa.ks"  target="*__会話終了"  ]
*92

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_26.png"  wait="true"  ]
[tb_start_text mode=1 ]
#
Without saying a word, [emb exp="f.Imo_Name"] starts rubbing my crotch.[p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_33.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Hehe, [emb exp="f.Oni_Name3"], you're full of energy[heart][p]
#&f.Oni_Name3
Ah, hey, [emb exp="f.Imo_Name"][p]
[_tb_end_text]

[chara_part  name="さくら01"  time="0"  目="キャラ待機01_26.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
It must be tough being this energetic, huh[heart][p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="1"  storage="えっち系/衣擦れ3.mp3"  ]
[chara_hide  name="さくら01"  time="1000"  wait="true"  pos_mode="false"  ]
[chara_show  name="さくら_フェラ"  time="1000"  wait="true"  storage="chara/17/フェラ01.png"  width="400"  height="300"  left="800"  top="200"  ]
[tb_start_text mode=1 ]
#
She pulls down my pants and sucks on my dick.[p]

[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="えっち系/フェラ音01.mp3"  loop="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Nnm・・・ mph・・・[p]
Pop[p]
Mmm・・・ mmm・・・[p]
#
With skilled hands, she rhythmically strokes my dick, mixing it with saliva to stimulate the head[p]
Trying to suck out the sperm, the pleasure of her sucking with incredible force makes me feel like I can't last even a few seconds[p]
#&f.Oni_Name3
Ngh![p]
#
・・・[p]

[_tb_end_text]

[chara_mod  name="さくら_フェラ"  time="0"  cross="true"  storage="chara/17/フェラ02.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Nnm・・・ mph・・・[p]
Mmhf[heart][p]
Mmm・・・[p]
#

[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="えっち系/射精音01.mp3"  ]
[chara_mod  name="さくら_フェラ"  time="0"  cross="true"  storage="chara/17/フェラ03.png"  ]
[playse  volume="100"  time="1000"  buf="1"  storage="えっち系/ごっくん01.mp3"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Gulp・・・ gulp[p]
Pop[p]
[_tb_end_text]

[chara_mod  name="さくら_フェラ"  time="0"  cross="true"  storage="chara/17/フェラ04.png"  ]
[tb_start_text mode=1 ]
Mmm・・・ it'sh yummy[p]
#&f.Oni_Name3
Hahh[p]
#
Before I knew it, [emb exp="f.Imo_Name"] had turned into an incredible expert, and she whispers to me while still keeping it in her mouth[p]
[_tb_end_text]

[tb_start_text mode=1 ]
#&f.Imo_Name
Mmhf[heart] You can still go, can't you, [emb exp="f.Oni_Name3"][heart][p]
#&f.Oni_Name3
Whoa![p]
#&f.Imo_Name
Give me loooots more, okay[heart][p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="えっち系/フェラ音01.mp3"  loop="true"  ]
[chara_mod  name="さくら_フェラ"  time="0"  cross="true"  storage="chara/17/フェラ03.png"  ]
[tb_start_text mode=1 ]
#
Saying that, with her mouth covered in sperm, she sucks on me even harder[p]
・・・[p]
From her technique and the pleasure, I feel my sperm rising almost immediately[p]
#&f.Imo_Name
Mm-hehe[heart][p]
#
Looking down at [emb exp="f.Imo_Name"], who is happily sucking away, I end up feeling a strange sense of conquest[p]
#&f.Oni_Name3
Hahh[p]
#
・・・She's completely corrupted, hasn't she.[p]
Only the sound of slurping echoes through the room[p]
I stroke the head of [emb exp="f.Imo_Name"], who keeps sucking my dick to lick up every last drop of sperm[p]
Maybe this kind of life isn't so bad・・・[p]
I found myself getting sentimental like that.[p]

[_tb_end_text]

[stopse  time="1000"  buf="0"  fadeout="true"  ]
[tb_start_tyrano_code]
;開発回数プラスカウント
[eval exp="f.Kaihatu_Count[0].kazu += 1"]

[_tb_end_tyrano_code]

[tb_eval  exp="f.Tre_Up=1"  name="Tre_Up"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__好きUP"  ]
[tb_eval  exp="f.Tre_Up=40"  name="Tre_Up"  cmd="="  op="t"  val="40"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__性欲UP"  ]
[tb_eval  exp="f.Sys_Seiryoku-=1"  name="Sys_Seiryoku"  cmd="-="  op="t"  val="1"  val_2="undefined"  ]
[tb_start_tyrano_code]
;精力マイナスを０に
[if exp="f.Sys_Seiryoku <=0"]
[eval exp="f.Sys_Seiryoku = 0"]
[endif]
[_tb_end_tyrano_code]

[jump  storage="__Main_kaiwa.ks"  target="*__会話終了"  ]
[tb_start_tyrano_code]

[_tb_end_tyrano_code]

[chara_part  name="さくら01"  time="1000"  ]
[tb_hide_message_window  ]
