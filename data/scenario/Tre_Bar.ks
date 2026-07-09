[_tb_system_call storage=system/_Tre_Bar.ks]

*__トレバー増減

[tb_start_tyrano_code]
;ゲージ表示
[image layer="1" storage="default/ゲージ2.png" x=450 y=480 width=1 height=10 name="line"]
[_tb_end_tyrano_code]

[tb_eval  exp="f.Eve_Time=0"  name="Eve_Time"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
*_増減ループ

[tb_start_tyrano_code]
*loop1
;増加スピード
[anim name="line" width="&f.Eve_Time" time="10"]
[wa]
[iscript]
f.Eve_Time+= 2;
[endscript]

;曜日変更
[iscript]
f.Sys_Youbi = Math.floor(f.Eve_Time / 100);
if (f.Sys_Youbi > 4) {
f.Sys_Youbi = 4; // 400以上の制限
};
[endscript]
[freeimage layer=2 cond="f.Eve_Time%100 == 0"]
[call storage="Main_Sta.ks" target="*__メインステ表示" cond="f.Eve_Time%100 == 0"]

[while target="*loop1" cond="f.Eve_Time <= 500"]
;[jump target="*loop1" cond="f.Eve_Time <= 500"]
[_tb_end_tyrano_code]

[return  ]
*__土日イベントバー増減

[tb_start_tyrano_code]
[image layer="1" storage="default/ゲージ2.png" x=450 y=480 width=1 height=10 name="line"]
[_tb_end_tyrano_code]

[tb_eval  exp="f.Eve_Time=0"  name="Eve_Time"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
*_土日増減ループ

[tb_start_tyrano_code]
[anim name="line" width="&f.Eve_Time" time="10"]
[wa]
[iscript]
f.Eve_Time+=5;
[endscript]
[while target="*_土日増減ループ" cond="f.Eve_Time <= 500"]
[_tb_end_tyrano_code]

[return  ]
*__スキンシップバー増減

[tb_start_tyrano_code]
;ゲージ表示初期表示
[image layer="1" storage="default/ゲージ2.png" x=900 y=510 width=1 height=10 name="line"]
[_tb_end_tyrano_code]

[tb_eval  exp="f.Eve_Time=0"  name="Eve_Time"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
*_スキンシップ増減ループ

[tb_start_tyrano_code]
;バーアニメ
[anim name="line" width="&f.Eve_Time" time="10"]
[wa]
[iscript]
f.Eve_Time+=3;
[endscript]
[while target="*_スキンシップ増減ループ" cond="f.Eve_Time <= 300"]

[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;ランダム数値生成
[getrand var="f.ランダム数値" min="1" max="99"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;確率計算、結果表示
[if exp="f.Skin_Kakuritu >= f.ランダム数値"]
[eval exp="f.結果表示 = 'Success!!' "]
[eval exp="f.Skin_Kekka = 1"]
[playse  volume="100"  time="1000"  buf="0"  storage="クイズ正解5.mp3"  ]
[else]
[eval exp="f.結果表示 = 'Failed!!' "]
[eval exp="f.Skin_Kekka = 0"]
[playse  volume="100"  time="1000"  buf="0"  storage="クイズ不正解1.mp3"  ]
[endif]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;結果表示のアニメーション
[ptext layer="1" x="1100" y="500" size="25" text="&f.結果表示" name="Kekka_Hyouji" edge="0x000000" bold="bold"]
[anim name="Kekka_Hyouji" top=450 opacity=255 time=500]
[wa]
[_tb_end_tyrano_code]

[return  ]
*__風呂バー増減

[tb_start_tyrano_code]
;ゲージ表示初期表示
[image layer="1" storage="default/ゲージ2.png" x=950 y=180 width=1 height=10 name="line"]
[_tb_end_tyrano_code]

[tb_eval  exp="f.Eve_Time=1"  name="Eve_Time"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
*__風呂増減ループ

[tb_start_tyrano_code]
;バーアニメ
[anim name="line" width="&f.Eve_Time" time="10"]
[wa]
[iscript]
f.Eve_Time+=3;
[endscript]
[while target="*__風呂増減ループ" cond="f.Eve_Time <= 300"]

[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;ランダム数値生成
[getrand var="f.ランダム数値" min="1" max="99"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;確率計算、結果表示
[if exp="f.Skin_Kakuritu >= f.ランダム数値"]
[eval exp="f.結果表示 = 'Success!!' "]
[eval exp="f.Skin_Kekka = 1"]
[playse  volume="100"  time="1000"  buf="0"  storage="クイズ正解5.mp3"  ]
[else]
[eval exp="f.結果表示 = 'Failed!!' "]
[eval exp="f.Skin_Kekka = 0"]
[playse  volume="100"  time="1000"  buf="0"  storage="クイズ不正解1.mp3"  ]
[endif]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;結果表示のアニメーション
[ptext layer="1" x="1100" y="160" size="25" text="&f.結果表示" name="Kekka_Hyouji" edge="0x000000" bold="bold"]
[anim name="Kekka_Hyouji" top=130 opacity=255 time=500]
[wa]
[_tb_end_tyrano_code]

[return  ]
[tb_start_tyrano_code]
;ゲージ表示初期表示
[image layer="1" storage="default/ゲージ2.png" x=90 y=110 width=1 height=10 name="line"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;ゲージ表示初期表示
[image layer="1" storage="default/ゲージ2.png" x=90 y=145 width=1 height=10 name="line_bad"]
[_tb_end_tyrano_code]

*__HGOODバー増処理__

[tb_start_tyrano_code]
;変数H_GOOD、H_Badの最高値を２2０以下にする
[if exp="f.H_Good>=220"]
[eval exp="f.H_Good = 220"]
[endif]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;H_Badの最高値を２2０以下にする

[if exp="f.H_Bad>=220"]
[eval exp="f.H_Bad = 220"]
[endif]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;Hアイコン拡縮キーフレームアニメ
[keyframe name="H_Icon_Scale"]
[frame scale="1.5" p="50%"]
[endkeyframe]

[xanim name="Bad_Icon" keyframe="H_Icon_Scale" count=1 time="1000" direction="alternate" easing="ease" wait="false"]
[xanim name="Good_Icon" keyframe="H_Icon_Scale" count=1 time="1000" direction="alternate" easing="ease" wait="false"]

[_tb_end_tyrano_code]

*_HGOOD増ループ

[tb_start_tyrano_code]
; Good 側
[if exp="f.Eve_Time < f.H_Good"]
[eval exp="f.Eve_Time = f.H_Good"]
[anim name="line" width="&f.Eve_Time" time="2000"]
[endif]

; Bad 側
[if exp="f.Eve_Time_Bad < f.H_Bad"]
[eval exp="f.Eve_Time_Bad = f.H_Bad"]
[anim name="line_bad" width="&f.Eve_Time_Bad" time="2000"]
[endif]
[wa]

; 両方上限に達したらジャンプ
[if exp="f.Eve_Time >= f.H_Good && f.Eve_Time_Bad >= f.H_Bad"]
[jump target="*_上限達成"]
[endif]
[_tb_end_tyrano_code]

[jump  storage="Tre_Bar.ks"  target="*_HGOOD増ループ"  cond=""  ]
*_上限達成

[return  ]
*__HGOODバー減処理__

[tb_start_tyrano_code]
;Hアイコン拡縮キーフレームアニメ
[keyframe name="H_Icon_Scale"]
[frame scale="1.5" p="50%"]
[endkeyframe]

[xanim name="Bad_Icon" keyframe="H_Icon_Scale" count=1 time="1000" direction="alternate" easing="ease" wait="false"]
[xanim name="Good_Icon" keyframe="H_Icon_Scale" count=1 time="1000" direction="alternate" easing="ease" wait="false"]

[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;変数H_Goodを０以下にしない

[if exp="f.H_Good<0"]
[eval exp="f.H_Good = 0"]
[endif]
[_tb_end_tyrano_code]

*__HGOOD減ループ

[jump  storage="Tre_Bar.ks"  target="*__GOOD下限達成"  cond="f.H_Good<1"  ]
[tb_start_tyrano_code]
;GOODバー減アニメ
[anim name="line" width="&f.Eve_Time" time="0.2"]
[eval exp="f.Eve_Time -= 0.2"]

[_tb_end_tyrano_code]

[jump  storage="Tre_Bar.ks"  target="*__HGOOD減ループ"  cond="f.Eve_Time>f.H_Good"  ]
*__GOOD下限達成

[return  ]
*__HBADバー減処理__

[tb_start_tyrano_code]
;変数H_Badを０以下にしない

[if exp="f.H_Bad<0"]
[eval exp="f.H_Bad = 0"]
[endif]
[_tb_end_tyrano_code]

*__HBAD減ループ

[jump  storage="Tre_Bar.ks"  target="*_下限達成"  cond="f.H_Bad<1"  ]
[tb_start_tyrano_code]
;BADバーアニメ
[anim name="line_bad" width="&f.Eve_Time_Bad" time="1"]
[delay time=1]
[iscript]
f.Eve_Time_Bad-=1;
[endscript]
[_tb_end_tyrano_code]

[jump  storage="Tre_Bar.ks"  target="*__HBAD減ループ"  cond="f.Eve_Time_Bad>f.H_Bad"  ]
*_下限達成

[return  ]
*__Live時間バー増減処理

[tb_start_tyrano_code]
;変数Live_Timeの最高値を36０以下にする
[if exp="f.Live_Time >=360"]
[eval exp="f.Live_Time = 360"]
[endif]
[_tb_end_tyrano_code]

[jump  storage="Tre_Bar.ks"  target="*__Live上限達成"  cond="f.Eve_Time>359"  ]
[tb_start_tyrano_code]
; GOODバーアニメ（最終値を直接代入）
[eval exp="f.Eve_Time = f.Live_Time"]
[anim name="line" width="&f.Eve_Time" time="500"]

[_tb_end_tyrano_code]

*__Live上限達成

[return  ]
*__深夜口説きバー増減

[tb_start_tyrano_code]
;ゲージ表示初期表示
[image layer="1" storage="default/ゲージ2.png" x=530 y=350 width=1 height=10 name="line"]
[_tb_end_tyrano_code]

[tb_eval  exp="f.Eve_Time=1"  name="Eve_Time"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
*_口説き増減ループ

[tb_start_tyrano_code]
;バーアニメ
[eval exp="f.Eve_Time = 300"]
[anim name="line" width="&f.Eve_Time" time="2000"]

[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;ランダム数値生成
[getrand var="f.ランダム数値" min="1" max="99"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;確率計算、結果表示
[if exp="f.Skin_Kakuritu >= f.ランダム数値"]
[eval exp="f.結果表示 = 'Success!!' "]
[eval exp="f.Skin_Kekka = 1"]
[playse  volume="100"  time="1000"  buf="0"  storage="クイズ正解5.mp3"  ]
[else]
[eval exp="f.結果表示 = 'Failed!!' "]
[eval exp="f.Skin_Kekka = 0"]
[playse  volume="100"  time="1000"  buf="0"  storage="クイズ不正解1.mp3"  ]
[endif]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;結果表示のアニメーション
[ptext layer="1" x="600" y="350" size="25" text="&f.結果表示" name="Kekka_Hyouji" edge="0x000000" bold="bold"]
[anim name="Kekka_Hyouji" top=330 opacity=255 time=500]
[wa]
[_tb_end_tyrano_code]

[return  ]
