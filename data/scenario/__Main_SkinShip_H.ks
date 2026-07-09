[_tb_system_call storage=system/___Main_SkinShip_H.ks]

[tb_start_tyrano_code]
[layopt layer=1 visible=true opacity=255]
[_tb_end_tyrano_code]

[tb_eval  exp="f.Oni_Ero=1"  name="Oni_Ero"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.H_Skinship_FirstFlag=1"  name="H_Skinship_FirstFlag"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.H_Danmen_Flag=1"  name="H_Danmen_Flag"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="_Array_.ks"  target="*__配列宣言"  ]
[call  storage="_Array_Kaihatu.ks"  target="*__開発配列初期化"  ]
[tb_start_tyrano_code]
;開発度初期値
[eval exp="f.Kaihatu[1].count = 10"]
[eval exp="f.Kaihatu[3].count = 10"]
[_tb_end_tyrano_code]

*__H__Skinship

[tb_replay_start  ]
[playbgm  volume="60"  time="1000"  loop="true"  storage="PerituneMaterial_RainDrop_loop.mp3"  fadein="true"  ]
[tb_start_tyrano_code]
[clearfix]
[_tb_end_tyrano_code]

[bg  time="0"  method="crossfade"  storage="スキンシップ01.png"  cross="true"  ]
[call  storage="Main_Sta.ks"  target="*__roleのみ表示"  ]
[call  storage="Main_Sta.ks"  target="*__Hメインステ表示"  ]
[mask_off  time="300"  effect="fadeOut"  ]
[jump  storage="__Main_SkinShip_H.ks"  target="*__開始"  cond="f.H_Skinship_FirstFlag==0"  ]
[font  size="18"  color="0x000000"  face="JKG-M_3"  bold="true"  ]
[tb_start_tyrano_code]
;妹クリック後　選択肢
[glink  color="btn_05_black"  size="25"  x="530"  y="200"  width="250"  height="50"  text="Do foreplay"  _clickable_img=""  target="*__開始" enterse="マウスオーバー.mp3"  clickse="決定ボタンを押す53.mp3" ]
[glink  color="btn_05_black"  size="25"  x="530"  y="300"  width="250"  height="50"  text="Go straight"  _clickable_img=""  target="*__挿入" enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3" ]

[_tb_end_tyrano_code]

[resetfont  ]
[s  ]
*__開始

[tb_show_message_window  ]
[tb_start_text mode=1 ]
#
I pull [emb exp="f.Imo_Name"], who is breathing heavily beside me, close and sit her between my legs[p]
I pull her hips closer, pressing our bodies tightly together[p]

[_tb_end_text]

[chara_show  name="H_スキンシップ"  time="1000"  wait="true"  storage="chara/9/後方座位01.png"  width="560"  height="660"  left="360"  top="60"  reflect="false"  ]
[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/01喘ぎ声(前)01.mp3"  loop="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Mmh・・・[p]
#
She's already damp with sweat, and I can feel her body heat so strongly through her clothes that it feels like she's burning up[p]
She seems a little nervous[p]
[_tb_end_text]

[chara_mod  name="H_スキンシップ"  time="500"  cross="false"  storage="chara/9/後方座位02.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Mmh・・・[p]
Ah・・・[p]
#
As I caress [emb exp="f.Imo_Name"]'s breasts again from over her clothes, I feel how big and soft they are[p]
#&f.Imo_Name
Hah・・・ hah・・・[p]
#
Feeling the tension in her shoulders, I kiss the nape of her neck[p]
#&f.Imo_Name
Aaah![p]
#
[_tb_end_text]

[chara_mod  name="H_スキンシップ"  time="500"  cross="false"  storage="chara/9/後方座位03.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Mmh・・・[p]
No・・・ don't・・・[p]
・・・I'm sweating・・・[p]
#&f.Oni_Name3
You're cute[p]
#&f.Imo_Name
N-no, don't, it's dirty[p]
At least let me take a bath first・・・[p]
#&f.Oni_Name3
No way[p]
#
[_tb_end_text]

[chara_mod  name="H_スキンシップ"  time="500"  cross="false"  storage="chara/9/後方座位02.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
・・・Uu・・・ uuh[p]
#
I ignore her protests, licking her neck all over while massaging her breasts[p]
#&f.Imo_Name
Mmh・・・ mmh・・・[p]
Keeping at it, I hook my fingers on her top and panties, slowly stripping them off while kissing her[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="えっち系/衣擦れ3.mp3"  ]
[chara_mod  name="H_スキンシップ"  time="1000"  cross="false"  storage="chara/9/後方座位04.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Hah・・・ hah・・・[p]
Don't look・・・[p]
It's embarrassing・・・[p]
#&f.Oni_Name3
You're beautiful[p]
#&f.Imo_Name
Uu・・・[p]
#
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/02喘ぎ声(前)02.mp3"  loop="true"  ]
[chara_mod  name="H_スキンシップ"  time="500"  cross="false"  storage="chara/9/後方座位05.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Ah・・・ annh[p]
Hah・・・ hah・・・ mmh![p]
#
Every time I play with her nipples, she arches her back and leans against me[p]
[emb exp="f.Imo_Name"]'s hair naturally brushes against my face, carrying a sweet, soapy scent[p]
[_tb_end_text]

[chara_mod  name="H_スキンシップ"  time="500"  cross="false"  storage="chara/9/後方座位07.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Ah!![p]
Ah・・・ aah![p]
#
When I touch her slit, love juices gush out from her already wet hole[p]
I coat my fingers with that liquid and gently touch her clit[p]
[_tb_end_text]

[tb_start_text mode=1 ]
#&f.Imo_Name
Nnnh[p]
#
Perhaps because our hips are pressed together, every time I stimulate her crotch, [emb exp="f.Imo_Name"] pulls her hips back against me[p]
Each time, our genitals press together through the fabric of our clothes[p]
Looking closely, she's lifting her hips slightly to press the folds of her pussy lips against my crotch[p]
[emb exp="f.Imo_Name"] was trying to get herself off by rubbing her pussy slit against my hard shaft[p]
#&f.Oni_Name3
[emb exp="f.Imo_Name"]・・・ since when did you learn to do such naughty things?[p]
#
[_tb_end_text]

[chara_mod  name="H_スキンシップ"  time="500"  cross="false"  storage="chara/9/後方座位09.png"  ]
[tb_start_text mode=1 ]
#
[emb exp="f.Imo_Name"] shakes her head silently[p]
Her ears are bright red[p]
To give her a bit more stimulation, I take off my clothes and expose my lower body[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="えっち系/衣擦れ3.mp3"  ]
[chara_mod  name="H_スキンシップ"  time="500"  cross="false"  storage="chara/9/後方座位10.png"  ]
[tb_start_text mode=1 ]
I pull up her skirt and press our bare skin together[p]
I adjust [emb exp="f.Imo_Name"]'s hips so the head of my dick fits right between her butt cheeks[p]
#&f.Imo_Name
Mmh・・・[p]
Hah・・・ hah・・・[p]
#
It ends up in a position like sumata, with my shaft sandwiched between [emb exp="f.Imo_Name"]'s folds, getting slick and slippery with her juices[p]
Her juices keep gushing out from her pussy, making our privates soaking wet[p]
#&f.Oni_Name3
What do you want me to do, [emb exp="f.Imo_Name"]?[p]
#&f.Imo_Name
Mmh・・・ ah・・・[p]
Hah・・・ hah・・・[p]
#
She shakes her head silently again, so I lick her neck while teasing her nipples and clit at the same time[p]
#&f.Imo_Name
Hyaaah[p]
Ah・・・ nnggh・・・[p]
#
Moaning, [emb exp="f.Imo_Name"] moves her hips, rubbing and stimulating my shaft[p]
#&f.Oni_Name3
[emb exp="f.Imo_Name"], your hips are moving.[p]
#&f.Imo_Name
No・・・ nooo・・・[p]
Nn・・・[p]
#
Blushing and twitching all over, she unconsciously moves her hips back and forth to stimulate me.[p]
#&f.Oni_Name3
[emb exp="f.Imo_Name"]'s pussy is overflowing with juices, making lewd sounds.[p]
#
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/03喘ぎ声(前)03.mp3"  loop="true"  ]
[chara_mod  name="H_スキンシップ"  time="0"  cross="false"  storage="chara/9/後方座位11.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Nnn・・・[p]
N-no・・・ ahh・・・[p]
Ahn・・・ Ah・・・[p]
#
She desperately tries to use her reason, trying to stay calm[p]
Sensing that, I persistently attack and tease her nipples and clit[p]
[emb exp="f.Imo_Name"], trying to get even a little pleasure from my dick, no longer hesitates to rock her hips back and forth, rubbing the head against her folds[p]
#&f.Imo_Name
Ah・・ngh・・・[p]
Ahh・・[p]
#&f.Oni_Name3
What do you want, [emb exp="f.Imo_Name"]?[p]
#
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/吐息03.mp3"  loop="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Hah・・hah・・・[p]
P-put・・・it・・・in・・・[p]
#&f.Oni_Name3
Hm? Try saying it louder.[p]
#&f.Imo_Name
Uu・・・[p]
Sh-[emb exp="f.Oni_Name3"]'s dick・・・ p-put it inside・・・[p]
#&f.Oni_Name3
Where?[p]
#&f.Imo_Name
In m-my pussy.[p]
#&f.Oni_Name3
How?[p]
#&f.Imo_Name
・・・[p]
・・・please・・・[p]
Put it in to the root・・・I want you to hit the very back・・・[p]
I want to feel [emb exp="f.Oni_Name3"]'s warmth deep inside・・・[p]
#&f.Oni_Name3
You said it well[p]
Good girl, [emb exp="f.Imo_Name"][p]
#&f.Imo_Name
Fuaaaah・・・[p]
Uuu・・・[p]
#&f.Oni_Name3
Here's a reward[p]
#
[_tb_end_text]

[jump  storage="__Main_SkinShip_H.ks"  target="*__挿入"  ]
[s  ]
[reset_camera  time="1000"  wait="true"  ]
*__挿入

[mask  time="300"  effect="fadeIn"  color="0x000000"  ]
[tb_eval  exp="f.H_Skinship_FirstFlag=1"  name="H_Skinship_FirstFlag"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[chara_hide_all  time="0"  wait="true"  ]
[tb_hide_message_window  ]
[tb_image_hide  time="0"  ]
[tb_start_tyrano_code]
;ステ表示初期化
[clearfix]
[freeimage  layer="2"  ]
[layopt layer="2" visible="true" x=0 y=0]
[_tb_end_tyrano_code]

[bg  time="0"  method="crossfade"  storage="スキンシップ02.png"  ]
[tb_start_tyrano_code]
;初期表示　断面分岐
[chara_show  name="H_スキンシップ挿入"  time="0"  wait="true"  left="160"  top="60"  storage="chara/39/後方座位20.png"  width="760"  height="660" cond="f.H_Danmen_Flag ==0" ]
[chara_show  name="H_スキンシップ挿入"  time="0"  wait="true"  left="160"  top="60"  storage="chara/39/後方座位30.png"  width="760"  height="660" cond="f.H_Danmen_Flag ==1" ]

[_tb_end_tyrano_code]

[call  storage="Main_Sta.ks"  target="*__Hメインステ表示"  ]
[call  storage="__Main_SkinShip_Shori.ks"  target="*__Backアイコン表示"  ]
[call  storage="__Main_SkinShip_Shori.ks"  target="*__射精感初期表示"  ]
[mask_off  time="0"  effect="fadeOut"  ]
[playse  volume="50"  time="1000"  buf="0"  storage="挿入音/挿入音汎用01.mp3"  ]
[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/絶頂声のみ02.mp3"  ]
[tb_start_tyrano_code]
;挿入　断面分岐
[chara_mod  name="H_スキンシップ挿入"  time="0"  cross="false"  storage="chara/39/後方座位アニメ挿入01.png" cond="f.H_Danmen_Flag ==0" ]
[chara_mod  name="H_スキンシップ挿入"  time="0"  cross="false"  storage="chara/39/後方座位アニメ挿入11.png" cond="f.H_Danmen_Flag ==1" ]

[_tb_end_tyrano_code]

[wait  time="2000"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Ah!![p]
Aaah・・・[p]
Hah・・・hah・・・[p]
#
I hold her hips firmly and thrust it all the way to the root, packing it in tight[p]

[_tb_end_text]

[tb_start_tyrano_code]
;挿入　断面分岐
[chara_mod  name="H_スキンシップ挿入"  time="0"  cross="false"  storage="chara/39/後方座位21.png" cond="f.H_Danmen_Flag ==0" ]
[chara_mod  name="H_スキンシップ挿入"  time="0"  cross="false"  storage="chara/39/後方座位31.png" cond="f.H_Danmen_Flag ==1" ]

[_tb_end_tyrano_code]

[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/02喘ぎ声(前)02.mp3"  loop="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Ah・・・amazing・・・[p]
It's b・・・ big・・・[p]
Ah・・hah・・hah・・・[p]
Deep inside・・・ah・・it's hitting・・・[p]
#
Every time we breathe, our bodies shake, and my dick head poke-pokes [emb exp="f.Imo_Name"]'s womb[p]
#&f.Imo_Name
Aaah・・・[p]
#
[emb exp="f.Imo_Name"]'s pussy is tight, but it's overflowing with love juices, so I should be able to thrust smoothly[p]

[_tb_end_text]

[tb_hide_message_window  ]
[jump  storage="__Main_SkinShip_H.ks"  target="*__初期選択肢"  ]
*__断面図飛び先

[tb_start_tyrano_code]
[clearstack]
[wait_cancel]
[_tb_end_tyrano_code]

[call  storage="__Main_SkinShip_Shori.ks"  target="*__動き速さ"  ]
[jump  storage="__Main_SkinShip_H.ks"  target="*__動く100"  cond="f.H_Syaseikan>100"  ]
[jump  storage="__Main_SkinShip_H.ks"  target="*__動く70"  cond="f.H_Syaseikan>70"  ]
[jump  storage="__Main_SkinShip_H.ks"  target="*__動く30"  cond="f.H_Syaseikan>30"  ]
[jump  storage="__Main_SkinShip_H.ks"  target="*__動く"  cond="f.H_Syaseikan>0"  ]
*__初期選択肢

[call  storage="__Main_SkinShip_H.ks"  target="*__右選択肢"  ]
[s  ]
*__動く

[tb_start_tyrano_code]
[clearstack]
[wait_cancel]
[_tb_end_tyrano_code]

[call  storage="__Main_SkinShip_Shori.ks"  target="*__動き速さ"  ]
[call  storage="__Main_SkinShip_H.ks"  target="*__右選択肢"  ]
*__射精感UP30まで

[tb_start_tyrano_code]
;射精感
[wait time="800" cond="f.H_Sex_Speed == 2"]
[wait time="400" cond="f.H_Sex_Speed == 3"]
[wait time="100" cond="f.H_Sex_Speed == 4"]

[eval exp="f.H_Syaseikan += 1"]
[eval exp="f.射精度 = f.H_Syaseikan + '％' "]

[ptext layer=2 text="&f.射精度" x=1060 y=650 size=40 bold="bold" edge="0x000000" width = 100 align = "right" overwrite = "true" name="Syaseikan"]

[_tb_end_tyrano_code]

[call  storage="__Main_SkinShip_Shori.ks"  target="*__セックス中セリフスキン"  ]
[jump  storage="__Main_SkinShip_H.ks"  target="*__射精感UP30まで"  cond="f.H_Syaseikan<30"  ]
[jump  storage="__Main_SkinShip_H.ks"  target="*__30"  ]
[s  ]
*__30

[jump  storage="__Main_SkinShip_H.ks"  target="*__動く"  cond="f.H_Syaseikan<30"  ]
[tb_start_tyrano_code]
[clearfix]
[clearstack]
[_tb_end_tyrano_code]

[call  storage="__Main_SkinShip_Shori.ks"  target="*__Backアイコン表示"  ]
[jump  storage="__Main_SkinShip_H.ks"  target="*__動く30"  cond="f.H_Syaseikan>30"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Ah[p]
Mmh・・・hah[p]
・・Ah・・・[p]
#
[emb exp="f.Imo_Name"] lowers her hips to match my thrusts[p]
In this position, the penetration tends to be shallow, but since our timing is perfectly synced[p]
Every time I thrust up, I crush her womb[p]
#&f.Imo_Name
Ah・・・Aaaah[heart][p]
[emb exp="f.Oni_Name3"][heart]・・・[emb exp="f.Oni_Name3"][heart][p]
Hyaaaah[p]
#
Gradually, [emb exp="f.Imo_Name"]'s hip movements become more intense.[p]
I match the tempo so the timing doesn't slip and thrust up[p]
#&f.Oni_Name3
[emb exp="f.Imo_Name"]・・・You're amazing[p]
#&f.Imo_Name
Ah・・・ nnh・・・[p]
#&f.Oni_Name3
Does it feel good?[p]
#&f.Imo_Name
Ah・・ yeah・・・[p]
Feels・・・ good・・[p]
Ah・・・Ah・・・Aah[heart][p]
#
[emb exp="f.Imo_Name"]'s hips move lewdly[p]
[_tb_end_text]

[tb_hide_message_window  ]
*__動く30

[tb_start_tyrano_code]
[clearstack]
[wait_cancel]
[_tb_end_tyrano_code]

[call  storage="__Main_SkinShip_H.ks"  target="*__右選択肢"  ]
[call  storage="__Main_SkinShip_Shori.ks"  target="*__動き速さ"  ]
*__射精感UP70まで

[tb_start_tyrano_code]
;射精感
[wait time="800" cond="f.H_Sex_Speed == 2"]
[wait time="400" cond="f.H_Sex_Speed == 3"]
[wait time="100" cond="f.H_Sex_Speed == 4"]

[eval exp="f.H_Syaseikan += 1"]
[eval exp="f.射精度 = f.H_Syaseikan + '％' "]

[ptext layer=2 text="&f.射精度" x=1060 y=650 size=40 bold="bold" edge="0x000000" width = 100 align = "right" overwrite = "true" name="Syaseikan"]

[_tb_end_tyrano_code]

[call  storage="__Main_SkinShip_Shori.ks"  target="*__セックス中セリフスキン"  ]
[jump  storage="__Main_SkinShip_H.ks"  target="*__射精感UP70まで"  cond="f.H_Syaseikan<70"  ]
[jump  storage="__Main_SkinShip_H.ks"  target="*__70"  ]
[s  ]
*__70

[jump  storage="__Main_SkinShip_H.ks"  target="*__動く30"  cond="f.H_Syaseikan<30"  ]
[tb_start_tyrano_code]
[clearfix]
[clearstack]
[_tb_end_tyrano_code]

[call  storage="__Main_SkinShip_Shori.ks"  target="*__Backアイコン表示"  ]
[jump  storage="__Main_SkinShip_H.ks"  target="*__動く70"  cond="f.H_Syaseikan>70"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#
I rub the head of my dick against her G-spot to stimulate it[p]
#&f.Imo_Name
Ohh[heart]・・・ Nnn・・・[p]
Ahh[heart][p]
#
[emb exp="f.Imo_Name"]'s reaction clearly changes, and she arches her back[p]
#&f.Imo_Name
Ah[heart]・・・ah・・[p]
Oh[heart]・・・I'm cumming・・・I'm gonna cum・・・[p]
#
I hold [emb exp="f.Imo_Name"]'s hips tight, pressing against her G-spot over and over, and catching the ridge of my dick inside her.[p]
Her hips move as if to escape my thrusts, but I hold her tight and relentlessly keep pounding her.[p]
#&f.Imo_Name
I・・・ I'm cu・・・ ohhh[heart][p]
Cumming, cumming![heart][p]
・・・・ah![p]
・・・Aaaaaah!!![p]
#
Her hips convulse, and her womb contracts[p]
The folds inside her pussy gripped the head of my dick tight, milking it.[p]
Right at this moment, I switch my aim from her G-spot to thrusting up against the back of her womb.[p]

[_tb_end_text]

[tb_start_tyrano_code]
[chara_mod  name="H_スキンシップ挿入"  time="0"  cross="true"  storage="chara/39/後方座位アニメ04.png" cond="f.H_Sex_Speed == 4 && f.H_Danmen_Flag == 0"]
[chara_mod  name="H_スキンシップ挿入"  time="0"  cross="true"  storage="chara/39/後方座位アニメ14.png" cond="f.H_Sex_Speed == 4 && f.H_Danmen_Flag == 1"]

[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
#&f.Imo_Name
Ohh!? [heart][p]
Ohh[heart]・・・[p]
Ahh!! No・・・ no・・・[p]
Aaaaaah, I'm cumming, I'm cumming!![p]
Still・・・ ah!![p]
Ahh [heart][p]
I'm cumming, cumming, cumming!![p]
Aaaaaah・・・ ah [heart][p]
・・・hah・・・ hah・・・ ahh [heart][heart][heart][p]
#
[emb exp="f.Imo_Name"]'s convulsions wouldn't stop, and she kept cumming over and over.[p]
I thrust my hips against her, not letting her get away just yet[p]

[_tb_end_text]

[tb_hide_message_window  ]
*__動く70

[tb_start_tyrano_code]
[clearstack]
[wait_cancel]
[_tb_end_tyrano_code]

[call  storage="__Main_SkinShip_H.ks"  target="*__右選択肢"  ]
[call  storage="__Main_SkinShip_Shori.ks"  target="*__動き速さ"  ]
*__射精感UP100まで

[tb_start_tyrano_code]
;射精感
[wait time="800" cond="f.H_Sex_Speed == 2"]
[wait time="400" cond="f.H_Sex_Speed == 3"]
[wait time="100" cond="f.H_Sex_Speed == 4"]

[eval exp="f.H_Syaseikan += 1"]
[eval exp="f.射精度 = f.H_Syaseikan + '％' "]

[ptext layer=2 text="&f.射精度" x=1060 y=650 size=40 bold="bold" edge="0x000000" width = 100 align = "right" overwrite = "true" name="Syaseikan"]

[_tb_end_tyrano_code]

[call  storage="__Main_SkinShip_Shori.ks"  target="*__セックス中セリフスキン"  ]
[jump  storage="__Main_SkinShip_H.ks"  target="*__射精感UP100まで"  cond="f.H_Syaseikan<100"  ]
[jump  storage="__Main_SkinShip_H.ks"  target="*__100"  ]
[s  ]
*__100

[jump  storage="__Main_SkinShip_H.ks"  target="*__動く70"  cond="f.H_Syaseikan<100"  ]
[tb_start_tyrano_code]
[clearfix]
[clearstack]
[_tb_end_tyrano_code]

[call  storage="__Main_SkinShip_Shori.ks"  target="*__Backアイコン表示"  ]
[jump  storage="__Main_SkinShip_H.ks"  target="*__動く100"  cond="f.H_Syaseikan>100"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#&f.Oni_Name3
Ngh[p]
・・I'm about to cum[p]
#&f.Imo_Name
[emb exp="f.Oni_Name3"]！[emb exp="f.Oni_Name3"]！[heart][p]
#
I move my hips while holding back right at the edge of cumming[p]
[emb exp="f.Imo_Name"] moves her hips even faster, thrusting onto my dick[p]
[emb exp="f.Imo_Name"] seems lost in pleasure and doesn't care about me cumming inside[p]
#&f.Oni_Name3
N-no・・・I'm cumming[p]
#&f.Imo_Name
Ahh[heart][p]
[emb exp="f.Oni_Name3"]！[p]
More・・more・・・[heart][p]
Ahh!![p]
#
Every time I thrust, her pussy tightens, increasing my urge to cum[p]
I can't remember if today was [emb exp="f.Imo_Name"]'s safe day or not[p]
#&f.Oni_Name3
[emb exp="f.Imo_Name"], I'm gonna shoot it all inside[p]
#&f.Imo_Name
Aaaaaah[heart][heart][heart][p]
More!・・・More![p]
Ah[heart]・・Ah aah[heart][p]
I'm cumming[heart]・・I'm cumming[heart][heart][heart][p]
#
Her pussy tightens up over and over, squeezing me dry[p]


[_tb_end_text]

[tb_hide_message_window  ]
*__射精_処理

*__動く100

[tb_start_tyrano_code]
[clearstack]
[wait_cancel]
[_tb_end_tyrano_code]

[call  storage="__Main_SkinShip_H.ks"  target="*__右選択肢"  ]
[call  storage="__Main_SkinShip_Shori.ks"  target="*__動き速さ"  ]
*__射精感120まで

[tb_start_tyrano_code]
;射精感
[wait time="800" cond="f.H_Sex_Speed == 2"]
[wait time="400" cond="f.H_Sex_Speed == 3"]
[wait time="100" cond="f.H_Sex_Speed == 4"]

[eval exp="f.H_Syaseikan += 1"]
[eval exp="f.射精度 = f.H_Syaseikan + '％' "]

[ptext layer=2 text="&f.射精度" x=1060 y=650 size=40 bold="bold" edge="0x000000" width = 100 align = "right" overwrite = "true" name="Syaseikan"]

[_tb_end_tyrano_code]

[call  storage="__Main_SkinShip_Shori.ks"  target="*__セックス中セリフスキン"  ]
[jump  storage="__Main_SkinShip_H.ks"  target="*__射精感120まで"  cond="f.H_Syaseikan<120"  ]
[jump  storage="__Main_SkinShip_H.ks"  target="*__射精中"  cond="f.H_Syaseikan>119"  ]
[s  ]
*__射精中

[tb_start_tyrano_code]
[clearstack]
[wait_cancel]
[clearfix]
[_tb_end_tyrano_code]

[stopse  time="1000"  buf="1"  ]
[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/絶頂声のみ01.mp3"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="えっち系/射精音02.mp3"  ]
[call  storage="__Main_Night_Option.ks"  target="*__中射精エフェクト"  ]
[tb_start_tyrano_code]
;キャラ射精、スピード4の場合差し替え
[chara_mod  name="H_スキンシップ挿入"  time="0"  cross="true"  storage="chara/39/後方座位アニメ射精01.png" cond="f.H_Sex_Speed <= 3 && f.H_Danmen_Flag == 0"]
[chara_mod  name="H_スキンシップ挿入"  time="0"  cross="true"  storage="chara/39/後方座位アニメ射精11.png" cond="f.H_Sex_Speed <= 3 && f.H_Danmen_Flag == 1"]

[chara_mod  name="H_スキンシップ挿入"  time="0"  cross="true"  storage="chara/39/後方座位アニメ射精02.png" cond="f.H_Sex_Speed == 4 && f.H_Danmen_Flag == 0"]
[chara_mod  name="H_スキンシップ挿入"  time="0"  cross="true"  storage="chara/39/後方座位アニメ射精12.png" cond="f.H_Sex_Speed == 4 && f.H_Danmen_Flag == 1"]

[_tb_end_tyrano_code]

[wait  time="6000"  ]
[l  ]
[tb_start_tyrano_code]
;回想用
[jump target="*__射精後処理" cond="tf._tb_is_replay == true"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;中だし回数プラスカウント
[if exp="f.H_Sex_Anal ==0 && f.H_Condom_On ==0"]
[eval exp="f.Sex_Count[3].bestcount += 2"]
[eval exp="f.Sex_Count[4].count += 2"]
[endif]
[_tb_end_tyrano_code]

[call  storage="__Main_Night_Option.ks"  target="*__妊娠判定"  cond=""  ]
[jump  storage="__Main_SkinShip_H.ks"  target="*__射精後処理"  ]
*__射精外

[tb_start_tyrano_code]
[clearstack]
[wait_cancel]
[clearfix]
[_tb_end_tyrano_code]

[playse  volume="100"  time="1000"  buf="1"  storage="えっち系/射精音02.mp3"  ]
[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/絶頂声のみ02.mp3"  ]
[call  storage="__Main_Night_Option.ks"  target="*__外射精エフェクト"  ]
[tb_start_tyrano_code]
;キャラ射精、スピード4の場合差し替え
[chara_mod  name="H_スキンシップ挿入"  time="500"  cross="true"  storage="chara/39/後方座位41.png" cond="f.H_Sex_Speed <= 3"]
[chara_mod  name="H_スキンシップ挿入"  time="500"  cross="true"  storage="chara/39/後方座位42.png" cond="f.H_Sex_Speed == 4"]

[_tb_end_tyrano_code]

[playse  volume="100"  time="1000"  buf="0"  storage="えっち系/射精音02.mp3"  ]
[wait  time="2000"  ]
[l  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#
I manage to pull my shaft out of her squeezing pussy and cum in thick spurts[p]
My cum sprays all over the floor in front of me[p]

[_tb_end_text]

[tb_hide_message_window  ]
*__射精後処理

[call  storage="__Main_SkinShip_Shori.ks"  target="*__射精感を0に"  ]
[bg  time="0"  method="crossfade"  storage="BG_Black.png"  ]
[mask  time="0"  effect="fadeIn"  color="0x000000"  ]
[chara_hide_all  time="0"  wait="true"  ]
[tb_image_hide  time="0"  ]
[tb_start_tyrano_code]
[clearfix]
[clearstack]
[_tb_end_tyrano_code]

[call  storage="Main_Sta.ks"  target="*__メインステ表示"  ]
[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/吐息03.mp3"  loop="true"  ]
[mask_off  time="300"  effect="fadeOut"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Hah・・・ hah・・・[p]
Hah・・・ hah・・・[p]
#
She collapses onto the table in front of me, staying on all fours, burying her face while pointing her pussy at me[p]
#&f.Imo_Name
Hah・・・ hah・・・[p]
#
Her pussy, turned toward me as if to show it off, is still twitching and spasming, overflowing with various fluids from the hole[p]
Every time her hips jerk in a spasm, the fluid drips out in a thick glob[p]
Seeing it drip in a string, my crotch starts to swell again[p]

[_tb_end_text]

[stopse  time="1000"  buf="3"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Eh!?[p]
[emb exp="f.Oni_Name3"]！？[p]
#
I grab [emb exp="f.Imo_Name"]'s hips again and push the head into that gooey mess[p]

[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="えっち系/挿入音01.mp3"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Hyaaa!?[p]
#
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="1"  storage="ピストン系/風俗ピストン03調整版.mp3"  loop="true"  ]
[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/07喘ぎ声(挿入)02.mp3"  loop="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Aah・・・ ahn[heart][p]
Ah[heart]・・・ Ah[heart]・・・ Ahn[heart][heart][p]
#
[emb exp="f.Imo_Name"] understood the situation too, and kept shaking her hips.[p]
Throughout the room, *squelch-slap*・・・ the sound of massive amounts of fluid and skin slapping against each other echoed.[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/09喘ぎ声(挿入)04.mp3"  loop="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Ah[heart]・・・ Ah[heart]・・・ Aaah[heart][heart][p]
#
Until our sexual energy and stamina were completely drained, lewd voices and sounds continued to echo・・・[p]
・・・[p]
[_tb_end_text]

[tb_hide_message_window  ]
[stopse  time="1000"  buf="0"  ]
[stopse  time="1000"  buf="1"  ]
[stopse  time="1000"  buf="3"  fadeout="true"  ]
[tb_start_tyrano_code]
;回想用BGM変更
[playbgm volume="20"  time="1000"  loop="true"  storage="PerituneMaterial_Sea_Breeze_loop.mp3" cond="tf._tb_is_replay == true" ]
[_tb_end_tyrano_code]

*__回想解放用

[tb_replay  id="スキンシップH"  ]
[jump  storage="__Main_friday.ks"  target="*__回想解放用"  cond="sf.Clear_Flag_Kaisou==1"  ]
[tb_start_tyrano_code]
;回数カウント
[eval exp="f.Kaihatu_Count[1].kazu += 1"]
[eval exp="f.Kaihatu_Count[3].kazu += 1"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;回数プラスカウント
[eval exp="f.Sex_Count[1].bestcount += 2"]
[eval exp="f.Sex_Count[5].count += 3"]
[eval exp="f.Sex_Count[7].bestcount += 2"]

[_tb_end_tyrano_code]

[tb_eval  exp="f.Tre_Up=2"  name="Tre_Up"  cmd="="  op="t"  val="2"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__理性DOWN"  ]
[tb_eval  exp="f.Tre_Up=100"  name="Tre_Up"  cmd="="  op="t"  val="100"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__性欲DOWN"  ]
[tb_eval  exp="f.Sys_Seiryoku-=1"  name="Sys_Seiryoku"  cmd="-="  op="t"  val="1"  val_2="undefined"  ]
[tb_start_tyrano_code]
;射精マイナス処理
[if exp="f.Sys_Seiryoku <= 0" ]
[eval exp="f.Sys_Seiryoku = 0"]
[endif]

[_tb_end_tyrano_code]

[call  storage="Main_Sta.ks"  target="*__メインステ表示"  ]
[mask  time="300"  effect="fadeIn"  color="0x000000"  ]
[stopbgm  time="1000"  ]
[call  storage="H_Kaihatu_Upshori.ks"  target="*__開発アップ処理"  ]
[call  storage="_Array_Kaihatu.ks"  target="*__開発配列初期化"  ]
[jump  storage="__Main_Kyuuka.ks"  target="*___イベント終了時間経過"  ]
[s  ]
*__途中でやめる

[tb_hide_message_window  ]
[bg  time="0"  method="crossfade"  storage="BG_Black.png"  ]
[mask  time="0"  effect="fadeIn"  color="0x000000"  ]
[tb_start_tyrano_code]
[clearfix]
[clearstack]
[_tb_end_tyrano_code]

[chara_hide_all  time="0"  wait="true"  ]
[tb_image_hide  time="0"  ]
[stopse  time="1000"  buf="0"  ]
[stopse  time="1000"  buf="1"  ]
[stopse  time="1000"  buf="3"  ]
[mask_off  time="700"  effect="fadeOut"  ]
[call  storage="Main_Sta.ks"  target="*__メインステ表示"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#
Let's stop here・・・[p]
#
[_tb_end_text]

[tb_eval  exp="f.Tre_Up=100"  name="Tre_Up"  cmd="="  op="t"  val="100"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__性欲DOWN"  ]
[call  storage="Main_Sta.ks"  target="*__メインステ表示"  ]
[mask  time="300"  effect="fadeIn"  color="0x000000"  ]
[stopbgm  time="1000"  ]
[tb_hide_message_window  ]
[call  storage="H_Kaihatu_Upshori.ks"  target="*__開発アップ処理"  ]
[call  storage="_Array_Kaihatu.ks"  target="*__開発配列初期化"  ]
[jump  storage="__Main_Kyuuka.ks"  target="*___イベント終了時間経過"  ]
[s  ]
*__右選択肢

[font  size="14"  color="0x000000"  face="JKG-M_3"  ]
[tb_start_tyrano_code]
[clearfix]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;右側の選択肢　fix仕様なので注意　射精感により表示分岐
[iscript]
if (f.H_Syaseikan === 0) {
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

[glink  color="btn_05_black"  size="20" storage="__Main_SkinShip_H.ks" target=&f.Target  text="Slow thrust"  x="1030"  y="100" fix="true" width=200 exp="f.H_Sex_Speed =2" enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3"]
[glink  color="btn_05_black"  size="20" storage="__Main_SkinShip_H.ks" target=&f.Target  text="Hard thrust"  x="1030"  y="160" fix="true" width=200 exp="f.H_Sex_Speed =3" enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3"]
[glink  color="btn_05_black"  size="20" storage="__Main_SkinShip_H.ks" target=&f.Target  text="Max thrust"  x="1030"  y="220" fix="true" width=200 exp="f.H_Sex_Speed =4" enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3"]
[glink  color="btn_05_black"  size="20" storage="__Main_SkinShip_H.ks" target= "*__断面図飛び先"  text="Cross-section ON"  x="30"  y="100" fix="true" width=200 exp="f.H_Danmen_Flag =1"  cond="f.H_Danmen_Flag == 0" enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3"]
[glink  color="btn_05_black"  size="20" storage="__Main_SkinShip_H.ks" target= "*__断面図飛び先"  text="Cross-section OFF"  x="30"  y="100" fix="true" width=200 exp="f.H_Danmen_Flag =0"  cond="f.H_Danmen_Flag == 1" enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3"]


[if exp="f.H_Syaseikan >=100""]
[glink  color="btn_05_black"  size="20" storage="__Main_SkinShip_H.ks" target="*__射精中"  text="Cum inside"  x="1030"  y="400" fix="true" width=200 enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3"]
[glink  color="btn_05_black"  size="20" storage="__Main_SkinShip_H.ks" target="*__射精外"  text="Cum outside"  x="1030"  y="460" fix="true" width=200 enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3"]
[endif]


[_tb_end_tyrano_code]

[resetfont  ]
[call  storage="__Main_SkinShip_Shori.ks"  target="*__Backアイコン表示"  ]
[return  ]
