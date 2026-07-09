[_tb_system_call storage=system/__Buy_Fuzoku.ks]

[tb_eval  exp="f.Oni_Ero=4"  name="Oni_Ero"  cmd="="  op="t"  val="4"  val_2="undefined"  ]
[tb_eval  exp="f.H_Fuzoku_Flag=0"  name="H_Fuzoku_Flag"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="_Array_.ks"  target="*__配列宣言"  ]
[tb_eval  exp="f.Sys_Seiryoku_Max=7"  name="Sys_Seiryoku_Max"  cmd="="  op="t"  val="7"  val_2="undefined"  ]
*__風俗スタート

[bg  time="0"  method="crossfade"  storage="BG_Black.png"  ]
[wait  time="1000"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="えっち系/フェラ音01.mp3"  loop="true"  ]
[mask  time="500"  effect="fadeIn"  color="0x000000"  ]
[stopbgm  time="0"  fadeout="true"  ]
[tb_start_tyrano_code]
;初回フラグ
[eval exp="f.H_Fuzoku_Flag = 1" cond="f.H_Fuzoku_Flag == 0"]
[_tb_end_tyrano_code]

[call  storage="Main_Sta.ks"  target="*__roleのみ表示"  ]
[call  storage="Main_Sta.ks"  target="*__Hメインステ表示"  ]
[chara_show  name="H_風俗"  time="0"  wait="true"  storage="chara/21/風俗02.png"  width="560"  height="670"  left="360"  top="50"  ]
[mask_off  time="2000"  effect="fadeOut"  ]
[playbgm  volume="30"  time="1000"  loop="true"  storage="PerituneMaterial_RainDrop_loop.mp3"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#
Pop[p]
Schlup[p]
Glub[p]

[_tb_end_text]

[stopse  time="1000"  buf="0"  ]
[chara_mod  name="H_風俗"  time="600"  cross="false"  storage="chara/21/風俗01.png"  ]
[tb_start_tyrano_code]
;回数や会館による風俗嬢の変化
[switch exp="f.H_Fuzoku_Flag"]
[case is=1]
[call storage="_Buy_Fuzoku_Shori.ks" target="*__感度0"]
[case is=2]
[call storage="_Buy_Fuzoku_Shori.ks" target="*__感度1"]
[case is=3]
[call storage="_Buy_Fuzoku_Shori.ks"  target="*__感度1"]
[case is=4]
[call storage="_Buy_Fuzoku_Shori.ks" target="*__感度2"]
[case is=5]
[call storage="_Buy_Fuzoku_Shori.ks" target="*__感度2"]
[case]
[call storage="_Buy_Fuzoku_Shori.ks" target="*__感度3"]
[endswitch]
[_tb_end_tyrano_code]

[tb_hide_message_window  ]
[tb_start_tyrano_code]
;エロ技確率
[eval exp="f.i = 0"]
[switch exp="f.Oni_Ero"]
[case is=0]
[eval exp="f.i = 100"]

[case is=1]
[eval exp="f.i = 70"]

[case is=2]
[eval exp="f.i = 40"]

[case is=3]
[eval exp="f.i = 30"]

[case is=4]
[eval exp="f.i = 10"]
[case is=5]
[eval exp="f.i = 10"]
[case is=6]
[eval exp="f.i = 10"]
[case is=7]
[eval exp="f.i = 10"]
[case is=8]
[eval exp="f.i = 10"]
[case is=9]
[eval exp="f.i = 10"]
[case is=10]
[eval exp="f.i = 0"]
[endswitch]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;精力確率
[eval exp="f.j = 0"]
[switch exp="f.Sys_Seiryoku_Max"]

[case is=3]
[eval exp="f.j = 90"]
[case is=4]
[eval exp="f.j = 80"]
[case is=5]
[eval exp="f.j = 70"]
[case is=6]
[eval exp="f.j = 60"]
[case is=7]
[eval exp="f.j = 50"]
[case is=8]
[eval exp="f.j = 40"]
[case is=9]
[eval exp="f.j = 0"]

[endswitch]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;選択肢　わからせる　エロ技　精力増強
[eval exp="f.エロ技を教えて = 'Teach me a sex technique! ' + f.i + '%' "]
[eval exp="f.精力増強したい = 'I want to boost my Energy! ' + f.j + '%' "]


[glink  color="btn_05_black"  storage="_Buy_Fuzoku.ks"  size="23"  x="940"  y="150"  width="300"  height="50"  text="&f.エロ技を教えて" target="*__エロ技教えて" enterse="マウスオーバー.mp3"  clickse="決定ボタンを押す53.mp3" cond="f.Oni_Ero <= 3"]
[glink  color="btn_05_black"  storage="_Buy_Fuzoku.ks"  size="23"  x="940"  y="150"  width="300"  height="50"  text="Teach Sex Technique"  target="*__エロ技教えて" enterse="マウスオーバー.mp3"  clickse="決定ボタンを押す53.mp3" cond="f.Oni_Ero > 3"]

[glink  color="btn_05_black"  storage="_Buy_Fuzoku.ks"  size="23"  x="940"  y="200"  width="300"  height="50"  text="&f.精力増強したい" target="*__精力増強したい" enterse="マウスオーバー.mp3"  clickse="決定ボタンを押す53.mp3" ]

[_tb_end_tyrano_code]

[s  ]
*__エロ技教えて

[mask  time="300"  effect="fadeIn"  color="0x000000"  ]
[chara_hide_all  time="0"  wait="true"  ]
[mask_off  time="300"  effect="fadeOut"  ]
[tb_show_message_window  ]
[jump  storage="_Buy_Fuzoku.ks"  target="*__開始感度3以上"  cond="f.H_Fuzoku_Flag>5"  ]
*__開始感度2以下

[tb_start_text mode=1 ]
#Lady
Hehe[p]
Can't be helped[p]
I'll teach you a special naughty technique[p]
Nn・・・[p]
#
She strokes my dick while slowly inserting it and sinking her hips down[p]
#
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="えっち系/挿入音01.mp3"  ]
[playse  volume="100"  time="1000"  buf="3"  storage="風俗声/9_吐息2-edited-2025-09-07T08-30-36.mp3"  loop="true"  ]
[tb_start_text mode=1 ]
#Lady
Nn・・・[p]
I-It's big[p]
#
Unexpectedly, she's tight inside, squeezing my crotch from every direction[p]
Even through the rubber, the way she squeezes me makes me feel like I'm gonna cum in no time[p]
#Lady
Hehe♪[p]
#
[_tb_end_text]

[stopse  time="1000"  buf="3"  ]
[jump  storage="_Buy_Fuzoku.ks"  target="*__開始処理後"  ]
*__開始感度3以上

[playse  volume="100"  time="1000"  buf="3"  storage="風俗声/9_吐息2-edited-2025-09-07T08-30-36.mp3"  loop="true"  ]
[tb_start_text mode=1 ]
#Lady
Onee-san will teach you a special naughty technique[p]
Hehe[heart]・・・ I'm putting it in♪[p]
Nngh・・・[p]
#
She strokes my dick while slowly inserting it, lowering her hips[p]
#
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="えっち系/挿入音01.mp3"  loop="undefined"  ]
[tb_start_text mode=1 ]
#Lady
Nngh・・・[p]
It really is amazing・・・[p]
I-It's so big[heart][p]
#
Unexpectedly, her insides are tight, squeezing my dick from every direction[p]
Even with a rubber on, the way she squeezes me makes me feel like I'm gonna cum in no time[p]
#Lady
Hehe♪[p]
#
[_tb_end_text]

[stopse  time="1000"  buf="3"  ]
*__開始処理後

[jump  storage="_Buy_Fuzoku.ks"  target="*__エロ技4以上"  cond="f.Oni_Ero>3"  ]
[chara_show  name="H_風俗"  time="1000"  wait="true"  storage="chara/21/風俗カット01.png"  width="560"  height="670"  left="360"  top="50"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="ピストン系/風俗ピストン01調整版.mp3"  loop="true"  ]
[playse  volume="100"  time="1000"  buf="3"  storage="風俗声/13_喘ぎ声（小）4-edited-2025-09-07T08-30-40.mp3"  loop="true"  ]
[tb_start_text mode=1 ]
#Lady
Nngh・・Ah[p]
Mmm・・・[p]
Aha[heart][p]
#
The squeezing and stroking feels like it's sucking me in, bringing me to the edge[p]
Shit, she's not even moving that fast[p]
Hold it・・・hold it in・・・[p]
#Lady
Ah・・・ nn・・・ an[heart][p]
Hehe, it's my first time seeing such a big dick[heart][p]
Mmm・・・You're a promising young man, aren't you?[p]
#&f.Oni_Name3
Khh[p]
#Lady
Come on, are you already at your limit~?[p]
#&f.Oni_Name3
Not yet![p]
#Lady
Mmh・・・ hehe[heart][p]
Then I'll get serious~[p]
#
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="ピストン系/風俗ピストン03調整版.mp3"  loop="true"  ]
[playse  volume="100"  time="1000"  buf="3"  storage="風俗声/14_喘ぎ声（中）1-edited-2025-09-07T08-30-41.mp3"  loop="true"  ]
[chara_mod  name="H_風俗"  time="0"  cross="true"  storage="chara/21/風俗カット03.png"  ]
[tb_start_text mode=1 ]
#Lady
Ah, aha・・・ nn!![p]
Aah・・・ nn[heart][p]
Come on, cum♪[p]
Cum for me~♪[p]
#
Ngh, n-no, I can't[p]
I'm at my limit!![p]
・・・[p]
[_tb_end_text]

[stopse  time="1000"  buf="3"  ]
[playse  volume="100"  time="1000"  buf="1"  storage="えっち系/射精音02.mp3"  ]
[call  storage="__Main_Night_Option.ks"  target="*__中射精エフェクト"  ]
[stopse  time="1000"  buf="0"  ]
[chara_hide  name="H_風俗"  time="1000"  wait="true"  pos_mode="false"  ]
[tb_start_text mode=1 ]
#
I was made to cum so easily・・・[p]
[_tb_end_text]

*__エロ技終了処理

[intrandom_ko10panda  max="99"  count="1"  show_result="false"  show_style="style_a"  show_detail="false"  detail_length="1"  show_log="log_4"  var_name="tf.rand"  ]
[tb_start_tyrano_code]
;成功率でジャンプ　失敗に飛ぶ
[jump target="*__エロ技アップ失敗" cond="f.i < tf.rand"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;童貞卒業
[if exp="f.Oni_Ero == 0"]
[eval exp="f.Oni_Ero += 1"]
I lost my virginity!![l]
[notice color=black top=150 right=0 height=45 width=150 size=15 text="Sex Skill + 1" wait=false wait_time=2000]
[elsif exp="f.Oni_Ero <= 9"]
[eval exp="f.Oni_Ero += 1"]
I got the hang of sex!![l]
[notice color=black top=150 right=0 height=45 width=150 size=15 text="Sex Skill + 1" wait=false wait_time=2000]
[endif]
[_tb_end_tyrano_code]

*__エロ技アップ失敗

[tb_start_tyrano_code]
;１回行った判定
[eval exp="f.H_Fuzoku_Flag += 1" cond="f.H_Fuzoku_Flag <= 3"]
[_tb_end_tyrano_code]

[jump  storage="_Buy_Item.ks"  target="*__ソープ精力あり"  ]
*__エロ技4以上

[chara_show  name="H_風俗"  time="1000"  wait="true"  storage="chara/21/風俗カット01.png"  width="560"  height="670"  left="360"  top="50"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="ピストン系/風俗ピストン01調整版.mp3"  loop="true"  ]
[playse  volume="100"  time="1000"  buf="3"  storage="風俗声/13_喘ぎ声（小）4-edited-2025-09-07T08-30-40.mp3"  loop="true"  ]
[tb_start_text mode=1 ]
#Lady
Mmh・・・ ah[p]
So tight, so tight・・・ hehe[heart][p]
Mmh・・・[p]
#
She moves her hips with a sticky, slow rhythm, enjoying the play[p]
I'm・・・ getting a little impatient[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="ピストン系/風俗ピストン02調整版.mp3"  loop="true"  ]
[chara_mod  name="H_風俗"  time="0"  cross="false"  storage="chara/21/風俗カット02.png"  ]
[playse  volume="100"  time="1000"  buf="3"  storage="風俗声/14_喘ぎ声（中）1-edited-2025-09-07T08-30-41.mp3"  loop="true"  ]
[tb_start_text mode=1 ]
#Lady
Ah!![p]
Wait・・・ h-hey・・・ Mmh!?[p]
#
I thrust my hips up faster, against her pace[p]
Enjoying the intense squeezing, I take the lead from below[p]
She moves her hips on top of me, looking like it feels amazing[p]
#Lady
Mmh・・・ Aaah!![p]
Amazing・・・ feels・・・ good[p]
Mmh[p]
#
Enjoying her reaction, I thrust deep to stimulate her depths[p]
#Lady
Hyan!![p]
Good・・・ so・・・[p]
Amazing・・・ so big・・・ Ahh![p]
D-deep!! It's hitting me[heart]![p]
Fuaa!![p]
Ah・・・ Aah![p]
#&f.Oni_Name3
I'm going all out[p]
#
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="ピストン系/風俗ピストン03調整版.mp3"  loop="true"  ]
[playse  volume="100"  time="1000"  buf="3"  storage="風俗声/16_喘ぎ声（大）1-edited-2025-09-07T08-30-46.mp3"  loop="true"  ]
[chara_mod  name="H_風俗"  time="0"  cross="false"  storage="chara/21/風俗カット03.png"  ]
[tb_start_text mode=1 ]
#Lady
Eh・・・ wait・・・ Hyaa!![p]
Ohh[heart][p]
Wait・・・ wait・・・ wait・・・ Mmh[heart][p]
Ugh・・・ Guh[p]
Ohh・・・ Oohh![p]
It's so intense[heart][p]
This big dick is amazing[heart][p]
I'm cumming![p]
I'm c-cumming!![p]
#
Her face, once composed, now twists lewdly[p]
#&f.Oni_Name3
Hey, come on, weren't you going to teach me some sex techniques?[p]
#Lady
No, stop[heart][p]
I can't think of anything![p]
It feels so good!![p]
#&f.Oni_Name3
Come on, teach me some sexy technique[p]
#Lady
My mind's gone blank・・・ ooooh[heart][p]
I can't・・・ think・・・ Ahh[heart][p]
Hyaa・・・ Aaahh![p]
Amazing・・・ Ohhh[heart][p]
#&f.Oni_Name3
No, no, move your hips more[p]
#Lady
Hyaii![heart][p]
I'm sorry・・・ Hyaii!![p]
Move・・・ Ugh・・・ Ohhh[heart][p]
Let's get moving[heart][heart][heart][p]
Ogh[heart]・・・ Ogh[heart]・・・[p]
#
The girl rides my hips frantically, drool dripping from her mouth[p]
Still not satisfied, I thrust up from below[p]
The sound of our hips slapping against each other echoes throughout the room[p]
#Lady
Amazing[heart]・・・ Amazing[heart]・・・ Amaziing[heart][p]
Ohh・・・ I'm cumming!![p]
I'm cumming・・・!![p]
I'm cummiiing!!![p]
#
She starts convulsing with an incredible squeeze[p]
#&f.Oni_Name3
Come on, I'm cumming[p]
#Lady
Aguh, Ohh[heart][p]
Nngh[heart][p]
Aaaaaaah!!!![p]
Ahaaah!!!![p]
#
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="1"  storage="えっち系/射精音02.mp3"  ]
[call  storage="__Main_Night_Option.ks"  target="*__中射精エフェクト"  ]
[stopse  time="1000"  buf="3"  ]
[stopse  time="1000"  buf="0"  ]
[chara_hide  name="H_風俗"  time="1000"  wait="true"  pos_mode="false"  ]
[playse  volume="100"  time="1000"  buf="3"  storage="風俗声/9_吐息2-edited-2025-09-07T08-30-36.mp3"  loop="true"  ]
[tb_start_text mode=1 ]
#Lady
Hah・・・ hah・・・[p]
Ngh・・・ hah・・・ hah・・・[p]
#
・・・[p]
The girl collapses onto the bed, face down, breathing heavily through her shoulders.[p]
Phew・・・[p]
[_tb_end_text]

[stopse  time="1000"  buf="3"  ]
[tb_start_text mode=1 ]
#
Basking in the satisfaction after ejaculating, I looked after the girl and passed the time.[p]
[_tb_end_text]

[tb_eval  exp="f.H_Fuzoku_Flag+=4"  name="H_Fuzoku_Flag"  cmd="+="  op="t"  val="4"  val_2="undefined"  ]
[jump  storage="_Buy_Fuzoku.ks"  target="*__エロ技終了処理"  ]
[s  ]
*__精力増強したい

[mask  time="300"  effect="fadeIn"  color="0x000000"  ]
[chara_hide_all  time="0"  wait="true"  ]
[mask_off  time="300"  effect="fadeOut"  ]
[jump  storage="_Buy_Fuzoku.ks"  target="*__上限アップ感度3以上"  cond="f.H_Fuzoku_Flag>5"  ]
*__増強感度2以下

[tb_show_message_window  ]
[tb_start_text mode=1 ]
#Lady
Hehe[p]
You're so helpless.[p]
Okay then, I'll manage Onii-san's ejaculations for you♪[p]
#
She slowly inserted my dick inside while stroking it, sinking her hips down.[p]
#
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="えっち系/挿入音01.mp3"  ]
[playse  volume="100"  time="1000"  buf="3"  storage="風俗声/9_吐息2-edited-2025-09-07T08-30-36.mp3"  loop="true"  ]
[tb_start_text mode=1 ]
#Lady
Ngh・・・[p]
I-It's big.[p]
#
Her insides were unexpectedly tight, squeezing my crotch from every angle.[p]
Even through the rubber, her contractions made me feel like I was going to cum in no time.[p]
#Lady
Hehe♪[p]
#
[_tb_end_text]

[chara_show  name="H_風俗"  time="1000"  wait="true"  storage="chara/21/風俗カット01.png"  width="560"  height="670"  left="360"  top="50"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="ピストン系/風俗ピストン01調整版.mp3"  loop="true"  ]
[playse  volume="100"  time="1000"  buf="3"  storage="風俗声/13_喘ぎ声（小）4-edited-2025-09-07T08-30-40.mp3"  loop="true"  ]
[tb_start_text mode=1 ]
#Lady
Ngh・・ Ahh[p]
Mmh・・・[p]
Come on, come on♪[p]
#
Her movements were slow, but she moved up and down so bewitchingly that it felt like she was sucking the sperm right out of me.[p]
Feeling the warmth of her pussy, I desperately tried to endure it.[p]
Hold it・・・ hold it back・・・[p]
#Lady
Ahh・・[p]
Mmh♪[p]
#&f.Oni_Name3
Ngh・・・ damn・・・[p]
#
[_tb_end_text]

[stopse  time="1000"  buf="0"  ]
[chara_mod  name="H_風俗"  time="600"  cross="false"  storage="chara/21/風俗01.png"  ]
[playse  volume="100"  time="1000"  buf="3"  storage="風俗声/9_吐息2-edited-2025-09-07T08-30-36.mp3"  loop="true"  ]
[tb_start_text mode=1 ]
#Lady
Mm-no, no no.[p]
You can't cum yet♪[p]
#&f.Oni_Name3
Ngh・・・!?[p]
#
Right before I was about to cum, she pulled my dick out to cool me down.[p]
#Lady
I have to punish bad boys who are about to cum right away♪[p]
#
Saying that, she played with my nipples while stroking my dick.[p]
#&f.Oni_Name3
Hah・・・ hah・・・[p]
#Lady
Hehe[heart][p]
I'm putting it back in[heart][p]
#
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="えっち系/挿入音01.mp3"  ]
[playse  volume="100"  time="1000"  buf="3"  storage="風俗声/14_喘ぎ声（中）1-edited-2025-09-07T08-30-41.mp3"  loop="true"  ]
[wait  time="1000"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="ピストン系/風俗ピストン02調整版.mp3"  loop="true"  ]
[chara_mod  name="H_風俗"  time="600"  cross="false"  storage="chara/21/風俗カット02.png"  ]
[tb_start_text mode=1 ]
#
！？[p]
She inserted it again and started thrusting her hips faster than before.[p]
#Lady
Ahh・・・ mmm・・・ ngh[p]
Ahh・・・[p]
It really is big[heart][p]
I might not be able to hold back・・・ ngh[heart][p]
#&f.Oni_Name3
Ngh・・・!?[p]
Guh・・・[p]
#
[_tb_end_text]

[intrandom_ko10panda  max="99"  count="1"  show_result="false"  show_style="style_a"  show_detail="false"  detail_length="1"  show_log="log_2"  var_name="tf.rand"  ]
[tb_start_tyrano_code]
;成功率でジャンプ
[jump target="*__上限アップ成功" cond="f.j >= tf.rand"]


[_tb_end_tyrano_code]

*__上限アップ失敗

[playse  volume="100"  time="1000"  buf="1"  storage="えっち系/射精音02.mp3"  ]
[call  storage="__Main_Night_Option.ks"  target="*__中射精エフェクト"  ]
[stopse  time="1000"  buf="0"  ]
[playse  volume="100"  time="1000"  buf="3"  storage="風俗声/9_吐息2-edited-2025-09-07T08-30-36.mp3"  loop="true"  ]
[chara_hide  name="H_風俗"  time="0"  wait="true"  pos_mode="false"  ]
[tb_start_text mode=1 ]
#
The pleasure was too much, and I couldn't hold back, blowing my load completely.[p]
#Lady
Ehh, already done?[p]
Hmm, you're a hopeless [emb exp="f.Oni_Name3"].[p]
Do better next time, okay?[p]
・・・[p]
#

[_tb_end_text]

[stopse  time="1000"  buf="3"  ]
[tb_start_tyrano_code]
;童貞卒業
[if exp="f.Oni_Ero == 0"]
[eval exp="f.Oni_Ero += 1"]
I lost my virginity!![l]
[notice color=black top=150 right=0 height=45 width=150 size=15 text="Sex Skill + 1" wait=false wait_time=2000]
[endif]
[_tb_end_tyrano_code]

[jump  storage="_Buy_Item.ks"  target="*__ソープ精力あり"  ]
*__上限アップ成功

[tb_start_text mode=1 ]
#&f.Oni_Name3
I'm not gonna lose!![p]
#
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="3"  storage="風俗声/16_喘ぎ声（大）1-edited-2025-09-07T08-30-46.mp3"  loop="true"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="ピストン系/風俗ピストン03調整版.mp3"  loop="true"  ]
[chara_mod  name="H_風俗"  time="0"  cross="false"  storage="chara/21/風俗カット03.png"  ]
[tb_start_text mode=1 ]
#Lady
Ehh・・・ Ahh[heart][p]
Wow・・・ it's so intense![p]
Ahhh!![p]
Ahh・・・ ngh・・・ aha[heart][p]
#
I thrust my hips frantically, pushing right to the edge!![p]
#Lady
Mmh・・・ mmmh[heart][p]
Amazing・・・ So good![p]
Ah[heart]!![p]
Ahaa・・・ mmh・・・ aaaaah[heart]!![p]
Aaaaaaah[heart]!![p]
#
[_tb_end_text]

[stopse  time="1000"  buf="3"  ]
[playse  volume="100"  time="1000"  buf="1"  storage="えっち系/射精音02.mp3"  ]
[call  storage="__Main_Night_Option.ks"  target="*__中射精エフェクト"  ]
[stopse  time="1000"  buf="0"  ]
[chara_hide  name="H_風俗"  time="0"  wait="true"  pos_mode="false"  ]
[playse  volume="100"  time="1000"  buf="3"  storage="風俗声/9_吐息2-edited-2025-09-07T08-30-36.mp3"  loop="true"  ]
[tb_start_text mode=1 ]
#
I ended up cumming・・・[p]
#Lady
Haa・・・ haa・・・[p]
Haa・・・ haa・・・[p]
Hehe♪[p]
It's good, so good! It feels amazing[heart][p]
I'm a little satisfied now.[p]
Make sure to request me again, Onii-san♪[p]
#
・・・[p]
[_tb_end_text]

[stopse  time="1000"  buf="3"  ]
[tb_eval  exp="f.H_Fuzoku_Flag+=1"  name="H_Fuzoku_Flag"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_start_tyrano_code]
;童貞卒業
[if exp="f.Oni_Ero == 0"]
[eval exp="f.Oni_Ero += 1"]
I lost my virginity!![p]
[notice color=black top=150 right=0 height=45 width=150 size=15 text="Sex Skill + 1" wait=false wait_time=2000]
[endif]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;精力アップ処理
[if exp="f.Sys_Seiryoku_Max < 9"]
[eval exp="f.Sys_Seiryoku_Max += 1"]
My energy increased!![p]
[notice color=black top=200 right=0 height=45 width=150 size=15 text="Max Energy + 1" wait=false wait_time=2000]
[endif]
[_tb_end_tyrano_code]

[jump  storage="_Buy_Item.ks"  target="*__ソープ精力あり"  ]
[s  ]
*__上限アップ感度3以上

[tb_show_message_window  ]
[playse  volume="100"  time="1000"  buf="3"  storage="風俗声/9_吐息2-edited-2025-09-07T08-30-36.mp3"  loop="true"  ]
[tb_start_text mode=1 ]
#Lady
Yeah, yeah, I'll do my best to manage your ejaculations, Onii-san[heart][p]
Ehehe♪[p]
Rub your dick inside me lots, okay?[p]
#
She slowly inserted my dick while stroking it, lowering her hips onto me.[p]
#
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="えっち系/挿入音01.mp3"  ]
[tb_start_text mode=1 ]
#Lady
Mmh[heart]・・・[p]
Just as I thought・・・ i-it's big[heart][heart][heart][p]
#
She's tight inside, squeezing my dick from every direction.[p]
My huge dick reaches her womb and pushes up against it.[p]
#Lady
Anh[heart][p]
It feels good[heart][p]
#
[_tb_end_text]

[chara_show  name="H_風俗"  time="1000"  wait="true"  storage="chara/21/風俗カット02.png"  width="560"  height="670"  left="360"  top="50"  ]
[playse  volume="100"  time="1000"  buf="3"  storage="風俗声/14_喘ぎ声（中）1-edited-2025-09-07T08-30-41.mp3"  loop="true"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="ピストン系/風俗ピストン02調整版.mp3"  loop="true"  ]
[tb_start_text mode=1 ]
#Lady
Ah[heart]・・ Ah[heart][p]
Nnngh[heart]・・・ amazing[heart][p]
It's・・・ so・・・ goood[heart][heart][heart][p]
#
Enjoying her as she keeps writhing on top of me, I thrust up from below.[p]
Feeling the warmth of her pussy, I keep thrusting so I don't cum.[p]
Hold it・・・ hold it back.[p]
#Lady
Ah[heart]・・ Ah[heart][p]
Aaah[heart][p]
I'm・・・ I'm cumming・・・ it's amazing[heart][p]
Aaaaah[heart][p]
#
[_tb_end_text]

[stopse  time="1000"  buf="0"  ]
[playse  volume="100"  time="1000"  buf="3"  storage="風俗声/9_吐息2-edited-2025-09-07T08-30-36.mp3"  loop="true"  ]
[chara_hide_all  time="1000"  wait="true"  ]
[tb_start_text mode=1 ]
#
The girl climaxes immediately on top of my hips.[p]
Her body twitches and she collapses, clinging to me.[p]
#Lady
Ah[heart]・・・ haa・・・ haa・・・[p]
Hauuu・・・ ah[heart][heart][heart][p]
#&f.Oni_Name3
Cumming first・・・ seriously?[p]
#
Since she stopped moving with me still inside her, I tap against her womb with the head of my dick in protest.[p]
#
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="えっち系/挿入音01.mp3"  ]
[playse  volume="100"  time="1000"  buf="3"  storage="風俗声/13_喘ぎ声（小）4-edited-2025-09-07T08-30-40.mp3"  loop="true"  ]
[tb_start_text mode=1 ]
#Lady
S-sorry・・・ ah[heart][p]
#
-Knock, knock.[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="えっち系/挿入音01.mp3"  ]
[tb_start_text mode=1 ]
#Lady
It's so・・・ good[heart]・・・ ah[heart][p]
#&f.Oni_Name3
What's so amazing?[p]
#
-Knock・・・ knock・・・ squish.[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="えっち系/挿入音01.mp3"  ]
[tb_start_text mode=1 ]
#Lady
O-Onii-san's・・・ dick is・・・ ah[heart][p]
The way your dick thrusts is amazing[heart]・・・. ah[heart][p]
#
I keep knocking against her womb in protest.[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="えっち系/挿入音01.mp3"  ]
[tb_start_text mode=1 ]
#Lady
I-I'll move soon・・・ ah[heart][p]

[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="えっち系/挿入音01.mp3"  ]
[tb_start_text mode=1 ]
#Lady
S-sorry・・・ ah[heart][p]
#
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="えっち系/挿入音01.mp3"  ]
[tb_start_text mode=1 ]
#Lady
Ah[heart]・・・ I'm moviiing[heart][heart][heart][p]
#
Saying that, I sit up and start moving my hips wildly.[p]
[_tb_end_text]

[intrandom_ko10panda  max="99"  count="1"  show_result="false"  show_style="style_a"  show_detail="false"  detail_length="1"  show_log="log_2"  var_name="tf.rand"  ]
[tb_start_tyrano_code]
;成功率でジャンプ
[jump target="*__上限アップ成功感度3" cond="f.j >= tf.rand"]


[_tb_end_tyrano_code]

*__上限アップ失敗感度3

[chara_show  name="H_風俗"  time="1000"  wait="true"  storage="chara/21/風俗カット02.png"  width="560"  height="670"  left="360"  top="50"  ]
[playse  volume="100"  time="1000"  buf="3"  storage="風俗声/14_喘ぎ声（中）1-edited-2025-09-07T08-30-41.mp3"  loop="true"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="ピストン系/風俗ピストン02調整版.mp3"  loop="true"  ]
[tb_start_text mode=1 ]
#Lady
Aaah[heart][p]
Ah・・・ah・・・Aaaah[heart][p]
#
She moves her hips frantically.[p]
However, perhaps she doesn't have much stamina left, as her movements lack energy.[p]
#Lady
No[heart][p]
Ah・・・ I'm cumming again[heart][p]
Aaah[heart][p]
Ah・・・ ah・・・ aaaaah[heart][heart][heart][p]

[_tb_end_text]

[stopse  time="1000"  buf="3"  ]
[stopse  time="1000"  buf="0"  ]
[playse  volume="100"  time="1000"  buf="1"  storage="えっち系/射精音02.mp3"  ]
[call  storage="__Main_Night_Option.ks"  target="*__中射精エフェクト"  ]
[chara_hide  name="H_風俗"  time="0"  wait="true"  pos_mode="false"  ]
[tb_start_text mode=1 ]
#
-Squirt・・・ Squirt・・・[p]
Gush・・・ Splurt・・・[p]
Helplessly, I cum in time with the Girl.[p]
#Lady
Hii[heart]・・・Ahh[heart][p]
#
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="3"  storage="風俗声/9_吐息2-edited-2025-09-07T08-30-36.mp3"  loop="true"  ]
[tb_start_text mode=1 ]
#Lady
Hah・・・hah・・・[p]
#
She collapses onto me, hugging me tight.[p]
#Lady
Hah・・hah・・・[p]
M-Mister, I'm sorry・・・[p]
I-I'll do better next time・・・ Please[p]
Next time・・・ please・・・ choose me[p]
Please・・・[p]
#
She buries her face in my chest and begs[p]
As I wonder what to do, she begs me again[p]
#Lady
I-I'll make your dick feel even better・・・ more lewdly[p]
P-Please・・・[p]
I'll do it properly next time[p]
#
I don't know what she liked so much about me[p]
I stroke her head[p]
#Lady
Th-Thank you・・[p]
I'll do my best next time・・・ you have to come back・・・[p]
Absolutely![p]
#
Good grief, I guess there are days like this・・・[p]
[_tb_end_text]

[stopse  time="1000"  buf="3"  ]
[jump  storage="_Buy_Item.ks"  target="*__ソープ精力あり"  ]
*__上限アップ成功感度3

[chara_show  name="H_風俗"  time="1000"  wait="true"  storage="chara/21/風俗カット03.png"  width="560"  height="670"  left="360"  top="50"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="ピストン系/風俗ピストン03調整版.mp3"  loop="true"  ]
[playse  volume="100"  time="1000"  buf="3"  storage="風俗声/16_喘ぎ声（大）1-edited-2025-09-07T08-30-46.mp3"  loop="true"  ]
[tb_start_text mode=1 ]
#Lady
Aaahn[heart][p]
Ohh[heart]・・・ Ahh[heart]・・・ Ohh[heart][p]
#
She moves her hips frantically[p]
The way she slams her hips is good, and I feel the urge to cum rising[p]
I grab her hips and thrust upwards rapidly as well[p]
#Lady
Ohh[heart][p]
So good[heart]・・・I'm cumming again[heart][p]
Ooh[heart]・・・So hard[heart][heart][p]
Ah[heart]・・・Ah[heart]・・・Aaaah[heart][heart][heart][p]
I gauge the edge of my limit and adjust the speed of my thrusts[p]
#Lady
Ooh[heart]・・・Ohh[heart][heart][p]
I'm cumming・・・I'm gonna cum[heart][heart][heart][p]
#
She rides me with a sloppy look on her face, drool dripping down[p]
To make her lose it even more, I thrust deeper and faster, keeping up the assault[p]
#Lady
It feels so good[heart]・・・Onii-san[heart][heart][p]
So good・・feels so good[heart][heart][p]
Your dick is so big[heart]・・・I'm gonna break[heart][heart][heart][p]
Ooooooh[heart][heart][p]
I'm cumming[heart][heart][heart][p]
I'm cumming・・・I'm gonna cum[heart][heart][heart][p]
Ooooh! Ooooh! Ooooh! Ooooh! Ooooh![heart][heart][heart][p]
#
[_tb_end_text]

[stopse  time="1000"  buf="3"  ]
[playse  volume="100"  time="1000"  buf="1"  storage="えっち系/射精音02.mp3"  ]
[call  storage="__Main_Night_Option.ks"  target="*__中射精エフェクト"  ]
[stopse  time="1000"  buf="0"  ]
[chara_hide  name="H_風俗"  time="0"  wait="true"  pos_mode="false"  ]
[tb_start_text mode=1 ]
#
Squiiirt・・・ splash・・・[p]
Splurt・・・ spurt・・・[p]
Even with a rubber on, I cum hard.[p]

[_tb_end_text]

[playse  volume="100"  time="1000"  buf="3"  storage="風俗声/9_吐息2-edited-2025-09-07T08-30-36.mp3"  loop="true"  ]
[tb_start_text mode=1 ]
#Lady
Haaah・・・ <3<3<3[p]
#
She collapses right onto my chest.[p]
She whispers to me while resting against my chest.[p]
#Lady
・・・Hah・・・ Hah・・・ <3[p]
#
[_tb_end_text]

[stopse  time="1000"  buf="3"  ]
[tb_start_text mode=1 ]
#Lady
Onii-san・・・ you really are wonderful・・・[p]
Hey, when will you come see me again?[p]
No, if it's you, it doesn't have to be at the shop・・・[p]
#&f.Oni_Name3
・・・[p]
#Lady
J・・・ just kidding.[p]
Just kidding, just kidding![p]
Well, come again, okay?[p]
Absolutely![p]
・・・[p]
#
[_tb_end_text]

[stopbgm  time="1000"  fadeout="true"  ]
[tb_eval  exp="f.H_Fuzoku_Flag+=1"  name="H_Fuzoku_Flag"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_start_tyrano_code]
;童貞卒業
[if exp="f.Oni_Ero == 0"]
[eval exp="f.Oni_Ero += 1"]
I lost my virginity!![p]
[notice color=black top=150 right=0 height=45 width=150 size=15 text="Sex Skill + 1" wait=false wait_time=2000]
[endif]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;精力アップ処理
[if exp="f.Sys_Seiryoku_Max < 9"]
[eval exp="f.Sys_Seiryoku_Max += 1"]
Energy increased!![p]
[notice color=black top=200 right=0 height=45 width=150 size=15 text="Max Energy + 1" wait=false wait_time=2000]
[endif]
[_tb_end_tyrano_code]

[jump  storage="_Buy_Item.ks"  target="*__ソープ精力あり"  ]
[s  ]
