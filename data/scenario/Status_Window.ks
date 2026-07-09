[_tb_system_call storage=system/_Status_Window.ks]

[bg  time="0"  method="crossfade"  storage="BG00.png"  ]
[call  storage="_Array_.ks"  target="*__配列宣言"  ]
*__ステータスウィンドウ

[tb_hide_message_window  ]
[tb_start_tyrano_code]
[clearfix]
[cm]
[_tb_end_tyrano_code]

[font  size="14"  color="0x000000"  bold="true"  face="JKG-M_3"  ]
[tb_start_tyrano_code]
;ステータス表示　変数宣言と兄ステ表示
[freeimage  layer="1"  ]
[layopt layer="1" visible="true" x=0 y=0]

[iscript]
f.兄表示 = '■' +f.Oni_Name3;
f.兄年齢表示 = f.Oni_Toshi
f.兄容姿表示 = f.Oni_Youshi
f.兄体格表示 = f.Oni_Taikaku
f.兄仕事表示 = f.Oni_Work
f.兄エロ表示 = f.Oni_Ero
f.兄魅力表示 = f.Oni_Miryoku
f.兄月収表示 = f.Oni_Kyuryou.toLocaleString()
[endscript]

[ptext layer="1" x="210" y="120" size="25" text="&f.兄表示"]

[ptext layer="1" x="250" y="170" size="20" text="Age"]
[ptext layer="1" x="330" y="169" size="25" text="&f.兄年齢表示"  width=50 align=right]
[ptext layer="1" x="390" y="170" size="20" text="yo"]

[ptext layer="1" x="250" y="210" size="20" text="Looks"]
[ptext layer="1" x="330" y="209" size="25" text="&f.兄容姿表示"  width=50 align=right]
[ptext layer="1" x="390" y="210" size="20" text="P"]

[ptext layer="1" x="250" y="250" size="20" text="Physique"]
[ptext layer="1" x="330" y="249" size="25" text="&f.兄体格表示"  width=50 align=right]
[ptext layer="1" x="390" y="250" size="20" text="P"]

[ptext layer="1" x="250" y="290" size="20" text="Work Skill"]
[ptext layer="1" x="330" y="289" size="25" text="&f.兄仕事表示"  width=50 align=right]
[ptext layer="1" x="390" y="290" size="20" text="P"]

[ptext layer="1" x="250" y="330" size="20" text="Sex Skills"]
[ptext layer="1" x="330" y="329" size="25" text="&f.兄エロ表示"  width=50 align=right]
[ptext layer="1" x="390" y="330" size="20" text="P"]

[ptext layer="1" x="250" y="370" size="20" text="Charm"]
[ptext layer="1" x="330" y="369" size="25" text="&f.兄魅力表示"  width=50 align=right]
[ptext layer="1" x="390" y="370" size="20" text="P"]

[ptext layer="1" x="210" y="420" size="20" text="Monthly Income"]
[ptext layer="1" x="315" y="419" size="25" text="&f.兄月収表示"  width=100 align=right]
[ptext layer="1" x="420" y="420" size="20" text="¥"]

[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;妹ステ表示
[iscript]
f.妹表示 = '■' +f.Imo_Name;
[endscript]

[ptext layer="1" x="480" y="120" size="25" text="&f.妹表示"]

;処女判定
[ptext layer="1" x="510" y="150" size="20" text="&f.Sex_Count[0].name"]
[if exp="f.Sex_Count[0].bestcount >= 1"]
[ptext layer="1" x="590" y="152" size="17" text="&f.Oni_Name3"]
[ptext layer="1" x="680" y="149" size="25" text="&f.Sex_Count[0].syume" width=50 align=right]
[ptext layer="1" x="740" y="150" size="20" text="Week"]
[else]
[ptext layer="1" x="715" y="150" size="20" text="Virgin"]
[endif]

;エッチ回数
[ptext layer="1" x="880" y="150" size="20" text="&f.Sex_Count[1].name"]
[ptext layer="1" x="1020" y="149" size="25" text="&f.Sex_Count[1].bestcount" width=50 align=right]
[ptext layer="1" x="1080" y="150" size="20" text="Times"]

;アナル
[ptext layer="1" x="510" y="190" size="20" text="&f.Sex_Count[2].name"]
[ptext layer="1" x="680" y="189" size="25" text="&f.Sex_Count[2].bestcount"  width=50 align=right]
[ptext layer="1" x="740" y="190" size="20" text="Times"]

;中田氏回数
[ptext layer="1" x="880" y="190" size="20" text="&f.Sex_Count[3].name"]
[ptext layer="1" x="1020" y="189" size="25" text="&f.Sex_Count[3].bestcount" width=50 align=right]
[ptext layer="1" x="1080" y="190" size="20" text="Times"]

;中田氏一日最高
[ptext layer="1" x="510" y="230" size="20" text="&f.Sex_Count[4].name"]
[ptext layer="1" x="680" y="229" size="25" text="&f.Sex_Count[4].bestcount"  width=50 align=right]
[ptext layer="1" x="740" y="230" size="20" text="Times/Day"]

;絶頂最高
[ptext layer="1" x="880" y="230" size="20" text="&f.Sex_Count[5].name"]
[ptext layer="1" x="1020" y="229" size="25" text="&f.Sex_Count[5].bestcount" width=50 align=right]
[ptext layer="1" x="1080" y="230" size="20" text="Times/Day"]

[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[iscript]
f.口開発表示 = f.Kaihatu[0].count + ' ％';
f.胸開発表示 = f.Kaihatu[1].count + ' ％';
f.尻開発表示 = f.Kaihatu[2].count + ' ％';
f.膣開発表示 = f.Kaihatu[3].count + ' ％';
f.穴開発表示 = f.Kaihatu[4].count + ' ％';
[endscript]

[ptext layer="1" x="480" y="270" size="25" text="■Development Level"]

[ptext layer="1" x="520" y="420" size="25" text="&f.口開発表示"  width=80 align=right]
[ptext layer="1" x="670" y="420" size="25" text="&f.胸開発表示"  width=80 align=right]
[ptext layer="1" x="820" y="420" size="25" text="&f.尻開発表示"  width=80 align=right]
[ptext layer="1" x="970" y="420" size="25" text="&f.膣開発表示"  width=80 align=right]
[ptext layer="1" x="1110" y="420" size="25" text="&f.穴開発表示"  width=80 align=right]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;アイテム表示
[eval exp="f.アイテム = []"]
[eval exp="f.アイテム_所持数 = []"]

[for name=f.i from=0 to=28]
[eval exp="f.アイテム[f.i] = f.my_Item[f.i].name ]
[eval exp="f.アイテム_所持数[f.i] =  '　×　' + f.my_Item[f.i].my_kazu"]
[nextfor]

[ptext layer="1" x="210" y="490" size="25" text="■Items"]

[ptext layer="1" x="240" y="530" size="20" text="&f.アイテム[4]"]
[ptext layer="1" x="360" y="530" size="20" text="&f.アイテム_所持数[4]"]
[ptext layer="1" x="240" y="565" size="20" text="&f.アイテム[1]"]
[ptext layer="1" x="360" y="565" size="20" text="&f.アイテム_所持数[1]"]
[ptext layer="1" x="240" y="600" size="20" text="&f.アイテム[2]"]
[ptext layer="1" x="360" y="600" size="20" text="&f.アイテム_所持数[2]"]
[ptext layer="1" x="240" y="635" size="20" text="&f.アイテム[3]"]
[ptext layer="1" x="360" y="635" size="20" text="&f.アイテム_所持数[3]"]

[ptext layer="1" x="490" y="530" size="20" text="&f.アイテム[21]"]
[ptext layer="1" x="610" y="530" size="20" text="&f.アイテム_所持数[21]"]
[ptext layer="1" x="490" y="565" size="20" text="&f.アイテム[5]"]
[ptext layer="1" x="610" y="565" size="20" text="&f.アイテム_所持数[5]"]
[ptext layer="1" x="490" y="600" size="20" text="&f.アイテム[6]"]
[ptext layer="1" x="610" y="600" size="20" text="&f.アイテム_所持数[6]"]
[ptext layer="1" x="490" y="635" size="20" text="&f.アイテム[7]"]
[ptext layer="1" x="610" y="635" size="20" text="&f.アイテム_所持数[7]"]

[ptext layer="1" x="740" y="530" size="20" text="&f.アイテム[8]"]
[ptext layer="1" x="860" y="530" size="20" text="&f.アイテム_所持数[8]"]
[ptext layer="1" x="740" y="565" size="20" text="&f.アイテム[24]"]
[ptext layer="1" x="860" y="565" size="20" text="&f.アイテム_所持数[24]"]
[ptext layer="1" x="740" y="600" size="20" text="&f.アイテム[16]"]
[ptext layer="1" x="860" y="600" size="20" text="&f.アイテム_所持数[16]"]
[ptext layer="1" x="740" y="635" size="20" text="&f.アイテム[17]"]
[ptext layer="1" x="860" y="635" size="20" text="&f.アイテム_所持数[17]"]

[ptext layer="1" x="990" y="530" size="20" text="&f.アイテム[18]"]
[ptext layer="1" x="1110" y="530" size="20" text="&f.アイテム_所持数[18]"]
[ptext layer="1" x="990" y="565" size="20" text="&f.アイテム[25]"]
[ptext layer="1" x="1110" y="565" size="20" text="&f.アイテム_所持数[25]"]
;[ptext layer="1" x="990" y="600" size="20" text="&f.アイテム[25]"]
;[ptext layer="1" x="1110" y="600" size="20" text="&f.アイテム_所持数[25]"]

[_tb_end_tyrano_code]

[resetfont  ]
[tb_image_show  time="0"  storage="default/ステータス画面.png"  width="1280"  height="720"  name="img_1"  ]
[tb_start_tyrano_code]
[button  fix="true"  x="1200"  y="65"  width="60"  height="60"  graphic="ステータスアイコン13.png" storage="Status_Window.ks" target="*__閲覧終了"  name="rightClickButton" hint="Close Status" name="rightClickButton"  enterse="カーソル移動12.mp3" clickse="キャンセル1.mp3"]
[_tb_end_tyrano_code]

[s  ]
*__閲覧終了

[tb_start_tyrano_code]
[awakegame]
[_tb_end_tyrano_code]

[s  ]
