[_tb_system_call storage=system/_Live_H_Shori.ks]

[camera  time="1000"  zoom="1"  wait="true"  ]
*__Backアイコン表示

[tb_start_tyrano_code]
;Backアイコン
[button  storage="Live_H.ks"  target="*__途中でやめる"  graphic="やめるアイコン.png"  width="110"  height="110"  x="1165"  y="602"  name="H_Back_Icon" fix="true"]
[_tb_end_tyrano_code]

[return  ]
*__射精感初期表示

[tb_start_tyrano_code]
;射精感
[free name="Syasei_Uemoji" layer=2]
[free name="Syaseikan" layer=2]

[ptext layer=2 text="Ejaculation Gauge" x=1060 y=630 size=15 bold="bold" edge="0x000000" name="Syasei_Uemoji"]
[eval exp="f.射精度 = f.H_Syaseikan + '％' "]
[ptext layer=2 text="&f.射精度" x=1060 y=650 size=40 bold="bold" edge="0x000000" width = 100 align = "right" name="Syaseikan"]
[_tb_end_tyrano_code]

[return  ]
*__射精感UP15%まで

[tb_start_tyrano_code]
;射精感
[wait time="500" cond="f.H_Sex_Speed == 2"]
[wait time="400" cond="f.H_Sex_Speed == 3"]
[wait time="300" cond="f.H_Sex_Speed == 4"]

[eval exp="f.H_Syaseikan += 1"]
[eval exp="f.射精度 = f.H_Syaseikan + '％' "]

[ptext layer=2 text="&f.射精度" x=1060 y=650 size=40 bold="bold" edge="0x000000" width = 100 align = "right" overwrite = "true" name="Syaseikan"]

[_tb_end_tyrano_code]

[intrandom_ko10panda  max="4"  count="1"  show_result="false"  show_style="style_a"  show_detail="false"  detail_length="10"  show_log="log_4"  var_name="f.rand"  ]
[tb_start_tyrano_code]
;継続セリフランダム

[if exp="f.H_Good % 10 == 0"]
[if exp="f.H_Good >= 200 && f.H_Good < 210"]
[ptext layer="1" x="710" y="180" size="20" text="Cumming!♥" name="Serifu01"  zindex=100 edge="0xffffff" color="0x000000" edge="0xffffff" face="JK-Gothic-testM"  bold="true"]
[anim name="Serifu01" left=730 top=160  opacity=0 time=3000]

[elsif exp="f.H_Good >= 210 && f.H_Good < 220"]
[ptext layer="1" x="710" y="180" size="20" text="I'm gonna cum!♥" name="Serifu01"  zindex=100 edge="0xffffff" color="0x000000" edge="0xffffff" face="JK-Gothic-testM"  bold="true"]
[anim name="Serifu01" left=730 top=160  opacity=0 time=3000]

[elsif exp="f.H_Good >= 220"]
[ptext layer="1" x="710" y="180" size="20" text="Ahh⑹⑹ahhh!!" name="Serifu01"  zindex=100 edge="0xffffff" color="0x000000" edge="0xffffff" face="JK-Gothic-testM"  bold="true"]
[anim name="Serifu01" left=730 top=160  opacity=0 time=3000]


[elsif exp="f.H_Good >= 0 && f.H_Good < 200"]
[switch exp="f.rand"]
[case is=0]
[ptext layer="1" x="710" y="180" size="20" text="Aaaah♥" name="Serifu01"  zindex=100 edge="0xffffff" color="0x000000" edge="0xffffff" face="JK-Gothic-testM"  bold="true"]
[anim name="Serifu01" left=730 top=160  opacity=0 time=3000]

[case is=1]
[ptext layer="1" x="710" y="180" size="20" text="Nnaah" name="Serifu01"  zindex=100 edge="0xffffff" color="0x000000" edge="0xffffff" face="JK-Gothic-testM"  bold="true"]
[anim name="Serifu01" left=730 top=160  opacity=0 time=3000]

[case is=2]
[ptext layer="1" x="710" y="180" size="20" text="Haah" name="Serifu01"  zindex=100 edge="0xffffff" color="0x000000" edge="0xffffff" face="JK-Gothic-testM"  bold="true"]
[anim name="Serifu01" left=730 top=160  opacity=0 time=3000]

[case is=3]
[ptext layer="1" x="710" y="180" size="20" text="⑹Ngh♥" name="Serifu01"  zindex=100 edge="0xffffff" color="0x000000" edge="0xffffff" face="JK-Gothic-testM"  bold="true"]
[anim name="Serifu01" left=730 top=160  opacity=0 time=3000]

[case is=4]
[ptext layer="1" x="710" y="180" size="20" text="I'm c⑹umming" name="Serifu01"  zindex=100 edge="0xffffff" color="0x000000" edge="0xffffff" face="JK-Gothic-testM"  bold="true"]
[anim name="Serifu01" left=730 top=160  opacity=0 time=3000]

[endswitch]
[endif]
[endif]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;継続効果音ランダム

[if exp="f.H_Good % 5 == 0"]

[switch exp="f.rand"]
[case is=0]
[ptext layer="1" x="710" y="580" size="30" text="Slurp" name="Kouka01"  zindex=100 edge="0xffffff" color="0x000000" edge="0xffffff" face="JK-Gothic-testM"  bold="true"]
[anim name="Kouka01" left=730 top=560  opacity=0 time=3000]

[case is=1]
[ptext layer="1" x="510" y="580" size="30" text="Pop" name="Kouka02"  zindex=100 edge="0xffffff" color="0x000000" edge="0xffffff" face="JK-Gothic-testM"  bold="true"]
[anim name="Kouka02" left=490 top=560  opacity=0 time=3000]

[case is=2]
[ptext layer="1" x="710" y="580" size="30" text="Schlick" name="Kouka01"  zindex=100 edge="0xffffff" color="0x000000" edge="0xffffff" face="JK-Gothic-testM"  bold="true"]
[anim name="Kouka01" left=730 top=560  opacity=0 time=3000]

[case is=3]
[ptext layer="1" x="510" y="580" size="30" text="Suck" name="Kouka02"  zindex=100 edge="0xffffff" color="0x000000" edge="0xffffff" face="JK-Gothic-testM"  bold="true"]
[anim name="Kouka02" left=490 top=560  opacity=0 time=3000]

[case is=4]
[ptext layer="1" x="710" y="580" size="30" text="Slurp" name="Kouka01"  zindex=100 edge="0xffffff" color="0x000000" edge="0xffffff" face="JK-Gothic-testM"  bold="true"]
[anim name="Kouka01" left=730 top=560  opacity=0 time=3000]

[case is=5]
[ptext layer="1" x="510" y="580" size="30" text="Squelch" name="Kouka02"  zindex=100 edge="0xffffff" color="0x000000" edge="0xffffff" face="JK-Gothic-testM"  bold="true"]
[anim name="Kouka02" left=490 top=560  opacity=0 time=3000]

[endswitch]
[endif]
[_tb_end_tyrano_code]

[jump  storage="Live_H_Shori.ks"  target="*__射精感UP15%まで"  cond="f.H_Syaseikan<15"  ]
[return  ]
*__射精感UP30%まで

[tb_start_tyrano_code]
;射精感
[wait time="800" cond="f.H_Sex_Speed == 2"]
[wait time="400" cond="f.H_Sex_Speed == 3"]
[wait time="300" cond="f.H_Sex_Speed == 4"]

[eval exp="f.H_Syaseikan += 1"]
[eval exp="f.射精度 = f.H_Syaseikan + '％' "]

[ptext layer=2 text="&f.射精度" x=1060 y=650 size=40 bold="bold" edge="0x000000" width = 100 align = "right" overwrite = "true" name="Syaseikan"]

[_tb_end_tyrano_code]

[intrandom_ko10panda  max="4"  count="1"  show_result="false"  show_style="style_a"  show_detail="false"  detail_length="10"  show_log="log_4"  var_name="f.rand"  ]
[tb_start_tyrano_code]
;継続セリフランダム

[if exp="f.H_Good % 10 == 0"]
[if exp="f.H_Good >= 200 && f.H_Good < 210"]
[ptext layer="1" x="710" y="180" size="20" text="Cumming!♥" name="Serifu01"  zindex=100 edge="0xffffff" color="0x000000" edge="0xffffff" face="JK-Gothic-testM"  bold="true"]
[anim name="Serifu01" left=730 top=160  opacity=0 time=3000]

[elsif exp="f.H_Good >= 210 && f.H_Good < 220"]
[ptext layer="1" x="710" y="180" size="20" text="I'm gonna cum!♥" name="Serifu01"  zindex=100 edge="0xffffff" color="0x000000" edge="0xffffff" face="JK-Gothic-testM"  bold="true"]
[anim name="Serifu01" left=730 top=160  opacity=0 time=3000]

[elsif exp="f.H_Good >= 220"]
[ptext layer="1" x="710" y="180" size="20" text="Ahh⑹⑹ahhh!!" name="Serifu01"  zindex=100 edge="0xffffff" color="0x000000" edge="0xffffff" face="JK-Gothic-testM"  bold="true"]
[anim name="Serifu01" left=730 top=160  opacity=0 time=3000]


[elsif exp="f.H_Good >= 0 && f.H_Good < 200"]
[switch exp="f.rand"]
[case is=0]
[ptext layer="1" x="710" y="180" size="20" text="Aaaah♥" name="Serifu01"  zindex=100 edge="0xffffff" color="0x000000" edge="0xffffff" face="JK-Gothic-testM"  bold="true"]
[anim name="Serifu01" left=730 top=160  opacity=0 time=3000]

[case is=1]
[ptext layer="1" x="710" y="180" size="20" text="Nnaah" name="Serifu01"  zindex=100 edge="0xffffff" color="0x000000" edge="0xffffff" face="JK-Gothic-testM"  bold="true"]
[anim name="Serifu01" left=730 top=160  opacity=0 time=3000]

[case is=2]
[ptext layer="1" x="710" y="180" size="20" text="Haah" name="Serifu01"  zindex=100 edge="0xffffff" color="0x000000" edge="0xffffff" face="JK-Gothic-testM"  bold="true"]
[anim name="Serifu01" left=730 top=160  opacity=0 time=3000]

[case is=3]
[ptext layer="1" x="710" y="180" size="20" text="⑹ Ngh♥" name="Serifu01"  zindex=100 edge="0xffffff" color="0x000000" edge="0xffffff" face="JK-Gothic-testM"  bold="true"]
[anim name="Serifu01" left=730 top=160  opacity=0 time=3000]

[case is=4]
[ptext layer="1" x="710" y="180" size="20" text="I'm c⑹umming" name="Serifu01"  zindex=100 edge="0xffffff" color="0x000000" edge="0xffffff" face="JK-Gothic-testM"  bold="true"]
[anim name="Serifu01" left=730 top=160  opacity=0 time=3000]

[endswitch]
[endif]
[endif]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;継続効果音ランダム

[if exp="f.H_Good % 5 == 0"]

[switch exp="f.rand"]
[case is=0]
[ptext layer="1" x="710" y="580" size="30" text="Slurp" name="Kouka01"  zindex=100 edge="0xffffff" color="0x000000" edge="0xffffff" face="JK-Gothic-testM"  bold="true"]
[anim name="Kouka01" left=730 top=560  opacity=0 time=3000]

[case is=1]
[ptext layer="1" x="510" y="580" size="30" text="Pop" name="Kouka02"  zindex=100 edge="0xffffff" color="0x000000" edge="0xffffff" face="JK-Gothic-testM"  bold="true"]
[anim name="Kouka02" left=490 top=560  opacity=0 time=3000]

[case is=2]
[ptext layer="1" x="710" y="580" size="30" text="Schlick" name="Kouka01"  zindex=100 edge="0xffffff" color="0x000000" edge="0xffffff" face="JK-Gothic-testM"  bold="true"]
[anim name="Kouka01" left=730 top=560  opacity=0 time=3000]

[case is=3]
[ptext layer="1" x="510" y="580" size="30" text="Suck" name="Kouka02"  zindex=100 edge="0xffffff" color="0x000000" edge="0xffffff" face="JK-Gothic-testM"  bold="true"]
[anim name="Kouka02" left=490 top=560  opacity=0 time=3000]

[case is=4]
[ptext layer="1" x="710" y="580" size="30" text="Slurp" name="Kouka01"  zindex=100 edge="0xffffff" color="0x000000" edge="0xffffff" face="JK-Gothic-testM"  bold="true"]
[anim name="Kouka01" left=730 top=560  opacity=0 time=3000]

[case is=5]
[ptext layer="1" x="510" y="580" size="30" text="Squelch" name="Kouka02"  zindex=100 edge="0xffffff" color="0x000000" edge="0xffffff" face="JK-Gothic-testM"  bold="true"]
[anim name="Kouka02" left=490 top=560  opacity=0 time=3000]

[endswitch]
[endif]
[_tb_end_tyrano_code]

[jump  storage="Live_H_Shori.ks"  target="*__射精感UP30%まで"  cond="f.H_Syaseikan<30"  ]
[return  ]
*__射精感UP70%まで

[tb_start_tyrano_code]
;射精感
[wait time="800" cond="f.H_Sex_Speed == 2"]
[wait time="400" cond="f.H_Sex_Speed == 3"]
[wait time="300" cond="f.H_Sex_Speed == 4"]

[eval exp="f.H_Syaseikan += 1"]
[eval exp="f.射精度 = f.H_Syaseikan + '％' "]

[ptext layer=2 text="&f.射精度" x=1060 y=650 size=40 bold="bold" edge="0x000000" width = 100 align = "right" overwrite = "true" name="Syaseikan"]

[_tb_end_tyrano_code]

[intrandom_ko10panda  max="4"  count="1"  show_result="false"  show_style="style_a"  show_detail="false"  detail_length="10"  show_log="log_4"  var_name="f.rand"  ]
[tb_start_tyrano_code]
;継続セリフランダム

[if exp="f.H_Good % 10 == 0"]
[if exp="f.H_Good >= 200 && f.H_Good < 210"]
[ptext layer="1" x="710" y="180" size="20" text="Cumming!♥" name="Serifu01"  zindex=100 edge="0xffffff" color="0x000000" edge="0xffffff" face="JK-Gothic-testM"  bold="true"]
[anim name="Serifu01" left=730 top=160  opacity=0 time=3000]

[elsif exp="f.H_Good >= 210 && f.H_Good < 220"]
[ptext layer="1" x="710" y="180" size="20" text="I'm gonna cum!♥" name="Serifu01"  zindex=100 edge="0xffffff" color="0x000000" edge="0xffffff" face="JK-Gothic-testM"  bold="true"]
[anim name="Serifu01" left=730 top=160  opacity=0 time=3000]

[elsif exp="f.H_Good >= 220"]
[ptext layer="1" x="710" y="180" size="20" text="Ahh⑹⑹ahhh!!" name="Serifu01"  zindex=100 edge="0xffffff" color="0x000000" edge="0xffffff" face="JK-Gothic-testM"  bold="true"]
[anim name="Serifu01" left=730 top=160  opacity=0 time=3000]


[elsif exp="f.H_Good >= 0 && f.H_Good < 200"]
[switch exp="f.rand"]
[case is=0]
[ptext layer="1" x="710" y="180" size="20" text="Aaaah♥" name="Serifu01"  zindex=100 edge="0xffffff" color="0x000000" edge="0xffffff" face="JK-Gothic-testM"  bold="true"]
[anim name="Serifu01" left=730 top=160  opacity=0 time=3000]

[case is=1]
[ptext layer="1" x="710" y="180" size="20" text="Nnaah" name="Serifu01"  zindex=100 edge="0xffffff" color="0x000000" edge="0xffffff" face="JK-Gothic-testM"  bold="true"]
[anim name="Serifu01" left=730 top=160  opacity=0 time=3000]

[case is=2]
[ptext layer="1" x="710" y="180" size="20" text="Haah" name="Serifu01"  zindex=100 edge="0xffffff" color="0x000000" edge="0xffffff" face="JK-Gothic-testM"  bold="true"]
[anim name="Serifu01" left=730 top=160  opacity=0 time=3000]

[case is=3]
[ptext layer="1" x="710" y="180" size="20" text="⑹Ngh♥" name="Serifu01"  zindex=100 edge="0xffffff" color="0x000000" edge="0xffffff" face="JK-Gothic-testM"  bold="true"]
[anim name="Serifu01" left=730 top=160  opacity=0 time=3000]

[case is=4]
[ptext layer="1" x="710" y="180" size="20" text="I'm c⑹umming" name="Serifu01"  zindex=100 edge="0xffffff" color="0x000000" edge="0xffffff" face="JK-Gothic-testM"  bold="true"]
[anim name="Serifu01" left=730 top=160  opacity=0 time=3000]

[endswitch]
[endif]
[endif]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;継続効果音ランダム

[if exp="f.H_Good % 5 == 0"]

[switch exp="f.rand"]
[case is=0]
[ptext layer="1" x="710" y="580" size="30" text="Slurp" name="Kouka01"  zindex=100 edge="0xffffff" color="0x000000" edge="0xffffff" face="JK-Gothic-testM"  bold="true"]
[anim name="Kouka01" left=730 top=560  opacity=0 time=3000]

[case is=1]
[ptext layer="1" x="510" y="580" size="30" text="Pop" name="Kouka02"  zindex=100 edge="0xffffff" color="0x000000" edge="0xffffff" face="JK-Gothic-testM"  bold="true"]
[anim name="Kouka02" left=490 top=560  opacity=0 time=3000]

[case is=2]
[ptext layer="1" x="710" y="580" size="30" text="Schlick" name="Kouka01"  zindex=100 edge="0xffffff" color="0x000000" edge="0xffffff" face="JK-Gothic-testM"  bold="true"]
[anim name="Kouka01" left=730 top=560  opacity=0 time=3000]

[case is=3]
[ptext layer="1" x="510" y="580" size="30" text="Suck" name="Kouka02"  zindex=100 edge="0xffffff" color="0x000000" edge="0xffffff" face="JK-Gothic-testM"  bold="true"]
[anim name="Kouka02" left=490 top=560  opacity=0 time=3000]

[case is=4]
[ptext layer="1" x="710" y="580" size="30" text="Slurp" name="Kouka01"  zindex=100 edge="0xffffff" color="0x000000" edge="0xffffff" face="JK-Gothic-testM"  bold="true"]
[anim name="Kouka01" left=730 top=560  opacity=0 time=3000]

[case is=5]
[ptext layer="1" x="510" y="580" size="30" text="Squelch" name="Kouka02"  zindex=100 edge="0xffffff" color="0x000000" edge="0xffffff" face="JK-Gothic-testM"  bold="true"]
[anim name="Kouka02" left=490 top=560  opacity=0 time=3000]

[endswitch]
[endif]
[_tb_end_tyrano_code]

[jump  storage="Live_H_Shori.ks"  target="*__射精感UP70%まで"  cond="f.H_Syaseikan<70"  ]
[return  ]
*__射精感UP100%まで

[tb_start_tyrano_code]
;射精感
[wait time="800" cond="f.H_Sex_Speed == 2"]
[wait time="400" cond="f.H_Sex_Speed == 3"]
[wait time="300" cond="f.H_Sex_Speed == 4"]

[eval exp="f.H_Syaseikan += 1"]
[eval exp="f.射精度 = f.H_Syaseikan + '％' "]

[ptext layer=2 text="&f.射精度" x=1060 y=650 size=40 bold="bold" edge="0x000000" width = 100 align = "right" overwrite = "true" name="Syaseikan"]

[_tb_end_tyrano_code]

[intrandom_ko10panda  max="4"  count="1"  show_result="false"  show_style="style_a"  show_detail="false"  detail_length="10"  show_log="log_4"  var_name="f.rand"  ]
[tb_start_tyrano_code]
;継続セリフランダム

[if exp="f.H_Good % 10 == 0"]
[if exp="f.H_Good >= 200 && f.H_Good < 210"]
[ptext layer="1" x="710" y="180" size="20" text="Cumming!♥" name="Serifu01"  zindex=100 edge="0xffffff" color="0x000000" edge="0xffffff" face="JK-Gothic-testM"  bold="true"]
[anim name="Serifu01" left=730 top=160  opacity=0 time=3000]

[elsif exp="f.H_Good >= 210 && f.H_Good < 220"]
[ptext layer="1" x="710" y="180" size="20" text="I'm gonna cum!♥" name="Serifu01"  zindex=100 edge="0xffffff" color="0x000000" edge="0xffffff" face="JK-Gothic-testM"  bold="true"]
[anim name="Serifu01" left=730 top=160  opacity=0 time=3000]

[elsif exp="f.H_Good >= 220"]
[ptext layer="1" x="710" y="180" size="20" text="Ah⑹⑹aahhh!!" name="Serifu01"  zindex=100 edge="0xffffff" color="0x000000" edge="0xffffff" face="JK-Gothic-testM"  bold="true"]
[anim name="Serifu01" left=730 top=160  opacity=0 time=3000]


[elsif exp="f.H_Good >= 0 && f.H_Good < 200"]
[switch exp="f.rand"]
[case is=0]
[ptext layer="1" x="710" y="180" size="20" text="Aaaah♥" name="Serifu01"  zindex=100 edge="0xffffff" color="0x000000" edge="0xffffff" face="JK-Gothic-testM"  bold="true"]
[anim name="Serifu01" left=730 top=160  opacity=0 time=3000]

[case is=1]
[ptext layer="1" x="710" y="180" size="20" text="Nnaah" name="Serifu01"  zindex=100 edge="0xffffff" color="0x000000" edge="0xffffff" face="JK-Gothic-testM"  bold="true"]
[anim name="Serifu01" left=730 top=160  opacity=0 time=3000]

[case is=2]
[ptext layer="1" x="710" y="180" size="20" text="Haah" name="Serifu01"  zindex=100 edge="0xffffff" color="0x000000" edge="0xffffff" face="JK-Gothic-testM"  bold="true"]
[anim name="Serifu01" left=730 top=160  opacity=0 time=3000]

[case is=3]
[ptext layer="1" x="710" y="180" size="20" text="⑹ Ngh♥" name="Serifu01"  zindex=100 edge="0xffffff" color="0x000000" edge="0xffffff" face="JK-Gothic-testM"  bold="true"]
[anim name="Serifu01" left=730 top=160  opacity=0 time=3000]

[case is=4]
[ptext layer="1" x="710" y="180" size="20" text="I'm c⑹umming" name="Serifu01"  zindex=100 edge="0xffffff" color="0x000000" edge="0xffffff" face="JK-Gothic-testM"  bold="true"]
[anim name="Serifu01" left=730 top=160  opacity=0 time=3000]

[endswitch]
[endif]
[endif]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;継続効果音ランダム

[if exp="f.H_Good % 5 == 0"]

[switch exp="f.rand"]
[case is=0]
[ptext layer="1" x="710" y="580" size="30" text="Slurp" name="Kouka01"  zindex=100 edge="0xffffff" color="0x000000" edge="0xffffff" face="JK-Gothic-testM"  bold="true"]
[anim name="Kouka01" left=730 top=560  opacity=0 time=3000]

[case is=1]
[ptext layer="1" x="510" y="580" size="30" text="Pop" name="Kouka02"  zindex=100 edge="0xffffff" color="0x000000" edge="0xffffff" face="JK-Gothic-testM"  bold="true"]
[anim name="Kouka02" left=490 top=560  opacity=0 time=3000]

[case is=2]
[ptext layer="1" x="710" y="580" size="30" text="Schlick" name="Kouka01"  zindex=100 edge="0xffffff" color="0x000000" edge="0xffffff" face="JK-Gothic-testM"  bold="true"]
[anim name="Kouka01" left=730 top=560  opacity=0 time=3000]

[case is=3]
[ptext layer="1" x="510" y="580" size="30" text="Suck" name="Kouka02"  zindex=100 edge="0xffffff" color="0x000000" edge="0xffffff" face="JK-Gothic-testM"  bold="true"]
[anim name="Kouka02" left=490 top=560  opacity=0 time=3000]

[case is=4]
[ptext layer="1" x="710" y="580" size="30" text="Slurp" name="Kouka01"  zindex=100 edge="0xffffff" color="0x000000" edge="0xffffff" face="JK-Gothic-testM"  bold="true"]
[anim name="Kouka01" left=730 top=560  opacity=0 time=3000]

[case is=5]
[ptext layer="1" x="510" y="580" size="30" text="Squelch" name="Kouka02"  zindex=100 edge="0xffffff" color="0x000000" edge="0xffffff" face="JK-Gothic-testM"  bold="true"]
[anim name="Kouka02" left=490 top=560  opacity=0 time=3000]

[endswitch]
[endif]
[_tb_end_tyrano_code]

[jump  storage="Live_H_Shori.ks"  target="*__射精感UP100%まで"  cond="f.H_Syaseikan<100"  ]
[return  ]
*__射精感120%まで

[tb_start_tyrano_code]
;射精感
[wait time="800" cond="f.H_Sex_Speed == 2"]
[wait time="400" cond="f.H_Sex_Speed == 3"]
[wait time="300" cond="f.H_Sex_Speed == 4"]

[eval exp="f.H_Syaseikan += 1"]
[eval exp="f.射精度 = f.H_Syaseikan + '％' "]

[ptext layer=2 text="&f.射精度" x=1060 y=650 size=40 bold="bold" edge="0x000000" width = 100 align = "right" overwrite = "true" name="Syaseikan"]

[_tb_end_tyrano_code]

[intrandom_ko10panda  max="4"  count="1"  show_result="false"  show_style="style_a"  show_detail="false"  detail_length="10"  show_log="log_4"  var_name="f.rand"  ]
[tb_start_tyrano_code]
;継続セリフランダム

[if exp="f.H_Good % 10 == 0"]
[if exp="f.H_Good >= 200 && f.H_Good < 210"]
[ptext layer="1" x="710" y="180" size="20" text="Cumming!♥" name="Serifu01"  zindex=100 edge="0xffffff" color="0x000000" edge="0xffffff" face="JK-Gothic-testM"  bold="true"]
[anim name="Serifu01" left=730 top=160  opacity=0 time=3000]

[elsif exp="f.H_Good >= 210 && f.H_Good < 220"]
[ptext layer="1" x="710" y="180" size="20" text="I'm cumming!♥" name="Serifu01"  zindex=100 edge="0xffffff" color="0x000000" edge="0xffffff" face="JK-Gothic-testM"  bold="true"]
[anim name="Serifu01" left=730 top=160  opacity=0 time=3000]

[elsif exp="f.H_Good >= 220"]
[ptext layer="1" x="710" y="180" size="20" text="Ahh⑹⑹ahhh!!" name="Serifu01"  zindex=100 edge="0xffffff" color="0x000000" edge="0xffffff" face="JK-Gothic-testM"  bold="true"]
[anim name="Serifu01" left=730 top=160  opacity=0 time=3000]


[elsif exp="f.H_Good >= 0 && f.H_Good < 200"]
[switch exp="f.rand"]
[case is=0]
[ptext layer="1" x="710" y="180" size="20" text="Ah⑹aaah" name="Serifu01"  zindex=100 edge="0xffffff" color="0x000000" edge="0xffffff" face="JK-Gothic-testM"  bold="true"]
[anim name="Serifu01" left=730 top=160  opacity=0 time=3000]

[case is=1]
[ptext layer="1" x="710" y="180" size="20" text="Nnahh" name="Serifu01"  zindex=100 edge="0xffffff" color="0x000000" edge="0xffffff" face="JK-Gothic-testM"  bold="true"]
[anim name="Serifu01" left=730 top=160  opacity=0 time=3000]

[case is=2]
[ptext layer="1" x="710" y="180" size="20" text="Haah" name="Serifu01"  zindex=100 edge="0xffffff" color="0x000000" edge="0xffffff" face="JK-Gothic-testM"  bold="true"]
[anim name="Serifu01" left=730 top=160  opacity=0 time=3000]

[case is=3]
[ptext layer="1" x="710" y="180" size="20" text="⑹Ngh♥" name="Serifu01"  zindex=100 edge="0xffffff" color="0x000000" edge="0xffffff" face="JK-Gothic-testM"  bold="true"]
[anim name="Serifu01" left=730 top=160  opacity=0 time=3000]

[case is=4]
[ptext layer="1" x="710" y="180" size="20" text="I'm c⑹umming" name="Serifu01"  zindex=100 edge="0xffffff" color="0x000000" edge="0xffffff" face="JK-Gothic-testM"  bold="true"]
[anim name="Serifu01" left=730 top=160  opacity=0 time=3000]

[endswitch]
[endif]
[endif]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;継続効果音ランダム

[if exp="f.H_Good % 5 == 0"]

[switch exp="f.rand"]
[case is=0]
[ptext layer="1" x="710" y="580" size="30" text="Slurp♥" name="Kouka01"  zindex=100 edge="0xffffff" color="0x000000" edge="0xffffff" face="JK-Gothic-testM"  bold="true"]
[anim name="Kouka01" left=730 top=560  opacity=0 time=3000]

[case is=1]
[ptext layer="1" x="510" y="580" size="30" text="Pop♥" name="Kouka02"  zindex=100 edge="0xffffff" color="0x000000" edge="0xffffff" face="JK-Gothic-testM"  bold="true"]
[anim name="Kouka02" left=490 top=560  opacity=0 time=3000]

[case is=2]
[ptext layer="1" x="710" y="580" size="30" text="Schlick♥" name="Kouka01"  zindex=100 edge="0xffffff" color="0x000000" edge="0xffffff" face="JK-Gothic-testM"  bold="true"]
[anim name="Kouka01" left=730 top=560  opacity=0 time=3000]

[case is=3]
[ptext layer="1" x="510" y="580" size="30" text="Slurp♥" name="Kouka02"  zindex=100 edge="0xffffff" color="0x000000" edge="0xffffff" face="JK-Gothic-testM"  bold="true"]
[anim name="Kouka02" left=490 top=560  opacity=0 time=3000]

[case is=4]
[ptext layer="1" x="710" y="580" size="30" text="Suck♥" name="Kouka01"  zindex=100 edge="0xffffff" color="0x000000" edge="0xffffff" face="JK-Gothic-testM"  bold="true"]
[anim name="Kouka01" left=730 top=560  opacity=0 time=3000]

[case is=5]
[ptext layer="1" x="510" y="580" size="30" text="Squelch♥" name="Kouka02"  zindex=100 edge="0xffffff" color="0x000000" edge="0xffffff" face="JK-Gothic-testM"  bold="true"]
[anim name="Kouka02" left=490 top=560  opacity=0 time=3000]

[endswitch]
[endif]
[_tb_end_tyrano_code]

[jump  storage="Live_H_Shori.ks"  target="*__射精感120%まで"  cond="f.H_Syaseikan<120"  ]
[return  ]
[chara_mod  name="H_トイレ"  time="0"  cross="false"  storage="chara/34/トイレH02.png"  ]
*__射精感を0に

[tb_start_tyrano_code]
;射精感0処理
[eval exp="f.H_Syaseikan = 0"]
[eval exp="f.Sys_Seiryoku -= 1"]

[eval exp="f.射精度 = f.H_Syaseikan + '％' "]
[ptext layer=2 text="&f.射精度" x=1060 y=650 size=40 bold="bold" edge="0x000000" width = 100 align = "right" overwrite = "true" name="Syaseikan"]
[_tb_end_tyrano_code]

[return  ]
*__動き速さ

[tb_start_tyrano_code]
;キャラのピストン速度、キャラ【画像変更】30%まで
[if exp="f.H_Syaseikan <15"]
[if exp="f.H_Sex_Speed ==2"]
[chara_mod  name="H_トイレ"  time="0"  cross="true"  storage="chara/34/トイレHアニメ01.png"]
[playse  volume="20"  time="1000"  buf="1"  storage="えっち系/クチュ音１.mp3"  loop="true"  ]
[playse  volume="50"  time="1000"  buf="3"  storage="喘ぎ声/吐息03.mp3"  loop="true"  ]
[endif]

[elsif exp="f.H_Syaseikan >=15 && f.H_Syaseikan < 30"]
[chara_mod  name="H_トイレ"  time="0"  cross="true"  storage="chara/34/トイレHアニメ21.png"]
[playse  volume="30"  time="1000"  buf="3"  storage="喘ぎ声/02喘ぎ声(前)02.mp3"  loop="true"  ]


;キャラのピストン速度、キャラ【画像変更】70%まで
[elsif exp="f.H_Syaseikan >=30 && f.H_Syaseikan < 70"]

[if exp="f.H_Sex_Speed ==2"]
[chara_mod  name="H_トイレ"  time="0"  cross="true"  storage="chara/34/トイレHアニメ11.png"]
[playse  volume="40"  time="1000"  buf="1"  storage="えっち系/クチュ音１.mp3"  loop="true"  ]
[playse  volume="40"  time="1000"  buf="3"  storage="喘ぎ声/02喘ぎ声(前)02.mp3"  loop="true"  ]

[elsif exp="f.H_Sex_Speed ==3"]
[chara_mod  name="H_トイレ"  time="0"  cross="true"  storage="chara/34/トイレHアニメ12.png" ]
[playse  volume="40"  time="1000"  buf="1"  storage="えっち系/クチュ音４.mp3"  loop="true"  ]
[playse  volume="40"  time="1000"  buf="3"  storage="喘ぎ声/02喘ぎ声(前)02.mp3"  loop="true"  ]

[elsif exp="f.H_Sex_Speed ==4"]
[chara_mod  name="H_トイレ"  time="0"  cross="true"  storage="chara/34/トイレHアニメ12.png" ]
[playse  volume="40"  time="1000"  buf="1"  storage="えっち系/クチュ音８.mp3"  loop="true"  ]
[playse  volume="40"  time="1000"  buf="3"  storage="喘ぎ声/02喘ぎ声(前)02.mp3"  loop="true"  ]

[endif]
;キャラのピストン速度、キャラ【画像変更】100%まで
[elsif exp="f.H_Syaseikan >=70 && f.H_Syaseikan < 100"]

[if exp="f.H_Sex_Speed ==2"]
[chara_mod  name="H_トイレ"  time="0"  cross="true"  storage="chara/34/トイレHアニメ21.png"]
[playse  volume="50"  time="1000"  buf="1"  storage="えっち系/クチュ音１.mp3"  loop="true"  ]
[playse  volume="50"  time="1000"  buf="3"  storage="喘ぎ声/02喘ぎ声(前)02.mp3"  loop="true"  ]

[elsif exp="f.H_Sex_Speed ==3"]
[chara_mod  name="H_トイレ"  time="0"  cross="true"  storage="chara/34/トイレHアニメ22.png" ]
[playse  volume="50"  time="1000"  buf="1"  storage="えっち系/クチュ音４.mp3"  loop="true"  ]
[playse  volume="70"  time="1000"  buf="3"  storage="喘ぎ声/03喘ぎ声(前)03.mp3"  loop="true"  ]

[elsif exp="f.H_Sex_Speed ==4"]
[chara_mod  name="H_トイレ"  time="0"  cross="true"  storage="chara/34/トイレHアニメ23.png" ]
[playse  volume="50"  time="1000"  buf="1"  storage="えっち系/クチュ音８.mp3"  loop="true"  ]
[playse  volume="70"  time="1000"  buf="3"  storage="喘ぎ声/12喘ぎ声(挿入)08.mp3"  loop="true"  ]

[endif]

;キャラのピストン速度、キャラ【画像変更】120%まで
[elsif exp="f.H_Syaseikan >=100"]

[if exp="f.H_Sex_Speed ==2"]
[chara_mod  name="H_トイレ"  time="0"  cross="true"  storage="chara/34/トイレHアニメ31.png"]
[playse  volume="100"  time="1000"  buf="1"  storage="えっち系/クチュ音１.mp3"  loop="true"  ]
[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/04喘ぎ声(挿入)04.mp3"  loop="true"  ]

[elsif exp="f.H_Sex_Speed ==3"]
[chara_mod  name="H_トイレ"  time="0"  cross="true"  storage="chara/34/トイレHアニメ32.png" ]
[playse  volume="100"  time="1000"  buf="1"  storage="えっち系/クチュ音４.mp3"  loop="true"  ]
[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/13喘ぎ声(オホ声)01.mp3"  loop="true"  ]

[elsif exp="f.H_Sex_Speed ==4"]
[chara_mod  name="H_トイレ"  time="0"  cross="true"  storage="chara/34/トイレHアニメ33.png" ]
[playse  volume="100"  time="1000"  buf="1"  storage="えっち系/クチュ音８.mp3"  loop="true"  ]
[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/14喘ぎ声(オホ声)02.mp3"  loop="true"  ]

[endif]
[endif]
[_tb_end_tyrano_code]

[return  ]
*__兄エロ技下方補正

[tb_start_tyrano_code]
;兄エロ技補正
[switch exp="f.Oni_Ero"]
[case is=0]
[eval exp="f.Ero_Local = f.Oni_Ero"]
[case is=1]
[eval exp="f.Ero_Local = f.Oni_Ero"]
[case is=2]
[eval exp="f.Ero_Local = f.Oni_Ero"]
[case is=3]
[eval exp="f.Ero_Local = f.Oni_Ero"]
[case is=4]
[eval exp="f.Ero_Local = 3.8"]
[case is=5]
[eval exp="f.Ero_Local = 4.5"]
[case is=6]
[eval exp="f.Ero_Local = 5"]
[case is=7]
[eval exp="f.Ero_Local = 5.4"]
[case is=8]
[eval exp="f.Ero_Local = 5.8"]
[case is=9]
[eval exp="f.Ero_Local = 6.2"]
[case is=10]
[eval exp="f.Ero_Local = 7"]

[endswitch]
[_tb_end_tyrano_code]

[return  ]
