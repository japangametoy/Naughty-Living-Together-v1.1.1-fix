[_tb_system_call storage=system/__Entrance.ks]

[tb_eval  exp="f.Sta_Suki=50"  name="Sta_Suki"  cmd="="  op="t"  val="50"  val_2="undefined"  ]
[tb_eval  exp="f.Sys_Syume=1"  name="Sys_Syume"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.Live_roter_first=0"  name="Live_roter_first"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.Sta_Risei=0"  name="Sta_Risei"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
*__月曜見送り

[tb_start_tyrano_code]
[playbgm  volume="20"  time="500"  loop="true"  storage="PerituneMaterial_Sea_Breeze_loop.mp3"  fadein="true" restart="false" ]
[_tb_end_tyrano_code]

[call  storage="Main_Sta.ks"  target="*__メインステ表示"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="靴を履く.mp3"  ]
[bg  time="500"  method="crossfade"  storage="玄関01.png"  ]
[mask_off  time="300"  effect="slideOutLeft"  ]
[bg  time="1000"  method="crossfade"  storage="玄関02.png"  ]
[chara_hide_all  time="0"  wait="true"  ]
[chara_show  name="さくら_玄関"  time="1000"  wait="true"  storage="chara/18/玄関送り01.png"  width="560"  height="670"  left="360"  top="50"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Then I'm off to school.[p]
#&f.Oni_Name3
Yeah, take care.[p]
Did you forget anything?[p]
#&f.Imo_Name
・・・[p]
#
[_tb_end_text]

[jump  storage="_Entrance.ks"  target="*__何もなし"  cond="f.Sta_Suki<15"  ]
[chara_mod  name="さくら_玄関"  time="500"  cross="false"  storage="chara/18/玄関送り03.png"  ]
[tb_start_tyrano_code]
;好感度によって分岐

[if exp="f.Sta_Suki >= 15 && f.Sta_Suki <50" ]
[jump target="*__頭なでる"]
[elsif exp="f.Sta_Suki >=50"]

[if exp="f.Sta_Risei > 60"]
[jump target="*__抱き着く"]

[elsif exp="f.Sta_Risei <= 60 && f.Sta_Risei > 30"]
[jump target="*__キス"]

[elsif exp="f.Sta_Risei <= 30"]
[jump target="*__キス理性なし"]

[endif]
[else]
[jump target="*__何もなし"]
[endif]
[_tb_end_tyrano_code]

*__何もなし

[chara_mod  name="さくら_玄関"  time="0"  cross="false"  storage="chara/18/玄関送り02.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Yeah, I'm fine.[p]
#&f.Oni_Name3
Is that so?[p]
#
[_tb_end_text]

[jump  storage="_Entrance.ks"  target="*__お見送り"  cond="f.Sys_Syume>1"  ]
[chara_mod  name="さくら_玄関"  time="0"  cross="false"  storage="chara/18/玄関送り04.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Ugh, I'm nervous about the new school.[p]
#&f.Oni_Name3
You'll make friends in no time, [emb exp="f.Imo_Name"].[p]
#&f.Imo_Name
Hmm, my usual shyness might kick in.[p]
If I don't fit in, I might just become a shut-in.[p]
#&f.Oni_Name3
Hahaha, with that attitude, you'll be fine.[p]
#
[_tb_end_text]

[chara_mod  name="さくら_玄関"  time="0"  cross="false"  storage="chara/18/玄関送り05.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Geez, I'm really nervous, you know.[p]
[_tb_end_text]

[chara_mod  name="さくら_玄関"  time="0"  cross="false"  storage="chara/18/玄関送り01.png"  ]
[tb_start_text mode=1 ]
・・・[p]
[_tb_end_text]

[chara_mod  name="さくら_玄関"  time="0"  cross="false"  storage="chara/18/玄関送り02.png"  ]
[tb_start_text mode=1 ]
Well then・・・[p]
[_tb_end_text]

[jump  storage="_Entrance.ks"  target="*__お見送り"  cond=""  ]
*__頭なでる

[tb_start_text mode=1 ]
#&f.Imo_Name
Um・・・ well・・・[p]
I kinda want you to pat my head.[p]
#&f.Oni_Name3
Yeah, sure.[p]
#
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="えっち系/衣擦れ3.mp3"  ]
[individual_image  layer="1"  zindex="1"  storage="default/玄関カット/玄関カット01.png"  width="250"  height="200"  name="gen01"  x="630"  y="284"  _clickable_img=""  time="500"  wait="true"  ]
[intrandom_ko10panda  max="4"  count="1"  show_result="false"  show_style="style_a"  show_detail="false"  detail_length="0"  show_log="log_2"  var_name="tf.rand"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
・・・[p]
[_tb_end_text]

[tb_start_tyrano_code]
;ランダム値による分岐
[switch exp="tf.rand"]
[case is=0]
Aha♪[p]
[case is=1]
Ehehe♪[p]
[case is=2]
Hehe♪[p]
I feel energized.[p]
[case is=3]
Ehe, [emb exp="f.Oni_Name3"]'s hands are so big♪[p]
・・・[p]
[case is=4]
Aha♪[p]
[endswitch]
#
[_tb_end_tyrano_code]

[delete_individual_image  layer="1"  name="gen01"  time="500"  wait="true"  ]
[chara_mod  name="さくら_玄関"  time="600"  cross="false"  storage="chara/18/玄関送り02.png"  ]
[jump  storage="_Entrance.ks"  target="*__お見送り"  ]
*__抱き着く

[playse  volume="100"  time="1000"  buf="0"  storage="えっち系/衣擦れ2.mp3"  ]
[individual_image  layer="1"  zindex="1"  storage="default/玄関カット/玄関カット02.png"  width="400"  height="500"  time="500"  name="gen02"  wait="true"  x="500"  y="150"  _clickable_img=""  ]
[intrandom_ko10panda  max="3"  count="1"  show_result="false"  show_style="style_a"  show_detail="false"  detail_length="0"  show_log="log_2"  var_name="tf.rand"  ]
[tb_start_tyrano_code]
;反応ランダム
[switch exp="tf.rand"]
[case is=0]
#&f.Imo_Name
Ehehe[p]
#
She hugged me tightly with her slender arms.[p]
#&f.Imo_Name
・・・[p]
Just a little longer.[p]
・・・[p]
#
I can feel the sensation of her soft breasts and warm body temperature through her clothes.[p]
Is that the smell of hair conditioner?[p]
She smells really good・・・[p]
・・・[p]

[case is=1]
#&f.Imo_Name
Ehehe[p]
#
She hugged me tightly with her slender arms.[p]
#&f.Imo_Name
・・・[p]
Just a little longer.[p]
・・・[p]
#
I can feel the sensation of her soft breasts and warm body temperature through her clothes.[p]
Is that the smell of hair conditioner?[p]
She smells really good・・・[p]
・・・[p]

[case is=2]
#&f.Imo_Name
Ei![p]
#
She hugged me tightly with her slender arms.[p]
#&f.Imo_Name
・・・[p]
Aha![p]
[emb exp="f.Oni_Name3"]～♪[p]
・・・[p]
#
I can feel the sensation of her soft breasts and warm body temperature through her clothes.[p]
[emb exp="f.Imo_Name"] hugs me even tighter.[p]
#&f.Imo_Name
Ehehe♪[p]
・・・[p]
#

[case is=3]
#&f.Imo_Name
・・・[p]
・・・[p]
#
She hugged me, her ears turning bright red.[p]
I feel her breath, sounding a little nervous.[p]
#&f.Oni_Name3
・・・
You're cute today too, [emb exp="f.Imo_Name"].[p]
#
I hug [emb exp="f.Imo_Name"] tightly.[p]
#&f.Imo_Name
・・Mmm!?[p]
Ah・・・[p]
・・・Ehehe[p]
・・・[p]
#
[endswitch]

[_tb_end_tyrano_code]

[delete_individual_image  layer="1"  time="500"  name="gen02"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Yeah, I feel energized now.[p]
#
[_tb_end_text]

[chara_mod  name="さくら_玄関"  time="600"  cross="false"  storage="chara/18/玄関送り02.png"  ]
[jump  storage="_Entrance.ks"  target="*__お見送り"  ]
*__キス

[intrandom_ko10panda  max="3"  count="1"  show_result="false"  show_style="style_a"  show_detail="false"  detail_length="0"  show_log="log_2"  var_name="tf.rand"  ]
[tb_start_tyrano_code]
;反応ランダム
[switch exp="tf.rand"]
[case is=1]
[_tb_end_tyrano_code]

[chara_mod  name="さくら_玄関"  time="600"  cross="false"  storage="chara/18/玄関送り03.png"  ]
[tb_start_text mode=1 ]
#
[emb exp="f.Imo_Name"] blushes and approaches me.[p]
#&f.Imo_Name
Mmm・・・[p]
#
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="えっち系/キス02.mp3"  ]
[individual_image  layer="1"  zindex="1"  storage="default/玄関カット/玄関カット03.png"  width="250"  height="200"  name="gen03"  time="500"  wait="true"  x="640"  y="230"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
・・・[p]
・・・[p]
#
[_tb_end_text]

[delete_individual_image  layer="1"  time="500"  wait="true"  name="gen03"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
・・・Ehehe[p]
#
After the kiss, she looks down and fidgets.[p]
・・・She's cute today too.[p]
[_tb_end_text]

[jump  storage="_Entrance.ks"  target="*__お見送り"  ]
[tb_start_tyrano_code]
[case is=2]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
#
[emb exp="f.Imo_Name"] blushes and approaches me.[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="えっち系/衣擦れ2.mp3"  ]
[individual_image  layer="1"  zindex="1"  storage="default/玄関カット/玄関カット02.png"  width="400"  height="500"  time="500"  name="gen02"  wait="true"  x="500"  y="150"  _clickable_img=""  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Ehehe[p]
#
I feel [emb exp="f.Imo_Name"]'s body temperature as she hugs me tight.[p]
She's so slender that I feel like she might break if I use any strength.[p]
#&f.Imo_Name
Hey, [emb exp="f.Oni_Name3"]・・・[p]
[emb exp="f.Oni_Name3"], aren't you the one forgetting something?[p]

#&f.Oni_Name3
Forget something? ・・・Ah.[p]
#
Realizing that her face pressed against my chest is red to the ears,[p]
I place my hand under [emb exp="f.Imo_Name"]'s chin and gently tilt her head up.[p]
#&f.Imo_Name
Mmm・・・[p]
#
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="えっち系/キス02.mp3"  ]
[individual_image  layer="1"  zindex="1"  storage="default/玄関カット/玄関カット03.png"  width="250"  height="200"  name="gen03"  time="500"  wait="true"  x="640"  y="230"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
・・・[p]
・・・[p]
#

[_tb_end_text]

[delete_individual_image  layer="1"  time="500"  wait="true"  name="gen03"  ]
[tb_start_text mode=1 ]
#&f.Oni_Name3
Have a good day.[p]
#
After the kiss, I whispered that in her ear.[p]
#&f.Imo_Name
Hya, hyaa![p]
[_tb_end_text]

[delete_individual_image  layer="1"  time="500"  wait="true"  name="gen02"  ]
[chara_mod  name="さくら_玄関"  time="600"  cross="false"  storage="chara/18/玄関送り03.png"  ]
[tb_start_text mode=1 ]
#
[emb exp="f.Imo_Name"] backed away from me, retreating all the way to the door[p]
#&f.Imo_Name
・・・[p]
F, fuu-[p]
I- I get embarrassed when you actually do it[p]
#&f.Oni_Name3
Did it please you?[p]
#
[_tb_end_text]

[chara_mod  name="さくら_玄関"  time="600"  cross="false"  storage="chara/18/玄関送り02.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Ehehe, 100 points![p]
#&f.Oni_Name3
Thanks for that[p]
#
[_tb_end_text]

[jump  storage="_Entrance.ks"  target="*__お見送り"  ]
[tb_start_tyrano_code]
[case is=3]
[_tb_end_tyrano_code]

[chara_mod  name="さくら_玄関"  time="600"  cross="false"  storage="chara/18/玄関送り03.png"  ]
[tb_start_text mode=1 ]
#
[emb exp="f.Imo_Name"] blushes and approaches me[p]
#&f.Imo_Name
Nn・・・[p]
#
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="えっち系/キス02.mp3"  ]
[individual_image  layer="1"  zindex="1"  storage="default/玄関カット/玄関カット03.png"  width="250"  height="200"  name="gen03"  time="500"  wait="true"  x="640"  y="230"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
・・・[p]
・・・[p]
#
[_tb_end_text]

[delete_individual_image  layer="1"  time="500"  wait="true"  name="gen03"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
・・・[p]
#
She immediately averts her eyes, her face turning bright red, and trots away to the door[p]
#&f.Oni_Name3
[emb exp="f.Imo_Name"][p]
#
[_tb_end_text]

[chara_mod  name="さくら_玄関"  time="600"  cross="false"  storage="chara/18/玄関送り01.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
・・・Nn?[p]
#
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="えっち系/衣擦れ3.mp3"  ]
[individual_image  layer="1"  zindex="1"  storage="default/玄関カット/玄関カット01.png"  width="250"  height="200"  name="gen01"  x="630"  y="284"  _clickable_img=""  time="500"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Fwah[p]
#&f.Oni_Name3
You're cute today too[p]
#
[_tb_end_text]

[delete_individual_image  layer="1"  name="gen01"  time="500"  wait="true"  ]
[chara_mod  name="さくら_玄関"  time="600"  cross="false"  storage="chara/18/玄関送り03.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Ehehe[p]
I- I'm getting embarrassed[p]
#
[_tb_end_text]

[tb_start_tyrano_code]
[endswitch]
[_tb_end_tyrano_code]

[jump  storage="_Entrance.ks"  target="*__お見送り"  ]
*__キス理性なし

[intrandom_ko10panda  max="3"  count="1"  show_result="false"  show_style="style_a"  show_detail="false"  detail_length="0"  show_log="log_2"  var_name="tf.rand"  ]
[jump  storage="_Entrance.ks"  target="*__理性がある場合"  cond="f.Sta_Risei>0"  ]
[intrandom_ko10panda  max="6"  count="1"  show_result="false"  show_style="style_a"  show_detail="false"  detail_length="0"  show_log="log_2"  var_name="tf.rand"  ]
*__理性がある場合

[tb_start_tyrano_code]
;反応ランダム
[switch exp="tf.rand"]
[case is=1]
[_tb_end_tyrano_code]

[chara_mod  name="さくら_玄関"  time="600"  cross="false"  storage="chara/18/玄関送り03.png"  ]
[tb_start_text mode=1 ]
#
[emb exp="f.Imo_Name"] blushes and approaches me[p]
#&f.Imo_Name
Nn・・・[p]
#
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="えっち系/キス01.mp3"  ]
[individual_image  layer="1"  zindex="1"  storage="default/玄関カット/玄関カット04.png"  width="250"  height="200"  time="500"  wait="true"  name="gen04"  x="640"  y="230"  _clickable_img=""  ]
[tb_start_text mode=1 ]
#
[emb exp="f.Imo_Name"]'s soft tongue entwines with mine[p]
We exchange saliva while letting out sweet sighs over and over[p]
[_tb_end_text]

[delete_individual_image  layer="1"  name="gen04"  time="500"  wait="true"  ]
[chara_mod  name="さくら_玄関"  time="600"  cross="false"  storage="chara/18/玄関送り06.png"  ]
[stopse  time="1000"  buf="0"  ]
[tb_start_text mode=1 ]
#&f.Oni_Name3
・・・[emb exp="f.Imo_Name"][p]
#&f.Imo_Name
・・・[p]
More・・・[p]
#
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="えっち系/キス01.mp3"  ]
[individual_image  layer="1"  zindex="1"  storage="default/玄関カット/玄関カット04.png"  width="250"  height="200"  time="500"  wait="true"  name="gen04"  x="640"  y="230"  _clickable_img=""  ]
[tb_start_text mode=1 ]
#
[emb exp="f.Imo_Name"] sucks on my tongue even more, devouring and sucking it[p]
In return, I entwine my tongue with hers over and over, exchange saliva, and seal her lips[p]
#&f.Imo_Name
Nn![p]
・・・Nn![p]
#
[_tb_end_text]

[delete_individual_image  layer="1"  name="gen04"  time="500"  wait="true"  ]
[stopse  time="1000"  buf="0"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Hah・・hah・・・[p]
・・・I love you・・・[p]
#&f.Oni_Name3
Me too[p]
#&f.Imo_Name
・・・[p]
#
[_tb_end_text]

[chara_mod  name="さくら_玄関"  time="600"  cross="false"  storage="chara/18/玄関送り03.png"  ]
[jump  storage="_Entrance.ks"  target="*__お見送り"  ]
[tb_start_tyrano_code]
[case is=2]
[_tb_end_tyrano_code]

[chara_mod  name="さくら_玄関"  time="600"  cross="false"  storage="chara/18/玄関送り03.png"  ]
[tb_start_text mode=1 ]
#
[emb exp="f.Imo_Name"] blushes and approaches me[p]
#&f.Imo_Name
Nn・・・[p]
#
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="えっち系/キス01.mp3"  ]
[individual_image  layer="1"  zindex="1"  storage="default/玄関カット/玄関カット04.png"  width="250"  height="200"  time="500"  wait="true"  name="gen04"  x="640"  y="230"  _clickable_img=""  ]
[tb_start_text mode=1 ]
#
We exchange each other's saliva as if devouring one another[p]
I suck on [emb exp="f.Imo_Name"]'s tongue, entwining it with mine and caressing it[p]

[_tb_end_text]

[delete_individual_image  layer="1"  name="gen04"  time="500"  wait="true"  ]
[stopse  time="1000"  buf="0"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Hah・・・hah・・・[p]
#
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="えっち系/衣擦れ2.mp3"  ]
[individual_image  layer="1"  zindex="1"  storage="default/玄関カット/玄関カット02.png"  width="400"  height="500"  time="500"  name="gen02"  wait="true"  x="500"  y="150"  _clickable_img=""  ]
[tb_start_text mode=1 ]
#
We naturally draw closer and embrace each other tightly[p]
To increase our closeness, I slip my right leg between [emb exp="f.Imo_Name"]'s thighs[p]
[emb exp="f.Imo_Name"]'s back arches, and her face naturally turns toward me[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="えっち系/キス01.mp3"  ]
[individual_image  layer="1"  zindex="1"  storage="default/玄関カット/玄関カット04.png"  width="250"  height="200"  time="500"  wait="true"  name="gen04"  x="640"  y="230"  _clickable_img=""  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Nn・・・[p]
Nn・・・[p]
#
I can hear [emb exp="f.Imo_Name"]'s heartbeat[p]
[emb exp="f.Imo_Name"] squeezes my right leg tightly between her thighs and hugs me even tighter[p]

[_tb_end_text]

[delete_individual_image  layer="1"  name="gen04"  time="500"  wait="true"  ]
[chara_mod  name="さくら_玄関"  time="600"  cross="false"  storage="chara/18/玄関送り03.png"  ]
[stopse  time="1000"  buf="0"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Nn・・・hah・・・hah・・・・[p]
Hah・・・hah・・・[p]
#
I feel [emb exp="f.Imo_Name"]'s body temperature rising[p]
Her inner thighs might be getting a little sweaty・・・[p]
・・・[p]

[_tb_end_text]

[delete_individual_image  layer="1"  time="500"  name="gen02"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
・・・[p]
・・・[p]
[_tb_end_text]

[chara_mod  name="さくら_玄関"  time="600"  cross="false"  storage="chara/18/玄関送り03.png"  ]
[jump  storage="_Entrance.ks"  target="*__お見送り"  ]
[tb_start_tyrano_code]
[case is=3]
[_tb_end_tyrano_code]

[chara_mod  name="さくら_玄関"  time="600"  cross="false"  storage="chara/18/玄関送り03.png"  ]
[tb_start_text mode=1 ]
#
[emb exp="f.Imo_Name"] stands there, blushing, staying still in place[p]
#&f.Imo_Name
・・・[p]
#
Seeing her expression, I approach [emb exp="f.Imo_Name"] and place my hands against the door, with her between me and it[p]
I look down at [emb exp="f.Imo_Name"]'s face, red to her ears as she looks down, and press my lips against hers[p]
#

[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="えっち系/キス01.mp3"  ]
[individual_image  layer="1"  zindex="1"  storage="default/玄関カット/玄関カット04.png"  width="250"  height="200"  time="500"  wait="true"  name="gen04"  x="640"  y="230"  _clickable_img=""  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Nn・・・[p]
・・・Nnn![p]
#
Pressing down on her further, I push [emb exp="f.Imo_Name"] against the door, press our bodies together, and entwine our tongues[p]
#&f.Imo_Name
Nna・・・[p]
Ah・・・hah, hah[p]
Nn!![p]
#

[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="えっち系/キス01.mp3"  ]
[chara_mod  name="さくら_玄関"  time="0"  cross="false"  storage="chara/18/玄関送り06.png"  ]
[tb_start_text mode=1 ]
#
Each time our breath runs short, we separate our lips only to suck on each other again, kissing over and over[p]
#&f.Imo_Name
Nn・・・[p]
・・・Nnn・・・[p]
#
[_tb_end_text]

[delete_individual_image  layer="1"  name="gen04"  time="500"  wait="true"  ]
[stopse  time="1000"  buf="0"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Hah・・・hah・・・[p]
Hah・・・hah・・・[p]
#
After I pull away, [emb exp="f.Imo_Name"] fixes her disheveled hair with her hands[p]
Seeing that gesture, I feel my crotch grow hot, but I desperately hold myself back in this moment[p]
・・・[p]


[_tb_end_text]

[chara_mod  name="さくら_玄関"  time="600"  cross="false"  storage="chara/18/玄関送り03.png"  ]
[jump  storage="_Entrance.ks"  target="*__お見送り"  ]
[tb_start_tyrano_code]
[case is=4]
[_tb_end_tyrano_code]

[chara_mod  name="さくら_玄関"  time="600"  cross="false"  storage="chara/18/玄関送り03.png"  ]
[tb_start_text mode=1 ]
#
[emb exp="f.Imo_Name"] looks down with a shy smile, slowly approaches, stands on her tiptoes, and wraps both arms around my neck[p]

[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="えっち系/衣擦れ2.mp3"  ]
[individual_image  layer="1"  zindex="1"  storage="default/玄関カット/玄関カット02_1.png"  width="400"  height="500"  time="500"  name="gen02"  wait="true"  x="500"  y="150"  _clickable_img=""  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Mmh・・[p]
#
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="えっち系/キス01.mp3"  ]
[individual_image  layer="1"  zindex="1"  storage="default/玄関カット/玄関カット04.png"  width="250"  height="200"  time="500"  wait="true"  name="gen04"  x="640"  y="230"  _clickable_img=""  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Mmh・・kiss[p]
Mmh・・mmchuu・・・・kiss[p]
#
Forgetting we don't have much time in the morning, we exchange saliva.[p]
#&f.Imo_Name
Schlup・・schlup・・・schla[p]
Schlick・・・[p]
#
We press our lips together with the intensity to suck up each other's saliva.[p]

[_tb_end_text]

[delete_individual_image  layer="1"  name="gen04"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Mmhah・・・[p]
#
Seemingly satisfied at last, [emb exp="f.Imo_Name"] pulls her mouth away, and while hugging me, lowers her left hand to rub my crotch.[p]
#&f.Oni_Name3
Ngh[p]
#
Satisfied to confirm I was already a bit hard, she starts rubbing up and down over my clothes.[p]

[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="えっち系/衣擦れ3.mp3"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
It's getting energetic・・・[p]
[emb exp="f.Oni_Name3"]・・・I'm happy.[p]
Hehe♪[p]
#
Looking down, she wraps her hand around my shaft and balls and jerks them up and down.[p]
In return, I pull [emb exp="f.Imo_Name"] close, flip up her skirt, and squeeze her butt through her panties.[p]
#
[_tb_end_text]

[individual_image  layer="1"  zindex="1"  storage="default/玄関カット/尻カット01.png"  width="400"  height="300"  time="500"  wait="true"  name="尻"  x="470"  y="235"  _clickable_img=""  ]
[playse  volume="100"  time="1000"  buf="1"  storage="えっち系/衣擦れ2.mp3"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Mmh・・・ah・・・[p]
Ahn・・・mmh・・・[p]
Hah・・hah・・・[p]
Mmh・・・[p]
・・・[p]
・・・Uuh[p]
Waaah, I want to skip school like this・・・[p]
#
She says it bluntly while jerking my dick. Finding that gap amusing, I laugh a little and pull [emb exp="f.Imo_Name"]'s body away from mine.[p]
#
[_tb_end_text]

[chara_mod  name="さくら_玄関"  time="0"  cross="false"  storage="chara/18/玄関送り06.png"  ]
[delete_individual_image  layer="1"  name="尻"  time="600"  wait="true"  ]
[delete_individual_image  layer="1"  name="gen02"  time="600"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Oni_Name3
We can't do that. Let's do it plenty when you get back.[p]
#&f.Imo_Name
・・・Okay.[p]
#
[_tb_end_text]

[individual_image  layer="1"  zindex="1"  storage="default/玄関カット/玄関カット03.png"  width="250"  height="200"  time="500"  wait="true"  name="キス"  x="640"  y="230"  _clickable_img=""  ]
[playse  volume="100"  time="1000"  buf="0"  storage="えっち系/キス02.mp3"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Kiss[p]
#
[_tb_end_text]

[delete_individual_image  layer="1"  name="キス"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
・・・[p]
#
[_tb_end_text]

[jump  storage="_Entrance.ks"  target="*__お見送り"  ]
[tb_start_tyrano_code]
[case is=5]
[_tb_end_tyrano_code]

[chara_mod  name="さくら_玄関"  time="600"  cross="false"  storage="chara/18/玄関送り01.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Mmh-[p]
#
[_tb_end_text]

[chara_mod  name="さくら_玄関"  time="0"  cross="false"  storage="chara/18/玄関送り02.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
！[p]
Ehehe[p]
#
She hops over to my side, stands on her tiptoes, and whispers in my ear.[p]
#&f.Imo_Name
Hehe♪・・・[emb exp="f.Oni_Name3"][p]
Today・・・[p]
・・・I put on some naughty panties♪[p]
#&f.Oni_Name3
Eh!?[p]
#&f.Imo_Name
Ehehe, do you want to see?[p]
Look, look-[p]
#
She whispers to tease me and flutters her skirt.[p]
Her butt flesh and thighs flash right at the limit where her panties can't be seen.[p]
I imagine [emb exp="f.Imo_Name"]'s panties and my brain gets fried in an instant.[p]
#&f.Imo_Name
Hehe, just kidding.[p]
It's a joke♪[p]
#
Saying that, she tries to head for the door, but I hug her from behind.[p]

[_tb_end_text]

[chara_mod  name="さくら_玄関"  time="0"  cross="false"  storage="chara/18/玄関送り06.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Ah・・・[p]
#

[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="えっち系/衣擦れ3.mp3"  ]
[individual_image  layer="1"  zindex="1"  storage="default/玄関カット/紐パンカット01.png"  width="400"  height="300"  time="500"  wait="true"  name="紐パン"  x="470"  y="235"  _clickable_img=""  ]
[tb_start_text mode=1 ]
#
Acting on instinct, I flip up her skirt.[p]
#&f.Imo_Name
Mmh・・・[p]
#
There, she was wearing skimpy adult string panties with very little fabric.[p]
#&f.Imo_Name
N・・・no・・・[p]
#&f.Oni_Name3
[emb exp="f.Imo_Name"], you really are wearing naughty panties.[p]
#&f.Imo_Name
Mmh・・・[p]
#
Saying that, I admire them by stroking all over her panties.[p]
#&f.Oni_Name3
Cute・・・you're naughty, aren't you.[p]
#&f.Imo_Name
No・・・being seen like that・・・is embarrassing・・・[p]
#&f.Oni_Name3
You wanted to show me, didn't you?[p]
#&f.Imo_Name
T・・・that's not true・・・mmh[p]
#

[_tb_end_text]

[playse  volume="100"  time="1000"  buf="1"  storage="えっち系/衣擦れ4.mp3"  ]
[individual_image  layer="1"  zindex="1"  storage="default/玄関カット/紐パンカット02.png"  width="400"  height="300"  time="500"  wait="true"  name="紐パン"  x="470"  y="235"  _clickable_img=""  ]
[playse  volume="100"  time="1000"  buf="2"  storage="えっち系/吐息02.mp3"  ]
[tb_start_text mode=1 ]
#
#&f.Imo_Name
Ah・・・ahn[heart][p]
Mmh・・・[p]
#
I slip my hand under the string and stroke the root of her thigh.[p]
I trace my fingers along to her hip joint and stroke her groin.[p]
#&f.Imo_Name
N, no・・any more・・・and I'll get wet・・・[p]
#&f.Oni_Name3
That's right. Going to school while making a stain on your panties is pretty lewd.[p]
#
I ignore her and stroke her slit.[p]
・・・It's a little damp.[p]
#&f.Imo_Name
Ah・・・aah[p]
#&f.Oni_Name3
Hehe, your cute panties are going to get wet.[p]
#&f.Imo_Name
N・・・no・・・[p]
N-no more・・・ ah・・・ ahn[p]
#
She clings to me, begging.[p]
Since I have to go to work too, I hold back and let [emb exp="f.Imo_Name"] go.[p]
[_tb_end_text]

[delete_individual_image  layer="1"  name="紐パン"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Haa・・・ haa・・・[p]
Nn・・・[p]
#
I approach [emb exp="f.Imo_Name"], who is checking her crotch a bit, and kiss her.[p]

[_tb_end_text]

[stopse  time="1000"  buf="2"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="えっち系/キス01.mp3"  ]
[individual_image  layer="1"  zindex="1"  storage="default/玄関カット/玄関カット04.png"  width="250"  height="200"  time="500"  wait="true"  name="gen04"  x="640"  y="230"  _clickable_img=""  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Nnn・・・[p]
Nn・・・[p]
[_tb_end_text]

[stopse  time="1000"  buf="0"  ]
[delete_individual_image  layer="1"  name="gen04"  ]
[tb_start_text mode=1 ]
#&f.Oni_Name3
We'll continue this after I get back.[p]
You can't let anyone but me see your sexy panties, okay?[p]
#&f.Imo_Name
・・・Okay・・・[p]
#
She seemed a bit out of it, but she nodded slowly and fixed her appearance.[p]

[_tb_end_text]

[jump  storage="_Entrance.ks"  target="*__お見送り"  ]
[tb_start_tyrano_code]
[case is=6]
[_tb_end_tyrano_code]

[chara_mod  name="さくら_玄関"  time="600"  cross="false"  storage="chara/18/玄関送り02.png"  ]
[tb_start_text mode=1 ]
[emb exp="f.Imo_Name"] spreads her arms and runs over to me with a smile.[p]
#&f.Imo_Name
[emb exp="f.Oni_Name3"]～[p]
#
With that, she jumps at me almost like a tackle, wrapping her arms around my neck to hug me.[p]

[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="えっち系/衣擦れ2.mp3"  ]
[individual_image  layer="1"  zindex="1"  storage="default/玄関カット/玄関カット02_1.png"  width="400"  height="500"  time="500"  name="gen02"  wait="true"  x="500"  y="150"  _clickable_img=""  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Ehehe~[p]
#
She brings her face close to my neck and sniffs at it.[p]
#&f.Imo_Name
Huh?[p]
Hmm, you don't stink. Maybe it's the smell of soap.[p]
#&f.Oni_Name3
I'd be depressed if I smelled bad in the morning.[p]
#&f.Imo_Name
Ehehe, too bad.[p]
I wanted to smell [emb exp="f.Oni_Name3"]'s scent before going to school・・・[p]
#&f.Oni_Name3
Girls who say things like that need to be punished.[p]
#
Saying that, I reach my hands inside [emb exp="f.Imo_Name"]'s skirt, grab her butt firmly, and pull her close.[p]
[_tb_end_text]

[individual_image  layer="1"  zindex="1"  storage="default/玄関カット/尻カット01.png"  width="400"  height="300"  time="500"  wait="true"  name="尻"  x="470"  y="235"  _clickable_img=""  ]
[playse  volume="100"  time="1000"  buf="1"  storage="えっち系/衣擦れ2.mp3"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Ahn[heart][p]
Aha♪[p]
#
Our hips press together, and our crotches overlap.[p]
#&f.Imo_Name
・・・Nn[heart][p]
#
Even so, I massage her soft butt and pull her forcefully against me.[p]
#&f.Imo_Name
Nn・・・[p]
#
[emb exp="f.Imo_Name"] stands on her tiptoes.[p]
My dick starts to get a little hard, rubbing against [emb exp="f.Imo_Name"]'s pussy.[p]
#&f.Imo_Name
Ah・・・ nn・・・[p]
#

[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="えっち系/衣擦れ2.mp3"  ]
[tb_start_text mode=1 ]
#
She tightens her arms around my neck, pulls her face close, and kisses my neck.[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="1"  storage="えっち系/キス01.mp3"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Nn・・・ kiss・・・[p]
Kiss・・・[p]
#&f.Oni_Name3
[emb exp="f.Imo_Name"]？[p]
#

[_tb_end_text]

[chara_mod  name="さくら_玄関"  time="0"  cross="false"  storage="chara/18/玄関送り06.png"  ]
[stopse  time="1000"  buf="1"  ]
[delete_individual_image  layer="1"  name="尻"  ]
[delete_individual_image  layer="1"  name="gen02"  ]
[tb_start_text mode=1 ]
#
She quickly slips away from my hands, blushing, and fixes her skirt.[p]


[_tb_end_text]

[chara_mod  name="さくら_玄関"  time="600"  cross="false"  storage="chara/18/玄関送り02.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Ehehe~[p]
I got payback・・・ for your payback♪[p]
#
I quickly touch my neck.[p]
#&f.Oni_Name3
No way.[p]
#&f.Imo_Name
E-hehe♪[p]
I left a hickey♪[p]
#&f.Oni_Name3
Wha!?[p]
#&f.Imo_Name
No cheating, [emb exp="f.Oni_Name3"]♪[p]
#&f.Oni_Name3
You little・・・[p]
#&f.Imo_Name
Ehehe~[p]
#
[emb exp="f.Imo_Name"] dances around happily and returns to the entrance.[p]

[_tb_end_text]

[jump  storage="_Entrance.ks"  target="*__お見送り"  ]
[tb_start_tyrano_code]
[endswitch]
[_tb_end_tyrano_code]

*__お見送り

[tb_start_text mode=1 ]
#&f.Imo_Name
・・・I'm off.[p]
#&f.Oni_Name3
Yeah, see you later.[p]
#
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="ドアを開ける1.mp3"  ]
[chara_hide_all  time="1000"  wait="true"  ]
[wait  time="1000"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="ドアを閉める3.mp3"  ]
[bg  time="0"  method="crossfade"  storage="玄関01.png"  ]
[tb_start_text mode=1 ]
#&f.Oni_Name3
・・・[p]
Phew.[p]
#
Well, time for me to go to work too.[p]
[_tb_end_text]

[jump  storage="Tre_Select.ks"  target="*__見送り後トレーニング処理"  ]
[s  ]
*__ライブ前

[mask  time="300"  effect="fadeIn"  color="0x000000"  ]
[tb_image_hide  time="0"  ]
[call  storage="Main_Sta.ks"  target="*__メインステ表示"  ]
[chara_hide_all  time="0"  wait="false"  ]
[tb_start_tyrano_code]
[playbgm  volume="30"  time="500"  loop="true"  storage="調整版.mp3"  fadein="true" restart="false" ]
[_tb_end_tyrano_code]

[playse  volume="100"  time="1000"  buf="0"  storage="靴を履く.mp3"  ]
[bg  time="0"  method="crossfade"  storage="玄関01.png"  ]
[mask_off  time="300"  effect="fadeOut"  ]
[bg  time="1000"  method="crossfade"  storage="玄関02.png"  ]
[chara_show  name="さくら_玄関"  time="1000"  wait="true"  storage="chara/18/玄関送り11.png"  width="560"  height="670"  left="360"  top="50"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Then I'm going to work too.[p]
#
[_tb_end_text]

[tb_start_tyrano_code]
;ローター分岐処理　理性0　ファン数3万以上　会話ID34既読済
[jump target="*__理性0ファン3万" cond=" f.Sta_Risei == 0 && f.Fan >= 30000 && f.talks[34].flag && f.talks[34].read"]


[_tb_end_tyrano_code]

*__通常ルート

[tb_start_text mode=1 ]
#&f.Oni_Name3
Yeah, take care.[p]
I'm rooting for you.[p]
#
[_tb_end_text]

[chara_mod  name="さくら_玄関"  time="0"  cross="false"  storage="chara/18/玄関送り12.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Yeah![p]
I'll do my best![p]
#
[_tb_end_text]

[tb_start_text mode=1 ]
#&f.Imo_Name
・・・I'm off.[p]
#&f.Oni_Name3
Yeah, see you later.[p]
#
[_tb_end_text]

[jump  storage="_Entrance.ks"  target="*__分岐処理後"  ]
*__理性0ファン3万

[jump  storage="_Entrance.ks"  target="*__遠隔ローター2回目"  cond="f.Live_roter_first>1"  ]
[font  size="18"  color="0x000000"  face="JKG-M_3"  bold="true"  ]
[tb_start_tyrano_code]
;妹クリック後　選択肢
[glink  color="btn_05_black"  storage="_Entrance.ks"  size="25"  x="530"  y="200"  width="250"  height="50"  text="Attach remote rotor"  target="*__遠隔ローター" enterse="マウスオーバー.mp3"  clickse="決定ボタンを押す53.mp3" ]
[glink  color="btn_05_black"  storage="_Entrance.ks"  size="25"  x="530"  y="300"  width="250"  height="50"  text="See her off normally"  target="*__通常ルート" enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3" ]
[_tb_end_tyrano_code]

[resetfont  ]
[s  ]
*__遠隔ローター

[tb_start_text mode=1 ]
#&f.Oni_Name3
[emb exp="f.Imo_Name"], we were going to train you to be more seductive, right?[p]
#
[_tb_end_text]

[individual_image  layer="1"  zindex="1"  storage="default/ローター.png"  width="300"  height="248"  x="820"  y="80"  _clickable_img=""  name="ローター"  ]
[tb_start_text mode=1 ]
#&f.Oni_Name3
I'm putting this on you.[p]
Lift your skirt.[p]
#

[_tb_end_text]

[chara_mod  name="さくら_玄関"  time="0"  cross="false"  storage="chara/18/玄関送り14.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
O・・・ okay・・・[p]
#

[_tb_end_text]

[delete_individual_image  layer="1"  name="ローター"  ]
[individual_image  layer="1"  zindex="1"  name="ローター"  storage="default/ローターカット01.png"  width="400"  height="300"  x="440"  y="300"  _clickable_img=""  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
It's a bit thrilling・・・[p]
#
I slip my hand into her panties and position the remote rotor against her clit and the entrance to her pussy.[p]
[_tb_end_text]

[individual_image  layer="1"  zindex="1"  name="ローター"  storage="default/ローターカット03.png"  width="400"  height="300"  x="440"  y="300"  _clickable_img=""  ]
[playse  volume="100"  time="1000"  buf="0"  storage="えっち系/衣擦れ3.mp3"  ]
[chara_mod  name="さくら_玄関"  time="0"  cross="false"  storage="chara/18/玄関送り15.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Hyah![p]
Mmh・・・ nnh・・・[p]
This is・・・[p]
#&f.Oni_Name3
Let's take it for a little test run.[p]
#
Switch on.[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  loop="true"  storage="えっち系/バイブ挿入ピストン強・遅15_Audio_Trimmer.mp3"  ]
[chara_mod  name="さくら_玄関"  time="0"  cross="false"  storage="chara/18/玄関送り13.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Hyaaah![p]
#
[_tb_end_text]

[chara_mod  name="さくら_玄関"  time="0"  cross="false"  storage="chara/18/玄関送り16.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Ah・・・ ah・・・ nnh・・・[p]
#
Switch off.[p]
[_tb_end_text]

[stopse  time="1000"  buf="0"  ]
[delete_individual_image  layer="1"  name="ローター"  ]
[chara_mod  name="さくら_玄関"  time="0"  cross="false"  storage="chara/18/玄関送り13.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Wait・・・ will I be okay with this?[p]
#&f.Oni_Name3
If you take it off halfway, the effect wears off, so let's try to stick with it, just for today.[p]
#
[_tb_end_text]

[chara_mod  name="さくら_玄関"  time="0"  cross="false"  storage="chara/18/玄関送り15.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Hmm・・・ if it's just for today.[p]
#&f.Oni_Name3
Don't let it show on your face.[p]
Enduring it is what brings out the sexiness.[p]
#
[_tb_end_text]

[chara_mod  name="さくら_玄関"  time="0"  cross="false"  storage="chara/18/玄関送り11.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
O-okay, I'll do my best![p]
#&f.Oni_Name3
Yeah, have a good one.[p]
#
#&f.Imo_Name
I'm off・・・[p]
#
[_tb_end_text]

[chara_mod  name="さくら_玄関"  time="0"  cross="false"  storage="chara/18/玄関送り15.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
・・・Ugh・・・ I'm getting all pigeon-toed・・・ I might not be able to walk right.[p]
#&f.Oni_Name3
That's another point that adds to the sexiness.[p]
#
[_tb_end_text]

[chara_mod  name="さくら_玄関"  time="0"  cross="false"  storage="chara/18/玄関送り13.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Heeh, I see.[p]
#
I smile wryly as I watch [emb exp="f.Imo_Name"] taking a genuine interest in that.[p]
#&f.Oni_Name3
Come on, go. I'll be watching properly from the audience.[p]
#

[_tb_end_text]

[chara_mod  name="さくら_玄関"  time="0"  cross="false"  storage="chara/18/玄関送り14.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Okay, I'm off![p]
#

[_tb_end_text]

[tb_eval  exp="f.Live_roter_On=1"  name="Live_roter_On"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.Live_roter_first=1"  name="Live_roter_first"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="_Entrance.ks"  target="*__分岐処理後"  ]
*__遠隔ローター2回目

[tb_start_tyrano_code]
[if exp=" f.Sta_Risei == 0 && f.Fan >= 400000 && f.Live_roter_first > 1""]
[jump target="*__理性0ファン40万"]
[endif]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;妹クリック後　選択肢
[glink  color="btn_05_black"  storage="_Entrance.ks"  size="25"  x="530"  y="200"  width="250"  height="50"  text="Attach remote rotor"  target="*__遠隔ローター装着2回目" enterse="マウスオーバー.mp3"  clickse="決定ボタンを押す53.mp3" ]
[glink  color="btn_05_black"  storage="_Entrance.ks"  size="25"  x="530"  y="300"  width="250"  height="50"  text="See her off normally"  target="*__通常ルート" enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3" ]
[_tb_end_tyrano_code]

[s  ]
*__遠隔ローター装着2回目

[individual_image  layer="1"  zindex="1"  storage="default/ローター.png"  width="300"  height="248"  x="820"  y="80"  _clickable_img=""  name="ローター"  ]
[tb_start_text mode=1 ]
#&f.Oni_Name3
[emb exp="f.Imo_Name"], I'm putting this on you.[p]
I lift up her skirt.[p]
#
[_tb_end_text]

[chara_mod  name="さくら_玄関"  time="0"  cross="false"  storage="chara/18/玄関送り14.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
O・・・ okay・・・[p]
#
[_tb_end_text]

[delete_individual_image  layer="1"  name="ローター"  ]
[individual_image  layer="1"  zindex="1"  name="ローター"  storage="default/ローターカット01.png"  width="400"  height="300"  x="440"  y="300"  _clickable_img=""  ]
[tb_start_text mode=1 ]
#
I slip my hand into her panties and attach the remote rotor against her clit and the entrance to her pussy.[p]
#
[_tb_end_text]

[chara_mod  name="さくら_玄関"  time="0"  cross="false"  storage="chara/18/玄関送り16.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Nnh・・・ ah・・・[p]
#
[_tb_end_text]

[individual_image  layer="1"  zindex="1"  name="ローター"  storage="default/ローターカット03.png"  width="400"  height="300"  x="440"  y="300"  _clickable_img=""  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Ah [heart][p]
#
That sigh makes my heart skip a beat.[p]
I started this as a joke and for the sex appeal, but maybe she's really starting to develop some genuine allure and bewitching charm.[p]
Switch on.[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  loop="true"  storage="えっち系/バイブ挿入ピストン強・遅15_Audio_Trimmer.mp3"  ]
[chara_mod  name="さくら_玄関"  time="0"  cross="false"  storage="chara/18/玄関送り17.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Nnh・・・ nnh・・・[p]
Ahh・・・ nnh・・・ hah・・・[p]
・・・nnh・・・ mmh [heart][p]
#
Switch off.[p]
[_tb_end_text]

[stopse  time="1000"  buf="0"  ]
[chara_mod  name="さくら_玄関"  time="0"  cross="false"  storage="chara/18/玄関送り15.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Hah・・・ hah・・・[p]
#
[_tb_end_text]

[delete_individual_image  layer="1"  name="ローター"  ]
[tb_start_text mode=1 ]
#&f.Oni_Name3
Good job, [emb exp="f.Imo_Name"]. You've gotten pretty used to it.[p]
#&f.Imo_Name
D・・・ do you think so?[p]
#&f.Oni_Name3
Yeah, I'll be watching from the audience.[p]
#
[_tb_end_text]

[chara_mod  name="さくら_玄関"  time="0"  cross="false"  storage="chara/18/玄関送り14.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Okay, I'll do my best.[p]
I・・・ I'm off.[p]
#&f.Oni_Name3
Have a good one.[p]
#
[_tb_end_text]

[tb_eval  exp="f.Live_roter_On=1"  name="Live_roter_On"  cmd="="  op="t"  val="1"  ]
[tb_eval  exp="f.Live_roter_first=3"  name="Live_roter_first"  cmd="="  op="t"  val="3"  val_2="undefined"  ]
[jump  storage="_Entrance.ks"  target="*__分岐処理後"  ]
*__理性0ファン40万

[tb_start_text mode=1 ]
#
I hook my fingers over [emb exp="f.Imo_Name"]'s panties, trying to put the rotor on her before the live.[p]
#
[_tb_end_text]

[individual_image  layer="1"  zindex="1"  name="ローター"  storage="default/玄関カット/ローターカット02.png"  width="400"  height="300"  x="440"  y="300"  _clickable_img=""  ]
[chara_mod  name="さくら_玄関"  time="0"  cross="false"  storage="chara/18/玄関送り15.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Nnh・・・[p]
#&f.Oni_Name3
Oh?[p]
[emb exp="f.Imo_Name"]・・・ you're wet.[p]
#&f.Imo_Name
Mmh・・・ d・・・ don't look・・・[p]
#&f.Oni_Name3
To think you're this wet just from anticipating having the rotor put on you・・・[p]
You're a pervert, [emb exp="f.Imo_Name"].[p]
#&f.Imo_Name
Nnh・・・ ugh・・・[p]
#
Saying that, I stimulate her clit through her panties.[p]
#&f.Imo_Name
N・・・ no, [emb exp="f.Oni_Name3"].[p]
The manager came to pick me up and is waiting outside.[p]
I have to go.[p]
#
・・・What should I do?[p]
[_tb_end_text]

*

[font  size="18"  color="0x000000"  face="JKG-M_3"  bold="true"  ]
[tb_start_tyrano_code]
;妹クリック後　選択肢
[glink  color="btn_05_black"  storage="_Entrance.ks"  size="25"  x="530"  y="200"  width="250"  height="50"  text="Attach remote rotor"  target="*__遠隔ローター装着濡れ" enterse="マウスオーバー.mp3"  clickse="決定ボタンを押す53.mp3" ]
[glink  color="btn_05_black"  storage="_Entrance.ks"  size="25"  x="530"  y="250"  width="250"  height="50"  text="Have sex"  target="*__玄関H" enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3" ]
[glink  color="btn_05_black"  storage="_Entrance.ks"  size="25"  x="530"  y="300"  width="250"  height="50"  text="See her off normally"  target="*__通常ルート" enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3" ]

[_tb_end_tyrano_code]

[resetfont  ]
[s  ]
*__遠隔ローター装着濡れ

[tb_start_text mode=1 ]
#&f.Oni_Name3
That's true.[p]
#
[_tb_end_text]

[individual_image  layer="1"  zindex="1"  storage="default/ローター.png"  width="300"  height="248"  x="820"  y="80"  _clickable_img=""  name="ローター"  ]
[tb_start_text mode=1 ]
#&f.Oni_Name3
Then, [emb exp="f.Imo_Name"], we need to get this on you fast.[p]
#
[_tb_end_text]

[chara_mod  name="さくら_玄関"  time="0"  cross="false"  storage="chara/18/玄関送り14.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Uh・・yeah・・・[p]
#
[_tb_end_text]

[tb_start_text mode=1 ]
#
I slip my hand into her panties and attach a remote rotor so it rests against her clit and the entrance to her pussy[p]
#
[_tb_end_text]

[chara_mod  name="さくら_玄関"  time="0"  cross="false"  storage="chara/18/玄関送り16.png"  ]
[individual_image  layer="1"  zindex="1"  name="ローター"  storage="default/ローターカット03.png"  width="400"  height="300"  x="440"  y="300"  _clickable_img=""  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Mmh[heart]・・・Ahh[heart][p]
#
She seems already turned on[p]
The rotor slipped right on with a wet sound[p]
Switch on[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  loop="true"  storage="えっち系/バイブ挿入ピストン強・遅15_Audio_Trimmer.mp3"  ]
[chara_mod  name="さくら_玄関"  time="0"  cross="false"  storage="chara/18/玄関送り17.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Mmh[heart]・・・Mmh[heart]・・・[p]
Ahh[heart]・・・Mmh[heart]・・hah[p]
・・・hah・・・mmh[heart][p]
#
Switch off[p]
[_tb_end_text]

[stopse  time="1000"  buf="0"  ]
[chara_mod  name="さくら_玄関"  time="0"  cross="false"  storage="chara/18/玄関送り15.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Hah・・・hah・・・[p]
#
[_tb_end_text]

[delete_individual_image  layer="1"  name="ローター"  ]
[tb_start_text mode=1 ]
#&f.Oni_Name3
You look super sexy, [emb exp="f.Imo_Name"][p]
#&f.Imo_Name
Mmh[heart]・・・[p]
#
[_tb_end_text]

[chara_mod  name="さくら_玄関"  time="0"  cross="false"  storage="chara/18/玄関送り14.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
It's in[heart][p]
#&f.Oni_Name3
I'll be watching from the audience[p]
#
[_tb_end_text]

[tb_start_text mode=1 ]
#&f.Imo_Name
Yeah, I'll do my best[p]
I'm off[p]
#&f.Oni_Name3
Good luck[p]
#
[_tb_end_text]

[tb_eval  exp="f.Live_roter_On=1"  name="Live_roter_On"  cmd="="  op="t"  val="1"  ]
[tb_eval  exp="f.Live_roter_first=3"  name="Live_roter_first"  cmd="="  op="t"  val="3"  val_2="undefined"  ]
[jump  storage="_Entrance.ks"  target="*__分岐処理後"  ]
[reset_camera  time="1000"  wait="true"  ]
*__玄関H

[tb_eval  exp="f.H_Entrance_DFlag=0"  name="H_Entrance_DFlag"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_start_tyrano_code]
#Explanation of DFlag
#Referenced when the cross-section button is pressed
#Used to reference which standing sprite to use when switching cross-section views
#End of file 100 is added for animations

[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
#
Ignoring her voice, I slip my hand inside her panties and stimulate her clit directly[p]
[_tb_end_text]

[mask  time="300"  effect="fadeIn"  color="0x000000"  ]
*__回想開始

[tb_replay_start  ]
[tb_start_tyrano_code]
;回想用
[tb_show_message_window  cond="tf._tb_is_replay == true" cond="tf._tb_is_replay == true" ]

[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[clearfix]
[freeimage  layer="2"  ]

[_tb_end_tyrano_code]

[playse  volume="100"  time="1000"  buf="0"  storage="えっち系/衣擦れ3.mp3"  ]
[chara_hide_all  time="0"  wait="true"  ]
[delete_individual_image  layer="1"  name="ローター"  ]
[playbgm  volume="50"  time="1000"  loop="true"  storage="PerituneMaterial_RainDrop_loop.mp3"  ]
[call  storage="Main_Sta.ks"  target="*__roleのみ表示"  ]
[call  storage="Main_Sta.ks"  target="*__Hメインステ表示"  ]
[bg  time="300"  method="crossfade"  storage="BG_Black.png"  ]
[mask_off  time="300"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
#&f.Oni_Name3
No, I have to punish naughty girls[p]
#
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/01喘ぎ声(前)01.mp3"  loop="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Ah, hyaaaah[p]
Mmh・・・[p]
#
I sandwich [emb exp="f.Imo_Name"], whose hips are trembling as she stands, against the entrance door,[p]
and keep caressing her[p]
#&f.Imo_Name
Mmh・・・[p]
#
[_tb_end_text]

[stopse  time="1000"  buf="3"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Eh?! [emb exp="f.Oni_Name3"]!?[p]
#
I flip up her skirt, pull her panties aside, and slam my dick forcefully into [emb exp="f.Imo_Name"]'s already wet pussy[p]
[_tb_end_text]

[tb_hide_message_window  ]
[bg  time="500"  method="crossfade"  storage="玄関02.png"  ]
[playse  volume="100"  time="1000"  buf="2"  storage="えっち系/挿入音01.mp3"  ]
[tb_start_tyrano_code]
;キャラ登場　断面図で分岐
[chara_show  name="H_玄関"  time="500"  wait="true"  storage="chara/32/玄関H01.png"  width="930"  height="660"  left="0"  top="60" cond="f.H_Danmen_Flag == 0" ]
[chara_show  name="H_玄関"  time="500"  wait="true"  storage="chara/32/玄関H01.png"  width="930"  height="660"  left="0"  top="60" cond="f.H_Danmen_Flag == 1" ]

[_tb_end_tyrano_code]

[tb_eval  exp="f.H_Entrance_DFlag=1"  name="H_Entrance_DFlag"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/16喘ぎ声(挿入我慢)01.mp3"  ]
[wait  time="2000"  ]
[tb_start_tyrano_code]
[button  storage="_Entrance.ks"  target="*__断面図変更"  graphic="断面図on.png"  x="30"  y="100" exp="f.H_Danmen_Flag = 1" cond="f.H_Danmen_Flag == 0"  fix=true enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3"]
[button  storage="_Entrance.ks"  target="*__断面図変更"  graphic="断面図off.png"  x="30"  y="100" exp="f.H_Danmen_Flag = 0" cond="f.H_Danmen_Flag == 1"  fix=true enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3"]

[_tb_end_tyrano_code]

[tb_show_message_window  ]
[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/02喘ぎ声(前)02.mp3"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Ahh・・anh[heart][p]
Mmh・・・ahah[heart][p]
#&f.Oni_Name3
[emb exp="f.Imo_Name"]・・・you're all sloppy down there[p]
#
[_tb_end_text]

[tb_start_tyrano_code]
;キャラ変更
[chara_mod  name="H_玄関"  time="0"  cross="false"  storage="chara/32/玄関H01.png" cond="f.H_Danmen_Flag == 0" ]
[chara_mod  name="H_玄関"  time="0"  cross="false"  storage="chara/32/玄関H11.png" cond="f.H_Danmen_Flag == 1" ]

[_tb_end_tyrano_code]

[tb_eval  exp="f.H_Entrance_DFlag=1"  name="H_Entrance_DFlag"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
I・・・ I'm embarrassed・・・[p]
#
Just as I imagined, satisfied to see her juices overflowing even though I haven't done much, I push [emb exp="f.Imo_Name"] against the entrance door[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/06喘ぎ声(挿入)01.mp3"  loop="false"  ]
[tb_eval  exp="f.H_Entrance_DFlag=101"  name="H_Entrance_DFlag"  cmd="="  op="t"  val="101"  val_2="undefined"  ]
[playse  volume="100"  time="1000"  buf="2"  storage="ピストン系/玄関ピストン01.mp3"  loop="true"  ]
[tb_start_tyrano_code]
;キャラ変更
[chara_mod  name="H_玄関"  time="0"  cross="false"  storage="chara/32/玄関Hアニメ01.png" cond="f.H_Danmen_Flag == 0" ]
[chara_mod  name="H_玄関"  time="0"  cross="false"  storage="chara/32/玄関Hアニメ11.png" cond="f.H_Danmen_Flag == 1" ]

[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
#&f.Imo_Name
Aaahh!![p]
Ahh[heart]hih・・・nnh[heart][p]
Ahh[heart]・・Mmh[heart][p]
#
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="鉄のドアをノック1.mp3"  ]
[tb_start_text mode=1 ]
#
Knock knock[p]
#？？？
[emb exp="f.Imo_Name"]-san?[p]
#
[_tb_end_text]

[stopse  time="1000"  buf="3"  ]
[tb_start_tyrano_code]
;キャラ変更
[chara_mod  name="H_玄関"  time="0"  cross="false"  storage="chara/32/玄関H02.png" cond="f.H_Danmen_Flag == 0" ]
[chara_mod  name="H_玄関"  time="0"  cross="false"  storage="chara/32/玄関H12.png" cond="f.H_Danmen_Flag == 1" ]

[_tb_end_tyrano_code]

[tb_eval  exp="f.H_Entrance_DFlag=2"  name="H_Entrance_DFlag"  cmd="="  op="t"  val="2"  val_2="undefined"  ]
[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/吐息03.mp3"  ]
[stopse  time="1000"  buf="2"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Mmh!?[p]
#
A sense of tension runs through us both, and we stop moving[p]
A voice comes from beyond the door[p]
That is [emb exp="f.Imo_Name"]'s manager's voice[p]
Did she come to the entrance to pick her up out of worry?[p]
It seems we took too much time[p]
Due to the extreme tension, [emb exp="f.Imo_Name"]'s pussy clamps down incredibly hard[p]
#&f.Oni_Name3
Whoa・・・tight!![p]
#
[_tb_end_text]

[tb_start_tyrano_code]
;キャラ変更
[chara_mod  name="H_玄関"  time="0"  cross="false"  storage="chara/32/玄関H06.png" cond="f.H_Danmen_Flag == 0" ]
[chara_mod  name="H_玄関"  time="0"  cross="false"  storage="chara/32/玄関H16.png" cond="f.H_Danmen_Flag == 1" ]

[_tb_end_tyrano_code]

[tb_eval  exp="f.H_Entrance_DFlag=6"  name="H_Entrance_DFlag"  cmd="="  op="t"  val="6"  val_2="undefined"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
N-no, don't, [emb exp="f.Oni_Name3"][p]
#
She pleads with me in a whisper, but unable to resist the pleasure of her tightening, I continue moving my hips[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/16喘ぎ声(挿入我慢)01.mp3"  loop="true"  ]
[playse  volume="100"  time="1000"  buf="2"  storage="ピストン系/玄関ピストン01.mp3"  loop="true"  ]
[tb_start_tyrano_code]
;キャラ変更
[chara_mod  name="H_玄関"  time="0"  cross="false"  storage="chara/32/玄関Hアニメ03.png" cond="f.H_Danmen_Flag == 0" ]
[chara_mod  name="H_玄関"  time="0"  cross="false"  storage="chara/32/玄関Hアニメ13.png" cond="f.H_Danmen_Flag == 1" ]

[_tb_end_tyrano_code]

[tb_eval  exp="f.H_Entrance_DFlag=103"  name="H_Entrance_DFlag"  cmd="="  op="t"  val="103"  val_2="undefined"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Mm, nnh![p]
Nng・・・nnn!![p]
#
Every time I thrust my hips against her pressed against the door, lewd sounds escape,[p]
but she desperately holds back, moaning quietly so the person on the other side doesn't notice[p]
#&f.Imo_Name
Mmh・・・nnh![p]
Mmh・・・[p]
#Manager
[emb exp="f.Imo_Name"]-san?[p]
#&f.Oni_Name3
Come on, if you don't answer, she'll get suspicious[p]
#
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="2"  storage="ピストン系/玄関ピストン01.mp3"  loop="true"  ]
[tb_start_tyrano_code]
;キャラ変更
[chara_mod  name="H_玄関"  time="0"  cross="false"  storage="chara/32/玄関Hアニメ02.png" cond="f.H_Danmen_Flag == 0" ]
[chara_mod  name="H_玄関"  time="0"  cross="false"  storage="chara/32/玄関Hアニメ12.png" cond="f.H_Danmen_Flag == 1" ]

[_tb_end_tyrano_code]

[tb_eval  exp="f.H_Entrance_DFlag=102"  name="H_Entrance_DFlag"  cmd="="  op="t"  val="102"  val_2="undefined"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
！？[p]
Mmh・・・[p]
S・・・sorr・・・ry・・・[p]
Right now・・・I'm・・・a little busy・・[p]
#
A sense of immorality rises up at [emb exp="f.Imo_Name"] answering with a trembling voice, and I thrust my hips faster[p]
[_tb_end_text]

[tb_hide_message_window  ]
[tb_eval  exp="f.H_Entrance_DFlag=107"  name="H_Entrance_DFlag"  cmd="="  op="t"  val="107"  val_2="undefined"  ]
[playse  volume="100"  time="1000"  buf="2"  storage="ピストン系/玄関ピストン02.mp3"  loop="true"  ]
[tb_start_tyrano_code]
;キャラ変更
[chara_mod  name="H_玄関"  time="0"  cross="false"  storage="chara/32/玄関Hアニメ07.png" cond="f.H_Danmen_Flag == 0" ]
[chara_mod  name="H_玄関"  time="0"  cross="false"  storage="chara/32/玄関Hアニメ17.png" cond="f.H_Danmen_Flag == 1" ]

[_tb_end_tyrano_code]

[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/絶頂声のみ02.mp3"  ]
[wait  time="3000"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Ngh!?[p]
Mmh・・・[p]
・・・Ngh!![p]
#
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/吐息03.mp3"  loop="true"  ]
[playse  volume="100"  time="1000"  buf="2"  storage="ピストン系/玄関ピストン02.mp3"  loop="true"  ]
[tb_start_tyrano_code]
;キャラ変更
[chara_mod  name="H_玄関"  time="0"  cross="false"  storage="chara/32/玄関Hアニメ04.png" cond="f.H_Danmen_Flag == 0" ]
[chara_mod  name="H_玄関"  time="0"  cross="false"  storage="chara/32/玄関Hアニメ14.png" cond="f.H_Danmen_Flag == 1" ]

[_tb_end_tyrano_code]

[tb_eval  exp="f.H_Entrance_DFlag=104"  name="H_Entrance_DFlag"  cmd="="  op="t"  val="104"  val_2="undefined"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
I・・・ I'll be right there・・・[p]
・・・W・・・ wait in the car・・・[p]
#Manager
[emb exp="f.Imo_Name"]-san?[p]
Are you okay?[p]
#&f.Imo_Name
Mm・・・ yeah・・・[p]
I'm just・・・ looking for something・・・ that's all[p]
#Manager
Understood.[p]
I'm worried, so I'll wait here.[p]
#&f.Imo_Name
・・・Fueh!?[p]
#
I can sense the manager waiting on the other side of the door.[p]
He's probably just on his phone.[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/16喘ぎ声(挿入我慢)01.mp3"  loop="true"  ]
[playse  volume="100"  time="1000"  buf="2"  storage="ピストン系/玄関ピストン02.mp3"  loop="true"  ]
[tb_start_tyrano_code]
;キャラ変更
[chara_mod  name="H_玄関"  time="0"  cross="false"  storage="chara/32/玄関Hアニメ07.png" cond="f.H_Danmen_Flag == 0" ]
[chara_mod  name="H_玄関"  time="0"  cross="false"  storage="chara/32/玄関Hアニメ17.png" cond="f.H_Danmen_Flag == 1" ]

[_tb_end_tyrano_code]

[tb_eval  exp="f.H_Entrance_DFlag=107"  name="H_Entrance_DFlag"  cmd="="  op="t"  val="107"  val_2="undefined"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Ngh![p]
Nnngh[heart][p]
#
I tease [emb exp="f.Imo_Name"], being careful not to let the manager on the other side of the door find out.[p]
#&f.Imo_Name
Nnnh![p]
Nnh! ・・・Ngh!![p]
#
Even though she's holding back her voice, the door creaks lightly as she presses her body against it.[p]
#Manager
[emb exp="f.Imo_Name"]-san?[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="2"  storage="ピストン系/玄関ピストン02.mp3"  loop="true"  ]
[tb_start_tyrano_code]
;キャラ変更
[chara_mod  name="H_玄関"  time="0"  cross="false"  storage="chara/32/玄関Hアニメ06.png" cond="f.H_Danmen_Flag == 0" ]
[chara_mod  name="H_玄関"  time="0"  cross="false"  storage="chara/32/玄関Hアニメ16.png" cond="f.H_Danmen_Flag == 1" ]

[_tb_end_tyrano_code]

[tb_eval  exp="f.H_Entrance_DFlag=106"  name="H_Entrance_DFlag"  cmd="="  op="t"  val="106"  val_2="undefined"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
I'm・・・ o・・・kay・・・[p]
Wai・・・t・・・[p]
#Manager
? ・・・Yes[p]
#
[_tb_end_text]

[intrandom_ko10panda  max="3"  count="1"  show_result="false"  show_style="style_a"  show_detail="false"  detail_length="10"  show_log="log_4"  var_name="tf.rand"  tweak="0"  ]
[tb_start_tyrano_code]
;疑惑Treに代入　回想時回避
[eval exp="f.Tre_Up = tf.rand" cond="!tf._tb_is_replay"]
[call storage="Tre_Sta_Up.ks" target="*__疑惑UP" cond="!tf._tb_is_replay"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[free layer=2 name="Giwaku_Plus"]
[_tb_end_tyrano_code]

[call  storage="Main_Sta.ks"  target="*__Hメインステ表示"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Nnh・・・ Nnnh・・・[p]
#
With the sound of fierce pounding and the taboo situation, [emb exp="f.Imo_Name"] crosses the line into pleasure[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="2"  storage="ピストン系/玄関ピストン02.mp3"  loop="true"  ]
[tb_start_tyrano_code]
;キャラ変更
[chara_mod  name="H_玄関"  time="0"  cross="false"  storage="chara/32/玄関Hアニメ07.png" cond="f.H_Danmen_Flag == 0" ]
[chara_mod  name="H_玄関"  time="0"  cross="false"  storage="chara/32/玄関Hアニメ17.png" cond="f.H_Danmen_Flag == 1" ]

[_tb_end_tyrano_code]

[tb_eval  exp="f.H_Entrance_DFlag=107"  name="H_Entrance_DFlag"  cmd="="  op="t"  val="107"  val_2="undefined"  ]
[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/11喘ぎ声(挿入)07.mp3"  loop="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Oh・・・ Ohh・・・[p]
Cumming・・・ Cumming・・・[p]
Cumming・・・ Ahh・・・[p]
#
Her hips convulse, and her pussy clenches, trying to milk my cum.[p]
Her legs are shaking so hard she can't stand, but I ignore it and keep thrusting.[p]
#&f.Imo_Name
Ohh・・・ Ohhh・・・[p]
・・・Nnnohh・・・[p]
・・・We'll get caught・・・ nnh・・・ caught・・・[p]
Ohhhhh・・・[p]
No, [emb exp="f.Oni_Name3"]・・・ hii・・・ nnh・・・[p]
No more・・・[p]
Ohhh・・・[p]
#
I slam my dick even harder into [emb exp="f.Imo_Name"]'s pussy as she begs in a quiet voice.[p]
[_tb_end_text]

[tb_hide_message_window  ]
[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/13喘ぎ声(オホ声)01.mp3"  loop="true"  ]
[playse  volume="100"  time="1000"  buf="2"  storage="ピストン系/玄関ピストン03.mp3"  loop="true"  ]
[tb_start_tyrano_code]
;キャラ変更
[chara_mod  name="H_玄関"  time="0"  cross="false"  storage="chara/32/玄関Hアニメ08.png" cond="f.H_Danmen_Flag == 0" ]
[chara_mod  name="H_玄関"  time="0"  cross="false"  storage="chara/32/玄関Hアニメ18.png" cond="f.H_Danmen_Flag == 1" ]

[_tb_end_tyrano_code]

[tb_eval  exp="f.H_Entrance_DFlag=108"  name="H_Entrance_DFlag"  cmd="="  op="t"  val="108"  val_2="undefined"  ]
[wait  time="2000"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Ohh[heart]・・・nghh[heart]・・・oh[heart][p]
Mmm・・・・・[heart][p]
Ohhh[heart]・・・nnggh[heart][p]
Again・・I'm coming[heart]・・I'm coming[heart]・・・[p]
Oh[heart][heart][heart]・・・・gh!![p]
Mmmm[heart][heart][heart]!![p]
・・・ngh[heart][heart][heart]!![p]
#
Having reached my limit, I call out to [emb exp="f.Imo_Name"] in a low voice[p]
#&f.Oni_Name3
Having sex even though the manager is waiting right beside us, [emb exp="f.Imo_Name"], you're really such a pervert[p]
#&f.Imo_Name
Ahh[heart]・・・mmh[heart]・・・nnngh[heart][p]
#
She shakes her head desperately to deny it as she has sex with me with lewd hip movements[p]
I know all the spots where [emb exp="f.Imo_Name"] is weak when teased[p]
Today, I take the approach of repeatedly knocking against one of [emb exp="f.Imo_Name"]'s favorite spots—the entrance to her womb—with wet, slapping sounds[p]
—slap[heart] slap[heart] slap[heart][p]

[_tb_end_text]

[playse  volume="100"  time="1000"  buf="2"  storage="ピストン系/玄関ピストン03.mp3"  loop="true"  ]
[tb_start_tyrano_code]
;キャラ変更
[chara_mod  name="H_玄関"  time="0"  cross="false"  storage="chara/32/玄関Hアニメ09.png" cond="f.H_Danmen_Flag == 0" ]
[chara_mod  name="H_玄関"  time="0"  cross="false"  storage="chara/32/玄関Hアニメ19.png" cond="f.H_Danmen_Flag == 1" ]

[_tb_end_tyrano_code]

[tb_eval  exp="f.H_Entrance_DFlag=109"  name="H_Entrance_DFlag"  cmd="="  op="t"  val="109"  val_2="undefined"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Ngh[heart]・・・nnnnngh—[heart][heart][heart][p]
-slap[heart] slap[heart] slap[heart][p]
#&f.Oni_Name3
[emb exp="f.Imo_Name"]・・・ You're supposed to be a pure and serious idol, yet you can't stop shaking your hips so lewdly[p]
I wonder why?[p]
#&f.Imo_Name
Ahhhn[heart]・・・[p]
Nghh[heart]・・・・[emb exp="f.Oni_Name3"]'s・・・・dick[heart][heart][heart][p]
Nghh[heart]・・・feels good[heart]・・・so goood[heart][p]
It's amazing[heart]・・・and・・・nngh[heart][heart][p]
#
The tiny bit of reason remaining vanishes in an instant as I pound against her womb[p]
[emb exp="f.Imo_Name"] has become completely captive to my dick[p]
#&f.Oni_Name3
Hehe・・・[p]
I have to give my sperm as a present to the super lewd [emb exp="f.Imo_Name"][p]
Where do you want my sperm?[p]
#&f.Imo_Name
Nngh[heart]・・・right there[heart][p]
Ah[heart]・・・ogh[heart]・・・keep [emb exp="f.Oni_Name3"]'s right there・・・[p]
Ngho[heart]・・・plea・・・se cum lots inside my pussy[heart][heart][heart][heart][heart][p]
#
Though her voice is quiet, she shakes her hips at me as if begging for it[p]
The sound is quiet, but the sound of our fluids slapping together echoes in the entrance[p]
I don't know・・・if it can be heard outside[p]
#&f.Oni_Name3
It's right before a concert, is it okay to do that to your pussy?[p]
When did you become such a slut?[p]
#&f.Imo_Name
Nngh・・・I'm not・・・a slut・・・nnghh[heart][p]
Ngh[heart]・・・only [emb exp="f.Oni_Name3"][heart]・・・[p]
Ugh[heart]・・・I only want[heart]・・・[emb exp="f.Oni_Name3"]'s dick[heart][heart][p]
Ugh[heart]・・・Only [emb exp="f.Oni_Name3"]'s sperm[heart]・・・[p]
Only [emb exp="f.Oni_Name3"]'s sperm・・・I want it in my pussy[heart][heart][heart][heart][heart][p]
#&f.Oni_Name3
You say such cute things[p]
Here's your reward[p]
#
I shake my hips without worrying about the outside[p]
[_tb_end_text]

[playse  volume="50"  time="1000"  buf="3"  storage="喘ぎ声/12喘ぎ声(挿入)08.mp3"  loop="true"  ]
[tb_eval  exp="f.H_Entrance_DFlag=109"  name="H_Entrance_DFlag"  cmd="="  op="t"  val="109"  val_2="undefined"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Nnghh[heart]・・・Nghh[heart]・・・[p]
Ngh[heart]!![p]
Ohh[heart]・・・Ohh[heart]・・・Oghh[heart][heart][heart][p]
#&f.Oni_Name3
I'm cumming, take it all inside[p]
#
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/絶頂声のみ02.mp3"  loop="false"  ]
[stopse  time="1000"  buf="2"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Nnnghhhhhh[heart][heart][heart][heart][heart][p]
#
[_tb_end_text]

[tb_hide_message_window  ]
[tb_start_tyrano_code]
[clearfix]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;キャラ変更
[chara_mod  name="H_玄関"  time="0"  cross="false"  storage="chara/32/玄関Hアニメ射精01.png" cond="f.H_Danmen_Flag == 0" ]
[chara_mod  name="H_玄関"  time="0"  cross="false"  storage="chara/32/玄関Hアニメ射精11.png" cond="f.H_Danmen_Flag == 1" ]

[_tb_end_tyrano_code]

[playse  volume="100"  time="1000"  buf="0"  storage="えっち系/射精音02.mp3"  ]
[wait  time="2000"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
ーSpurt[heart]・・・Spurt[heart]・・・[p]
Squirt[heart]・・・Squirt[heart]・・・[p]
I pour plenty of sperm into [emb exp="f.Imo_Name"]'s womb[p]

[_tb_end_text]

[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/絶頂セリフ03_2.mp3"  loop="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Aaah[heart]・・・・Aaahh[heart][heart][heart][p]
・・・Ah[heart][p]
Hah・・・hah・・・[p]
#

[_tb_end_text]

[stopse  time="1000"  buf="0"  ]
[stopse  time="1000"  buf="2"  ]
[individual_image  layer="1"  zindex="1"  storage="default/ローター.png"  width="300"  height="248"  x="820"  y="80"  _clickable_img=""  name="ローター"  ]
[tb_start_text mode=1 ]
#
After shooting all the sperm loaded in my balls into her womb, I take out a remote rotor from my pocket[p]
To keep the sperm from leaking, I quickly plug the entrance of her pussy with the rotor and put her panties back on[p]
[_tb_end_text]

[stopse  time="1000"  buf="3"  ]
[chara_hide_all  time="300"  wait="true"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="えっち系/衣擦れ3.mp3"  ]
[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/02喘ぎ声(前)02.mp3"  loop="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Nngh[heart]・・・Ah[heart]・・・[p]
#
[_tb_end_text]

[chara_show  name="さくら_玄関"  time="1000"  wait="true"  storage="chara/18/玄関送り15.png"  width="560"  height="670"  left="360"  top="50"  ]
[delete_individual_image  layer="1"  name="ローター"  ]
[individual_image  layer="1"  zindex="1"  name="ローター挿入"  storage="default/ローターカット03.png"  width="400"  height="300"  x="440"  y="300"  _clickable_img=""  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
・・・Hah・・・hah・・・[p]
・・・Hah・・・hah・・・[p]
#
[_tb_end_text]

[delete_individual_image  layer="1"  name="ローター挿入"  ]
[stopse  time="1000"  buf="3"  ]
[chara_mod  name="さくら_玄関"  time="0"  cross="false"  storage="chara/18/玄関送り20.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
My tummy is hot・・・[p]
I can feel [emb exp="f.Oni_Name3"][heart][p]
#
[emb exp="f.Imo_Name"] rubs her tummy while hurriedly fixing her appearance[p]
[_tb_end_text]

[stopse  time="1000"  buf="0"  ]
[chara_mod  name="さくら_玄関"  time="0"  cross="false"  storage="chara/18/玄関送り19.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Hehe[heart]・・・Today I'll do the concert while feeling [emb exp="f.Oni_Name3"][heart][p]
Nngh[heart]・・・It's sloshing around inside my tummy[heart][p]
#

[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="えっち系/キス01.mp3"  ]
[individual_image  layer="1"  zindex="1"  storage="default/玄関カット/玄関カット04.png"  width="250"  height="200"  time="500"  wait="true"  name="gen04"  x="640"  y="230"  _clickable_img=""  ]
[tb_start_text mode=1 ]
I help fix her appearance while kissing [emb exp="f.Imo_Name"][p]

[_tb_end_text]

[delete_individual_image  layer="1"  name="gen04"  time="500"  wait="true"  ]
[stopse  time="1000"  buf="0"  ]
[tb_start_text mode=1 ]
#&f.Oni_Name3
I'll be rooting for you today too, [emb exp="f.Imo_Name"][p]
#
[_tb_end_text]

[chara_mod  name="さくら_玄関"  time="0"  cross="false"  storage="chara/18/玄関送り18.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Yeah, I'm off! [heart][heart][heart][p]
#&f.Oni_Name3
Have a safe trip・・・[p]
#

[_tb_end_text]

[tb_start_tyrano_code]
;回想用BGM変更
[playbgm volume="20"  time="1000"  loop="true"  storage="PerituneMaterial_Sea_Breeze_loop.mp3" cond="tf._tb_is_replay == true" ]
[_tb_end_tyrano_code]

*__回想解放用

[tb_replay  id="玄関H"  ]
[jump  storage="__Main_tv_H.ks"  target="*__回想解放用"  cond="sf.Clear_Flag_Kaisou==1"  ]
[tb_start_tyrano_code]
;中だし回数プラスカウント
[eval exp="f.Sex_Count[1].bestcount += 1"]
[eval exp="f.Sex_Count[3].bestcount += 1"]
[eval exp="f.Sex_Count[4].count += 1"]
[eval exp="f.Sex_Count[7].bestcount += 1"]

[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;開発回数カウント
[eval exp="f.Kaihatu_Count[3].kazu += 1"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;絶頂回数プラスカウント
[eval exp="f.Sex_Count[5].count += 1"]

[_tb_end_tyrano_code]

[call  storage="H_Kaihatu_Upshori.ks"  target="*__開発アップ処理"  ]
[call  storage="_Array_Kaihatu.ks"  target="*__開発配列初期化"  ]
[intrandom_ko10panda  max="5"  count="1"  show_result="false"  show_style="style_a"  show_detail="false"  detail_length="10"  show_log="log_4"  var_name="tf.rand"  ]
[tb_start_tyrano_code]
;疑惑Treに代入
[eval exp="f.Tre_Up = tf.rand"]
[_tb_end_tyrano_code]

[call  storage="Tre_Sta_Up.ks"  target="*__疑惑UP"  ]
[call  storage="Main_Sta.ks"  target="*__メインステ表示"  ]
[tb_eval  exp="f.Sys_Seiryoku-=1"  name="Sys_Seiryoku"  cmd="-="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.Live_roter_On=1"  name="Live_roter_On"  cmd="="  op="t"  val="1"  ]
[tb_eval  exp="f.Live_roter_first=3"  name="Live_roter_first"  cmd="="  op="t"  val="3"  val_2="undefined"  ]
[jump  storage="_Entrance.ks"  target="*__分岐処理後"  ]
*__分岐処理後

[playse  volume="100"  time="1000"  buf="0"  storage="ドアを開ける1.mp3"  ]
[chara_hide_all  time="1000"  wait="true"  ]
[wait  time="1000"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="ドアを閉める3.mp3"  ]
[bg  time="0"  method="crossfade"  storage="玄関01.png"  ]
[tb_start_text mode=1 ]
#
Well, I guess I'll go cheer her on too[p]
[_tb_end_text]

[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[bg  time="0"  method="crossfade"  storage="BG_Black.png"  ]
[tb_image_hide  time="0"  ]
[jump  storage="__Main_Kyuuka.ks"  target="*___イベント終了時間経過"  ]
*__断面図変更

[tb_start_tyrano_code]
;断面図変更
[switch exp="f.H_Entrance_DFlag"]
[case is=1]
[chara_mod  name="H_玄関"  time="0"  cross="false"  storage="chara/32/玄関H01.png" cond="f.H_Danmen_Flag == 0" ]
[chara_mod  name="H_玄関"  time="0"  cross="false"  storage="chara/32/玄関H11.png" cond="f.H_Danmen_Flag == 1" ]
[case is=2]
[chara_mod  name="H_玄関"  time="0"  cross="false"  storage="chara/32/玄関H02.png" cond="f.H_Danmen_Flag == 0" ]
[chara_mod  name="H_玄関"  time="0"  cross="false"  storage="chara/32/玄関H12.png" cond="f.H_Danmen_Flag == 1" ]
[case is=3]
[chara_mod  name="H_玄関"  time="0"  cross="false"  storage="chara/32/玄関H03.png" cond="f.H_Danmen_Flag == 0" ]
[chara_mod  name="H_玄関"  time="0"  cross="false"  storage="chara/32/玄関H13.png" cond="f.H_Danmen_Flag == 1" ]
[case is=4]
[chara_mod  name="H_玄関"  time="0"  cross="false"  storage="chara/32/玄関H04.png" cond="f.H_Danmen_Flag == 0" ]
[chara_mod  name="H_玄関"  time="0"  cross="false"  storage="chara/32/玄関H14.png" cond="f.H_Danmen_Flag == 1" ]
[case is=5]
[chara_mod  name="H_玄関"  time="0"  cross="false"  storage="chara/32/玄関H05.png" cond="f.H_Danmen_Flag == 0" ]
[chara_mod  name="H_玄関"  time="0"  cross="false"  storage="chara/32/玄関H15.png" cond="f.H_Danmen_Flag == 1" ]
[case is=6]
[chara_mod  name="H_玄関"  time="0"  cross="false"  storage="chara/32/玄関H06.png" cond="f.H_Danmen_Flag == 0" ]
[chara_mod  name="H_玄関"  time="0"  cross="false"  storage="chara/32/玄関H16.png" cond="f.H_Danmen_Flag == 1" ]
[case is=7]
[chara_mod  name="H_玄関"  time="0"  cross="false"  storage="chara/32/玄関H07.png" cond="f.H_Danmen_Flag == 0" ]
[chara_mod  name="H_玄関"  time="0"  cross="false"  storage="chara/32/玄関H17.png" cond="f.H_Danmen_Flag == 1" ]
[case is=8]
[chara_mod  name="H_玄関"  time="0"  cross="false"  storage="chara/32/玄関H08.png" cond="f.H_Danmen_Flag == 0" ]
[chara_mod  name="H_玄関"  time="0"  cross="false"  storage="chara/32/玄関H18.png" cond="f.H_Danmen_Flag == 1" ]

[case is=101]
[chara_mod  name="H_玄関"  time="0"  cross="false"  storage="chara/32/玄関Hアニメ01.png" cond="f.H_Danmen_Flag == 0" ]
[chara_mod  name="H_玄関"  time="0"  cross="false"  storage="chara/32/玄関Hアニメ11.png" cond="f.H_Danmen_Flag == 1" ]
[case is=102]
[chara_mod  name="H_玄関"  time="0"  cross="false"  storage="chara/32/玄関Hアニメ02.png" cond="f.H_Danmen_Flag == 0" ]
[chara_mod  name="H_玄関"  time="0"  cross="false"  storage="chara/32/玄関Hアニメ12.png" cond="f.H_Danmen_Flag == 1" ]
[case is=103]
[chara_mod  name="H_玄関"  time="0"  cross="false"  storage="chara/32/玄関Hアニメ03.png" cond="f.H_Danmen_Flag == 0" ]
[chara_mod  name="H_玄関"  time="0"  cross="false"  storage="chara/32/玄関Hアニメ13.png" cond="f.H_Danmen_Flag == 1" ]
[case is=104]
[chara_mod  name="H_玄関"  time="0"  cross="false"  storage="chara/32/玄関Hアニメ04.png" cond="f.H_Danmen_Flag == 0" ]
[chara_mod  name="H_玄関"  time="0"  cross="false"  storage="chara/32/玄関Hアニメ14.png" cond="f.H_Danmen_Flag == 1" ]
[case is=105]
[chara_mod  name="H_玄関"  time="0"  cross="false"  storage="chara/32/玄関Hアニメ05.png" cond="f.H_Danmen_Flag == 0" ]
[chara_mod  name="H_玄関"  time="0"  cross="false"  storage="chara/32/玄関Hアニメ15.png" cond="f.H_Danmen_Flag == 1" ]
[case is=106]
[chara_mod  name="H_玄関"  time="0"  cross="false"  storage="chara/32/玄関Hアニメ06.png" cond="f.H_Danmen_Flag == 0" ]
[chara_mod  name="H_玄関"  time="0"  cross="false"  storage="chara/32/玄関Hアニメ16.png" cond="f.H_Danmen_Flag == 1" ]
[case is=107]
[chara_mod  name="H_玄関"  time="0"  cross="false"  storage="chara/32/玄関Hアニメ07.png" cond="f.H_Danmen_Flag == 0" ]
[chara_mod  name="H_玄関"  time="0"  cross="false"  storage="chara/32/玄関Hアニメ17.png" cond="f.H_Danmen_Flag == 1" ]
[case is=108]
[chara_mod  name="H_玄関"  time="0"  cross="false"  storage="chara/32/玄関Hアニメ08.png" cond="f.H_Danmen_Flag == 0" ]
[chara_mod  name="H_玄関"  time="0"  cross="false"  storage="chara/32/玄関Hアニメ18.png" cond="f.H_Danmen_Flag == 1" ]
[case is=109]
[chara_mod  name="H_玄関"  time="0"  cross="false"  storage="chara/32/玄関Hアニメ09.png" cond="f.H_Danmen_Flag == 0" ]
[chara_mod  name="H_玄関"  time="0"  cross="false"  storage="chara/32/玄関Hアニメ19.png" cond="f.H_Danmen_Flag == 1" ]

[endswitch]


[_tb_end_tyrano_code]

[call  storage="Main_Sta.ks"  target="*__Hメインステ表示"  ]
[tb_start_tyrano_code]
[button  storage="_Entrance.ks"  target="*__断面図変更"  graphic="断面図on.png"  x="30"  y="100" exp="f.H_Danmen_Flag = 1" cond="f.H_Danmen_Flag == 0"  fix=true enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3"]
[button  storage="_Entrance.ks"  target="*__断面図変更"  graphic="断面図off.png"  x="30"  y="100" exp="f.H_Danmen_Flag = 0" cond="f.H_Danmen_Flag == 1"  fix=true enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3"]

[_tb_end_tyrano_code]

[return  ]
