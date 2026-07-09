[_tb_system_call storage=system/___Main_Night_Word.ks]

[tb_show_message_window  ]
[call  storage="_Array_.ks"  target="*__配列宣言"  ]
[call  storage="Main_Sta.ks"  target="*__メインステ表示"  ]
*__えっち直前

[tb_start_tyrano_code]
[clearfix]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;えっち済の場合、セリフ変化
[jump target="*__1回まで" cond="f.Sex_Count[7].bestcount == 1"]
[jump target="*__2回まで" cond="f.Sex_Count[7].bestcount == 2"]
[jump target="*__3回以上" cond="f.Sex_Count[7].bestcount >= 3"]

[_tb_end_tyrano_code]

[intrandom_ko10panda  max="5"  count="1"  show_result="false"  show_style="style_a"  show_detail="false"  detail_length="10"  show_log="log_4"  var_name="tf.rand"  ]
[tb_start_tyrano_code]
;えっち開始セリフ　理性0のときは+5スライド
[eval exp="tf.rand += 5" cond="f.Sta_Risei == 0"]
[eval exp="f.i = '*' + tf.rand"]
[jump target="&f.i"]
[_tb_end_tyrano_code]

*1

[chara_mod  name="さくら_風呂後"  time="0"  cross="false"  storage="chara/2/キャラ待機92.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Y-yeah・・・[p]
Well・・・um・・・[p]
Yeah[heart]・・・[p]
#
[_tb_end_text]

[jump  storage="__Main_Night_Word.ks"  target="*__えっち前会話終"  ]
*2

[chara_mod  name="さくら_風呂後"  time="0"  cross="false"  storage="chara/2/キャラ待機92.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
[emb exp="f.Oni_Name3"]・・・[p]
Can we turn off the lights?[p]
I-It's embarrassing[p]
#&f.Oni_Name3
I want to see [emb exp="f.Imo_Name"]'s beautiful body[p]
#&f.Imo_Name
Fwehh・・・[p]
#
[_tb_end_text]

[jump  storage="__Main_Night_Word.ks"  target="*__えっち前会話終"  ]
*3

[chara_mod  name="さくら_風呂後"  time="0"  cross="false"  storage="chara/2/キャラ待機92.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
T-Today too・・・[p]
A-Are we doing it・・・?[p]
#&f.Oni_Name3
Yeah, I want to hold you[p]
#&f.Imo_Name
Fwehh・・[p]
#
[_tb_end_text]

[jump  storage="__Main_Night_Word.ks"  target="*__えっち前会話終"  ]
*4

[chara_mod  name="さくら_風呂後"  time="0"  cross="false"  storage="chara/2/キャラ待機93.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Eh・・・o-okay[p]
#
[emb exp="f.Imo_Name"] looks over her own body[p]
#&f.Oni_Name3
What's wrong?[p]
#&f.Imo_Name
I was wondering if there was anything weird looking[p]
#&f.Oni_Name3
You're beautiful today too[p]
#&f.Imo_Name
Fwehh・・・[p]
#
[_tb_end_text]

[jump  storage="__Main_Night_Word.ks"  target="*__えっち前会話終"  ]
*5

[tb_start_text mode=1 ]
#&f.Oni_Name3
I want to have sex with [emb exp="f.Imo_Name"] today too[p]
#
[_tb_end_text]

[chara_mod  name="さくら_風呂後"  time="0"  cross="false"  storage="chara/2/キャラ待機93.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
G-Geez!・・・[emb exp="f.Oni_Name3"], you pervert[p]
I can't help it・・・O-Okay[heart][p]
#&f.Oni_Name3
Cute[p]
#
[_tb_end_text]

[jump  storage="__Main_Night_Word.ks"  target="*__えっち前会話終"  ]
*6

[tb_start_text mode=1 ]
#&f.Oni_Name3
[emb exp="f.Imo_Name"] fresh out of the bath is exceptionally cute[p]
#
[_tb_end_text]

[chara_mod  name="さくら_風呂後"  time="0"  cross="false"  storage="chara/2/キャラ待機92.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Mmh[heart]・・・[p]
[emb exp="f.Oni_Name3"][heart][p]
#&f.Oni_Name3
Shall we have sex?[p]
#
[_tb_end_text]

[tb_start_text mode=1 ]
#&f.Imo_Name
・・・Yeah[heart][heart][heart][p]
#
[_tb_end_text]

[jump  storage="__Main_Night_Word.ks"  target="*__えっち前会話終"  ]
*7

[chara_mod  name="さくら_風呂後"  time="0"  cross="false"  storage="chara/2/キャラ待機93.png"  ]
[tb_start_text mode=1 ]
#
Maybe the room is hot, [emb exp="f.Imo_Name"] has widened her shoulder straps and opened her chest area widely[p]
It's open so much that her nipples are peeking out from the gap in her camisole[p]
#&f.Imo_Name
・・・[p]
・・・[heart][p]
#
S-She's seducing me[p]
The sight of her showing off her nipples to me while being shy is too hot, my hard-on won't stop[p]
#&f.Oni_Name3
Ngh・・・I can't hold back![p]
#
I pounce on [emb exp="f.Imo_Name"][p]
#&f.Imo_Name
Ah[heart][heart][heart]!![p]
#

[_tb_end_text]

[jump  storage="__Main_Night_Word.ks"  target="*__えっち前会話終"  ]
*8

[chara_mod  name="さくら_風呂後"  time="0"  cross="false"  storage="chara/2/キャラ待機93.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
[emb exp="f.Oni_Name3"][heart][heart][p]
#
[emb exp="f.Imo_Name"] makes a gesture showing she's expecting it[p]
#&f.Oni_Name3
Today・・・how many times do you want me to cum inside?[p]
#&f.Imo_Name
Mmh!・・・[emb exp="f.Oni_Name3"], you're so lewd・・・[p]
・・・But・・・[p]
A・・・A lot[heart]・・・I want it[heart][p]
#
My crotch started to throb[p]
#
[_tb_end_text]

[jump  storage="__Main_Night_Word.ks"  target="*__えっち前会話終"  ]
*9

[tb_start_text mode=1 ]
#
[emb exp="f.Imo_Name"]'s gaze is directed at my crotch[p]
Because it's already rock hard and looks like it's about to burst through my pants[p]
#
[_tb_end_text]

[chara_mod  name="さくら_風呂後"  time="0"  cross="false"  storage="chara/2/キャラ待機92.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Uu・・・i-it's amazing・・・[p]
#&f.Oni_Name3
You want me to put it in, right?[p]

[_tb_end_text]

[chara_mod  name="さくら_風呂後"  time="0"  cross="false"  storage="chara/2/キャラ待機93.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
・・・[p]
・・・Yeah[heart][p]
P-Please・・・put it in quickly[heart][heart][heart][p]
[_tb_end_text]

[jump  storage="__Main_Night_Word.ks"  target="*__えっち前会話終"  ]
*10

[chara_mod  name="さくら_風呂後"  time="0"  cross="false"  storage="chara/2/キャラ待機92.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
・・・[p]
#
I decide to tease [emb exp="f.Imo_Name"] a little[p]
#&f.Oni_Name3
・・・[p]
#&f.Imo_Name
・・・[p]
#
[_tb_end_text]

[chara_mod  name="さくら_風呂後"  time="0"  cross="false"  storage="chara/2/キャラ待機93.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
H-Hey・・・[p]
#&f.Oni_Name3
What's wrong?[p]
#&f.Imo_Name
・・・[p]
A-Are we・・・doing it・・today?[p]
#&f.Oni_Name3
Does [emb exp="f.Imo_Name"] want to have sex?[p]
#&f.Imo_Name
Uu・・・[p]
You're so mean・・・[p]
#&f.Oni_Name3
Hahaha, you're so cute[p]
#
[_tb_end_text]

[jump  storage="__Main_Night_Word.ks"  target="*__えっち前会話終"  ]
[reset_camera  time="1000"  wait="true"  ]
*__1回まで

[chara_mod  name="さくら_風呂後"  time="0"  cross="false"  storage="chara/2/キャラ待機93.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
[emb exp="f.Oni_Name3"], we just did it a little while ago・・・[p]
G-Geez, you're too energetic・・・[p]
#&f.Oni_Name3
It's rock hard[p]
I still haven't had enough of holding [emb exp="f.Imo_Name"][p]
#&f.Imo_Name
G-Geez・・・you pervert・・・[p]
・・・Okay, sure[heart][p]
#
[_tb_end_text]

[jump  storage="__Main_Night_Word.ks"  target="*__えっち前会話終"  ]
*__2回まで

[chara_mod  name="さくら_風呂後"  time="0"  cross="false"  storage="chara/2/キャラ待機93.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Y-You're really something today[p]
W-We're having sex again?[p]
#&f.Oni_Name3
[emb exp="f.Imo_Name"] hasn't had enough sex yet either, right?[p]
#&f.Imo_Name
Eh・・・well・・・[p]
Um・・・[p]
・・・Y-yeah[heart][p]
#
Seeing her look down and bow her head slightly, I feel my crotch swell again[p]
[_tb_end_text]

[jump  storage="__Main_Night_Word.ks"  target="*__えっち前会話終"  ]
*__3回以上

[chara_mod  name="さくら_風呂後"  time="0"  cross="false"  storage="chara/2/キャラ待機93.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
W-wait, [emb exp="f.Oni_Name3"][p]
We had sex so much my legs and hips are shaking・・・[p]
I don't think I can stand up[p]
#&f.Oni_Name3
Hehe, it's okay, [emb exp="f.Imo_Name"][p]
I'm going to have sex with you until you're shaking even more[p]
#&f.Imo_Name
Nn[heart]!?[p]
Uuuh・・・[p]
B-be gentle, okay[p]
#&f.Oni_Name3
No can do, [emb exp="f.Imo_Name"]. I'm going to be even rougher[p]
I'm going to thrust hard and make you cum over and over[p]
#&f.Imo_Name
Nnn[heart][heart][heart]!?[p]
Aaaaaaah[heart][heart][heart][heart]!![p]
#
[_tb_end_text]

[jump  storage="__Main_Night_Word.ks"  target="*__えっち前会話終"  ]
*__えっち前会話終

[tb_start_text mode=1 ]
#
I push [emb exp="f.Imo_Name"] down onto the bed, her face bright red with embarrassment[p]
#
[_tb_end_text]

[return  ]
[reset_camera  time="1000"  wait="true"  ]
*__えっち事後

[tb_start_tyrano_code]
[clearfix]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;えっち後セリフ　回数で変化
[jump target="*__a0" cond="f.Sex_Count[6].bestcount == 0"]
[jump target="*__a1" cond="f.Sex_Count[6].bestcount >= 1 && f.Sex_Count[6].bestcount <= 2 "]
[jump target="*__a2" cond="f.Sex_Count[6].bestcount >= 3 && f.Sex_Count[6].bestcount <= 4 "]
[jump target="*__a3" cond="f.Sex_Count[6].bestcount >= 5 && f.Sex_Count[6].bestcount <= 6 "]
[jump target="*__a4" cond="f.Sex_Count[6].bestcount >= 7"]

[_tb_end_tyrano_code]

*__a0

[tb_start_text mode=1 ]
#
I decide to stop here for today[p]
#
[_tb_end_text]

[jump  storage="__Main_Night_Word.ks"  target="*__えっち事後会話終"  ]
*__a1

[tb_start_text mode=1 ]
#&f.Imo_Name
Nfu[heart][p]
[emb exp="f.Oni_Name3"], so much came out[p]
#
[_tb_end_text]

[jump  storage="__Main_Night_Word.ks"  target="*__えっち事後会話終"  ]
*__a2

[tb_start_text mode=1 ]
#&f.Imo_Name
Mmh[heart]・・・haaa[heart]・・・[p]
Haa・・・ haa・・・ Fuee~[heart][p]
Ehehe[heart][p]
#
Maybe she's satisfied, because [emb exp="f.Imo_Name"] clings to me[p]
#&f.Imo_Name
[emb exp="f.Oni_Name3"][heart][heart][heart][p]
Hug me tight[heart][p]
#
As she asked, I hug her tight[p]
#&f.Imo_Name
Nn[heart][p]
Hehe, [emb exp="f.Oni_Name3"]~[p]
#
She seems to intend to sleep together just like this[p]
She rests her head against my chest[p]
Hugging each other naked, it isn't long before sleepiness overtakes us[p]
[_tb_end_text]

[jump  storage="__Main_Night_Word.ks"  target="*__えっち事後会話終"  ]
*__a3

[tb_start_tyrano_code]
[eval exp="f.Kaihatu[3].count += 1"]
[eval exp="f.アップ宣言 = f.Kaihatu[3].name + 'Development Bonus + 1'"]
[eval exp="f.ワイ座標 = 130 + 200"]
[notice color=black top="&f.ワイ座標" right=0 width=150 height=45 size=15 text="&f.アップ宣言" wait=false wait_time=2000 method="fadeInRight"]

[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
#&f.Imo_Name
Aah[heart]・・・ O-aaah[heart]・・・[p]
#
[emb exp="f.Imo_Name"] is lying face down on the bed next to me, breathing heavily with her shoulders, her lower body twitching uncontrollably[p]
#&f.Imo_Name
Ah[heart]・・・ Nn-oh[heart][p]
Hah・・・ hah・・・[p]
#
She seems to still be basking in the afterglow of pleasure[p]
Lying face down, her butt is twitching[p]
#&f.Oni_Name3
Phew・・・[p]
#
I gaze at [emb exp="f.Imo_Name"] lying there naked, covered in juices[p]
#&f.Imo_Name
Hah・・・ hah・・・[p]
#
Feeling a sense of accomplishment from making [emb exp="f.Imo_Name"] climax over and over and drowning her in pleasure, I stare at the ceiling[p]
#&f.Imo_Name
Oh, [emb exp="f.Oni_Name3"][p]
I love you so much[heart][heart][heart][p]
#
I glance over to see [emb exp="f.Imo_Name"] clinging to me, kissing me with a sloppy, lewd look on her face[p]
#&f.Imo_Name
Mwah・・・ mwah[heart][heart][heart][p]
#
I return the kiss, and we exchange saliva messily[p]
Hugging each other naked, it seemed like we would keep going at it all night, but[p]
Before I knew it, we had both fallen asleep[p]
[_tb_end_text]

[jump  storage="__Main_Night_Word.ks"  target="*__えっち事後会話終"  ]
*__a4

[tb_start_tyrano_code]
[eval exp="f.Kaihatu[3].count += 2"]
[eval exp="f.アップ宣言 = f.Kaihatu[3].name + 'Development Bonus + 2'"]
[eval exp="f.ワイ座標 = 130 + 200"]
[notice color=black top="&f.ワイ座標" right=0 width=150 height=45 size=15 text="&f.アップ宣言" wait=false wait_time=2000 method="fadeInRight"]

[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
#&f.Imo_Name
Aah[heart]・・・ Ooaah[heart]・・・[p]
Mmmn[heart][heart][heart][p]
#
[emb exp="f.Imo_Name"] is lying face down on the bed next to me, breathing heavily with her shoulders, her lower body twitching uncontrollably[p]
Every time she twitches, various fluids drip from between her legs[p]
#&f.Imo_Name
Ah[heart]・・・ Nnn-ohh[heart][p]
Nngh[heart][heart][heart][p]
#
She seems to still be basking in the afterglow of pleasure[p]
Lying face down, her butt is twitching[p]
#&f.Oni_Name3
Fuu・・・[p]
#
I gaze at [emb exp="f.Imo_Name"] lying there naked, covered in juices[p]
#&f.Imo_Name
Hah[heart]・・・ Hah[heart]・・・[p]
#
I made [emb exp="f.Imo_Name"] cum over and over, and feeling a sense of accomplishment for drowning her in pleasure, I stare at the ceiling[p]
#&f.Imo_Name
Oh, [emb exp="f.Oni_Name3"][heart][heart][heart][p]
I luv you[heart][heart][heart][p]
#
Looking over, [emb exp="f.Imo_Name"] hugs me and kisses me with a sloppy, slutty face[p]
#&f.Imo_Name
Mm, kiss[heart][heart][heart]・・・kiss[heart][heart][heart][p]
#
I respond to the kiss, and we swap saliva messily[p]
#&f.Imo_Name
Luv you[heart][heart][heart]・・・ mmm-chu[heart][heart][heart][p]
#
While kissing, she wraps her arms around my neck and locks her legs around my back to hold me[p]
She squeezes me tight[heart], grinding her pussy hard against the head of my dick to stimulate me[p]
#&f.Imo_Name
Ah[heart]・・・Nngh[heart][p]
Ngh[heart][heart][heart][p]
#
Even though it's just touching against her, her body trembles and twitches[p]
Perhaps due to the continuous orgasms, she exposes a sloppy ahegao face covered in tears and drool[p]
#&f.Imo_Name
Nnnaah [heart][heart][heart]・・・Aaagh [heart][heart][heart][p]
#
A beautiful girl with a face so refined it captivates me, even as she exposes her ahegao.[p]
Even though I came that much, I'm getting hard[p]
[emb exp="f.Imo_Name"] noticed my hard dick, took it in her hand, and thrust it deep inside her pussy with a wet squelch.[p]
#&f.Imo_Name
Oooh! Oooh! [heart][heart][heart]・・・Nngh! [heart][heart][heart][p]
Ahh[heart][heart][heart][heart][heart][p]
#
・・・Guess I'm pulling an all-nighter today[p]
Even after that, we craved each other like beasts, continuing to entangle in a sloppy mess.[p]
Somehow, we had both fallen asleep.[p]
・・・[p]
[_tb_end_text]

[jump  storage="__Main_Night_Word.ks"  target="*__えっち事後会話終"  ]
*__えっち事後会話終

[call  storage="Main_Sta.ks"  target="*__メインステ表示"  ]
[return  ]
