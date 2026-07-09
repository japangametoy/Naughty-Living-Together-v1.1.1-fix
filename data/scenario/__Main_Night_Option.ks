[_tb_system_call storage=system/___Main_Night_Option.ks]

*__Backアイコン表示

[tb_start_tyrano_code]
;Backアイコン
[button  storage="__Main_Night_Seijoui_H.ks"  target="*__途中でやめる"  graphic="やめるアイコン.png"  width="110"  height="110"  x="1165"  y="602"  name="H_Back_Icon" fix="true"]
[_tb_end_tyrano_code]

[return  ]
*__Backバックアイコン表示

[tb_start_tyrano_code]
;Backアイコン
[button  storage="__Main_Night_Back_H.ks"  target="*__途中でやめる"  graphic="やめるアイコン.png"  width="110"  height="110"  x="1165"  y="602"  name="H_Back_Icon" fix="true"]
[_tb_end_tyrano_code]

[return  ]
*__カット消しバー再表示

[tb_start_tyrano_code]
;触りカット絵リセット　GOODバーも一緒に消えるので復活
[freeimage layer=1]
[image layer="1" storage="default/ゲージ1.png" x=90 y=110 width="&f.Eve_Time" height=10 name="line"]
[image layer="1" storage="default/ゲージ2.png" x=90 y=144 width="&f.Eve_Time_Bad" height=10 name="line_bad"]
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
*__射精感UP

[tb_start_tyrano_code]
;射精感
[wait time="100" cond="f.H_Sex_Speed == 3 || f.H_Sex_Speed == 13 || f.H_Sex_Speed == 6 || f.H_Sex_Speed == 16"]
[wait time="300" cond="f.H_Sex_Speed == 2 || f.H_Sex_Speed == 12 || f.H_Sex_Speed == 5 || f.H_Sex_Speed == 15"]
[wait time="500" cond="f.H_Sex_Speed == 1 || f.H_Sex_Speed == 11 || f.H_Sex_Speed == 4 || f.H_Sex_Speed == 14"]

; 射精感アップ
[iscript]
f.H_Syaseikan += 1;
f.射精度 = f.H_Syaseikan + "％";
[endscript]

[ptext layer=2 text="&f.射精度" x=1060 y=650 size=40 bold="bold" edge="0x000000" width = 100 align = "right" overwrite = "true" name="Syaseikan"]

[return cond="f.H_Good >= 220"]
[return cond="f.H_Sex_Speed == 7 || f.H_Sex_Speed == 17 || f.H_Sex_Speed == 0 || f.H_Sex_Speed == 10"]

[iscript]
f.H_Good += 1;
f.Eve_Time = f.H_Good;
[endscript]

[anim name="line" width="&f.Eve_Time" time="1"]
[_tb_end_tyrano_code]

[call  storage="__Main_Night_Option.ks"  target="*__セックス中セリフ"  ]
[jump  storage="__Main_Night_Option.ks"  target="*__射精感UP"  cond="f.H_Syaseikan<100"  ]
[return  ]
*__射精感120%まで

[tb_start_tyrano_code]
;射精感
[wait time="100" cond="f.H_Sex_Speed == 3 || f.H_Sex_Speed == 13 || f.H_Sex_Speed == 6 || f.H_Sex_Speed == 16"]
[wait time="300" cond="f.H_Sex_Speed == 2 || f.H_Sex_Speed == 12 || f.H_Sex_Speed == 5 || f.H_Sex_Speed == 15"]
[wait time="500" cond="f.H_Sex_Speed == 1 || f.H_Sex_Speed == 11 || f.H_Sex_Speed == 4 || f.H_Sex_Speed == 14"]

; 射精感アップ
[iscript]
f.H_Syaseikan += 1;
f.射精度 = f.H_Syaseikan + "％";
[endscript]

[ptext layer=2 text="&f.射精度" x=1060 y=650 size=40 bold="bold" edge="0x000000" width = 100 align = "right" overwrite = "true" name="Syaseikan"]

[return cond="f.H_Good >= 220"]
;[jump target="*__ホールド" cond="f.H_Good== 180 && f.H_Taii_Flag == 0"]
;[jump target="*__ホールド終了" cond="f.H_Good== 200 && f.H_Taii_Flag == 0"]

[iscript]
f.H_Good += 1;
f.Eve_Time = f.H_Good;
[endscript]

[anim name="line" width="&f.Eve_Time" time="1"]
[_tb_end_tyrano_code]

[call  storage="__Main_Night_Option.ks"  target="*__セックス中セリフ"  ]
[jump  storage="__Main_Night_Option.ks"  target="*__射精感120%まで"  cond="f.H_Syaseikan<120"  ]
[return  ]
*__射精感アップ処理

[tb_start_tyrano_code]
;射精感
[wait time="100" cond="f.H_Sex_Speed == 3 || f.H_Sex_Speed == 13 || f.H_Sex_Speed == 6 || f.H_Sex_Speed == 16"]
[wait time="300" cond="f.H_Sex_Speed == 2 || f.H_Sex_Speed == 12 || f.H_Sex_Speed == 5 || f.H_Sex_Speed == 15"]
[wait time="500" cond="f.H_Sex_Speed == 1 || f.H_Sex_Speed == 11 || f.H_Sex_Speed == 4 || f.H_Sex_Speed == 14"]

; 射精感アップ
[iscript]
f.H_Syaseikan += 1;
f.射精度 = f.H_Syaseikan + "％";
[endscript]

[ptext layer=2 text="&f.射精度" x=1060 y=650 size=40 bold="bold" edge="0x000000" width = 100 align = "right" overwrite = "true" name="Syaseikan"]

[return cond="f.H_Good >= 220"]

[iscript]
f.H_Good += 1;
f.Eve_Time = f.H_Good;
[endscript]
[anim name="line" width="&f.Eve_Time" time="1"]
[_tb_end_tyrano_code]

[return  ]
*__セックス中セリフ

[intrandom_ko10panda  max="8"  count="1"  show_result="false"  show_style="style_a"  show_detail="false"  detail_length="10"  show_log="log_4"  var_name="f.rand"  ]
[tb_start_tyrano_code]
;継続セリフランダム

[if exp="f.H_Good % 10 == 0"]
[if exp="f.H_Good >= 200 && f.H_Good < 210"]
[ptext layer="1" x="710" y="&f.Y_S_Size" size="20" text="I'm cumming♥" name="Serifu01"  zindex=100 edge="0xffffff" color="0x000000" edge="0xffffff" face="JK-Gothic-testM"  bold="true"]
[anim name="Serifu01" left=730 top="&f.Y_S_Size_After" opacity=0 time=3000]

[elsif exp="f.H_Good >= 210 && f.H_Good < 220"]
[ptext layer="1" x="710" y="&f.Y_S_Size" size="20" text="I'm gonna cum♥" name="Serifu01"  zindex=100 edge="0xffffff" color="0x000000" edge="0xffffff" face="JK-Gothic-testM"  bold="true"]
[anim name="Serifu01" left=730 top="&f.Y_S_Size_After"  opacity=0 time=3000]

[elsif exp="f.H_Good >= 220"]
[ptext layer="1" x="710" y="&f.Y_S_Size" size="20" text="Ah⑹⑹aahhh!!" name="Serifu01"  zindex=100 edge="0xffffff" color="0x000000" edge="0xffffff" face="JK-Gothic-testM"  bold="true"]
[anim name="Serifu01" left=730 top="&f.Y_S_Size_After"  opacity=0 time=3000]


[elsif exp="f.H_Good >= 0 && f.H_Good < 200"]
[switch exp="f.rand"]
[case is=0]
[ptext layer="1" x="710" y="&f.Y_S_Size" size="20" text="Aaaahhh♥" name="Serifu01"  zindex=100 edge="0xffffff" color="0x000000" edge="0xffffff" face="JK-Gothic-testM"  bold="true"]
[anim name="Serifu01" left=730 top="&f.Y_S_Size_After"  opacity=0 time=3000]

[case is=1]
[ptext layer="1" x="710" y="&f.Y_S_Size" size="20" text="Nnaahh" name="Serifu01"  zindex=100 edge="0xffffff" color="0x000000" edge="0xffffff" face="JK-Gothic-testM"  bold="true"]
[anim name="Serifu01" left=730 top="&f.Y_S_Size_After"  opacity=0 time=3000]

[case is=2]
[ptext layer="1" x="710" y="&f.Y_S_Size" size="20" text="Haaahh" name="Serifu01"  zindex=100 edge="0xffffff" color="0x000000" edge="0xffffff" face="JK-Gothic-testM"  bold="true"]
[anim name="Serifu01" left=730 top="&f.Y_S_Size_After"  opacity=0 time=3000]

[case is=3]
[ptext layer="1" x="710" y="&f.Y_S_Size" size="20" text="⑹ Ngh♥" name="Serifu01"  zindex=100 edge="0xffffff" color="0x000000" edge="0xffffff" face="JK-Gothic-testM"  bold="true"]
[anim name="Serifu01" left=730 top="&f.Y_S_Size_After"  opacity=0 time=3000]

[case is=4]
[ptext layer="1" x="710" y="&f.Y_S_Size" size="20" text="I'm c⑹umming" name="Serifu01"  zindex=100 edge="0xffffff" color="0x000000" edge="0xffffff" face="JK-Gothic-testM"  bold="true"]
[anim name="Serifu01" left=730 top="&f.Y_S_Size_After"  opacity=0 time=3000]

[case is=5]
[ptext layer="1" x="710" y="&f.Y_S_Size" size="20" text="Nngh♥" name="Serifu01"  zindex=100 edge="0xffffff" color="0x000000" edge="0xffffff" face="JK-Gothic-testM"  bold="true"]
[anim name="Serifu01" left=730 top="&f.Y_S_Size_After"  opacity=0 time=3000]

[case is=6]
[ptext layer="1" x="710" y="&f.Y_S_Size" size="20" text="Ah♥" name="Serifu01"  zindex=100 edge="0xffffff" color="0x000000" edge="0xffffff" face="JK-Gothic-testM"  bold="true"]
[anim name="Serifu01" left=730 top="&f.Y_S_Size_After"  opacity=0 time=3000]

[case is=7]
[ptext layer="1" x="710" y="&f.Y_S_Size" size="20" text="Mmm♥" name="Serifu01"  zindex=100 edge="0xffffff" color="0x000000" edge="0xffffff" face="JK-Gothic-testM"  bold="true"]
[anim name="Serifu01" left=730 top="&f.Y_S_Size_After"  opacity=0 time=3000]

[case is=8]
[ptext layer="1" x="710" y="&f.Y_S_Size" size="20" text="Aaaah!!" name="Serifu01"  zindex=100 edge="0xffffff" color="0x000000" edge="0xffffff" face="JK-Gothic-testM"  bold="true"]
[anim name="Serifu01" left=730 top="&f.Y_S_Size_After"  opacity=0 time=3000]

[endswitch]
[endif]
[endif]
[_tb_end_tyrano_code]

[return  ]
[tb_start_tyrano_code]
;継続効果音ランダム　不採用中

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
[ptext layer="1" x="510" y="580" size="30" text="Squelch" name="Kouka02"  zindex=100 edge="0xffffff" color="0x000000" edge="0xffffff" face="JK-Gothic-testM"  bold="true"]
[anim name="Kouka02" left=490 top=560  opacity=0 time=3000]

[case is=4]
[ptext layer="1" x="710" y="580" size="30" text="Squish" name="Kouka01"  zindex=100 edge="0xffffff" color="0x000000" edge="0xffffff" face="JK-Gothic-testM"  bold="true"]
[anim name="Kouka01" left=730 top=560  opacity=0 time=3000]

[case is=5]
[ptext layer="1" x="510" y="580" size="30" text="Splap" name="Kouka02"  zindex=100 edge="0xffffff" color="0x000000" edge="0xffffff" face="JK-Gothic-testM"  bold="true"]
[anim name="Kouka02" left=490 top=560  opacity=0 time=3000]

[case is=6]
[ptext layer="1" x="510" y="580" size="30" text="Spurt" name="Kouka02"  zindex=100 edge="0xffffff" color="0x000000" edge="0xffffff" face="JK-Gothic-testM"  bold="true"]
[anim name="Kouka02" left=490 top=560  opacity=0 time=3000]

[case is=7]
[ptext layer="1" x="510" y="580" size="30" text="Schlick" name="Kouka02"  zindex=100 edge="0xffffff" color="0x000000" edge="0xffffff" face="JK-Gothic-testM"  bold="true"]
[anim name="Kouka02" left=490 top=560  opacity=0 time=3000]

[case is=8]
[ptext layer="1" x="510" y="580" size="30" text="Schlup" name="Kouka02"  zindex=100 edge="0xffffff" color="0x000000" edge="0xffffff" face="JK-Gothic-testM"  bold="true"]
[anim name="Kouka02" left=490 top=560  opacity=0 time=3000]

[endswitch]
[endif]
[_tb_end_tyrano_code]

*__射精感を0に

[tb_start_tyrano_code]
;射精感0処理
[eval exp="f.H_Syaseikan = 0"]
[eval exp="f.Sys_Seiryoku -= 1"]

[eval exp="f.射精度 = f.H_Syaseikan + '％' "]
[ptext layer=2 text="&f.射精度" x=1060 y=650 size=40 bold="bold" edge="0x000000" width = 100 align = "right" overwrite = "true" name="Syaseikan"]
[_tb_end_tyrano_code]

[return  ]
*__お触りカットフラグ全消し

[tb_start_tyrano_code]
;フラグリセット
[eval exp="f.H_Kuchi_Touch = 0"]
[eval exp="f.H_Senaka_Touch = 0"]
[eval exp="f.H_Right_Mune = 0"]
[eval exp="f.H_Left_Mune = 0"]
[eval exp="f.H_Right_Siri = 0"]
[eval exp="f.H_Left_Siri = 0"]
[eval exp="f.H_Asoko_Touch = 0"]
[eval exp="f.H_Tool_Flag = 1000"]

;カット全消し
[free layer=1 name="H_Cut_Image_Ue"]
[free layer=1 name="H_Cut_Image_Arm"]
[free layer=1 name="H_Cut_Image_Sita"]
[free layer=1 name="H_Cut_Image_MigiSita"]
[free layer=1 name="H_Cut_Image_TongueSita"]
[free layer=1 name="H_Cut_Image_Tool"]

[_tb_end_tyrano_code]

[return  ]
*__お触りフラグリセット

[tb_start_tyrano_code]
;お触りフラグリセット
;上服をはだける
[if exp="f.H_Ue_Chakui <= 1 && f.H_Ue_Chakui_CutFlag <= 0"]
[eval exp="f.H_Right_Siri = 0"]
[eval exp="f.H_Left_Siri = 0"]
[eval exp="f.H_Asoko_Touch = 0"]
[eval exp="f.H_Tool_Flag = 1000"]

[eval exp=" f.H_Ue_Chakui_CutFlag = f.H_Ue_Chakui"]
[free layer=1 name="H_Cut_Image_Ue"]
[free layer=1 name="H_Cut_Image_Arm"]
[free layer=1 name="H_Cut_Image_Sita"]
[free layer=1 name="H_Cut_Image_Tool"]

;上着を脱ぐ
[elsif exp="f.H_Ue_Chakui == 2 && f.H_Ue_Chakui_CutFlag == 1"]
[eval exp="f.H_Kuchi_Touch = 0"]
[eval exp="f.H_Senaka_Touch = 0"]
[eval exp="f.H_Right_Mune = 0"]
[eval exp="f.H_Left_Mune = 0"]

[eval exp=" f.H_Ue_Chakui_CutFlag = f.H_Ue_Chakui"]
[free layer=1 name="H_Cut_Image_Ue"]
[free layer=1 name="H_Cut_Image_Arm"]

;上着を着る
[elsif exp="f.H_Ue_Chakui == 1 && f.H_Ue_Chakui_CutFlag == 2"]
[eval exp="f.H_Kuchi_Touch = 0"]
[eval exp="f.H_Senaka_Touch = 0"]
[eval exp="f.H_Right_Mune = 0"]
[eval exp="f.H_Left_Mune = 0"]

[eval exp=" f.H_Ue_Chakui_CutFlag = f.H_Ue_Chakui"]
[free layer=1 name="H_Cut_Image_Ue"]
[free layer=1 name="H_Cut_Image_Arm"]

;下着を脱ぐ
[elsif exp="f.H_Pantu_Chakui == 1 && f.H_Pantu_Chakui_CutFlag == 0"]
[eval exp="f.H_Asoko_Touch = 0"]
[eval exp="f.H_Right_Siri = 0"]
[eval exp="f.H_Left_Siri = 0"]
[eval exp="f.H_Tool_Flag = 1000"]

[eval exp=" f.H_Pantu_Chakui_CutFlag = f.H_Pantu_Chakui"]
[free layer=1 name="H_Cut_Image_Sita"]
[free layer=1 name="H_Cut_Image_Tool"]

;股を開く
[elsif exp="f.H_Pantu_Chakui == 2 && f.H_Pantu_Chakui_CutFlag == 1"]
[eval exp="f.H_Asoko_Touch = 0"]
[eval exp="f.H_Tool_Flag = 1000"]

[eval exp=" f.H_Pantu_Chakui_CutFlag = f.H_Pantu_Chakui"]
[free layer=1 name="H_Cut_Image_Sita"]
[free layer=1 name="H_Cut_Image_Tool"]

;股を閉じる
[elsif exp="f.H_Pantu_Chakui == 1 && f.H_Pantu_Chakui_CutFlag == 2"]
[eval exp="f.H_Asoko_Touch = 0"]
[eval exp="f.H_Tool_Flag = 1000"]

[eval exp=" f.H_Pantu_Chakui_CutFlag = f.H_Pantu_Chakui"]
[free layer=1 name="H_Cut_Image_Sita"]
[free layer=1 name="H_Cut_Image_Tool"]

;継続処理
[elsif exp="f.H_Pantu_Chakui == f.H_Pantu_Chakui_CutFlag"]

;エラー回避
[else]
[eval exp="f.H_Kuchi_Touch = 0"]
[eval exp="f.H_Right_Mune = 0"]
[eval exp="f.H_Left_Mune = 0"]
[eval exp="f.H_Right_Siri = 0"]
[eval exp="f.H_Left_Siri = 0"]
[eval exp="f.H_Asoko_Touch = 0"]
[eval exp="f.H_Tool_Flag = 1000"]

[free layer=1 name="H_Cut_Image_Ue"]
[free layer=1 name="H_Cut_Image_Arm"]
[free layer=1 name="H_Cut_Image_Sita"]
[free layer=1 name="H_Cut_Image_Tool"]
[free layer=1 name="H_Cut_Image_MigiSita"]
[free layer=1 name="H_Cut_Image_TongueSita"]

[endif]
[_tb_end_tyrano_code]

[return  ]
*__お触りフラグリセット後背位

[tb_start_tyrano_code]
;お触りフラグリセット
;上服をはだける
[if exp="f.H_Ue_Chakui == 1 && f.H_Ue_Chakui_CutFlag <= 0"]
[eval exp="f.H_Right_Siri = 0"]
[eval exp="f.H_Left_Siri = 0"]
[eval exp="f.H_Asoko_Touch = 0"]
[eval exp="f.H_Tool_Flag = 1000"]

[eval exp=" f.H_Ue_Chakui_CutFlag = f.H_Ue_Chakui"]
[free layer=1 name="H_Cut_Image_Ue"]
[free layer=1 name="H_Cut_Image_Arm"]
[free layer=1 name="H_Cut_Image_Sita"]
[free layer=1 name="H_Cut_Image_Tool"]
[free layer=1 name="H_Cut_Image_MigiSita"]
[free layer=1 name="H_Cut_Image_TongueSita"]

;上着を脱ぐ
[elsif exp="f.H_Ue_Chakui == 2 && f.H_Ue_Chakui_CutFlag == 1"]
[eval exp="f.H_Kuchi_Touch = 0"]
[eval exp="f.H_Senaka_Touch = 0"]
[eval exp="f.H_Right_Mune = 0"]
[eval exp="f.H_Left_Mune = 0"]

[eval exp=" f.H_Ue_Chakui_CutFlag = f.H_Ue_Chakui"]
[free layer=1 name="H_Cut_Image_Ue"]
[free layer=1 name="H_Cut_Image_Arm"]

;上着を着る
[elsif exp="f.H_Ue_Chakui == 1 && f.H_Ue_Chakui_CutFlag == 2"]
[eval exp="f.H_Kuchi_Touch = 0"]
[eval exp="f.H_Senaka_Touch = 0"]
[eval exp="f.H_Right_Mune = 0"]
[eval exp="f.H_Left_Mune = 0"]

[eval exp=" f.H_Ue_Chakui_CutFlag = f.H_Ue_Chakui"]
[free layer=1 name="H_Cut_Image_Ue"]
[free layer=1 name="H_Cut_Image_Arm"]

;下着を脱ぐ
[elsif exp="f.H_Pantu_Chakui == 1 && f.H_Pantu_Chakui_CutFlag == 0"]
[eval exp="f.H_Asoko_Touch = 0"]
[eval exp="f.H_Right_Siri = 0"]
[eval exp="f.H_Left_Siri = 0"]
[eval exp="f.H_Tool_Flag = 1000"]

[eval exp=" f.H_Pantu_Chakui_CutFlag = f.H_Pantu_Chakui"]
[free layer=1 name="H_Cut_Image_Sita"]
[free layer=1 name="H_Cut_Image_Tool"]
[free layer=1 name="H_Cut_Image_MigiSita"]
[free layer=1 name="H_Cut_Image_TongueSita"]

;股を開く
[elsif exp="f.H_Pantu_Chakui == 2 && f.H_Pantu_Chakui_CutFlag == 1"]
[eval exp="f.H_Asoko_Touch = 0"]
[eval exp="f.H_Tool_Flag = 1000"]

[eval exp=" f.H_Pantu_Chakui_CutFlag = f.H_Pantu_Chakui"]
[free layer=1 name="H_Cut_Image_Sita"]
[free layer=1 name="H_Cut_Image_Tool"]
[free layer=1 name="H_Cut_Image_MigiSita"]
[free layer=1 name="H_Cut_Image_TongueSita"]

;股を閉じる
[elsif exp="f.H_Pantu_Chakui == 1 && f.H_Pantu_Chakui_CutFlag == 2"]
[eval exp="f.H_Asoko_Touch = 0"]
[eval exp="f.H_Tool_Flag = 1000"]

[eval exp=" f.H_Pantu_Chakui_CutFlag = f.H_Pantu_Chakui"]
[free layer=1 name="H_Cut_Image_Sita"]
[free layer=1 name="H_Cut_Image_Tool"]
[free layer=1 name="H_Cut_Image_MigiSita"]
[free layer=1 name="H_Cut_Image_TongueSita"]

;継続処理
[elsif exp="f.H_Pantu_Chakui == f.H_Pantu_Chakui_CutFlag"]

;エラー回避
[else]
[eval exp="f.H_Kuchi_Touch = 0"]
[eval exp="f.H_Right_Mune = 0"]
[eval exp="f.H_Left_Mune = 0"]
[eval exp="f.H_Right_Siri = 0"]
[eval exp="f.H_Left_Siri = 0"]
[eval exp="f.H_Asoko_Touch = 0"]
[eval exp="f.H_Tool_Flag = 1000"]

[free layer=1 name="H_Cut_Image_Ue"]
[free layer=1 name="H_Cut_Image_Arm"]
[free layer=1 name="H_Cut_Image_Sita"]
[free layer=1 name="H_Cut_Image_Tool"]
[free layer=1 name="H_Cut_Image_MigiSita"]
[free layer=1 name="H_Cut_Image_TongueSita"]

[endif]
[_tb_end_tyrano_code]

[return  ]
*__腕を使うカット全消し

[tb_start_tyrano_code]
[free layer=1 name="H_Cut_Image_Arm"]
[free layer=1 name="H_Cut_Image_Tool"]
[free layer=1 name="H_Cut_Image_MigiSita"]
[free layer=1 name="H_Cut_Image_Sita"]
[free layer=1 name="H_Cut_Image_TongueSita"]
[_tb_end_tyrano_code]

[return  ]
*__上カットのみ消し

[tb_start_tyrano_code]
[free layer=1 name="H_Cut_Image_Ue"]
[_tb_end_tyrano_code]

[return  ]
*__舌を使うカット全消し

[tb_start_tyrano_code]
[free layer=1 name="H_Cut_Image_Ue"]
[free layer=1 name="H_Cut_Image_TongueSita"]

[_tb_end_tyrano_code]

[return  ]
*__左尻カットに係る全消し

[tb_start_tyrano_code]
[free layer=1 name="H_Cut_Image_Sita"]
[free layer=1 name="H_Cut_Image_TongueSita"]

[_tb_end_tyrano_code]

[return  ]
*__中射精エフェクト

[individual_image  layer="1"  zindex="1"  storage="default/white.png"  width="1280"  height="720"  name="effect"  time="400"  wait="true"  ]
[delete_individual_image  layer="1"  name="effect"  time="400"  wait="true"  ]
[individual_image  layer="1"  zindex="1"  storage="default/white.png"  width="1280"  height="720"  name="effect"  time="100"  wait="true"  ]
[delete_individual_image  layer="1"  name="effect"  time="100"  wait="true"  ]
[individual_image  layer="1"  zindex="1"  storage="default/white.png"  width="1280"  height="720"  name="effect"  time="100"  wait="true"  ]
[delete_individual_image  layer="1"  name="effect"  time="100"  wait="true"  ]
[return  ]
*__外射精エフェクト

[individual_image  layer="1"  zindex="1"  storage="default/white.png"  width="1280"  height="720"  name="effect"  time="300"  wait="true"  ]
[delete_individual_image  layer="1"  name="effect"  time="300"  wait="true"  ]
[individual_image  layer="1"  zindex="1"  storage="default/white.png"  width="1280"  height="720"  name="effect"  time="100"  wait="true"  ]
[delete_individual_image  layer="1"  name="effect"  time="100"  wait="true"  ]
[return  ]
*__妊娠判定

[tb_start_tyrano_code]
;妊娠判定　0週　0％　１週3％　２週１0％　３週　４０％

[iscript]
f.Sys_Seiri = f.Sys_Syume % 4;
[endscript]

[getrand var="f.Random" min="0" max="100"]

[if exp="f.H_Sex_Anal == 0 && f.my_Item[25].my_kazu == 0"]

[switch exp="f.Sys_Seiri"]
[case is=0]
[case is=1]
[if exp="f.Random <= 3 && f.H_Condom_On == 0"]
[eval exp="f.H_Ninsin_On = 1"]
[endif]

[case is=2]
[if exp="f.Random <= 10 && f.H_Condom_On == 0"]
[eval exp="f.H_Ninsin_On = 1"]
[endif]

[case is=3]
[if exp="f.Random <= 40 && f.H_Condom_On == 0"]
[eval exp="f.H_Ninsin_On = 1"]
[endif]

[endswitch]

[endif]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;コンドーム処理
[if exp="f.H_Condom_On == 1"]
[eval exp="f.my_Item[4].my_kazu -= 1"]
[eval exp="f.H_Condom_On = 0"]
[endif]
[_tb_end_tyrano_code]

[return  ]
*__ホールド

[tb_start_tyrano_code]
[cm]
[clearfix]

[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[eval exp="f.H_Hold_Flag=1"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;Backアイコン
[button  storage="__Main_Night_Seijoui_H.ks"  target="*__途中でやめる"  graphic="やめるアイコン.png"  width="110"  height="110"  x="1165"  y="602"  name="H_Back_Icon" fix="true"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;ホールドカット表示
[image  time="500"  storage="default/ホールド01.png"  width="300"  height="500"  x="950"  y="100"  layer=1 name="Hold_Cut"]
[eval exp="f.H_Hold_Flag=1"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;条件よけのため＋１
;[eval exp="f.H_Good += 1]
;[eval exp="f.Eve_Time = f.H_Good]
;[anim name="line" width="&f.Eve_Time" time="1"]
[_tb_end_tyrano_code]

[return  ]
*__ホールド終了

[tb_start_tyrano_code]
;ホールドカット絵消去
[cm]
[clearfix]
[free layer=1 name="Hold_Cut" time=0]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[eval exp="f.H_Hold_Flag=0"]
[_tb_end_tyrano_code]

[call  storage="__Main_Night_Option.ks"  target="*__Backアイコン表示"  ]
[tb_start_tyrano_code]
;右選択肢　スピードで分岐
[call storage="__Main_Night_Seijoui_H.ks" target = "*__挿入右選択肢種付け" cond="f.H_Sex_Speed >=4 && f.H_Sex_Speed <= 7"]
[call storage="__Main_Night_Seijoui_H.ks" target="*__挿入右選択肢" cond="f.H_Sex_Speed < 4 || f.H_Sex_Speed > 7"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;条件よけのため＋１
;[eval exp="f.H_Good += 1]
;[eval exp="f.Eve_Time = f.H_Good]
;[anim name="line" width="&f.Eve_Time" time="1"]
[_tb_end_tyrano_code]

[return  ]
*__処女喪失

[tb_show_message_window  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Nngh!![p]
Aaaaahhh!![p]
Ngh・・・[p]
[_tb_end_text]

[tb_hide_message_window  ]
[tb_eval  exp="f.H_Bad+=80"  name="H_Bad"  cmd="+="  op="t"  val="80"  val_2="undefined"  ]
[return  ]
*__服変数初期化

[tb_eval  exp="f.H_Ue_Chakui=0"  name="H_Ue_Chakui"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.H_Ue_Chakui_CutFlag=0"  name="H_Ue_Chakui_CutFlag"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.H_Pantu_Chakui=0"  name="H_Pantu_Chakui"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.H_Pantu_Chakui_CutFlag=0"  name="H_Pantu_Chakui_CutFlag"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[return  ]
*__ランダムセリフ正上位

[font  size="14"  color="0x000000"  face="JK-Gothic-testM"  bold="true"  ]
[intrandom_ko10panda  max="8"  count="1"  show_result="false"  show_style="style_a"  show_detail="false"  detail_length="10"  show_log="log_4"  var_name="f.rand"  ]
[tb_start_tyrano_code]
;継続セリフランダム

[switch exp="f.rand"]
[case is=0]
[ptext layer="1" x="710" y="180" size="20" text="&f.Oni_Name3" name="Serifu01"  zindex=100 edge="0xffffff"]
[anim name="Serifu01" left=730 top=160  opacity=0 time=2000]

[case is=1]
[ptext layer="1" x="710" y="180" size="20" text="Ah♥" name="Serifu01"  zindex=100 edge="0xffffff"]
[anim name="Serifu01" left=730 top=160  opacity=0 time=2000]

[case is=2]
[ptext layer="1" x="710" y="180" size="20" text="Nngh♥" name="Serifu01"  zindex=100 edge="0xffffff"]
[anim name="Serifu01" left=730 top=160  opacity=0 time=2000]

[case is=3]
[ptext layer="1" x="710" y="180" size="20" text="&f.Oni_Name3" name="Serifu01"  zindex=100 edge="0xffffff"]
[anim name="Serifu01" left=730 top=160  opacity=0 time=2000]

[case is=4]
[ptext layer="1" x="710" y="180" size="20" text="Mm・・" name="Serifu01"  zindex=100 edge="0xffffff"]
[anim name="Serifu01" left=730 top=160  opacity=0 time=2000]

[case is=5]
[ptext layer="1" x="710" y="180" size="20" text="Angh" name="Serifu01"  zindex=100 edge="0xffffff"]
[anim name="Serifu01" left=730 top=160  opacity=0 time=2000]

[case is=6]
[ptext layer="1" x="710" y="180" size="20" text="I love it・・・" name="Serifu01"  zindex=100 edge="0xffffff"]
[anim name="Serifu01" left=730 top=160  opacity=0 time=2000]

[case is=7]
[ptext layer="1" x="710" y="180" size="20" text="Feels good・・・" name="Serifu01"  zindex=100 edge="0xffffff"]
[anim name="Serifu01" left=730 top=160  opacity=0 time=2000]

[case is=8]
[ptext layer="1" x="710" y="180" size="20" text="More・・・" name="Serifu01"  zindex=100 edge="0xffffff"]
[anim name="Serifu01" left=730 top=160  opacity=0 time=2000]


[endswitch]
[_tb_end_tyrano_code]

[resetfont  ]
[return  ]
*__口セリフ正上位

[font  size="14"  color="0x000000"  face="JK-Gothic-testM"  bold="true"  ]
[intrandom_ko10panda  max="4"  count="1"  show_result="false"  show_style="style_a"  show_detail="false"  detail_length="10"  show_log="log_4"  var_name="f.rand"  ]
[tb_start_tyrano_code]
;継続セリフランダム

[switch exp="f.rand"]
[case is=0]
[ptext layer="1" x="710" y="180" size="20" text="Kiss" name="Serifu01"  zindex=100 edge="0xffffff"]
[anim name="Serifu01" left=730 top=160  opacity=0 time=2000]

[case is=1]
[ptext layer="1" x="710" y="180" size="20" text="Mm・・・" name="Serifu01"  zindex=100 edge="0xffffff"]
[anim name="Serifu01" left=730 top=160  opacity=0 time=2000]

[case is=2]
[ptext layer="1" x="710" y="180" size="20" text="Nngh♥" name="Serifu01"  zindex=100 edge="0xffffff"]
[anim name="Serifu01" left=730 top=160  opacity=0 time=2000]

[case is=3]
[ptext layer="1" x="710" y="180" size="20" text="Schlop" name="Serifu01"  zindex=100 edge="0xffffff"]
[anim name="Serifu01" left=730 top=160  opacity=0 time=2000]

[case is=4]
[ptext layer="1" x="710" y="180" size="20" text="Kiss♥" name="Serifu01"  zindex=100 edge="0xffffff"]
[anim name="Serifu01" left=730 top=160  opacity=0 time=2000]

[endswitch]
[_tb_end_tyrano_code]

[resetfont  ]
[return  ]
*__道具セリフ正上位

[font  size="14"  color="0x000000"  face="JK-Gothic-testM"  bold="true"  ]
[intrandom_ko10panda  max="4"  count="1"  show_result="false"  show_style="style_a"  show_detail="false"  detail_length="10"  show_log="log_4"  var_name="f.rand"  ]
[tb_start_tyrano_code]
;継続セリフランダム

[switch exp="f.rand"]
[case is=0]
[ptext layer="1" x="710" y="180" size="20" text="Aaahh" name="Serifu01"  zindex=100 edge="0xffffff"]
[anim name="Serifu01" left=730 top=160  opacity=0 time=2000]

[case is=1]
[ptext layer="1" x="710" y="180" size="20" text="Nn-ahh♥" name="Serifu01"  zindex=100 edge="0xffffff"]
[anim name="Serifu01" left=730 top=160  opacity=0 time=2000]

[case is=2]
[ptext layer="1" x="710" y="180" size="20" text="Haahh♥" name="Serifu01"  zindex=100 edge="0xffffff"]
[anim name="Serifu01" left=730 top=160  opacity=0 time=2000]

[case is=3]
[ptext layer="1" x="710" y="180" size="20" text="Ah♥" name="Serifu01"  zindex=100 edge="0xffffff"]
[anim name="Serifu01" left=730 top=160  opacity=0 time=2000]

[case is=4]
[ptext layer="1" x="710" y="180" size="20" text="I-aaah!" name="Serifu01"  zindex=100 edge="0xffffff"]
[anim name="Serifu01" left=730 top=160  opacity=0 time=2000]

[endswitch]
[_tb_end_tyrano_code]

[resetfont  ]
[return  ]
*__はあはあ

[font  size="14"  color="0x000000"  face="JK-Gothic-testM"  bold="true"  ]
[tb_start_tyrano_code]
;びくんびくん文字
[ptext layer="1" x="710" y="180" size="20" text="Haa" name="Serifu03"  zindex=100 edge="0xffffff"]
[xanim name="Serifu03" left=730 top=160  opacity=0 time=2000]

[keyframe name="H_Haa"]
[frame p="0%"  opacity=0]
[frame p="1%"  opacity=255]
[frame p="100%"  opacity=0 x=20 y= -20]
[endkeyframe]

[ptext layer="1" x="710" y="180" size="20" text="Haa" name="Serifu04"  zindex=100 edge="0xffffff"]
[xanim name="Serifu04" keyframe="H_Haa"  time=2000 delay=1500 easing="ease"]
[_tb_end_tyrano_code]

[resetfont  ]
[return  ]
*__挿入時セリフ

[font  size="14"  color="0x000000"  face="JK-Gothic-testM"  bold="true"  ]
[intrandom_ko10panda  max="2"  count="1"  show_result="false"  show_style="style_a"  show_detail="false"  detail_length="10"  show_log="log_4"  var_name="f.rand"  ]
[tb_start_tyrano_code]
;継続セリフランダム

[switch exp="f.rand"]
[case is=0]
[ptext layer="1" x="710" y="&f.Y_S_Size" size="20" text="Ah⑹aaah♥" name="Serifu01"  zindex=100 edge="0xffffff"]
[anim name="Serifu01" left=730 top="&f.Y_S_Size_After"  opacity=0 time=2000]

[case is=1]
[ptext layer="1" x="710" y="&f.Y_S_Size" size="20" text="Aah♥" name="Serifu01"  zindex=100 edge="0xffffff"]
[anim name="Serifu01" left=730 top="&f.Y_S_Size_After"  opacity=0 time=2000]

[case is=2]
[ptext layer="1" x="710" y="&f.Y_S_Size" size="20" text="Nngh♥" name="Serifu01"  zindex=100 edge="0xffffff"]
[anim name="Serifu01" left=730 top="&f.Y_S_Size_After"  opacity=0 time=2000]

[endswitch]
[_tb_end_tyrano_code]

[resetfont  ]
[return  ]
*__射精時セリフ

[font  size="14"  color="0x000000"  face="JK-Gothic-testM"  bold="true"  ]
[intrandom_ko10panda  max="4"  count="1"  show_result="false"  show_style="style_a"  show_detail="false"  detail_length="10"  show_log="log_4"  var_name="f.rand"  ]
[tb_start_tyrano_code]
;継続セリフランダム

[switch exp="f.rand"]
[case is=0]
[ptext layer="1" x="710" y="&f.Y_S_Size" size="20" text="Ah⑹aah♥♥" name="Serifu01"  zindex=100 edge="0xffffff"]
[anim name="Serifu01" left=730 top="&f.Y_S_Size_After" opacity=0 time=2000]

[case is=1]
[ptext layer="1" x="710" y="&f.Y_S_Size" size="20" text="Aah♥" name="Serifu01"  zindex=100 edge="0xffffff"]
[anim name="Serifu01" left=730 top="&f.Y_S_Size_After"  opacity=0 time=2000]

[case is=2]
[ptext layer="1" x="710" y="&f.Y_S_Size" size="20" text="Nngh♥" name="Serifu01"  zindex=100 edge="0xffffff"]
[anim name="Serifu01" left=730 top="&f.Y_S_Size_After"  opacity=0 time=2000]

[case is=3]
[ptext layer="1" x="710" y="&f.Y_S_Size" size="20" text="It's warm♥" name="Serifu01"  zindex=100 edge="0xffffff"]
[anim name="Serifu01" left=730 top="&f.Y_S_Size_After"  opacity=0 time=2000]

[case is=4]
[ptext layer="1" x="710" y="&f.Y_S_Size" size="20" text="Fwaaah♥♥♥" name="Serifu01"  zindex=100 edge="0xffffff"]
[anim name="Serifu01" left=730 top="&f.Y_S_Size_After"  opacity=0 time=2000]

[endswitch]
[_tb_end_tyrano_code]

[resetfont  ]
[return  ]
*__初本番押し倒し

[chara_show  name="プロローグ_ベッド"  time="1000"  wait="true"  storage="chara/24/プロローグ18.png"  width="560"  height="670"  left="360"  top="50"  ]
[mask_off  time="500"  effect="fadeOut"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#
[emb exp="f.Imo_Name"] has been fidgeting constantly since getting out of the bath[p]
Her cheeks are flushed, and I feel like she's secretly touching herself down there[p]
#&f.Imo_Name
Haa, haa・・・[p]
Ngh・・・[p]
Haa・・・haa・・・[p]
#
[_tb_end_text]

[chara_hide_all  time="0"  wait="true"  ]
[bg  time="1000"  method="crossfade"  storage="BG_Black.png"  ]
[tb_start_text mode=1 ]
#
Seeing her looking even more alluring fresh from the bath[p]
Without thinking・・・ I instinctively pushed her down.[p]
Eh, [emb exp="f.Oni_Name3"]!?[p]
[_tb_end_text]

[jump  storage="__Main_Night_Seijoui_H.ks"  target="*__H_Night_Seijoui"  ]
*__4週目継続

[chara_show  name="プロローグ_ベッド"  time="1000"  wait="true"  storage="chara/24/プロローグ16.png"  width="560"  height="670"  left="360"  top="50"  ]
[mask_off  time="500"  effect="fadeOut"  ]
[tb_show_message_window  ]
[playbgm  volume="30"  time="1000"  loop="true"  storage="PerituneMaterial_RainDrop_loop.mp3"  ]
[tb_start_text mode=1 ]
#
Today is the one-month deadline for house hunting, but・・・[p]
#&f.Imo_Name
・・・Uu, [emb exp="f.Oni_Name3"][p]
Um・・・ can I stay here a little longer?[p]
I can't really find a good place・・・[p]
[_tb_end_text]

[chara_mod  name="プロローグ_ベッド"  time="0"  cross="false"  storage="chara/24/プロローグ17.png"  ]
[tb_start_text mode=1 ]
Um・・・ well・・・ it's close to school![p]
And the manager said it's fine too!![p]
And Mom isn't against it!![p]
And I won't be a bother!![p]
[_tb_end_text]

[chara_mod  name="プロローグ_ベッド"  time="0"  cross="false"  storage="chara/24/プロローグ16.png"  ]
[tb_start_text mode=1 ]
U-um, err・・・[p]
・・・Uuu・・・[p]
#&f.Oni_Name3
Ah, of course it's okay.[p]
#
[_tb_end_text]

[chara_mod  name="プロローグ_ベッド"  time="0"  cross="false"  storage="chara/24/プロローグ13.png"  ]
[tb_start_text mode=1 ]
#&f.Oni_Name3
I told you to think of it as your own home.[p]
You can stay until [emb exp="f.Imo_Name"] is satisfied.[p]
#
[_tb_end_text]

[chara_mod  name="プロローグ_ベッド"  time="0"  cross="false"  storage="chara/24/プロローグ15.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
・・・!!![p]
[_tb_end_text]

[chara_mod  name="プロローグ_ベッド"  time="0"  cross="false"  storage="chara/24/プロローグ14.png"  ]
[tb_start_text mode=1 ]
Hehe[p]
Ehehe[p]
Thanks, [emb exp="f.Oni_Name3"]!![p]
#
From now on, I ended up living with [emb exp="f.Imo_Name"].[p]
・・・[p]
[_tb_end_text]

[tb_eval  exp="f.Tre_Up=1"  name="Tre_Up"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__好きUP"  ]
[tb_image_hide  time="1000"  ]
[call  storage="Main_Sta.ks"  target="*__メインステ表示"  ]
[mask  time="300"  effect="fadeIn"  color="0x000000"  ]
[stopbgm  time="1000"  fadeout="true"  ]
[chara_hide_all  time="0"  wait="true"  ]
[jump  storage="__Main_Kyuuka.ks"  target="*__直寝の飛び先"  ]
*__ベッドでもんもん

[mask_off  time="500"  effect="fadeOut"  ]
[chara_show  name="プロローグ_ベッド"  time="1000"  wait="true"  storage="chara/24/プロローグ18.png"  width="560"  height="670"  left="360"  top="50"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#
[emb exp="f.Imo_Name"] seems to be spacing out ever since she got out of the bath.[p]
Her cheeks are flushed, and she's fidgeting.[p]
#&f.Imo_Name
Haa・・・ haa・・・[p]
・・・Nn[p]
#&f.Oni_Name3
[emb exp="f.Imo_Name"]？[p]
What's wrong? Are you okay?[p]
#
[_tb_end_text]

[chara_mod  name="プロローグ_ベッド"  time="0"  cross="false"  storage="chara/24/プロローグ19.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
I-It's nothing!![p]
Let's go to sleep, [emb exp="f.Oni_Name3"]![p]
#&f.Oni_Name3
Ah, as long as you're feeling fine.[p]
#
[_tb_end_text]

[chara_mod  name="プロローグ_ベッド"  time="0"  cross="false"  storage="chara/24/プロローグ191.png"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Yeah, I'm super energetic![p]
W-Well then, good night!![p]
#&f.Oni_Name3
Ah, good night.[p]
#
[_tb_end_text]

[chara_hide_all  time="1000"  wait="true"  ]
[tb_start_text mode=1 ]
・・・[p]
[_tb_end_text]

[jump  storage="__Main_Kyuuka.ks"  target="*__直寝の飛び先"  ]
[s  ]
*__絶頂処理

[individual_image  layer="1"  zindex="1"  storage="default/white.png"  width="1280"  height="720"  name="effect"  time="300"  wait="true"  ]
[delete_individual_image  layer="1"  name="effect"  time="300"  wait="true"  ]
[individual_image  layer="1"  zindex="1"  storage="default/white.png"  width="1280"  height="720"  name="effect"  time="100"  wait="true"  ]
[delete_individual_image  layer="1"  name="effect"  time="100"  wait="true"  ]
[tb_start_tyrano_code]
;セリフ処理
[ptext layer="1" x="710" y="&f.Y_S_Size" size="20" text="Aaah♥♥♥" name="Serifu01"  zindex=100 edge="0xffffff" color="0x000000" edge="0xffffff" face="JK-Gothic-testM"  bold="true"]
[anim name="Serifu01" left=730 top="&f.Y_S_Size_After"  opacity=0 time=4000]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;絶頂処理　グッドバー変動
;[eval  exp="f.H_Good-=100"  name="H_Good"  cmd="-="  op="t"  val="100"  val_2="undefined"  ]
[eval exp="f.H_Good -= 100"]

[_tb_end_tyrano_code]

*__HGOOD減ループ

[tb_start_tyrano_code]
;ゲージ減アニメ
[jump  storage="__Main_Night_Option.ks"  target="*__GOOD下限達成"  cond="f.H_Good<1"  ]
;GOODバー減アニメ
;[anim name="line" width="&f.Eve_Time" time="1"]
;[eval exp="f.Eve_Time -= 0.5"]

[anim name="line" width="&f.H_Good" time="2000"]
;[wa]
[jump storage="__Main_Night_Option.ks" target="*__GOOD下限達成"]

[_tb_end_tyrano_code]

[jump  storage="__Main_Night_Option.ks"  target="*__HGOOD減ループ"  cond="f.Eve_Time>f.H_Good"  ]
*__GOOD下限達成

[return  ]
*__処女消失フラグとステ反映

[tb_start_tyrano_code]
;処女喪失フラグ
[if exp="f.Sex_Count[0].bestcount ==0"]
[eval exp="f.Sex_Count[0].bestcount = 1"]
[eval exp="f.Sex_Count[0].syume = f.Sys_Syume"]
[notice color=black top=100 right=0 width=150 height=45 size=15 text="Virginity lost" wait=false wait_time=2000 method="fadeInRight"]
[endif]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;童貞喪失フラグ
[if exp="f.Oni_Ero == 0"]
[eval exp="f.Oni_Ero += 1"]
[notice color=black top=150 right=0 width=150 height=45 size=15 text="童貞を卒業した" wait=false wait_time=2000 method="fadeInRight"]
[call  storage="Oni_Name1.ks"  target="*__兄名前変更"  ]
[call  storage="Main_Sta.ks"  target="*__roleのみ表示"  ]
[call  storage="Main_Sta.ks"  target="*__Hメインステ表示"  ]
[button  storage="__Main_Night_First_H.ks"  target="*__断面図変更"  graphic="断面図on.png"  x="30"  y="100" exp="f.H_Danmen_Flag = 1" cond="f.H_Danmen_Flag == 0"  fix=true enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3"]
[button  storage="__Main_Night_First_H.ks"  target="*__断面図変更"  graphic="断面図off.png"  x="30"  y="100" exp="f.H_Danmen_Flag = 0" cond="f.H_Danmen_Flag == 1"  fix=true enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3"]
[endif]
[_tb_end_tyrano_code]

[return  ]
*__お触り単発弱

[intrandom_ko10panda  max="8"  count="1"  show_result="false"  show_style="style_a"  show_detail="false"  detail_length="10"  show_log="log_4"  var_name="tf.rand"  ]
[tb_start_tyrano_code]
[switch exp="tf.rand"]
[case is=1]
[playse  volume="100"  time="1000"  buf="4"  storage="お触り単発/お触り01.mp3"  ]
[case is=2]
[playse  volume="100"  time="1000"  buf="4"  storage="お触り単発/お触り02.mp3"  ]
[case is=3]
[playse  volume="100"  time="1000"  buf="4"  storage="お触り単発/お触り03.mp3"  ]
[case is=4]
[playse  volume="100"  time="1000"  buf="4"  storage="お触り単発/お触り04.mp3"  ]
[case is=5]
[playse  volume="100"  time="1000"  buf="4"  storage="お触り単発/お触り05.mp3"  ]
[case is=6]
[playse  volume="100"  time="1000"  buf="4"  storage="お触り単発/お触り06.mp3"  ]
[case is=7]
[playse  volume="100"  time="1000"  buf="4"  storage="お触り単発/お触り07.mp3"  ]
[case is=8]
[playse  volume="100"  time="1000"  buf="4"  storage="お触り単発/お触り08.mp3"  ]

[endswitch]


[_tb_end_tyrano_code]

[return  ]
*__お触り単発強

[intrandom_ko10panda  max="8"  count="1"  show_result="false"  show_style="style_a"  show_detail="false"  detail_length="10"  show_log="log_4"  var_name="tf.rand"  ]
[tb_start_tyrano_code]
[switch exp="tf.rand"]
[case is=1]
[playse  volume="100"  time="1000"  buf="4"  storage="お触り単発/お触り11.mp3"  ]
[case is=2]
[playse  volume="100"  time="1000"  buf="4"  storage="お触り単発/お触り12.mp3"  ]
[case is=3]
[playse  volume="100"  time="1000"  buf="4"  storage="お触り単発/お触り13.mp3"  ]
[case is=4]
[playse  volume="100"  time="1000"  buf="4"  storage="お触り単発/お触り14.mp3"  ]
[case is=5]
[playse  volume="100"  time="1000"  buf="4"  storage="お触り単発/お触り15.mp3"  ]
[case is=6]
[playse  volume="100"  time="1000"  buf="4"  storage="お触り単発/お触り16.mp3"  ]
[case is=7]
[playse  volume="100"  time="1000"  buf="4"  storage="お触り単発/お触り17.mp3"  ]
[case is=8]
[playse  volume="100"  time="1000"  buf="4"  storage="お触り単発/お触り18.mp3"  ]

[endswitch]


[_tb_end_tyrano_code]

[return  ]
