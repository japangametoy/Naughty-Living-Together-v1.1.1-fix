[_tb_system_call storage=system/___Main_Night_Seijoui_H.ks]

[call  storage="_Array_.ks"  target="*__配列宣言"  ]
[tb_start_tyrano_code]
[layopt layer=1 visible=true opacity=255]
[layopt layer=2 visible=true opacity=255]

[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;処女判定
[eval exp="f.Sex_Count[0].bestcount =1"]

[_tb_end_tyrano_code]

[tb_eval  exp="f.Sys_Seiryoku_Max=8"  name="Sys_Seiryoku_Max"  cmd="="  op="t"  val="8"  val_2="undefined"  ]
[tb_eval  exp="f.Sys_Seiryoku=8"  name="Sys_Seiryoku"  cmd="="  op="t"  val="8"  val_2="undefined"  ]
[tb_eval  exp="f.Sys_Syume=7"  name="Sys_Syume"  cmd="="  op="t"  val="7"  val_2="undefined"  ]
[tb_eval  exp="f.Sta_Risei=8"  name="Sta_Risei"  cmd="="  op="t"  val="8"  val_2="undefined"  ]
[tb_eval  exp="f.H_Aroma_Flag=0"  name="H_Aroma_Flag"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.Oni_Ero=7"  name="Oni_Ero"  cmd="="  op="t"  val="7"  val_2="undefined"  ]
[tb_start_tyrano_code]
;開発度初期値
[eval exp="f.my_Item[4].my_kazu = 2"]
[eval exp="f.my_Item[5].my_kazu = 1"]
[eval exp="f.my_Item[6].my_kazu = 1"]
[eval exp="f.my_Item[7].my_kazu = 1"]

[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;開発度初期値
[eval exp="f.Kaihatu[1].count = 20"]
[eval exp="f.Kaihatu[3].count = 20"]
[eval exp="f.Kaihatu[4].count = 20"]
[_tb_end_tyrano_code]

*__H_Night_Seijoui

[tb_show_message_window  ]
[call  storage="__Main_Night_Word.ks"  target="*__えっち直前"  ]
[tb_hide_message_window  ]
[mask  time="500"  effect="fadeIn"  color="0x000000"  ]
[tb_start_tyrano_code]
;体位変数フラグ　正上位0　後背位1
[eval exp="f.H_Taii_Flag = 0"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;カット、体位　変数初期化
[eval exp="f.H_Kuchi_Touch=0"]
[eval exp="f.H_Left_Mune=0"]
[eval exp="f.H_Right_Mune=0"]
[eval exp="f.H_Asoko_Touch=0"]
[eval exp="f.H_Pantu_Chakui =0"]
[eval exp="f.H_Ue_Chakui = 0"]
[eval exp="f.H_Tool_Flag = 1000"]
[_tb_end_tyrano_code]

[bg  time="0"  method="crossfade"  storage="BG_Black.png"  ]
[tb_eval  exp="f.H_After_CG=3"  name="H_After_CG"  cmd="="  op="t"  val="3"  val_2="undefined"  ]
[playbgm  volume="20"  time="1000"  loop="true"  storage="PerituneMaterial_RainDrop_loop.mp3"  fadein="true"  ]
[tb_start_tyrano_code]
;Hステはクリア処理が特殊なため挿入 プラスカウント数字などを消去
[clearfix]
[freeimage  layer="2" ]
[_tb_end_tyrano_code]

[tb_eval  exp="f.H_Sex_Count=0"  name="H_Sex_Count"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.H_DanmenNakadasi_Count=0"  name="H_DanmenNakadasi_Count"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.H_Syaseikan=0"  name="H_Syaseikan"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="_Array_Kaihatu.ks"  target="*__開発配列初期化"  ]
[chara_hide_all  time="0"  wait="true"  ]
[tb_image_hide  time="0"  ]
[call  storage="__Main_Night_Option.ks"  target="*__お触りフラグリセット"  ]
[call  storage="__Main_Night_Option.ks"  target="*__服変数初期化"  ]
[tb_start_tyrano_code]
[clearfix]
[_tb_end_tyrano_code]

[tb_eval  exp="f.Eve_Time=0"  name="Eve_Time"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.Eve_Time_Bad=0"  name="Eve_Time_Bad"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_start_tyrano_code]
;アロマON
[if exp="f.H_Aroma_Flag == 1"]
[eval exp="f.H_Bad_Aroma = 0.7"]
[else]
[eval exp="f.H_Bad_Aroma = 1"]
[endif]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;開発度によるBAD倍率　f.BAD確率宣言

;0
[if exp="f.Kaihatu[0].count  >= 100"]
[eval exp="f.Good_H_Sta[0].count = 10"]
[eval exp="f.Bad_H_Sta[0].count = 0"]

[else]
[eval exp="f.Good_H_Sta[0].count = Math.floor( f.Kaihatu[0].count /10)"]
[eval exp="f.Bad_H_Sta[0].count = (100 - f.Kaihatu[0].count) /100"]
[endif]

;1
[if exp="f.Kaihatu[1].count  >= 100"]
[eval exp="f.Good_H_Sta[1].count = 10"]
[eval exp="f.Bad_H_Sta[1].count = 0"]

[else]
[eval exp="f.Good_H_Sta[1].count = Math.floor( f.Kaihatu[1].count /10)"]
[eval exp="f.Bad_H_Sta[1].count = (100 - f.Kaihatu[1].count) /100"]
[endif]

;2
[if exp="f.Kaihatu[2].count  >= 100"]
[eval exp="f.Good_H_Sta[2].count = 10"]
[eval exp="f.Bad_H_Sta[2].count = 0"]

[else]
[eval exp="f.Good_H_Sta[2].count = Math.floor( f.Kaihatu[2].count /10)"]
[eval exp="f.Bad_H_Sta[2].count = (100 - f.Kaihatu[2].count) /100"]
[endif]

;3
[if exp="f.Kaihatu[3].count  >= 100"]
[eval exp="f.Good_H_Sta[3].count = 10"]
[eval exp="f.Bad_H_Sta[3].count = 0"]

[else]
[eval exp="f.Good_H_Sta[3].count = Math.floor( f.Kaihatu[3].count /10)"]
[eval exp="f.Bad_H_Sta[3].count = (100 - f.Kaihatu[3].count) /100"]
[endif]

;4
[if exp="f.Kaihatu[4].count  >= 100"]
[eval exp="f.Good_H_Sta[4].count = 10"]
[eval exp="f.Bad_H_Sta[4].count = 0"]

[else]
[eval exp="f.Good_H_Sta[4].count = Math.floor( f.Kaihatu[4].count /10)"]
[eval exp="f.Bad_H_Sta[4].count = (100 - f.Kaihatu[4].count) /100"]
[endif]
[_tb_end_tyrano_code]

[mask_off  time="0"  effect="fadeOut"  ]
[tb_start_tyrano_code]
;ゲージ表示初期表示
[image layer="1" storage="default/ゲージ1.png" x=90 y=110 width=1 height=10 name="line"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;ゲージ表示初期表示
[image layer="1" storage="default/ゲージ2.png" x=90 y=144 width=1 height=10 name="line_bad"]
[_tb_end_tyrano_code]

[tb_eval  exp="f.H_Good=0"  name="H_Good"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.H_Bad=0"  name="H_Bad"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[bg  time="0"  method="crossfade"  storage="H背景.png"  cross="true"  ]
[tb_start_tyrano_code]
;GOODBADアイコン
[image  time="0"  storage="default/HBadアイコン.png"  width="30"  height="30"  x="43"  y="135"  name="Good_Icon" layer=2 ]
[image  time="0"  storage="default/HGoodアイコン.png"  width="30"  height="30"  x="43"  y="100" name="Bad_Icon" layer=2 ]
[_tb_end_tyrano_code]

[call  storage="Main_Sta.ks"  target="*__Hメインステ表示"  ]
[chara_show  name="H_正上位"  time="0"  wait="true"  storage="chara/10/正上01.png"  width="760"  height="660"  left="160"  top="60"  reflect="false"  ]
[chara_part  name="H_正上位"  time="0"  目="正上表情01.png"  wait="true"  ]
[mask_off  time="500"  effect="fadeOut"  ]
[jump  storage="__Main_Night_Seijoui_H.ks"  target="*__服脱がせ戻り先"  ]
*__体位変更スタート

[mask  time="300"  effect="fadeIn"  color="0x000000"  ]
[tb_start_tyrano_code]
[cm]
[clearfix]
[_tb_end_tyrano_code]

[call  storage="__Main_Night_Option.ks"  target="*__お触りカットフラグ全消し"  ]
[call  storage="__Main_Night_Option.ks"  target="*__カット消しバー再表示"  ]
[chara_hide_all  time="0"  wait="true"  ]
[chara_show  name="H_正上位"  time="0"  wait="true"  storage="chara/10/正上01.png"  width="760"  height="660"  left="160"  top="60"  reflect="false"  ]
[chara_part  name="H_正上位"  time="0"  目="正上表情01.png"  ]
[call  storage="__Main_Night_Seijoui_H.ks"  target="*__着衣判定"  ]
[mask_off  time="300"  effect="fadeOut"  ]
*__服脱がせ戻り先

[tb_start_tyrano_code]
[clearfix]
[_tb_end_tyrano_code]

[stopse  time="1000"  buf="2"  ]
[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/吐息01.mp3"  loop="true"  ]
[call  storage="__Main_Night_Option.ks"  target="*__お触りフラグリセット"  ]
[call  storage="__Main_Night_Seijoui_H.ks"  target="*__お触りカット表示ステ上昇なし"  ]
*__標準戻り先

[tb_start_tyrano_code]
;バイブオン停止
[if exp="f.H_Tool_Flag == 1000 || f.H_Tool_Flag == 1100"]
[stopse  time="1000"  buf="2"]
[endif]
[_tb_end_tyrano_code]

[call  storage="__Main_Night_Seijoui_H.ks"  target="*__着衣判定"  ]
[call  storage="__Main_Night_Seijoui_H.ks"  target="*__汗表示"  ]
[call  storage="__Main_Night_Seijoui_H.ks"  target="*__ティッシュ表示処理"  ]
[jump  storage="__Main_Night_Seijoui_H.ks"  target="*__BAD上限で終了"  cond="f.H_Bad>219"  ]
[call  storage="__Main_Night_Seijoui_H.ks"  target="*__絶頂処理"  cond="f.H_Good>219"  ]
[tb_start_tyrano_code]
;右側の選択肢　fix仕様なので注意
[clearfix]
[clearstack]
[glink  color="btn_05_black"  size="20"  target="*__継続して触る処理"  text="Keep touching"  x="1030"  y="100" fix="true" width=200 enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3"]
[glink  color="btn_05_black"  size="20"  target="*__触りを辞める"  text="Stop touching"  x="1030"  y="160" fix="true" width=200 enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3"]


;全着衣01
[if exp="f.H_Ue_Chakui ==0 && f.H_Pantu_Chakui ==0"]
[glink  color="btn_05_black"  size="20"  target="*__服脱がせ戻り先"  text="Shift camisole"  x="1030"  y="220"  fix="true" exp="f.H_Ue_Chakui = 1" width=200 enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3"]
[endif]

;上着ずらし02
[if exp="f.H_Ue_Chakui ==1 && f.H_Pantu_Chakui ==0"]
[glink  color="btn_05_black"  size="20"  target="*__服脱がせ戻り先"  text="Take off camisole"  x="1030"  y="220"  fix="true" exp="f.H_Ue_Chakui = 2" width=200 enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3"]
[glink  color="btn_05_black"  size="20"  target="*__服脱がせ戻り先"  text="Take off panties"  x="1030"  y="280"  fix="true" exp="f.H_Pantu_Chakui = 1" width=200 enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3"]
[endif]


;上着ずらしパンツなし03
[if exp="f.H_Ue_Chakui ==1 && f.H_Pantu_Chakui ==1"]
[glink  color="btn_05_black"  size="20"  target="*__服脱がせ戻り先"  text="Take off camisole"  x="1030"  y="220"  fix="true" exp="f.H_Ue_Chakui = 2" width=200 enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3"]
[glink  color="btn_05_black"  size="20"  target="*__服脱がせ戻り先"  text="Spread legs"  x="1030"  y="280"  fix="true" exp="f.H_Pantu_Chakui = 2" width=200 enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3"]
[endif]

;上着ぬがしパンツあり04
[if exp="f.H_Ue_Chakui ==2 && f.H_Pantu_Chakui ==0"]
[glink  color="btn_05_black"  size="20"  target="*__服脱がせ戻り先"  text="Wear camisole"  x="1030"  y="220"  fix="true" exp="f.H_Ue_Chakui = 1" width=200 enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3"]
[glink  color="btn_05_black"  size="20"  target="*__服脱がせ戻り先"  text="Take off panties"  x="1030"  y="280"  fix="true" exp="f.H_Pantu_Chakui = 1" width=200 enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3"]
[endif]


;上着ぬがしパンツなし05
[if exp="f.H_Ue_Chakui ==2 && f.H_Pantu_Chakui ==1"]
[glink  color="btn_05_black"  size="20"  target="*__服脱がせ戻り先"  text="Wear camisole"  x="1030"  y="220"  fix="true" exp="f.H_Ue_Chakui = 1" width=200 enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3"]
[glink  color="btn_05_black"  size="20"  target="*__服脱がせ戻り先"  text="Spread legs"  x="1030"  y="280"  fix="true" exp="f.H_Pantu_Chakui = 2" width=200 enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3"]
[endif]

;上着ずらし足開き06
[if exp="f.H_Ue_Chakui ==1 && f.H_Pantu_Chakui ==2"]
[glink  color="btn_05_black"  size="20"  target="*__服脱がせ戻り先"  text="Take off camisole"  x="1030"  y="220"  fix="true" exp="f.H_Ue_Chakui = 2" width=200 enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3"]
[glink  color="btn_05_black"  size="20"  target="*__服脱がせ戻り先"  text="Close legs"  x="1030"  y="280"  fix="true" exp="f.H_Pantu_Chakui = 1" width=200 enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3"]
[endif]

;上着脱がし足開き07
[if exp="f.H_Ue_Chakui ==2 && f.H_Pantu_Chakui ==2"]
[glink  color="btn_05_black"  size="20"  target="*__服脱がせ戻り先"  text="Wear camisole"  x="1030"  y="220"  fix="true" exp="f.H_Ue_Chakui = 1" width=200 enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3"]
[glink  color="btn_05_black"  size="20"  target="*__服脱がせ戻り先"  text="Close legs"  x="1030"  y="280"  fix="true" exp="f.H_Pantu_Chakui = 1" width=200 enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3"]
[endif]

[if exp="f.H_Good >= 110 && f.H_Pantu_Chakui >=1"]
[glink  color="btn_05_black"  storage="__Main_Night_Seijoui_H.ks"  size="20"  target="*__挿入"  text="Penetrate"  x="1030"  y="340"  fix="true"  width=200 exp="f.H_Sex_Anal = 0" cond="f.H_Kenja_Count >= 3" enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3"]
[glink  color="btn_05_black"  storage="__Main_Night_Seijoui_H.ks"  size="20"  target="*__標準戻り先"  text="Afterglow"  x="1030"  y="340"  fix="true"  width=200 cond="f.H_Kenja_Count < 3" enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3"]

[if exp="f.Kaihatu[4].count >= 15"]
[glink  color="btn_05_black"  storage="__Main_Night_Seijoui_H.ks"  size="20"  target="*__挿入"  text="Anal penetration"  x="1030"  y="400" fix="true"  width=200 exp="f.H_Sex_Anal = 1" cond="f.H_Kenja_Count >= 3" enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3"]
[glink  color="btn_05_black"  storage="__Main_Night_Seijoui_H.ks"  size="20"  target="*__標準戻り先"  text="Afterglow"  x="1030"  y="400" fix="true"  width=200 cond="f.H_Kenja_Count < 3" enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3"]

[endif]
[endif]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;体位変更
[if exp="f.Sta_Risei <= 30"]
[glink  color="btn_03_white"  size="20"  storage="__Main_Night_Back_H.ks" target="*__体位変更スタート"  text="Switch to Doggystyle"  x="30"  y="220"  fix="true"  width=200 exp="f.H_Taii_Flag = 1" enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3"]
[endif]

;[if exp="f.Sta_Risei <= 20"]
;[glink  color="btn_03_white"  size="20"  storage="__Main_Night_Sokui_H.ks" target="*__体位変更スタート"  text="種付けプレス"  x="30"  y="280"  fix="true"  width=200 enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3"]
;[endif]



[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;道具アイコン

[if exp="f.my_Item[4].my_kazu >= 1"]
[if exp="f.H_Condom_On == 0"]
[eval exp="f.コンドーム残 = 'Condom on (' + f.my_Item[4].my_kazu + ' left)'  + f.Sys_Seiri_Hyouji"]
[button  storage="__Main_Night_Seijoui_H.ks"  target="*__標準戻り先"  graphic="道具アイコン12.png" enterimg="道具アイコン11.png" width="60"  height="60"  x="30"  y="430"  name="H_Tool" fix="true" exp="f.H_Condom_On =1" hint="&f.コンドーム残" enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3"]
[else]
[button  storage="__Main_Night_Seijoui_H.ks"  target="*__標準戻り先"  graphic="道具アイコン13.png" width="60"  height="60"  x="30"  y="430"  name="H_Tool" fix="true" exp="f.H_Condom_On =0" hint="Remove condom" enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3"]
[endif]
[endif]

[if exp="f.my_Item[5].my_kazu == 1 && f.H_Ue_Chakui >=1 "]
[if exp="!/^1[0-9][0-9]1$/.test(f.H_Tool_Flag)"]
[button  storage="__Main_Night_Seijoui_H.ks"  target="*__ロータークリック"  graphic="道具アイコン22.png" enterimg="道具アイコン21.png" width="60"  height="60"  x="30"  y="500"  name="H_Tool" fix="true" exp="f.H_Tool_Flag += 1" hint="Use rotor" enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3"]
[elsif exp="/^1[0-9][0-9]1$/.test(f.H_Tool_Flag)"]
[button  storage="__Main_Night_Seijoui_H.ks"  target="*__キャラ表示処理"  graphic="道具アイコン23.png" width="60"  height="60"  x="30"  y="500"  name="H_Tool" fix="true" exp="f.H_Tool_Flag -= 1" hint="Stop rotor" enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3"]

;[else]
;[button  storage="__Main_Night_Seijoui_H.ks"  target="*__ロータークリック"  graphic="道具アイコン22.png" enterimg="道具アイコン21.png" width="60"  height="60"  x="30"  y="500"  name="H_Tool" fix="true" exp="f.H_Tool_Flag += 1" hint="ローターを使う" enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3"]

[endif]
[endif]

[if exp="f.my_Item[6].my_kazu == 1 && f.H_Pantu_Chakui >=2"]
[if exp="!/^1[0-9]1[0-9]$/.test(f.H_Tool_Flag)"]
[button  storage="__Main_Night_Seijoui_H.ks"  target="*__バイブクリック"  graphic="道具アイコン32.png"  enterimg="道具アイコン31.png" width="60"  height="60"  x="30"  y="570"  name="H_Tool" fix="true" exp="f.H_Tool_Flag += 10" hint="Use vibrator" enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3"]
[elsif exp="/^1[0-9]1[0-9]$/.test(f.H_Tool_Flag)"]
[button  storage="__Main_Night_Seijoui_H.ks"  target="*__キャラ表示処理"  graphic="道具アイコン33.png" width="60"  height="60"  x="30"  y="570"  name="H_Tool" fix="true" exp="f.H_Tool_Flag -= 10" hint="Remove vibrator" enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3"]
[endif]
[endif]

[if exp="f.my_Item[7].my_kazu == 1 && f.H_Pantu_Chakui >=2"]
[if exp="!/^11[0-9][0-9]$/.test(f.H_Tool_Flag)"]
[button  storage="__Main_Night_Seijoui_H.ks"  target="*__アナルクリック"  graphic="道具アイコン42.png"  enterimg="道具アイコン41.png" width="60"  height="60"  x="30"  y="640"  name="H_Tool" fix="true" exp="f.H_Tool_Flag += 100" hint="Use anal beads" enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3"]
[elsif exp="/^11[0-9][0-9]$/.test(f.H_Tool_Flag)"]
[button  storage="__Main_Night_Seijoui_H.ks"  target="*__キャラ表示処理"  graphic="道具アイコン43.png" width="60"  height="60"  x="30"  y="640"  name="H_Tool" fix="true" exp="f.H_Tool_Flag -= 100" hint="Remove anal beads" enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3"]
[endif]
[endif]

[_tb_end_tyrano_code]

[call  storage="__Main_Night_Option.ks"  target="*__Backアイコン表示"  ]
[call  storage="__Main_Night_Option.ks"  target="*__射精感初期表示"  ]
[clickable  storage="__Main_Night_Seijoui_H.ks"  x="610"  y="210"  width="68"  height="57"  target="*__口クリック"  _clickable_img="H11.png"  ]
[clickable  storage="__Main_Night_Seijoui_H.ks"  x="525"  y="316"  width="123"  height="124"  target="*__右胸クリック"  _clickable_img="H11.png"  ]
[clickable  storage="__Main_Night_Seijoui_H.ks"  x="661"  y="325"  width="116"  height="129"  target="*__左胸クリック"  _clickable_img="H11.png"  ]
[jump  storage="__Main_Night_Seijoui_H.ks"  target="*__パンツ飛ばし"  cond="f.H_Ue_Chakui==0"  ]
[clickable  storage="__Main_Night_Seijoui_H.ks"  x="596"  y="588"  width="100"  height="100"  target="*__パンツクリック"  _clickable_img="H11.png"  ]
*__パンツ飛ばし

[s  ]
*__口クリック

[chara_part  name="H_正上位"  time="0"  目="正上表情06.png"  ]
[call  storage="__Main_Night_Option.ks"  target="*__口セリフ正上位"  ]
[tb_start_tyrano_code]
;回数カウント
[eval exp="f.Kaihatu_Count[0].kazu += 1"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;口　フラグあげさげ
[if exp="f.H_Kuchi_Touch == 0"]
[eval exp="f.H_Kuchi_Touch=1"]
[elsif exp="f.H_Kuchi_Touch == 1"]
[eval exp="f.H_Kuchi_Touch=2"]
[else]
[eval exp="f.H_Kuchi_Touch=0"]
[endif]
[_tb_end_tyrano_code]

[playse  volume="100"  time="1000"  buf="0"  storage="えっち系/キス02.mp3"  clear="false"  ]
[call  storage="__Main_Night_Option.ks"  target="*__上カットのみ消し"  ]
[jump  storage="__Main_Night_Seijoui_H.ks"  target="*__キャラ表示処理"  ]
*__左胸クリック

[chara_part  name="H_正上位"  time="0"  目="正上表情03.png"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="えっち系/衣擦れ1.mp3"  ]
[call  storage="__Main_Night_Option.ks"  target="*__お触り単発弱"  ]
[call  storage="__Main_Night_Option.ks"  target="*__ランダムセリフ正上位"  ]
[tb_start_tyrano_code]
;回数カウント
[eval exp="f.Kaihatu_Count[1].kazu += 1"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;道具キャンセル
[eval exp="f.H_Tool_Flag = 1000"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;左胸　フラグ分岐　股間とどちらか
[if exp="f.H_Left_Mune == 0"]

[eval exp="f.H_Asoko_Touch=0"]
[eval exp="f.H_Left_Mune=1"]

[else]
[eval exp="f.H_Left_Mune=0"]
[endif]

[_tb_end_tyrano_code]

[call  storage="__Main_Night_Option.ks"  target="*__腕を使うカット全消し"  ]
[jump  storage="__Main_Night_Seijoui_H.ks"  target="*__キャラ表示処理"  ]
*__右胸クリック

[chara_part  name="H_正上位"  time="0"  目="正上表情04.png"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="えっち系/衣擦れ1.mp3"  ]
[call  storage="__Main_Night_Option.ks"  target="*__お触り単発弱"  ]
[call  storage="__Main_Night_Option.ks"  target="*__ランダムセリフ正上位"  ]
[tb_start_tyrano_code]
;回数カウント
[eval exp="f.Kaihatu_Count[1].kazu += 1"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;右胸　フラグあげさげ
[if exp="f.H_Right_Mune == 0"]
[eval exp="f.H_Right_Mune=1"]
[else]
[eval exp="f.H_Right_Mune=0"]
[endif]
[_tb_end_tyrano_code]

[call  storage="__Main_Night_Option.ks"  target="*__上カットのみ消し"  ]
[jump  storage="__Main_Night_Seijoui_H.ks"  target="*__キャラ表示処理"  ]
*__パンツクリック

[chara_part  name="H_正上位"  time="0"  目="正上表情05.png"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="えっち系/衣擦れ1.mp3"  ]
[call  storage="__Main_Night_Option.ks"  target="*__お触り単発強"  ]
[call  storage="__Main_Night_Option.ks"  target="*__ランダムセリフ正上位"  ]
[tb_start_tyrano_code]
;回数カウント
[eval exp="f.Kaihatu_Count[3].kazu += 1"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;道具キャンセル
[eval exp="f.H_Tool_Flag = 1000"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;パンツクリック　フラグ分岐　股間とどちらか
[if exp="f.H_Pantu_Chakui <=1"]

[if exp="f.H_Asoko_Touch == 0"]

;左腕判定
[eval exp="f.H_Left_Mune=0"]
[eval exp="f.H_Asoko_Touch=1"]

[elsif exp="f.H_Asoko_Touch == 1"]
[eval exp="f.H_Asoko_Touch=0"]
[endif]

;足開き時
[elsif exp="f.H_Pantu_Chakui ==2"]

[if exp="f.H_Asoko_Touch == 0"]
[eval exp="f.H_Left_Mune=0"]
[eval exp="f.H_Asoko_Touch=1"]

[elsif exp="f.H_Asoko_Touch ==1"]
[eval exp="f.H_Asoko_Touch=2"]

[else]
[eval exp="f.H_Asoko_Touch=0"]
[endif]

[endif]
[_tb_end_tyrano_code]

[call  storage="__Main_Night_Option.ks"  target="*__腕を使うカット全消し"  ]
[jump  storage="__Main_Night_Seijoui_H.ks"  target="*__キャラ表示処理"  ]
*__ロータークリック

[chara_part  name="H_正上位"  time="0"  目="正上表情07.png"  ]
[call  storage="__Main_Night_Option.ks"  target="*__お触り単発強"  ]
[call  storage="__Main_Night_Option.ks"  target="*__ランダムセリフ正上位"  ]
[tb_start_tyrano_code]
[clearstack]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;回数カウント
[if exp="f.H_Ue_Chakui == 0"]
[eval exp="f.Kaihatu_Count[1].kazu += 1"]
[elsif exp="f.H_Ue_Chakui >= 1"]
[eval exp="f.Kaihatu_Count[3].kazu += 1"]
[endif]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;左胸　フラグキャンセル
[if exp="f.H_Tool_Flag > 1000"]
[eval exp="f.H_Left_Mune=0"]
[eval exp="f.H_Asoko_Touch=0"]
[endif]
[_tb_end_tyrano_code]

[call  storage="__Main_Night_Option.ks"  target="*__腕を使うカット全消し"  ]
[jump  storage="__Main_Night_Seijoui_H.ks"  target="*__キャラ表示処理"  ]
*__バイブクリック

[chara_part  name="H_正上位"  time="0"  目="正上表情10.png"  ]
[call  storage="__Main_Night_Option.ks"  target="*__お触り単発強"  ]
[call  storage="__Main_Night_Option.ks"  target="*__道具セリフ正上位"  ]
[tb_start_tyrano_code]
[clearstack]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;回数カウント
[eval exp="f.Kaihatu_Count[3].kazu += 1"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;左腕　フラグキャンセル
[if exp="f.H_Tool_Flag > 1000"]
[eval exp="f.H_Left_Mune=0"]
[eval exp="f.H_Asoko_Touch=0"]
[endif]
[_tb_end_tyrano_code]

[call  storage="__Main_Night_Option.ks"  target="*__腕を使うカット全消し"  ]
[jump  storage="__Main_Night_Seijoui_H.ks"  target="*__キャラ表示処理"  ]
*__アナルクリック

[chara_part  name="H_正上位"  time="0"  目="正上表情11.png"  ]
[call  storage="__Main_Night_Option.ks"  target="*__お触り単発強"  ]
[call  storage="__Main_Night_Option.ks"  target="*__道具セリフ正上位"  ]
[tb_start_tyrano_code]
[clearstack]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;回数カウント
[eval exp="f.Kaihatu_Count[4].kazu += 1"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;左腕　フラグキャンセル
[if exp="f.H_Tool_Flag > 1000"]
[eval exp="f.H_Left_Mune=0"]
[eval exp="f.H_Asoko_Touch=0"]
[endif]
[_tb_end_tyrano_code]

[call  storage="__Main_Night_Option.ks"  target="*__腕を使うカット全消し"  ]
[jump  storage="__Main_Night_Seijoui_H.ks"  target="*__キャラ表示処理"  ]
*__継続して触る処理

[call  storage="__Main_Night_Option.ks"  target="*__お触り単発弱"  ]
[call  storage="__Main_Night_Option.ks"  target="*__ランダムセリフ正上位"  ]
*__キャラ表示処理

[tb_eval  exp="f.H_Kenja_Count+=1"  name="H_Kenja_Count"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
*__射精後戻り先

[call  storage="__Main_Night_Seijoui_H.ks"  target="*__道具素体変更"  ]
[call  storage="__Main_Night_Option.ks"  target="*__お触りフラグリセット"  ]
[tb_start_tyrano_code]
;HGOODの浅いときBAD増加
[if exp="f.H_Good <=10"]
[eval exp="f.H_Bad_Levelup=50"]
[elsif exp="f.H_Good >10 && f.H_Good <= 20"]
[eval exp="f.H_Bad_Levelup=40"]
[elsif exp="f.H_Good >20 && f.H_Good <= 30"]
[eval exp="f.H_Bad_Levelup=30"]
[elsif exp="f.H_Good >30 && f.H_Good <= 50"]
[eval exp="f.H_Bad_Levelup=20"]
[elsif exp="f.H_Good >50 && f.H_Good <= 70"]
[eval exp="f.H_Bad_Levelup=10"]
[elsif exp="f.H_Good >70 && f.H_Good <= 100"]
[eval exp="f.H_Bad_Levelup=5"]

[elsif exp="f.H_Good >100"]
[eval exp="f.H_Bad_Levelup=0"]
[endif]


[_tb_end_tyrano_code]

[call  storage="__Main_Night_Seijoui_H.ks"  target="*__お触りカット表示"  ]
[call  storage="__Main_Night_Seijoui_H.ks"  target="*__汗表示"  ]
[call  storage="__Main_Night_Seijoui_H.ks"  target="*__ティッシュ表示処理"  ]
[mask_off  time="200"  effect="fadeOut"  ]
[tb_start_tyrano_code]
[clearfix]
[_tb_end_tyrano_code]

[call  storage="Tre_Bar.ks"  target="*__HGOODバー増処理__"  ]
[jump  storage="__Main_Night_Seijoui_H.ks"  target="*__標準戻り先"  ]
*__触りを辞める

[call  storage="__Main_Night_Option.ks"  target="*__お触りカットフラグ全消し"  ]
[jump  storage="__Main_Night_Seijoui_H.ks"  target="*__標準戻り先"  ]
[wait_camera  ]
*__挿入

[mask  time="300"  effect="fadeIn"  color="0x000000"  ]
[stopse  time="1000"  buf="0"  ]
[stopse  time="1000"  buf="1"  ]
[stopse  time="1000"  buf="2"  ]
[stopse  time="1000"  buf="3"  ]
[tb_eval  exp="f.H_Sex_Speed=0"  name="H_Sex_Speed"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_start_tyrano_code]
;汁だけ消去
[free layer=2 name="H_Seijoui_Ase" time="0"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[cm]
[clearfix]
[clearstack]
[_tb_end_tyrano_code]

[call  storage="__Main_Night_Seijoui_H.ks"  target="*__セリフと効果音Y座標"  ]
[tb_start_tyrano_code]
;回数カウント
[if exp="f.H_Sex_Anal ==0"]
[eval exp="f.Kaihatu_Count[3].kazu += 1"]
[elsif exp="f.H_Sex_Anal ==1"]
[eval exp="f.Kaihatu_Count[4].kazu += 1"]
[endif]
[_tb_end_tyrano_code]

[call  storage="__Main_Night_Option.ks"  target="*__お触りカットフラグ全消し"  ]
[chara_part  name="H_正上位"  time="0"  目="none"  wait="true"  ]
[tb_start_tyrano_code]
;挿入前待機絵　上着で条件分岐【画像変更】
[chara_mod  name="H_正上位"  time="0"  cross="false"  storage="chara/10/正上アニメ00_0.png" cond="f.H_Ue_Chakui  == 1 && (f.H_Danmen_Flag ==0 || f.H_Condom_On == 1 || f.H_Sex_Anal == 1)"]
[chara_mod  name="H_正上位"  time="0"  cross="false"  storage="chara/10/正上アニメ10_0.png" cond="f.H_Ue_Chakui  == 1 && f.H_Danmen_Flag ==1 && f.H_Condom_On == 0 && f.H_Sex_Anal == 0 && f.H_DanmenNakadasi_Count == 0"]
[chara_mod  name="H_正上位"  time="0"  cross="false"  storage="chara/10/正上アニメ10_01.png" cond="f.H_Ue_Chakui  == 1 && f.H_Danmen_Flag ==1 && f.H_Condom_On == 0 && f.H_Sex_Anal == 0 && f.H_DanmenNakadasi_Count == 1"]
[chara_mod  name="H_正上位"  time="0"  cross="false"  storage="chara/10/正上アニメ10_02.png" cond="f.H_Ue_Chakui  == 1 && f.H_Danmen_Flag ==1 && f.H_Condom_On == 0 && f.H_Sex_Anal == 0 && f.H_DanmenNakadasi_Count >= 2"]

[chara_mod  name="H_正上位"  time="0"  cross="false"  storage="chara/10/正上アニメ20_0.png" cond="f.H_Ue_Chakui  >= 2 && (f.H_Danmen_Flag ==0 || f.H_Condom_On == 1 || f.H_Sex_Anal == 1)"]
[chara_mod  name="H_正上位"  time="0"  cross="false"  storage="chara/10/正上アニメ30_0.png" cond="f.H_Ue_Chakui  >= 2 && f.H_Danmen_Flag ==1 && f.H_Condom_On == 0 && f.H_Sex_Anal == 0 && f.H_DanmenNakadasi_Count == 0"]
[chara_mod  name="H_正上位"  time="0"  cross="false"  storage="chara/10/正上アニメ30_01.png" cond="f.H_Ue_Chakui  >= 2 && f.H_Danmen_Flag ==1 && f.H_Condom_On == 0 && f.H_Sex_Anal == 0 && f.H_DanmenNakadasi_Count == 1"]
[chara_mod  name="H_正上位"  time="0"  cross="false"  storage="chara/10/正上アニメ30_02.png" cond="f.H_Ue_Chakui  >= 2 && f.H_Danmen_Flag ==1 && f.H_Condom_On == 0 && f.H_Sex_Anal == 0 && f.H_DanmenNakadasi_Count >= 2"]

[_tb_end_tyrano_code]

[call  storage="__Main_Night_Option.ks"  target="*__Backアイコン表示"  ]
[mask_off  time="300"  effect="fadeOut"  ]
[call  storage="__Main_Night_Option.ks"  target="*__挿入時セリフ"  ]
[tb_eval  exp="f.H_Sex_Speed=1"  name="H_Sex_Speed"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_start_tyrano_code]
;挿入　上着キャラ【画像変更】
[if exp="f.H_Sex_Anal ==0"]
[chara_mod  name="H_正上位"  time="0"  cross="true"  storage="chara/10/正上アニメ挿入01.png" cond="f.H_Ue_Chakui  == 1 && f.H_Danmen_Flag ==0"]
[chara_mod  name="H_正上位"  time="0"  cross="true"  storage="chara/10/正上アニメ挿入01.png" cond="f.H_Ue_Chakui  == 1 && f.H_Danmen_Flag ==1 && f.H_Condom_On == 1"]
[chara_mod  name="H_正上位"  time="0"  cross="true"  storage="chara/10/正上アニメ挿入11.png" cond="f.H_Ue_Chakui  == 1 && f.H_Danmen_Flag ==1 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count == 0"]
[chara_mod  name="H_正上位"  time="0"  cross="true"  storage="chara/10/正上アニメ挿入12.png" cond="f.H_Ue_Chakui  == 1 && f.H_Danmen_Flag ==1 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count == 1"]
[chara_mod  name="H_正上位"  time="0"  cross="true"  storage="chara/10/正上アニメ挿入13.png" cond="f.H_Ue_Chakui  == 1 && f.H_Danmen_Flag ==1 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count >= 2"]

[chara_mod  name="H_正上位"  time="0"  cross="true"  storage="chara/10/正上アニメ挿入21.png" cond="f.H_Ue_Chakui >= 2 && f.H_Danmen_Flag ==0"]
[chara_mod  name="H_正上位"  time="0"  cross="true"  storage="chara/10/正上アニメ挿入21.png" cond="f.H_Ue_Chakui >= 2 && f.H_Danmen_Flag ==1 && f.H_Condom_On == 1"]
[chara_mod  name="H_正上位"  time="0"  cross="true"  storage="chara/10/正上アニメ挿入31.png" cond="f.H_Ue_Chakui >= 2 && f.H_Danmen_Flag ==1 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count == 0"]
[chara_mod  name="H_正上位"  time="0"  cross="true"  storage="chara/10/正上アニメ挿入32.png" cond="f.H_Ue_Chakui >= 2 && f.H_Danmen_Flag ==1 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count == 1"]
[chara_mod  name="H_正上位"  time="0"  cross="true"  storage="chara/10/正上アニメ挿入33.png" cond="f.H_Ue_Chakui >= 2 && f.H_Danmen_Flag ==1 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count >= 2"]

[elsif exp="f.H_Sex_Anal ==1"]
[chara_mod  name="H_正上位"  time="0"  cross="true"  storage="chara/10/正上アニメ挿入41.png" cond="f.H_Ue_Chakui == 1"]
[chara_mod  name="H_正上位"  time="0"  cross="true"  storage="chara/10/正上アニメ挿入51.png" cond="f.H_Ue_Chakui >= 2"]
[endif]
[_tb_end_tyrano_code]

[playse  volume="70"  time="1000"  buf="0"  storage="挿入音/挿入音正上位.mp3"  ]
[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/正上位挿入声01.mp3"  ]
[wait  time="4000"  ]
[call  storage="__Main_Night_Option.ks"  target="*__挿入時セリフ"  ]
*__動きを止める

[call  storage="__Main_Night_Seijoui_H.ks"  target="*__セリフと効果音Y座標"  ]
[tb_start_tyrano_code]
;ティッシュ消去
[free layer=1 name="H_Seijoui_tyissyu" time="0" cond="f.H_Sex_Speed >=4 && f.H_Sex_Speed <= 7"]
[call target="*__ティッシュ表示処理" cond="f.H_Sex_Speed < 4 || f.H_Sex_Speed > 7"]

[_tb_end_tyrano_code]

[stopse  time="1000"  buf="0"  ]
[stopse  time="1000"  buf="1"  ]
[stopse  time="1000"  buf="2"  ]
[playse  volume="100"  time="1000"  buf="3"  loop="true"  storage="喘ぎ声/02喘ぎ声(前)02.mp3"  ]
[tb_start_tyrano_code]
;止める静止絵表示　条件分岐　Sex_Speedによって

[switch exp="f.H_Sex_Speed"]
[case is=4]
[chara_mod  name="H_種付け"  time="0"  cross="false"  storage="chara/27/種付け01.png" cond="f.H_Danmen_Flag == 0"]
[chara_mod  name="H_種付け"  time="0"  cross="false"  storage="chara/27/種付け01.png" cond="f.H_Danmen_Flag == 1 && f.H_Condom_On == 1"]
[chara_mod  name="H_種付け"  time="0"  cross="false"  storage="chara/27/種付け11.png" cond="f.H_Danmen_Flag == 1 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count == 0"]
[chara_mod  name="H_種付け"  time="0"  cross="false"  storage="chara/27/種付け14.png" cond="f.H_Danmen_Flag == 1 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count == 1"]
[chara_mod  name="H_種付け"  time="0"  cross="false"  storage="chara/27/種付け17.png" cond="f.H_Danmen_Flag == 1 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count >= 2"]

[case is=5]
[chara_mod  name="H_種付け"  time="0"  cross="false"  storage="chara/27/種付け02.png" cond="f.H_Danmen_Flag == 0"]
[chara_mod  name="H_種付け"  time="0"  cross="false"  storage="chara/27/種付け02.png" cond="f.H_Danmen_Flag == 1 && f.H_Condom_On == 1"]
[chara_mod  name="H_種付け"  time="0"  cross="false"  storage="chara/27/種付け12.png" cond="f.H_Danmen_Flag == 1 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count == 0"]
[chara_mod  name="H_種付け"  time="0"  cross="false"  storage="chara/27/種付け15.png" cond="f.H_Danmen_Flag == 1 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count == 1"]
[chara_mod  name="H_種付け"  time="0"  cross="false"  storage="chara/27/種付け18.png" cond="f.H_Danmen_Flag == 1 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count >= 2"]

[case is=6]
[chara_mod  name="H_種付け"  time="0"  cross="false"  storage="chara/27/種付け03.png" cond="f.H_Danmen_Flag == 0"]
[chara_mod  name="H_種付け"  time="0"  cross="false"  storage="chara/27/種付け03.png" cond="f.H_Danmen_Flag == 1 && f.H_Condom_On == 1"]
[chara_mod  name="H_種付け"  time="0"  cross="false"  storage="chara/27/種付け13.png" cond="f.H_Danmen_Flag == 1 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count == 0"]
[chara_mod  name="H_種付け"  time="0"  cross="false"  storage="chara/27/種付け16.png" cond="f.H_Danmen_Flag == 1 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count == 1"]
[chara_mod  name="H_種付け"  time="0"  cross="false"  storage="chara/27/種付け19.png" cond="f.H_Danmen_Flag == 1 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count >= 2"]

[case is=7]
[chara_hide_all  time="0"  wait="true"  ]
[chara_show  name="H_種付け"  time="0"  wait="true" cross="false" storage="chara/27/種付け挿入01.png"  width="760"  height="660"  left="160"  top="60" cond="f.H_Danmen_Flag == 0 || f.H_Condom_On == 1" ]
[chara_show  name="H_種付け"  time="0"  wait="true" cross="false" storage="chara/27/種付け挿入11.png"  width="760"  height="660"  left="160"  top="60" cond="f.H_Danmen_Flag == 1 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count == 0" ]
[chara_show  name="H_種付け"  time="0"  wait="true" cross="false" storage="chara/27/種付け挿入12.png"  width="760"  height="660"  left="160"  top="60" cond="f.H_Danmen_Flag == 1 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count == 1" ]
[chara_show  name="H_種付け"  time="0"  wait="true" cross="false" storage="chara/27/種付け挿入13.png"  width="760"  height="660"  left="160"  top="60" cond="f.H_Danmen_Flag == 1 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count >= 2" ]

;正上位
[case is=0]
[chara_hide_all  time="0"  wait="true"  ]
[chara_show  name="H_正上位"  time="0"  wait="false" cross="false" storage="chara/10/正上アニメ00.png" cond="f.H_Ue_Chakui == 1 && f.H_Danmen_Flag == 0 && f.H_Sex_Anal ==0"  width="760"  height="660"  left="160"  top="60"]
[chara_show  name="H_正上位"  time="0"  wait="false" cross="false" storage="chara/10/正上アニメ00.png" cond="f.H_Ue_Chakui == 1 && f.H_Danmen_Flag == 1 && f.H_Sex_Anal ==0 && f.H_Condom_On == 1"  width="760"  height="660"  left="160"  top="60"]
[chara_show  name="H_正上位"  time="0"  wait="false" cross="false" storage="chara/10/正上アニメ10.png" cond="f.H_Ue_Chakui == 1 && f.H_Danmen_Flag == 1 && f.H_Sex_Anal ==0 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count == 0"  width="760"  height="660"  left="160"  top="60"]
[chara_show  name="H_正上位"  time="0"  wait="false" cross="false" storage="chara/10/正上アニメ10_11.png" cond="f.H_Ue_Chakui == 1 && f.H_Danmen_Flag == 1 && f.H_Sex_Anal ==0 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count == 1"  width="760"  height="660"  left="160"  top="60"]
[chara_show  name="H_正上位"  time="0"  wait="false" cross="false" storage="chara/10/正上アニメ10_12.png" cond="f.H_Ue_Chakui == 1 && f.H_Danmen_Flag == 1 && f.H_Sex_Anal ==0 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count >= 2"  width="760"  height="660"  left="160"  top="60"]

[chara_show  name="H_正上位"  time="0"  wait="false" cross="false" storage="chara/10/正上アニメ20.png" cond="f.H_Ue_Chakui >= 2 && f.H_Danmen_Flag == 0 && f.H_Sex_Anal ==0"  width="760"  height="660"  left="160"  top="60"]
[chara_show  name="H_正上位"  time="0"  wait="false" cross="false" storage="chara/10/正上アニメ20.png" cond="f.H_Ue_Chakui >= 2 && f.H_Danmen_Flag == 1 && f.H_Sex_Anal ==0 && f.H_Condom_On == 1"  width="760"  height="660"  left="160"  top="60"]
[chara_show  name="H_正上位"  time="0"  wait="false" cross="false" storage="chara/10/正上アニメ30.png" cond="f.H_Ue_Chakui >= 2 && f.H_Danmen_Flag == 1 && f.H_Sex_Anal ==0 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count == 0"  width="760"  height="660"  left="160"  top="60"]
[chara_show  name="H_正上位"  time="0"  wait="false" cross="false" storage="chara/10/正上アニメ30_11.png" cond="f.H_Ue_Chakui >= 2 && f.H_Danmen_Flag == 1 && f.H_Sex_Anal ==0 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count == 1"  width="760"  height="660"  left="160"  top="60"]
[chara_show  name="H_正上位"  time="0"  wait="false" cross="false" storage="chara/10/正上アニメ30_12.png" cond="f.H_Ue_Chakui >= 2 && f.H_Danmen_Flag == 1 && f.H_Sex_Anal ==0 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count >= 2"  width="760"  height="660"  left="160"  top="60"]

[chara_show  name="H_正上位"  time="0"  wait="false" cross="false" storage="chara/10/正上アニメ40.png" cond="f.H_Ue_Chakui == 1 && f.H_Sex_Anal ==1"  width="760"  height="660"  left="160"  top="60"]
[chara_show  name="H_正上位"  time="0"  wait="false" cross="false" storage="chara/10/正上アニメ50.png" cond="f.H_Ue_Chakui >= 2 && f.H_Sex_Anal ==1"  width="760"  height="660"  left="160"  top="60"]

;正上位継続時
[case]
[chara_mod  name="H_正上位"  time="0"  wait="false" cross="false" storage="chara/10/正上アニメ00.png" cond="f.H_Ue_Chakui == 1 && f.H_Danmen_Flag == 0 && f.H_Sex_Anal ==0"  width="760"  height="660"  left="160"  top="60"]
[chara_mod  name="H_正上位"  time="0"  wait="false" cross="false" storage="chara/10/正上アニメ00.png" cond="f.H_Ue_Chakui == 1 && f.H_Danmen_Flag == 1 && f.H_Sex_Anal ==0 && f.H_Condom_On == 1"  width="760"  height="660"  left="160"  top="60"]
[chara_mod  name="H_正上位"  time="0"  wait="false" cross="false" storage="chara/10/正上アニメ10.png" cond="f.H_Ue_Chakui == 1 && f.H_Danmen_Flag == 1 && f.H_Sex_Anal ==0 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count == 0"  width="760"  height="660"  left="160"  top="60"]
[chara_mod  name="H_正上位"  time="0"  wait="false" cross="false" storage="chara/10/正上アニメ10_11.png" cond="f.H_Ue_Chakui == 1 && f.H_Danmen_Flag == 1 && f.H_Sex_Anal ==0 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count == 1"  width="760"  height="660"  left="160"  top="60"]
[chara_mod  name="H_正上位"  time="0"  wait="false" cross="false" storage="chara/10/正上アニメ10_12.png" cond="f.H_Ue_Chakui == 1 && f.H_Danmen_Flag == 1 && f.H_Sex_Anal ==0 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count >= 2"  width="760"  height="660"  left="160"  top="60"]

[chara_mod  name="H_正上位"  time="0"  wait="false" cross="false" storage="chara/10/正上アニメ20.png" cond="f.H_Ue_Chakui >= 2 && f.H_Danmen_Flag == 0 && f.H_Sex_Anal ==0"  width="760"  height="660"  left="160"  top="60"]
[chara_mod  name="H_正上位"  time="0"  wait="false" cross="false" storage="chara/10/正上アニメ20.png" cond="f.H_Ue_Chakui >= 2 && f.H_Danmen_Flag == 1 && f.H_Sex_Anal ==0 && f.H_Condom_On == 1"  width="760"  height="660"  left="160"  top="60"]
[chara_mod  name="H_正上位"  time="0"  wait="false" cross="false" storage="chara/10/正上アニメ30.png" cond="f.H_Ue_Chakui >= 2 && f.H_Danmen_Flag == 1 && f.H_Sex_Anal ==0 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count == 0"  width="760"  height="660"  left="160"  top="60"]
[chara_mod  name="H_正上位"  time="0"  wait="false" cross="false" storage="chara/10/正上アニメ30_11.png" cond="f.H_Ue_Chakui >= 2 && f.H_Danmen_Flag == 1 && f.H_Sex_Anal ==0 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count == 1"  width="760"  height="660"  left="160"  top="60"]
[chara_mod  name="H_正上位"  time="0"  wait="false" cross="false" storage="chara/10/正上アニメ30_12.png" cond="f.H_Ue_Chakui >= 2 && f.H_Danmen_Flag == 1 && f.H_Sex_Anal ==0 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count >= 2"  width="760"  height="660"  left="160"  top="60"]

[chara_mod  name="H_正上位"  time="0"  wait="false" cross="false" storage="chara/10/正上アニメ40.png" cond="f.H_Ue_Chakui == 1 && f.H_Sex_Anal ==1"  width="760"  height="660"  left="160"  top="60"]
[chara_mod  name="H_正上位"  time="0"  wait="false" cross="false" storage="chara/10/正上アニメ50.png" cond="f.H_Ue_Chakui >= 2 && f.H_Sex_Anal ==1"  width="760"  height="660"  left="160"  top="60"]

[endswitch]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[clearfix]
[clearstack]
[wait_cancel]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;右選択肢　スピードで分岐
[call target = "*__挿入右選択肢種付け" cond="f.H_Sex_Speed >=4 && f.H_Sex_Speed <= 7"]
[call target="*__挿入右選択肢" cond="f.H_Sex_Speed < 4 || f.H_Sex_Speed > 7"]
[_tb_end_tyrano_code]

[call  storage="__Main_Night_Option.ks"  target="*__Backアイコン表示"  ]
[s  ]
*__挿入をやめる

[tb_start_tyrano_code]
[clearstack]
[wait_cancel]
[_tb_end_tyrano_code]

[stopse  time="1000"  buf="0"  ]
[stopse  time="1000"  buf="1"  ]
[stopse  time="1000"  buf="2"  ]
[stopse  time="1000"  buf="3"  ]
[jump  storage="__Main_Night_Seijoui_H.ks"  target="*__体位変更スタート"  ]
*__ゆっくり動く

*__激しく動く

*__全力ピストン

[mask_off  time="0"  effect="fadeOut"  ]
[tb_start_tyrano_code]
[clearstack]
[wait_cancel]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;上着着ているか判定
[if exp="f.H_Ue_Chakui >= 2"]
[eval exp="f.H_Sex_Speed += 10" cond="f.H_Sex_Speed < 4 || f.H_Sex_Speed > 7"]
[endif]
[_tb_end_tyrano_code]

[call  storage="__Main_Night_Seijoui_H.ks"  target="*__キャラのピストン速度変更"  ]
*__絶頂したときのループ処理

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

[jump target="*__絶頂移行" cond="f.H_Good >= 220"]
[jump target="*__絶頂移行" cond="f.H_Sex_Speed == 7 || f.H_Sex_Speed == 17 || f.H_Sex_Speed == 0 || f.H_Sex_Speed == 10"]

[iscript]
f.H_Good += 1;
f.Eve_Time = f.H_Good;
[endscript]

[anim name="line" width="&f.Eve_Time" time="1"]
[_tb_end_tyrano_code]

[call  storage="__Main_Night_Option.ks"  target="*__セックス中セリフ"  ]
[jump  storage="__Main_Night_Seijoui_H.ks"  target="*__射精感UP"  cond="f.H_Syaseikan<100"  ]
*__絶頂移行

[jump  storage="__Main_Night_Seijoui_H.ks"  target="*__射精_処理"  cond="f.H_Syaseikan>99"  ]
[playse  volume="100"  time="1000"  buf="1"  storage="えっち系/射精音02.mp3"  ]
[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/絶頂声のみ04.mp3"  ]
[call  storage="__Main_Night_Seijoui_H.ks"  target="*__絶頂画像表示"  ]
[call  storage="__Main_Night_Option.ks"  target="*__絶頂処理"  cond="f.H_Good>219"  ]
[tb_start_tyrano_code]
;絶頂回数プラスカウント
[eval exp="f.Sex_Count[5].count += 1"]
[_tb_end_tyrano_code]

[wait  time="4000"  ]
[call  storage="__Main_Night_Seijoui_H.ks"  target="*__キャラのピストン速度変更"  ]
[jump  storage="__Main_Night_Seijoui_H.ks"  target="*__絶頂したときのループ処理"  ]
[s  ]
*__射精_処理

[tb_start_tyrano_code]
[clearfix]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;右選択肢　スピードで分岐
[call target = "*__挿入右選択肢種付け" cond="f.H_Sex_Speed >=4 && f.H_Sex_Speed <= 7"]
[call target="*__挿入右選択肢" cond="f.H_Sex_Speed < 4 || f.H_Sex_Speed > 7"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;右側の選択肢　fix仕様なので注意
[if exp="f.H_Syaseikan >=100 && f.H_Hold_Flag == 0""]
[glink  color="btn_05_black"  size="20" storage="__Main_Night_Seijoui_H.ks" target="*__射精中"  text="Cum inside"  x="1030"  y="460" fix="true" width=200]
[glink  color="btn_05_black"  size="20" storage="__Main_Night_Seijoui_H.ks" target="*__射精外"  text="Cum outside"  x="1030"  y="520" fix="true" width=200]
[endif]
[_tb_end_tyrano_code]

[call  storage="__Main_Night_Option.ks"  target="*__Backアイコン表示"  ]
*__射精感120まで

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

[jump target="*__絶頂移行100" cond="f.H_Good >= 220"]
;[jump target="*__ホールド" cond="f.H_Good== 180 && f.H_Taii_Flag == 0"]
;[jump target="*__ホールド終了" cond="f.H_Good== 200 && f.H_Taii_Flag == 0"]

[iscript]
f.H_Good += 1;
f.Eve_Time = f.H_Good;
[endscript]

[anim name="line" width="&f.Eve_Time" time="1"]
[_tb_end_tyrano_code]

[call  storage="__Main_Night_Option.ks"  target="*__セックス中セリフ"  ]
[jump  storage="__Main_Night_Seijoui_H.ks"  target="*__射精感120まで"  cond="f.H_Syaseikan<120"  ]
*__絶頂移行100

[jump  storage="__Main_Night_Seijoui_H.ks"  target="*__射精中"  cond="f.H_Syaseikan>119"  ]
[playse  volume="100"  time="1000"  buf="1"  storage="えっち系/射精音02.mp3"  ]
[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/絶頂声のみ04.mp3"  ]
[call  storage="__Main_Night_Seijoui_H.ks"  target="*__絶頂画像表示"  ]
[call  storage="__Main_Night_Option.ks"  target="*__絶頂処理"  cond="f.H_Good>219"  ]
[tb_start_tyrano_code]
;絶頂回数プラスカウント
[eval exp="f.Sex_Count[5].count += 1"]
[_tb_end_tyrano_code]

[wait  time="4000"  ]
[call  storage="__Main_Night_Seijoui_H.ks"  target="*__キャラのピストン速度変更"  ]
[jump  storage="__Main_Night_Seijoui_H.ks"  target="*__射精_処理"  cond="f.H_Syaseikan<120"  ]
[s  ]
[chara_part  name="H_正上位"  time="0"  目="正上表情04.png"  ]
*__射精中

[tb_start_tyrano_code]
;中だし回数プラスカウント
[if exp="f.H_Sex_Anal ==0 && f.H_Condom_On ==0"]
[eval exp="f.Sex_Count[3].bestcount += 1"]
[eval exp="f.Sex_Count[4].count += 1"]
[eval exp="f.H_DanmenNakadasi_Count += 1"]
[eval exp="f.H_After_CG = 4"]
[endif]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;ローカルえっち回数プラスカウント
[eval exp="f.Sex_Count[6].bestcount += 1" cond ="f.H_Condom_On == 0"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[clearstack]
[wait_cancel]
[clearfix]
[_tb_end_tyrano_code]

[call  storage="__Main_Night_Option.ks"  target="*__Backアイコン表示"  ]
[call  storage="__Main_Night_Option.ks"  target="*__中射精エフェクト"  ]
[call  storage="__Main_Night_Seijoui_H.ks"  target="*__射精効果音"  ]
[playse  volume="50"  time="1000"  buf="1"  storage="射精音/射精音正上位とプレス.mp3"  ]
[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/絶頂声のみ02.mp3"  ]
[delete_individual_image  layer="1"  name="effect"  time="0"  wait="false"  ]
[tb_start_tyrano_code]
;射精　【画像変更】
[if exp="f.H_Sex_Speed >=4 &&  f.H_Sex_Speed <=7"]
[chara_mod  name="H_種付け"  time="0"  cross="false"  storage="chara/27/種付け射精01.png" cond="f.H_Danmen_Flag == 0 || f.H_Condom_On == 1"]
[chara_mod  name="H_種付け"  time="0"  cross="false"  storage="chara/27/種付け射精11.png" cond="f.H_Danmen_Flag == 1 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count == 1"]
[chara_mod  name="H_種付け"  time="0"  cross="false"  storage="chara/27/種付け射精32.png" cond="f.H_Danmen_Flag == 1 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count == 2"]
[chara_mod  name="H_種付け"  time="0"  cross="false"  storage="chara/27/種付け射精33.png" cond="f.H_Danmen_Flag == 1 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count >= 3"]

;正上位
[else]
[chara_mod  name="H_正上位"  time="0"  cross="false"  storage="chara/10/正上アニメ射精01.png" cond="f.H_Ue_Chakui ==1 && f.H_Danmen_Flag == 0 && f.H_Sex_Anal ==0 && f.H_Condom_On == 0"]
[chara_mod  name="H_正上位"  time="0"  cross="false"  storage="chara/10/正上アニメ射精11.png" cond="f.H_Ue_Chakui ==1 && f.H_Danmen_Flag == 1 && f.H_Sex_Anal ==0 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count == 1"]
[chara_mod  name="H_正上位"  time="0"  cross="false"  storage="chara/10/正上アニメ射精12.png" cond="f.H_Ue_Chakui ==1 && f.H_Danmen_Flag == 1 && f.H_Sex_Anal ==0 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count == 2"]
[chara_mod  name="H_正上位"  time="0"  cross="false"  storage="chara/10/正上アニメ射精13.png" cond="f.H_Ue_Chakui ==1 && f.H_Danmen_Flag == 1 && f.H_Sex_Anal ==0 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count >= 3"]

[chara_mod  name="H_正上位"  time="0"  cross="false"  storage="chara/10/正上アニメ射精21.png" cond="f.H_Ue_Chakui >=2 && f.H_Danmen_Flag == 0 && f.H_Sex_Anal ==0 && f.H_Condom_On == 0"]
[chara_mod  name="H_正上位"  time="0"  cross="false"  storage="chara/10/正上アニメ射精31.png" cond="f.H_Ue_Chakui >=2 && f.H_Danmen_Flag == 1 && f.H_Sex_Anal ==0 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count == 1"]
[chara_mod  name="H_正上位"  time="0"  cross="false"  storage="chara/10/正上アニメ射精32.png" cond="f.H_Ue_Chakui >=2 && f.H_Danmen_Flag == 1 && f.H_Sex_Anal ==0 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count == 2"]
[chara_mod  name="H_正上位"  time="0"  cross="false"  storage="chara/10/正上アニメ射精33.png" cond="f.H_Ue_Chakui >=2 && f.H_Danmen_Flag == 1 && f.H_Sex_Anal ==0 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count >= 3"]

[chara_mod  name="H_正上位"  time="0"  cross="false"  storage="chara/10/正上アニメ射精41.png" cond="f.H_Ue_Chakui ==1 && f.H_Sex_Anal ==1 && f.H_Condom_On == 0"]
[chara_mod  name="H_正上位"  time="0"  cross="false"  storage="chara/10/正上アニメ射精51.png" cond="f.H_Ue_Chakui >=2 && f.H_Sex_Anal ==1 && f.H_Condom_On == 0"]
[chara_mod  name="H_正上位"  time="0"  cross="false"  storage="chara/10/正上アニメ射精61.png" cond="f.H_Ue_Chakui ==1 && f.H_Sex_Anal ==0 && f.H_Condom_On == 1"]
[chara_mod  name="H_正上位"  time="0"  cross="false"  storage="chara/10/正上アニメ射精71.png" cond="f.H_Ue_Chakui >=2 && f.H_Sex_Anal ==0 && f.H_Condom_On == 1"]
[chara_mod  name="H_正上位"  time="0"  cross="false"  storage="chara/10/正上アニメ射精81.png" cond="f.H_Ue_Chakui ==1 && f.H_Sex_Anal ==1 && f.H_Condom_On == 1"]
[chara_mod  name="H_正上位"  time="0"  cross="false"  storage="chara/10/正上アニメ射精91.png" cond="f.H_Ue_Chakui >=2 && f.H_Sex_Anal ==1 && f.H_Condom_On == 1"]
[endif]
[_tb_end_tyrano_code]

[call  storage="__Main_Night_Option.ks"  target="*__妊娠判定"  cond=""  ]
[call  storage="__Main_Night_Option.ks"  target="*__射精感を0に"  ]
[call  storage="Main_Sta.ks"  target="*__Hメインステ表示"  ]
[call  storage="__Main_Night_Option.ks"  target="*__射精時セリフ"  ]
[wait  time="6000"  ]
[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/01喘ぎ声(前)01.mp3"  loop="true"  ]
[l  ]
[glink  color="btn_05_black"  storage="__Main_Night_Seijoui_H.ks"  size="20"  text="Wipe with tissue"  x="541"  y="441"  width=""  height=""  _clickable_img=""  target="*__中ティッシュ"  ]
[s  ]
*__中ティッシュ

[mask  time="500"  effect="fadeIn"  color="0xffffff"  ]
[chara_hide_all  time="0"  wait="true"  ]
[tb_start_tyrano_code]
;静止　上着キャラ【画像変更】
[chara_show  name="H_正上位"  time="0"  wait="true"  storage="chara/10/正上07.png" cond="f.H_Ue_Chakui >= 2"  width="760"  height="660"  left="160"  top="60"]
[chara_show  name="H_正上位"  time="0"  wait="true"  storage="chara/10/正上06.png" cond="f.H_Ue_Chakui == 1"  width="760"  height="660"  left="160"  top="60"]


[_tb_end_tyrano_code]

[chara_part  name="H_正上位"  time="0"  目="正上表情04.png"  ]
[call  storage="__Main_Night_Seijoui_H.ks"  target="*__汗表示"  ]
[mask_off  time="500"  effect="fadeOut"  ]
[jump  storage="__Main_Night_Seijoui_H.ks"  target="*__掃除後"  ]
*__射精外

[tb_start_tyrano_code]
[clearstack]
[wait_cancel]
[clearfix]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;コンドーム処理
[if exp="f.H_Condom_On == 1"]
[eval exp="f.my_Item[4].my_kazu -= 1"]
[eval exp="f.H_Condom_On = 0"]
[endif]
[_tb_end_tyrano_code]

[individual_image  layer="1"  zindex="1"  storage="default/white.png"  width="1280"  height="720"  name="effect"  time="300"  wait="true"  ]
[call  storage="__Main_Night_Option.ks"  target="*__Backアイコン表示"  ]
[stopse  time="1000"  buf="0"  ]
[stopse  time="1000"  buf="1"  ]
[stopse  time="1000"  buf="3"  ]
[chara_hide_all  time="0"  wait="true"  ]
[tb_start_tyrano_code]
;静止　上着キャラ【画像変更】
[chara_show  name="H_正上位"  time="0"  wait="true"  storage="chara/10/正上07.png" cond="f.H_Ue_Chakui >= 2"  width="760"  height="660"  left="160"  top="60"]
[chara_show  name="H_正上位"  time="0"  wait="true"  storage="chara/10/正上06.png" cond="f.H_Ue_Chakui == 1"  width="760"  height="660"  left="160"  top="60"]


[_tb_end_tyrano_code]

[chara_part  name="H_正上位"  time="0"  目="正上表情04.png"  ]
[call  storage="__Main_Night_Seijoui_H.ks"  target="*__汗表示"  ]
[delete_individual_image  layer="1"  name="effect"  time="300"  wait="true"  ]
[call  storage="__Main_Night_Option.ks"  target="*__はあはあ"  ]
[glink  color="btn_05_black"  storage="__Main_Night_Seijoui_H.ks"  size="20"  text="Where to cum?"  x="540"  y="440"  width=""  height=""  _clickable_img=""  target="*__射精先選択"  ]
[s  ]
*__射精先選択

[clickable  storage="__Main_Night_Seijoui_H.ks"  x="590"  y="118"  width="136"  height="100"  target="*__顔_射精"  _clickable_img="H11.png"  ]
[clickable  storage="__Main_Night_Seijoui_H.ks"  x="627"  y="220"  width="44"  height="35"  target="*__口_射精"  _clickable_img="H11.png"  ]
[clickable  storage="__Main_Night_Seijoui_H.ks"  x="534"  y="284"  width="235"  height="160"  target="*__胸_射精"  _clickable_img="H11.png"  ]
[clickable  storage="__Main_Night_Seijoui_H.ks"  x="548"  y="482"  width="201"  height="180"  target="*__お腹_射精"  _clickable_img="H11.png"  ]
[delete_individual_image  layer="1"  name="effect"  time="0"  wait="false"  ]
[s  ]
*__顔_射精

[playse  volume="100"  time="1000"  buf="0"  storage="えっち系/射精音01.mp3"  ]
[call  storage="__Main_Night_Option.ks"  target="*__外射精エフェクト"  ]
[tb_start_tyrano_code]
[image layer=1 time="1000"  storage="default/正上カット/正上汁04.png"  width="560"  height="670"  x="360"  y="50"  _clickable_img="H11.png"  name="H_Seijoui_Seieki"  ]
[_tb_end_tyrano_code]

[jump  storage="__Main_Night_Seijoui_H.ks"  target="*__外だし射精処理"  ]
*__口_射精

[playse  volume="100"  time="1000"  buf="0"  storage="えっち系/射精音01.mp3"  ]
[call  storage="__Main_Night_Option.ks"  target="*__外射精エフェクト"  ]
[tb_start_tyrano_code]
[image layer=1 time="1000"  storage="default/正上カット/カット_正上_口05.png"  width="230"  height="180"  x="770"  y="100"  name="H_Seijoui_Seieki"  ]
[_tb_end_tyrano_code]

[jump  storage="__Main_Night_Seijoui_H.ks"  target="*__外だし射精処理"  ]
*__胸_射精

[playse  volume="100"  time="1000"  buf="0"  storage="えっち系/射精音01.mp3"  ]
[call  storage="__Main_Night_Option.ks"  target="*__外射精エフェクト"  ]
[tb_start_tyrano_code]
[image layer=1 time="1000"  storage="default/正上カット/正上汁03.png"  width="560"  height="670"  x="360"  y="50"  name="H_Seijoui_Seieki"  ]
[_tb_end_tyrano_code]

[jump  storage="__Main_Night_Seijoui_H.ks"  target="*__外だし射精処理"  ]
*__お腹_射精

[playse  volume="100"  time="1000"  buf="0"  storage="えっち系/射精音01.mp3"  loop="false"  ]
[call  storage="__Main_Night_Option.ks"  target="*__外射精エフェクト"  ]
[tb_start_tyrano_code]
[image layer=1 time="1000"   storage="default/正上カット/正上汁02.png"  width="560"  height="670"  x="360"  y="50"  name="H_Seijoui_Seieki"  ]
[_tb_end_tyrano_code]

[jump  storage="__Main_Night_Seijoui_H.ks"  target="*__外だし射精処理"  ]
*__外だし射精処理

[call  storage="__Main_Night_Option.ks"  target="*__射精感を0に"  ]
[call  storage="Main_Sta.ks"  target="*__Hメインステ表示"  ]
*__射精後処理

[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/01喘ぎ声(前)01.mp3"  loop="true"  ]
[wait  time="2000"  ]
[glink  color="btn_05_black"  storage="__Main_Night_Seijoui_H.ks"  size="20"  text="Wipe with tissue"  x="540"  y="440"  width=""  height=""  _clickable_img=""  target="*__掃除後"  ]
[s  ]
*__掃除後

[call  storage="__Main_Night_Option.ks"  target="*__はあはあ"  ]
[tb_start_tyrano_code]
;えっち回数プラスカウント
[if exp="f.H_Sex_Anal ==0"]
[eval exp="f.Sex_Count[1].bestcount += 1"]
[elsif exp="f.H_Sex_Anal ==1"]
[eval exp="f.Sex_Count[2].bestcount += 1"]
[endif]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;ローカルえっち回数プラスカウント
[eval exp="f.Sex_Count[6].bestcount += 1"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;汁だけ消去
[free layer=1 name="H_Seijoui_Seieki" time="1000" wait="true"]
[_tb_end_tyrano_code]

[wait  time="1000"  ]
[tb_eval  exp="f.H_Kenja_Count=0"  name="H_Kenja_Count"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.H_Sex_Count+=1"  name="H_Sex_Count"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="__Main_Night_Seijoui_H.ks"  target="*__射精後戻り先"  cond="f.Sys_Seiryoku>0"  ]
*__精液なし終了処理

[mask  time="300"  effect="fadeIn"  color="0x000000"  ]
[tb_start_tyrano_code]
[cm]
[clearfix]
[clearstack]
[freeimage layer=2]
[freeimage layer=1]
[freeimage layer=0]
[_tb_end_tyrano_code]

[stopse  time="1000"  buf="0"  ]
[stopse  time="1000"  buf="1"  ]
[stopse  time="1000"  buf="2"  ]
[stopse  time="1000"  buf="3"  ]
[delete_all_image  layer="1"  wait="true"  ]
[chara_hide_all  time="0"  wait="true"  ]
[tb_image_hide  time="0"  ]
[bg  time="0"  method="crossfade"  storage="BG_Black.png"  ]
[mask_off  time="700"  effect="fadeOut"  ]
[call  storage="Main_Sta.ks"  target="*__メインステ表示"  ]
[tb_show_message_window  ]
[call  storage="__Main_Night_Word.ks"  target="*__えっち事後"  ]
[tb_hide_message_window  ]
[tb_eval  exp="f.Tre_Up=2"  name="Tre_Up"  cmd="="  op="t"  val="2"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__理性DOWN"  ]
[tb_eval  exp="f.Tre_Up=100"  name="Tre_Up"  cmd="="  op="t"  val="100"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__性欲DOWN"  ]
[call  storage="Main_Sta.ks"  target="*__メインステ表示"  ]
[mask  time="300"  effect="fadeIn"  color="0x000000"  ]
[call  storage="H_Kaihatu_Upshori.ks"  target="*__開発アップ処理"  ]
[call  storage="_Array_Kaihatu.ks"  target="*__開発配列初期化"  ]
[jump  storage="__Main_Kyuuka.ks"  target="*__オナニー後"  ]
[s  ]
*__BAD上限で終了

[mask  time="300"  effect="fadeIn"  color="0x000000"  ]
[tb_start_tyrano_code]
[cm]
[clearfix]
[clearstack]
[freeimage layer=2]
[freeimage layer=1]
[freeimage layer=0]
[_tb_end_tyrano_code]

[chara_hide_all  time="0"  wait="true"  ]
[stopse  time="1000"  buf="0"  ]
[stopse  time="1000"  buf="1"  ]
[stopse  time="1000"  buf="2"  ]
[stopse  time="1000"  buf="3"  ]
[delete_all_image  layer="1"  wait="true"  ]
[bg  time="0"  method="crossfade"  storage="BG_Black.png"  ]
[mask_off  time="700"  effect="fadeOut"  ]
[call  storage="Main_Sta.ks"  target="*__メインステ表示"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
I-I'm sorry・・・ [emb exp="f.Oni_Name3"].[p]
Any more than this・・・[p]
#
[_tb_end_text]

[tb_eval  exp="f.Tre_Up=1"  name="Tre_Up"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_start_tyrano_code]
;SEXしてたら理性ダウン処理
[call  storage="Tre_Sta_Up.ks"  target="*__理性DOWN" cond="f.Sex_Count[6].bestcount > 0" ]
[_tb_end_tyrano_code]

[tb_eval  exp="f.Tre_Up=1"  name="Tre_Up"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__好きDOWN"  ]
[tb_eval  exp="f.Tre_Up=100"  name="Tre_Up"  cmd="="  op="t"  val="100"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__性欲DOWN"  ]
[call  storage="Main_Sta.ks"  target="*__メインステ表示"  ]
[mask  time="300"  effect="fadeIn"  color="0x000000"  ]
[tb_hide_message_window  ]
[call  storage="H_Kaihatu_Upshori.ks"  target="*__開発アップ処理"  ]
[call  storage="_Array_Kaihatu.ks"  target="*__開発配列初期化"  ]
[jump  storage="__Main_Kyuuka.ks"  target="*__オナニー後"  ]
[s  ]
*__途中でやめる

[mask  time="300"  effect="fadeIn"  color="0x000000"  ]
[stopse  time="1000"  buf="0"  ]
[stopse  time="1000"  buf="1"  ]
[stopse  time="1000"  buf="2"  ]
[stopse  time="1000"  buf="3"  ]
[delete_all_image  layer="1"  wait="true"  ]
[tb_start_tyrano_code]
[cm]
[clearfix]
[clearstack]
[freeimage layer=2]
[freeimage layer=1]
[freeimage layer=0]
[_tb_end_tyrano_code]

[tb_image_hide  time="0"  ]
[chara_hide_all  time="0"  wait="true"  ]
[bg  time="0"  method="crossfade"  storage="BG_Black.png"  ]
[mask_off  time="700"  effect="fadeOut"  ]
[call  storage="Main_Sta.ks"  target="*__メインステ表示"  ]
[tb_show_message_window  ]
[call  storage="__Main_Night_Word.ks"  target="*__えっち事後"  ]
[tb_hide_message_window  ]
[tb_eval  exp="f.Tre_Up=2"  name="Tre_Up"  cmd="="  op="t"  val="2"  val_2="undefined"  ]
[tb_start_tyrano_code]
;SEXしてたら理性ダウン処理
[call  storage="Tre_Sta_Up.ks"  target="*__理性DOWN" cond="f.Sex_Count[6].bestcount > 0" ]
[_tb_end_tyrano_code]

[tb_eval  exp="f.Tre_Up=100"  name="Tre_Up"  cmd="="  op="t"  val="100"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__性欲DOWN"  ]
[call  storage="Main_Sta.ks"  target="*__メインステ表示"  ]
[mask  time="300"  effect="fadeIn"  color="0x000000"  ]
[call  storage="H_Kaihatu_Upshori.ks"  target="*__開発アップ処理"  ]
[call  storage="_Array_Kaihatu.ks"  target="*__開発配列初期化"  ]
[jump  storage="__Main_Kyuuka.ks"  target="*__オナニー後"  ]
[s  ]
*__絶頂処理

[chara_part  name="H_正上位"  time="0"  目="正上表情08.png"  ]
[tb_start_tyrano_code]
;絶頂回数プラスカウント
[eval exp="f.Sex_Count[5].count += 1"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[cm]
[clearfix]

[_tb_end_tyrano_code]

[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/絶頂声のみ04.mp3"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="えっち系/射精音02.mp3"  ]
[tb_start_tyrano_code]
;絶頂画像表示
[image  layer=1 time="0"  width="300"  height="180"  x="160"  y="520" storage="default/正上カット/正上絶頂カット.png"  name="H_Org_Image" zindex="200"]
[_tb_end_tyrano_code]

[call  storage="__Main_Night_Option.ks"  target="*__外射精エフェクト"  ]
[call  storage="__Main_Night_Option.ks"  target="*__道具セリフ正上位"  ]
[font  size="14"  color="0x000000"  face="JKG-M_3"  bold="true"  ]
[tb_start_tyrano_code]
;びくんびくん文字
[ptext layer="1" x="190" y="540" size="20" text="Twitch" name="Org01"  zindex=100 edge="0xffffff"]
[xanim name="Org01" left=170 top=520  opacity=0 time=2000]

[keyframe name="H_Bikun"]
[frame p="0%"  opacity=0]
[frame p="1%"  opacity=255]
[frame p="100%"  opacity=0 x=20 y= -20]
[endkeyframe]

[ptext layer="1" x="330" y="540" size="20" text="Twitch" name="Org02"  zindex=100 edge="0xffffff"]
[xanim name="Org02" keyframe="H_Bikun"  time=2000 delay=1500 easing="ease"]

[_tb_end_tyrano_code]

[resetfont  ]
[tb_eval  exp="f.H_Good-=100"  name="H_Good"  cmd="-="  op="t"  val="100"  val_2="undefined"  ]
[tb_start_tyrano_code]
;Hアイコン拡縮キーフレームアニメ
[keyframe name="H_Icon_Scale"]
[frame scale="1.5" p="50%"]
[endkeyframe]

[xanim name="Bad_Icon" keyframe="H_Icon_Scale" count=1 time="1000" direction="alternate" easing="ease" wait="false"]
[xanim name="Good_Icon" keyframe="H_Icon_Scale" count=1 time="1000" direction="alternate" easing="ease" wait="false"]

[_tb_end_tyrano_code]

*__HGOOD減ループ

[jump  storage="__Main_Night_Seijoui_H.ks"  target="*__GOOD下限達成"  cond="f.H_Good<1"  ]
[tb_start_tyrano_code]
;GOODバー減アニメ
[anim name="line" width="&f.Eve_Time" time="1"]
[eval exp="f.Eve_Time -= 0.15"]

[_tb_end_tyrano_code]

[jump  storage="__Main_Night_Seijoui_H.ks"  target="*__HGOOD減ループ"  cond="f.Eve_Time>f.H_Good"  ]
*__GOOD下限達成

[tb_start_tyrano_code]
;絶頂カット消去
[free name="H_Org_Image" layer=1 time="500"]
[_tb_end_tyrano_code]

[return  ]
*__着衣判定

[tb_start_tyrano_code]
;着衣判定による体表示
[if exp=" f.H_Tool_Flag==1000"]

[if exp="f.H_Ue_Chakui ==0 && f.H_Pantu_Chakui ==0"]
[chara_mod  name="H_正上位"  time="0"  cross="false"  storage="chara/10/正上01.png" time=500]
[endif]

[if exp="f.H_Ue_Chakui ==1 && f.H_Pantu_Chakui ==0"]
[chara_mod  name="H_正上位"  time="0"  cross="false"  storage="chara/10/正上02.png"  time=500]
[endif]

[if exp="f.H_Ue_Chakui ==1 && f.H_Pantu_Chakui ==1"]
[chara_mod  name="H_正上位"  time="0"  cross="false"  storage="chara/10/正上03.png" time=500]
[endif]

[if exp="f.H_Ue_Chakui ==2 && f.H_Pantu_Chakui ==0"]
[chara_mod  name="H_正上位"  time="0"  cross="false"  storage="chara/10/正上04.png"  time=500]
[endif]

[if exp="f.H_Ue_Chakui ==2 && f.H_Pantu_Chakui ==1"]
[chara_mod  name="H_正上位"  time="0"  cross="false"  storage="chara/10/正上05.png"  time=500]
[endif]

[if exp="f.H_Ue_Chakui ==1 && f.H_Pantu_Chakui ==2"]
[chara_mod  name="H_正上位"  time="0"  cross="false"  storage="chara/10/正上06.png" time=500]
[endif]

[if exp="f.H_Ue_Chakui ==2 && f.H_Pantu_Chakui ==2"]
[chara_mod  name="H_正上位"  time="0"  cross="false"  storage="chara/10/正上07.png" time=500]
[endif]

[else]
[call target="*__道具素体変更"]

[endif]
[_tb_end_tyrano_code]

[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/吐息01.mp3"  loop="true"  ]
[return  ]
*__汗表示

[tb_start_tyrano_code]
;汗表示　着衣別
[free layer=2 name="H_Seijoui_Ase" time="0"]

;服着衣
[if exp="f.H_Good >=100 && f.H_Ue_Chakui == 0"]
[image layer=2  time="0"  storage="default/正上カット/正上汗01.png"  width="560"  height. ="670"  x="360"  y="50"  zindex="100" name="H_Seijoui_Ase"]
[endif]

;服上げ、足閉じ
[if exp="f.H_Good >=100 && f.H_Ue_Chakui == 1 && f.H_Pantu_Chakui <=1" ]
[image layer=2  time="0"  storage="default/正上カット/正上汗02.png"  width="560"  height. ="670"  x="360"  y="50"  zindex="100" name="H_Seijoui_Ase"]
[endif]

;服脱ぎ、足閉じ
[if exp="f.H_Good >=100 && f.H_Ue_Chakui == 2 && f.H_Pantu_Chakui <=2" ]
[image layer=2  time="0"  storage="default/正上カット/正上汗03.png"  width="560"  height. ="670"  x="360"  y="50"  zindex="100" name="H_Seijoui_Ase"]
[endif]

;服上げ、足開き
[if exp="f.H_Good >=100 && f.H_Ue_Chakui == 1 && f.H_Pantu_Chakui >=2" ]
[image layer=2  time="0"  storage="default/正上カット/正上汗04.png"  width="560"  height. ="670"  x="360"  y="50"  zindex="100" name="H_Seijoui_Ase"]
[endif]

;服脱ぎ、足開き
[if exp="f.H_Good >=100 && f.H_Ue_Chakui >= 2 && f.H_Pantu_Chakui >=2" ]
[image layer=2  time="0"  storage="default/正上カット/正上汗05.png"  width="560"  height. ="670"  x="360"  y="50"  zindex="100" name="H_Seijoui_Ase"]
[endif]


[_tb_end_tyrano_code]

[return  ]
*__ティッシュ表示処理

[tb_start_tyrano_code]
;ティッシュ表示
[free layer=1 name="H_Seijoui_tyissyu" time="0"]

[if exp="f.H_Sex_Count == 1"]
[image layer=1  time="0"  storage="default/正上カット/正上ティッシュ01.png"  width="760"  height. ="670"  x="160"  y="50"  zindex="10" name="H_Seijoui_tyissyu"]
[elsif exp="f.H_Sex_Count == 2"]
[image layer=1  time="0"  storage="default/正上カット/正上ティッシュ02.png"  width="760"  height. ="670"  x="160"  y="50"  zindex="10" name="H_Seijoui_tyissyu"]
[elsif exp="f.H_Sex_Count == 3"]
[image layer=1  time="0"  storage="default/正上カット/正上ティッシュ03.png"  width="760"  height. ="670"  x="160"  y="50"  zindex="10" name="H_Seijoui_tyissyu"]
[elsif exp="f.H_Sex_Count >= 4"]
[image layer=1  time="0"  storage="default/正上カット/正上ティッシュ04.png"  width="760"  height. ="670"  x="160"  y="50"  zindex="10" name="H_Seijoui_tyissyu"]
[endif]
[_tb_end_tyrano_code]

[return  ]
*__お触りカット表示

[stopse  time="1000"  buf="2"  ]
[tb_start_tyrano_code]
;フラグ事の絵変更　着衣　＆　快感不快感　増減処理 Math.maxは()の中の最大値を返す,math.floorは小数点切り捨て

;口
[if exp="f.H_Kuchi_Touch == 1"]
[image  layer=1 time="0"  width="230"  height="180"  x="320"  y="70" storage="default/正上カット/カット_正上_口03.png" name="H_Cut_Image_Ue" zindex="200"]
[eval  exp="f.H_Good +=Math.max(1, Math.floor((3 + f.Oni_Ero + f.Good_H_Sta[0].count)* ((220 - f.H_Good) / 220)))"]
[eval  exp="f.H_Bad += Math.floor(1 + 4  * f.Bad_H_Sta[0].count * f.H_Bad_Aroma)"  ]

[elsif exp="f.H_Kuchi_Touch ==2"]
[image  layer=1 time="0"  width="230"  height="180"  x="330"  y="60" storage="default/正上カット/カット_正上_口04.png"  name="H_Cut_Image_Ue" zindex="200"]
[eval  exp="f.H_Good +=Math.max(3, Math.floor((5 + f.Oni_Ero + f.Good_H_Sta[0].count)* ((220 - f.H_Good) / 220)))"]
[eval  exp="f.H_Bad += Math.floor(1 + 4  * f.Bad_H_Sta[0].count * f.H_Bad_Aroma)"  ]
[endif]

;左胸
[if exp="f.H_Left_Mune == 1"]

[if exp="f.H_Ue_Chakui <=1"]
[image  layer=1 time="0"  width="230"  height="180"  x="780"  y="270" storage="default/正上カット/カット_正上_胸01.png"  name="H_Cut_Image_Arm" zindex="200"]
[eval  exp="f.H_Good +=Math.max(1, Math.floor((2 + f.Oni_Ero + f.Good_H_Sta[1].count)* ((220 - f.H_Good) / 220)))"]
[eval  exp="f.H_Bad += Math.floor(1 + 6  * f.Bad_H_Sta[1].count * f.H_Bad_Aroma)"  ]

[elsif exp="f.H_Ue_Chakui ==2"]
[image  layer=1 time="0"  width="230"  height="180"  x="780"  y="270" storage="default/正上カット/カット_正上_胸03.png"  name="H_Cut_Image_Arm" zindex="200"]
[eval  exp="f.H_Good +=Math.max(4, Math.floor((4 + f.Oni_Ero + f.Good_H_Sta[1].count)* ((220 - f.H_Good) / 220)))"]
[eval  exp="f.H_Bad += Math.floor(1 + (6+f.H_Bad_Levelup)  * f.Bad_H_Sta[1].count * f.H_Bad_Aroma)"  ]
[endif]

[endif]

;右胸
[if exp="f.H_Right_Mune == 1"]

[if exp="f.H_Ue_Chakui <=1"]
[image  layer=1 time="0"  width="230"  height="180"  x="280"  y="270" storage="default/正上カット/カット_正上_胸02.png"  name="H_Cut_Image_Ue" zindex="200"]
[eval  exp="f.H_Good +=Math.max(1, Math.floor((2 + f.Oni_Ero + f.Good_H_Sta[1].count)* ((220 - f.H_Good) / 220)))"]
[eval  exp="f.H_Bad += Math.floor(1 + 6  * f.Bad_H_Sta[1].count * f.H_Bad_Aroma)"  ]

[elsif exp="f.H_Ue_Chakui ==2"]
[image  layer=1 time="0"  width="230"  height="180"  x="280"  y="270" storage="default/正上カット/カット_正上_胸04.png"  name="H_Cut_Image_Ue" zindex="200"]
[eval  exp="f.H_Good +=4 + f.Oni_Ero + f.Good_H_Sta[1].count"]
[eval  exp="f.H_Bad += Math.floor(1 +  (6+f.H_Bad_Levelup)  * f.Bad_H_Sta[1].count * f.H_Bad_Aroma)"  ]
[endif]

[endif]

;下触り
[if exp="f.H_Asoko_Touch == 1 && f.H_Tool_Flag == 1000"]

[if exp="f.H_Ue_Chakui >=1 && f.H_Pantu_Chakui ==0"]
[image  layer=1 time="0"  width="230"  height="180"  x="780"  y="470" storage="default/正上カット/カット_正上_膣01.png"  name="H_Cut_Image_Sita" zindex="200"]
[eval  exp="f.H_Good += Math.max(3, Math.floor((3 + f.Oni_Ero + f.Good_H_Sta[3].count)* ((220 - f.H_Good) / 220)))"]
[eval  exp="f.H_Bad += Math.floor(1 + 15  * f.Bad_H_Sta[3].count * f.H_Bad_Aroma)"  ]
[endif]

[if exp="f.H_Ue_Chakui >=1 && f.H_Pantu_Chakui ==1"]
[image  layer=1 time="0"  width="230"  height="180"  x="780"  y="470" storage="default/正上カット/カット_正上_膣02.png"  name="H_Cut_Image_Sita" zindex="200"]
[eval  exp="f.H_Good +=5 + f.Oni_Ero + f.Good_H_Sta[3].count"]
[eval  exp="f.H_Bad += Math.floor(1 +  (20+f.H_Bad_Levelup)  * f.Bad_H_Sta[3].count * f.H_Bad_Aroma)"  ]
[endif]

[if exp="f.H_Ue_Chakui >=1 && f.H_Pantu_Chakui ==2"]
[image  layer=1 time="0"  width="230"  height="180"  x="780"  y="470" storage="default/正上カット/カット_正上_膣12.png"  name="H_Cut_Image_Sita" zindex="200"]
[eval  exp="f.H_Good +=8 + f.Oni_Ero + f.Good_H_Sta[3].count"]
[eval  exp="f.H_Bad += Math.floor(1 +  (20+f.H_Bad_Levelup)  * f.Bad_H_Sta[3].count * f.H_Bad_Aroma)"  ]
[endif]

[elsif exp="f.H_Asoko_Touch == 2 && f.H_Tool_Flag == 1000""]

[image  layer=1 time="0"  width="230"  height="180"  x="780"  y="470" storage="default/正上カット/カット_正上_膣14.png"  name="H_Cut_Image_Sita" zindex="200"]
[eval  exp="f.H_Good +=10 + f.Oni_Ero + f.Good_H_Sta[3].count"]
[eval  exp="f.H_Bad += Math.floor(1 +  (20+f.H_Bad_Levelup)  * f.Bad_H_Sta[3].count * f.H_Bad_Aroma)"  ]

[endif]

;道具
[if exp="f.H_Tool_Flag  != 1000"]

;[if exp="f.H_Ue_Chakui >=1 && f.H_Pantu_Chakui >=2 && f.H_Tool_Flag  != 1000"]
[switch exp="f.H_Tool_Flag"]

;ローターは着衣パターンで分岐
[case is= 1001]
[if exp="f.H_Ue_Chakui == 0"]
[image  layer=1 time="0"  width="230"  height="180"  x="780"  y="270" storage="default/正上カット/カット_正上_道具01.png"  name="H_Cut_Image_Tool" zindex="200"]
[eval  exp="f.H_Good +=10 + f.Oni_Ero + f.Good_H_Sta[3].count"]
[eval  exp="f.H_Bad += Math.floor(1 + 20  * f.Bad_H_Sta[3].count * f.H_Bad_Aroma)"  ]

[elsif exp="f.H_Ue_Chakui >= 1 && f.H_Pantu_Chakui ==0"]
[image  layer=1 time="0"  width="230"  height="180"  x="780"  y="470" storage="default/正上カット/カット_正上_道具03.png"  name="H_Cut_Image_Tool" zindex="200"]
[eval  exp="f.H_Good +=10 + f.Oni_Ero + f.Good_H_Sta[3].count"]
[eval  exp="f.H_Bad += Math.floor(1 + 20  * f.Bad_H_Sta[3].count * f.H_Bad_Aroma)"  ]

[elsif exp="f.H_Ue_Chakui >= 1 && f.H_Pantu_Chakui ==1"]
[image  layer=1 time="0"  width="230"  height="180"  x="780"  y="470" storage="default/正上カット/カット_正上_道具04.png"  name="H_Cut_Image_Tool" zindex="200"]
[eval  exp="f.H_Good +=10 + f.Oni_Ero + f.Good_H_Sta[3].count"]
[eval  exp="f.H_Bad += Math.floor(1 +  (20+f.H_Bad_Levelup)  * f.Bad_H_Sta[3].count * f.H_Bad_Aroma)"  ]

[elsif exp="f.H_Ue_Chakui >= 1 && f.H_Pantu_Chakui ==2"]
[image  layer=1 time="0"  width="230"  height="180"  x="780"  y="470" storage="default/正上カット/カット_正上_道具05.png"  name="H_Cut_Image_Tool" zindex="200"]
[eval  exp="f.H_Good +=12 + f.Oni_Ero + f.Good_H_Sta[3].count"]
[eval  exp="f.H_Bad += Math.floor(1 +  (20+f.H_Bad_Levelup)  * f.Bad_H_Sta[3].count * f.H_Bad_Aroma)"  ]
[endif]

;その他道具は足開きのみ
[case is=1010]
[image  layer=1 time="0"  width="230"  height="180"  x="780"  y="470" storage="default/正上カット/カット_正上_道具06.png"  name="H_Cut_Image_Tool" zindex="200"]
[eval  exp="f.H_Good +=15 + f.Oni_Ero + f.Good_H_Sta[3].count"]
[eval  exp="f.H_Bad += Math.floor(1 +  (20+f.H_Bad_Levelup)  * f.Bad_H_Sta[3].count * f.H_Bad_Aroma)"  ]

[case is=1100]
[image  layer=1 time="0"  width="230"  height="180"  x="780"  y="470" storage="default/正上カット/カット_正上_道具07.png"  name="H_Cut_Image_Tool" zindex="200"]
[eval  exp="f.H_Good +=18 + f.Oni_Ero + f.Good_H_Sta[4].count"]
[eval  exp="f.H_Bad += Math.floor(1 +  (30+f.H_Bad_Levelup)  * f.Bad_H_Sta[4].count * f.H_Bad_Aroma)"  ]

[case is=1011]
[image  layer=1 time="0"  width="230"  height="180"  x="780"  y="470" storage="default/正上カット/カット_正上_道具08.png"  name="H_Cut_Image_Tool" zindex="200"]
[eval  exp="f.H_Good +=15 + f.Oni_Ero + f.Good_H_Sta[3].count"]
[eval  exp="f.H_Bad += Math.floor(1 +  (20+f.H_Bad_Levelup) * f.Bad_H_Sta[3].count * f.H_Bad_Aroma)"  ]

[case is=1101]
[image  layer=1 time="0"  width="230"  height="180"  x="780"  y="470" storage="default/正上カット/カット_正上_道具09.png"  name="H_Cut_Image_Tool" zindex="200"]
[eval  exp="f.H_Good +=18 + f.Oni_Ero + f.Good_H_Sta[4].count"]
[eval  exp="f.H_Bad += Math.floor(1 +  (30+f.H_Bad_Levelup)  * f.Bad_H_Sta[4].count * f.H_Bad_Aroma)"  ]

[case is=1110]
[image  layer=1 time="0"  width="230"  height="180"  x="780"  y="470" storage="default/正上カット/カット_正上_道具10.png"  name="H_Cut_Image_Tool" zindex="200"]
[eval  exp="f.H_Good +=18 + f.Oni_Ero + f.Good_H_Sta[4].count"]
[eval  exp="f.H_Bad += Math.floor(1 +  (30+f.H_Bad_Levelup)  * f.Bad_H_Sta[4].count * f.H_Bad_Aroma)"  ]

[case is=1111]
[image  layer=1 time="0"  width="230"  height="180"  x="780"  y="470" storage="default/正上カット/カット_正上_道具11.png"  name="H_Cut_Image_Tool" zindex="200"]
[eval  exp="f.H_Good +=25 + f.Oni_Ero + f.Good_H_Sta[4].count"]
[eval  exp="f.H_Bad += Math.floor(1 +  (35+f.H_Bad_Levelup)  * f.Bad_H_Sta[4].count * f.H_Bad_Aroma)"  ]

[endswitch]
[else]
[free layer=1 name="H_Cut_Image_Tool"]
[endif]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;バイブオン　フラグによりオンオフ
[playse  volume="100"  time="1000"  buf="2"  storage="えっち系/バイブ挿入ピストン強・遅15_Audio_Trimmer.mp3"  loop="true" cond="f.H_Tool_Flag != 1000 && f.H_Tool_Flag != 1100 "]

[_tb_end_tyrano_code]

[return  ]
*__お触りカット表示ステ上昇なし

[stopse  time="1000"  buf="2"  ]
[tb_start_tyrano_code]
;フラグ事の絵変更　着衣　＆　快感不快感　増減処理 Math.maxは()の中の最大値を返す,math.floorは小数点切り捨て

;口
[if exp="f.H_Kuchi_Touch == 1"]
[image  layer=1 time="0"  width="230"  height="180"  x="320"  y="70" storage="default/正上カット/カット_正上_口03.png" name="H_Cut_Image_Ue" zindex="200"]

[elsif exp="f.H_Kuchi_Touch ==2"]
[image  layer=1 time="0"  width="230"  height="180"  x="330"  y="60" storage="default/正上カット/カット_正上_口04.png"  name="H_Cut_Image_Ue" zindex="200"]
[endif]

;左胸
[if exp="f.H_Left_Mune == 1"]

[if exp="f.H_Ue_Chakui <=1"]
[image  layer=1 time="0"  width="230"  height="180"  x="780"  y="270" storage="default/正上カット/カット_正上_胸01.png"  name="H_Cut_Image_Arm" zindex="200"]

[elsif exp="f.H_Ue_Chakui ==2"]
[image  layer=1 time="0"  width="230"  height="180"  x="780"  y="270" storage="default/正上カット/カット_正上_胸03.png"  name="H_Cut_Image_Arm" zindex="200"]
[endif]

[endif]

;右胸
[if exp="f.H_Right_Mune == 1"]

[if exp="f.H_Ue_Chakui <=1"]
[image  layer=1 time="0"  width="230"  height="180"  x="280"  y="270" storage="default/正上カット/カット_正上_胸02.png"  name="H_Cut_Image_Ue" zindex="200"]

[elsif exp="f.H_Ue_Chakui ==2"]
[image  layer=1 time="0"  width="230"  height="180"  x="280"  y="270" storage="default/正上カット/カット_正上_胸04.png"  name="H_Cut_Image_Ue" zindex="200"]
[endif]

[endif]

;下触り
[if exp="f.H_Asoko_Touch == 1 && f.H_Tool_Flag == 1000"]

[if exp="f.H_Ue_Chakui >=1 && f.H_Pantu_Chakui ==0"]
[image  layer=1 time="0"  width="230"  height="180"  x="780"  y="470" storage="default/正上カット/カット_正上_膣01.png"  name="H_Cut_Image_Sita" zindex="200"]
[endif]

[if exp="f.H_Ue_Chakui >=1 && f.H_Pantu_Chakui ==1"]
[image  layer=1 time="0"  width="230"  height="180"  x="780"  y="470" storage="default/正上カット/カット_正上_膣02.png"  name="H_Cut_Image_Sita" zindex="200"]
[endif]

[if exp="f.H_Ue_Chakui >=1 && f.H_Pantu_Chakui ==2"]
[image  layer=1 time="0"  width="230"  height="180"  x="780"  y="470" storage="default/正上カット/カット_正上_膣12.png"  name="H_Cut_Image_Sita" zindex="200"]
[endif]

[elsif exp="f.H_Asoko_Touch == 2 && f.H_Tool_Flag == 1000""]
[image  layer=1 time="0"  width="230"  height="180"  x="780"  y="470" storage="default/正上カット/カット_正上_膣14.png"  name="H_Cut_Image_Sita" zindex="200"]
[endif]

;道具
[if exp="f.H_Tool_Flag  != 1000"]

;[if exp="f.H_Ue_Chakui >=1 && f.H_Pantu_Chakui >=2 && f.H_Tool_Flag  != 1000"]
[switch exp="f.H_Tool_Flag"]

;ローターは着衣パターンで分岐
[case is= 1001]
[if exp="f.H_Ue_Chakui == 0"]
[image  layer=1 time="0"  width="230"  height="180"  x="780"  y="270" storage="default/正上カット/カット_正上_道具01.png"  name="H_Cut_Image_Tool" zindex="200"]

[elsif exp="f.H_Ue_Chakui >= 1 && f.H_Pantu_Chakui ==0"]
[image  layer=1 time="0"  width="230"  height="180"  x="780"  y="470" storage="default/正上カット/カット_正上_道具03.png"  name="H_Cut_Image_Tool" zindex="200"]

[elsif exp="f.H_Ue_Chakui >= 1 && f.H_Pantu_Chakui ==1"]
[image  layer=1 time="0"  width="230"  height="180"  x="780"  y="470" storage="default/正上カット/カット_正上_道具04.png"  name="H_Cut_Image_Tool" zindex="200"]

[elsif exp="f.H_Ue_Chakui >= 1 && f.H_Pantu_Chakui ==2"]
[image  layer=1 time="0"  width="230"  height="180"  x="780"  y="470" storage="default/正上カット/カット_正上_道具05.png"  name="H_Cut_Image_Tool" zindex="200"]
[endif]

;その他道具は足開きのみ
[case is=1010]
[image  layer=1 time="0"  width="230"  height="180"  x="780"  y="470" storage="default/正上カット/カット_正上_道具06.png"  name="H_Cut_Image_Tool" zindex="200"]

[case is=1100]
[image  layer=1 time="0"  width="230"  height="180"  x="780"  y="470" storage="default/正上カット/カット_正上_道具07.png"  name="H_Cut_Image_Tool" zindex="200"]

[case is=1011]
[image  layer=1 time="0"  width="230"  height="180"  x="780"  y="470" storage="default/正上カット/カット_正上_道具08.png"  name="H_Cut_Image_Tool" zindex="200"]

[case is=1101]
[image  layer=1 time="0"  width="230"  height="180"  x="780"  y="470" storage="default/正上カット/カット_正上_道具09.png"  name="H_Cut_Image_Tool" zindex="200"]

[case is=1110]
[image  layer=1 time="0"  width="230"  height="180"  x="780"  y="470" storage="default/正上カット/カット_正上_道具10.png"  name="H_Cut_Image_Tool" zindex="200"]

[case is=1111]
[image  layer=1 time="0"  width="230"  height="180"  x="780"  y="470" storage="default/正上カット/カット_正上_道具11.png"  name="H_Cut_Image_Tool" zindex="200"]

[endswitch]
[else]
[free layer=1 name="H_Cut_Image_Tool"]
[endif]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;バイブオン　フラグによりオンオフ
[playse  volume="100"  time="1000"  buf="2"  storage="えっち系/バイブ挿入ピストン強・遅15_Audio_Trimmer.mp3"  loop="true" cond="f.H_Tool_Flag != 1000 && f.H_Tool_Flag != 1100 "]

[_tb_end_tyrano_code]

[return  ]
*__挿入右選択肢

[tb_start_tyrano_code]
;右側の選択肢　fix仕様なので注意
[glink  color="btn_05_black"  size="20" storage="__Main_Night_Seijoui_H.ks" target="*__ゆっくり動く"  text="Slow thrust"  x="1030"  y="100" fix="true" width=200 exp="f.H_Sex_Speed =1" enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3"]
[glink  color="btn_05_black"  size="20" storage="__Main_Night_Seijoui_H.ks" target="*__激しく動く"  text="Hard thrust"  x="1030"  y="160" fix="true" width=200 exp="f.H_Sex_Speed =2" enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3"]
[glink  color="btn_05_black"  size="20" storage="__Main_Night_Seijoui_H.ks" target="*__全力ピストン"  text="Max thrust"  x="1030"  y="220" fix="true" width=200 exp="f.H_Sex_Speed =3" enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3"]
[glink  color="btn_05_black"  size="20" storage="__Main_Night_Seijoui_H.ks" target="*__動きを止める"  text="Breeding press"  x="1030"  y="280" fix="true" width=200 exp="f.H_Sex_Speed = 7" cond="f.Sta_Risei <= 20 && f.H_Sex_Anal ==0" enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3"]
[glink  color="btn_05_black"  size="20" storage="__Main_Night_Seijoui_H.ks" target="*__動きを止める"  text="Stop moving"  x="1030"  y="340" fix="true" width=200 enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3"]
[glink  color="btn_05_black"  size="20" storage="__Main_Night_Seijoui_H.ks" target="*__挿入をやめる"  text="Pull Out"  x="1030"  y="400" fix="true" width=200 enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3"]

[glink  color="btn_05_black"  size="20" storage="__Main_Night_Seijoui_H.ks" target="*__動きを止める"  text="Cross-section ON" x="30"  y="200"  fix="true" width=200 exp="f.H_Danmen_Flag = 1" cond="f.H_Danmen_Flag == 0 && f.H_Sex_Anal ==0  && f.H_Condom_On == 0" enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3"]
[glink  color="btn_05_black"  size="20" storage="__Main_Night_Seijoui_H.ks" target="*__動きを止める"  text="Cross-section OFF" x="30"  y="200"  fix="true" width=200 exp="f.H_Danmen_Flag = 0" cond="f.H_Danmen_Flag == 1 && f.H_Sex_Anal ==0 && f.H_Condom_On == 0" enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3"]
[_tb_end_tyrano_code]

[return  ]
*__挿入右選択肢種付け

[tb_start_tyrano_code]
;右側の選択肢　fix仕様なので注意
[glink  color="btn_05_black"  size="20" storage="__Main_Night_Seijoui_H.ks" target="*__ゆっくり動く"  text="Slow thrust"  x="1030"  y="100" fix="true" width=200 exp="f.H_Sex_Speed =4" enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3"]
[glink  color="btn_05_black"  size="20" storage="__Main_Night_Seijoui_H.ks" target="*__激しく動く"  text="Hard thrust"  x="1030"  y="160" fix="true" width=200 exp="f.H_Sex_Speed =5" enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3"]
[glink  color="btn_05_black"  size="20" storage="__Main_Night_Seijoui_H.ks" target="*__全力ピストン"  text="Max thrust"  x="1030"  y="220" fix="true" width=200 exp="f.H_Sex_Speed =6" enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3"]
[glink  color="btn_05_black"  size="20" storage="__Main_Night_Seijoui_H.ks" target="*__動きを止める"  text="Missionary"  x="1030"  y="280" fix="true" width=200 exp="f.H_Sex_Speed = 0" enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3"]
[glink  color="btn_05_black"  size="20" storage="__Main_Night_Seijoui_H.ks" target="*__動きを止める"  text="Stop moving"  x="1030"  y="340" fix="true" width=200 enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3"]
[glink  color="btn_05_black"  size="20" storage="__Main_Night_Seijoui_H.ks" target="*__挿入をやめる"  text="Pull Out"  x="1030"  y="400" fix="true" width=200 enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3"]

[glink  color="btn_05_black"  size="20" storage="__Main_Night_Seijoui_H.ks" target="*__動きを止める"  text="Cross-section ON" x="30"  y="200"  fix="true" width=200 exp="f.H_Danmen_Flag = 1" cond="f.H_Danmen_Flag == 0 && f.H_Sex_Anal ==0  && f.H_Condom_On == 0" enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3"]
[glink  color="btn_05_black"  size="20" storage="__Main_Night_Seijoui_H.ks" target="*__動きを止める"  text="Cross-section OFF" x="30"  y="200"  fix="true" width=200 exp="f.H_Danmen_Flag = 0" cond="f.H_Danmen_Flag == 1 && f.H_Sex_Anal ==0  && f.H_Condom_On == 0" enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3"]

[_tb_end_tyrano_code]

[return  ]
*__キャラのピストン速度変更

[intrandom_ko10panda  max="2"  count="1"  show_result="false"  show_style="style_a"  show_detail="false"  detail_length="10"  show_log="log_4"  var_name="tf.rand"  ]
[tb_start_tyrano_code]
;キャラのピストン速度、キャラ【画像変更】
[switch exp="f.H_Sex_Speed"]
[case is=4]
[chara_mod  name="H_種付け"  time="0"  cross="false"  storage="chara/27/種付けアニメ01.png" cond="f.H_Danmen_Flag == 0"]
[chara_mod  name="H_種付け"  time="0"  cross="false"  storage="chara/27/種付けアニメ01.png" cond="f.H_Danmen_Flag == 1 && f.H_Condom_On == 1"]
[chara_mod  name="H_種付け"  time="0"  cross="false"  storage="chara/27/種付けアニメ11.png" cond="f.H_Danmen_Flag == 1 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count ==0"]
[chara_mod  name="H_種付け"  time="0"  cross="false"  storage="chara/27/種付けアニメ34.png" cond="f.H_Danmen_Flag == 1 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count ==1"]
[chara_mod  name="H_種付け"  time="0"  cross="false"  storage="chara/27/種付けアニメ37.png" cond="f.H_Danmen_Flag == 1 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count >=2"]

[playse  volume="100"  time="1000"  buf="1"  storage="ピストン系/種付けピストン01.mp3"  loop="true"  ]
[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/06喘ぎ声(挿入)01.mp3"  loop="true" cond="tf.rand ==1"]
[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/03喘ぎ声(前)03.mp3"  loop="true"  cond="tf.rand !=1"]

[case is=5]
[chara_mod  name="H_種付け"  time="0"  cross="false"  storage="chara/27/種付けアニメ02.png" cond="f.H_Danmen_Flag == 0"]
[chara_mod  name="H_種付け"  time="0"  cross="false"  storage="chara/27/種付けアニメ02.png" cond="f.H_Danmen_Flag == 1 && f.H_Condom_On == 1"]
[chara_mod  name="H_種付け"  time="0"  cross="false"  storage="chara/27/種付けアニメ12.png" cond="f.H_Danmen_Flag == 1 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count ==0"]
[chara_mod  name="H_種付け"  time="0"  cross="false"  storage="chara/27/種付けアニメ35.png" cond="f.H_Danmen_Flag == 1 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count ==1"]
[chara_mod  name="H_種付け"  time="0"  cross="false"  storage="chara/27/種付けアニメ38.png" cond="f.H_Danmen_Flag == 1 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count >=2"]

[playse  volume="100"  time="1000"  buf="1"  storage="ピストン系/種付けピストン02.mp3"  loop="true"  ]
[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/06喘ぎ声(挿入)01.mp3"  loop="true" cond="tf.rand ==1"]
[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/07喘ぎ声(挿入)02.mp3"  loop="true"  cond="tf.rand !=1"]

[case is=6]
[chara_mod  name="H_種付け"  time="0"  cross="false"  storage="chara/27/種付けアニメ03.png" cond="f.H_Danmen_Flag == 0"]
[chara_mod  name="H_種付け"  time="0"  cross="false"  storage="chara/27/種付けアニメ03.png" cond="f.H_Danmen_Flag == 1 && f.H_Condom_On == 1"]
[chara_mod  name="H_種付け"  time="0"  cross="false"  storage="chara/27/種付けアニメ13.png" cond="f.H_Danmen_Flag == 1 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count ==0"]
[chara_mod  name="H_種付け"  time="0"  cross="false"  storage="chara/27/種付けアニメ36.png" cond="f.H_Danmen_Flag == 1 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count ==1"]
[chara_mod  name="H_種付け"  time="0"  cross="false"  storage="chara/27/種付けアニメ39.png" cond="f.H_Danmen_Flag == 1 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count >=2"]

[playse  volume="100"  time="1000"  buf="1"  storage="ピストン系/種付けピストン03.mp3"  loop="true"  ]
[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/09喘ぎ声(挿入)04.mp3"  loop="true" cond="tf.rand ==1"]
[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/10喘ぎ声(挿入)05.mp3"  loop="true"  cond="tf.rand !=1"]

;正上位

[case is=1]
[chara_mod  name="H_正上位"  time="0"  cross="false"  storage="chara/10/正上アニメ01.png" cond="f.H_Danmen_Flag == 0 && f.H_Sex_Anal ==0"]
[chara_mod  name="H_正上位"  time="0"  cross="false"  storage="chara/10/正上アニメ01.png" cond="f.H_Danmen_Flag == 1 && f.H_Sex_Anal ==0  && f.H_Condom_On == 1"]
[chara_mod  name="H_正上位"  time="0"  cross="false"  storage="chara/10/正上アニメ11.png" cond="f.H_Danmen_Flag == 1 && f.H_Sex_Anal ==0  && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count ==0"]
[chara_mod  name="H_正上位"  time="0"  cross="false"  storage="chara/10/正上アニメ14.png" cond="f.H_Danmen_Flag == 1 && f.H_Sex_Anal ==0  && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count ==1"]
[chara_mod  name="H_正上位"  time="0"  cross="false"  storage="chara/10/正上アニメ17.png" cond="f.H_Danmen_Flag == 1 && f.H_Sex_Anal ==0  && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count >=2"]

[chara_mod  name="H_正上位"  time="0"  cross="false"  storage="chara/10/正上アニメ41.png" cond="f.H_Sex_Anal ==1"]
[playse  volume="100"  time="1000"  buf="1"  storage="ピストン系/正常位ピストン01.mp3"  loop="true"  ]
[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/06喘ぎ声(挿入)01.mp3"  loop="true" cond="tf.rand ==1"]
[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/03喘ぎ声(前)03.mp3"  loop="true"  cond="tf.rand !=1"]

[case is=2]
[chara_mod  name="H_正上位"  time="0"  cross="false"  storage="chara/10/正上アニメ02.png" cond="f.H_Danmen_Flag == 0 && f.H_Sex_Anal ==0"]
[chara_mod  name="H_正上位"  time="0"  cross="false"  storage="chara/10/正上アニメ02.png" cond="f.H_Danmen_Flag == 1 && f.H_Sex_Anal ==0  && f.H_Condom_On == 1"]
[chara_mod  name="H_正上位"  time="0"  cross="false"  storage="chara/10/正上アニメ12.png" cond="f.H_Danmen_Flag == 1 && f.H_Sex_Anal ==0  && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count ==0"]
[chara_mod  name="H_正上位"  time="0"  cross="false"  storage="chara/10/正上アニメ15.png" cond="f.H_Danmen_Flag == 1 && f.H_Sex_Anal ==0  && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count ==1"]
[chara_mod  name="H_正上位"  time="0"  cross="false"  storage="chara/10/正上アニメ18.png" cond="f.H_Danmen_Flag == 1 && f.H_Sex_Anal ==0  && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count >=2"]

[chara_mod  name="H_正上位"  time="0"  cross="false"  storage="chara/10/正上アニメ42.png" cond="f.H_Sex_Anal ==1"]
[playse  volume="100"  time="1000"  buf="1"  storage="ピストン系/正常位ピストン02.mp3"  loop="true"  ]
[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/06喘ぎ声(挿入)01.mp3"  loop="true" cond="tf.rand ==1"]
[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/07喘ぎ声(挿入)02.mp3"  loop="true"  cond="tf.rand !=1"]

[case is=3]
[chara_mod  name="H_正上位"  time="0"  cross="false"  storage="chara/10/正上アニメ03.png" cond="f.H_Danmen_Flag == 0 && f.H_Sex_Anal ==0"]
[chara_mod  name="H_正上位"  time="0"  cross="false"  storage="chara/10/正上アニメ03.png" cond="f.H_Danmen_Flag == 1 && f.H_Sex_Anal ==0  && f.H_Condom_On == 1"]
[chara_mod  name="H_正上位"  time="0"  cross="false"  storage="chara/10/正上アニメ13.png" cond="f.H_Danmen_Flag == 1 && f.H_Sex_Anal ==0  && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count ==0"]
[chara_mod  name="H_正上位"  time="0"  cross="false"  storage="chara/10/正上アニメ16.png" cond="f.H_Danmen_Flag == 1 && f.H_Sex_Anal ==0  && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count ==1"]
[chara_mod  name="H_正上位"  time="0"  cross="false"  storage="chara/10/正上アニメ19.png" cond="f.H_Danmen_Flag == 1 && f.H_Sex_Anal ==0  && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count >=2"]

[chara_mod  name="H_正上位"  time="0"  cross="false"  storage="chara/10/正上アニメ43.png" cond="f.H_Sex_Anal ==1"]
[playse  volume="100"  time="1000"  buf="1"  storage="ピストン系/正常位ピストン03.mp3"  loop="true"  ]
[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/09喘ぎ声(挿入)04.mp3"  loop="true" cond="tf.rand ==1"]
[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/10喘ぎ声(挿入)05.mp3"  loop="true"  cond="tf.rand !=1"]

[case is=11]
[chara_mod  name="H_正上位"  time="0"  cross="false"  storage="chara/10/正上アニメ21.png" cond="f.H_Danmen_Flag == 0 && f.H_Sex_Anal ==0"]
[chara_mod  name="H_正上位"  time="0"  cross="false"  storage="chara/10/正上アニメ21.png" cond="f.H_Danmen_Flag == 1 && f.H_Sex_Anal ==0  && f.H_Condom_On == 1"]
[chara_mod  name="H_正上位"  time="0"  cross="false"  storage="chara/10/正上アニメ31.png" cond="f.H_Danmen_Flag == 1 && f.H_Sex_Anal ==0  && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count ==0"]
[chara_mod  name="H_正上位"  time="0"  cross="false"  storage="chara/10/正上アニメ34.png" cond="f.H_Danmen_Flag == 1 && f.H_Sex_Anal ==0  && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count ==1"]
[chara_mod  name="H_正上位"  time="0"  cross="false"  storage="chara/10/正上アニメ37.png" cond="f.H_Danmen_Flag == 1 && f.H_Sex_Anal ==0  && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count >=2"]

[chara_mod  name="H_正上位"  time="0"  cross="false"  storage="chara/10/正上アニメ51.png" cond="f.H_Sex_Anal ==1"]
[playse  volume="100"  time="1000"  buf="1"  storage="ピストン系/正常位ピストン01.mp3"  loop="true"  ]
[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/06喘ぎ声(挿入)01.mp3"  loop="true" cond="tf.rand ==1"]
[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/03喘ぎ声(前)03.mp3"  loop="true"  cond="tf.rand !=1"]

[case is=12]
[chara_mod  name="H_正上位"  time="0"  cross="false"  storage="chara/10/正上アニメ22.png" cond="f.H_Danmen_Flag == 0 && f.H_Sex_Anal ==0"]
[chara_mod  name="H_正上位"  time="0"  cross="false"  storage="chara/10/正上アニメ22.png" cond="f.H_Danmen_Flag == 1 && f.H_Sex_Anal ==0  && f.H_Condom_On == 1"]
[chara_mod  name="H_正上位"  time="0"  cross="false"  storage="chara/10/正上アニメ32.png" cond="f.H_Danmen_Flag == 1 && f.H_Sex_Anal ==0  && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count ==0"]
[chara_mod  name="H_正上位"  time="0"  cross="false"  storage="chara/10/正上アニメ35.png" cond="f.H_Danmen_Flag == 1 && f.H_Sex_Anal ==0  && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count ==1"]
[chara_mod  name="H_正上位"  time="0"  cross="false"  storage="chara/10/正上アニメ38.png" cond="f.H_Danmen_Flag == 1 && f.H_Sex_Anal ==0  && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count >=2"]

[chara_mod  name="H_正上位"  time="0"  cross="false"  storage="chara/10/正上アニメ52.png" cond="f.H_Sex_Anal ==1"]
[playse  volume="100"  time="1000"  buf="1"  storage="ピストン系/正常位ピストン02.mp3"  loop="true"  ]
[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/06喘ぎ声(挿入)01.mp3"  loop="true" cond="tf.rand ==1"]
[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/07喘ぎ声(挿入)02.mp3"  loop="true"  cond="tf.rand !=1"]

[case is=13]
[chara_mod  name="H_正上位"  time="0"  cross="false"  storage="chara/10/正上アニメ23.png" cond="f.H_Danmen_Flag == 0 && f.H_Sex_Anal ==0"]
[chara_mod  name="H_正上位"  time="0"  cross="false"  storage="chara/10/正上アニメ23.png" cond="f.H_Danmen_Flag == 1 && f.H_Sex_Anal ==0  && f.H_Condom_On == 1"]
[chara_mod  name="H_正上位"  time="0"  cross="false"  storage="chara/10/正上アニメ33.png" cond="f.H_Danmen_Flag == 1 && f.H_Sex_Anal ==0  && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count ==0"]
[chara_mod  name="H_正上位"  time="0"  cross="false"  storage="chara/10/正上アニメ36.png" cond="f.H_Danmen_Flag == 1 && f.H_Sex_Anal ==0  && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count ==1"]
[chara_mod  name="H_正上位"  time="0"  cross="false"  storage="chara/10/正上アニメ39.png" cond="f.H_Danmen_Flag == 1 && f.H_Sex_Anal ==0  && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count >=2"]

[chara_mod  name="H_正上位"  time="0"  cross="false"  storage="chara/10/正上アニメ53.png" cond="f.H_Sex_Anal ==1"]
[playse  volume="100"  time="1000"  buf="1"  storage="ピストン系/正常位ピストン03.mp3"  loop="true"  ]
[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/09喘ぎ声(挿入)04.mp3"  loop="true" cond="tf.rand ==1"]
[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/10喘ぎ声(挿入)05.mp3"  loop="true"  cond="tf.rand !=1"]

[case]
[chara_mod  name="H_正上位"  time="0"  cross="false"  storage="chara/11/正上アニメ00.png" cond="f.H_Danmen_Flag == 0 && f.H_Sex_Anal ==0 && f.H_Ue_Chakui == 1"]
[chara_mod  name="H_正上位"  time="0"  cross="false"  storage="chara/11/正上アニメ00.png" cond="f.H_Danmen_Flag == 1 && f.H_Sex_Anal ==0 && f.H_Ue_Chakui == 1  && f.H_Condom_On == 1"]
[chara_mod  name="H_正上位"  time="0"  cross="false"  storage="chara/11/正上アニメ10.png" cond="f.H_Danmen_Flag == 1 && f.H_Sex_Anal ==0 && f.H_Ue_Chakui == 1  && f.H_Condom_On == 0"]
[chara_mod  name="H_正上位"  time="0"  cross="false"  storage="chara/11/正上アニメ20.png" cond="f.H_Danmen_Flag == 0 && f.H_Sex_Anal ==0 && f.H_Ue_Chakui >= 2"]
[chara_mod  name="H_正上位"  time="0"  cross="false"  storage="chara/11/正上アニメ20.png" cond="f.H_Danmen_Flag == 1 && f.H_Sex_Anal ==0 && f.H_Ue_Chakui >= 2  && f.H_Condom_On == 1"]
[chara_mod  name="H_正上位"  time="0"  cross="false"  storage="chara/11/正上アニメ30.png" cond="f.H_Danmen_Flag == 1 && f.H_Sex_Anal ==0 && f.H_Ue_Chakui >= 2  && f.H_Condom_On == 0"]
[chara_mod  name="H_正上位"  time="0"  cross="false"  storage="chara/11/正上アニメ40.png" cond="f.H_Sex_Anal ==1 && f.H_Ue_Chakui == 1"]
[chara_mod  name="H_正上位"  time="0"  cross="false"  storage="chara/11/正上アニメ50.png" cond="f.H_Sex_Anal ==1 && f.H_Ue_Chakui >= 2"]

[endswitch]
[_tb_end_tyrano_code]

[return  ]
*__絶頂画像表示

[tb_start_tyrano_code]
;射精音

[switch exp="f.rand"]
[case is=1]
[ptext layer="1" x="&f.X_Ka_Size" y="&f.Y_K_Size" size="30" text="Twitch♥" name="Kouka01"  zindex=100 edge="0xffffff" color="0x000000" edge="0xffffff" face="JK-Gothic-testM"  bold="true"]
[ptext layer="1" x="&f.X_Kb_Size" y="&f.Y_K_Size" size="30" text="Twitch♥" name="Kouka02"  zindex=100 edge="0xffffff" color="0x000000" edge="0xffffff" face="JK-Gothic-testM"  bold="true"]
[anim name="Kouka01" left="&f.X_Ka_Size_After" top="&f.Y_K_Size_After"  opacity=0 time=3000]
[anim name="Kouka02" left="&f.X_Kb_Size_After" top="&f.Y_K_Size_After"  opacity=0 time=3000]

[case is=2]
[ptext layer="1" x="&f.X_Ka_Size" y="&f.Y_K_Size" size="30" text="Squeeze♥" name="Kouka01"  zindex=100 edge="0xffffff" color="0x000000" edge="0xffffff" face="JK-Gothic-testM"  bold="true"]
[ptext layer="1" x="&f.X_Kb_Size" y="&f.Y_K_Size" size="30" text="Squeeze♥" name="Kouka02"  zindex=100 edge="0xffffff" color="0x000000" edge="0xffffff" face="JK-Gothic-testM"  bold="true"]
[anim name="Kouka01" left="&f.X_Ka_Size_After" top="&f.Y_K_Size_After"  opacity=0 time=3000]
[anim name="Kouka02" left="&f.X_Kb_Size_After" top="&f.Y_K_Size_After"  opacity=0 time=3000]

[case]
[ptext layer="1" x="&f.X_Ka_Size" y="&f.Y_K_Size" size="30" text="Squeeze♥" name="Kouka01"  zindex=100 edge="0xffffff" color="0x000000" edge="0xffffff" face="JK-Gothic-testM"  bold="true"]
[ptext layer="1" x="&f.X_Kb_Size" y="&f.Y_K_Size" size="30" text="Squeeze♥" name="Kouka02"  zindex=100 edge="0xffffff" color="0x000000" edge="0xffffff" face="JK-Gothic-testM"  bold="true"]
[anim name="Kouka01" left="&f.X_Ka_Size_After" top="&f.Y_K_Size_After"  opacity=0 time=3000]
[anim name="Kouka02" left="&f.X_Kb_Size_After" top="&f.Y_K_Size_After"  opacity=0 time=3000]

[endswitch]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;絶頂処理、キャラ【画像変更】
[switch exp="f.H_Sex_Speed"]
[case is=4]
[chara_mod  name="H_種付け"  time="0"  cross="false"  storage="chara/27/種付け絶頂01.png" cond="f.H_Danmen_Flag == 0"]
[chara_mod  name="H_種付け"  time="0"  cross="false"  storage="chara/27/種付け絶頂01.png" cond="f.H_Danmen_Flag == 1 && f.H_Condom_On == 1"]
[chara_mod  name="H_種付け"  time="0"  cross="false"  storage="chara/27/種付け絶頂11.png" cond="f.H_Danmen_Flag == 1 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count ==0"]
[chara_mod  name="H_種付け"  time="0"  cross="false"  storage="chara/27/種付け絶頂24.png" cond="f.H_Danmen_Flag == 1 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count ==1"]
[chara_mod  name="H_種付け"  time="0"  cross="false"  storage="chara/27/種付け絶頂27.png" cond="f.H_Danmen_Flag == 1 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count >=2"]

[case is=5]
[chara_mod  name="H_種付け"  time="0"  cross="false"  storage="chara/27/種付け絶頂02.png" cond="f.H_Danmen_Flag == 0"]
[chara_mod  name="H_種付け"  time="0"  cross="false"  storage="chara/27/種付け絶頂02.png" cond="f.H_Danmen_Flag == 1 && f.H_Condom_On == 1"]
[chara_mod  name="H_種付け"  time="0"  cross="false"  storage="chara/27/種付け絶頂12.png" cond="f.H_Danmen_Flag == 1 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count ==0"]
[chara_mod  name="H_種付け"  time="0"  cross="false"  storage="chara/27/種付け絶頂25.png" cond="f.H_Danmen_Flag == 1 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count ==1"]
[chara_mod  name="H_種付け"  time="0"  cross="false"  storage="chara/27/種付け絶頂28.png" cond="f.H_Danmen_Flag == 1 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count >=2"]

[case is=6]
[chara_mod  name="H_種付け"  time="0"  cross="false"  storage="chara/27/種付け絶頂03.png" cond="f.H_Danmen_Flag == 0"]
[chara_mod  name="H_種付け"  time="0"  cross="false"  storage="chara/27/種付け絶頂03.png" cond="f.H_Danmen_Flag == 1 && f.H_Condom_On == 1"]
[chara_mod  name="H_種付け"  time="0"  cross="false"  storage="chara/27/種付け絶頂13.png" cond="f.H_Danmen_Flag == 1 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count ==0"]
[chara_mod  name="H_種付け"  time="0"  cross="false"  storage="chara/27/種付け絶頂26.png" cond="f.H_Danmen_Flag == 1 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count ==1"]
[chara_mod  name="H_種付け"  time="0"  cross="false"  storage="chara/27/種付け絶頂29.png" cond="f.H_Danmen_Flag == 1 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count >=2"]

[case is=7]
[chara_mod  name="H_種付け"  time="0"  cross="false"  storage="chara/27/種付け絶頂03.png" cond="f.H_Danmen_Flag == 0"]
[chara_mod  name="H_種付け"  time="0"  cross="false"  storage="chara/27/種付け絶頂03.png" cond="f.H_Danmen_Flag == 1 && f.H_Condom_On == 1"]
[chara_mod  name="H_種付け"  time="0"  cross="false"  storage="chara/27/種付け絶頂13.png" cond="f.H_Danmen_Flag == 1 && f.H_Condom_On == 0"]


[case]
[if exp="f.H_Sex_Anal ==0"]
[chara_mod  name="H_正上位"  time="0"  cross="true"  storage="chara/10/正上アニメ絶頂02.png" cond="f.H_Ue_Chakui ==1 && f.H_Danmen_Flag == 0"]
[chara_mod  name="H_正上位"  time="0"  cross="true"  storage="chara/10/正上アニメ絶頂02.png" cond="f.H_Ue_Chakui ==1 && f.H_Danmen_Flag == 1 && f.H_Condom_On == 1"]
[chara_mod  name="H_正上位"  time="0"  cross="true"  storage="chara/10/正上アニメ絶頂12.png" cond="f.H_Ue_Chakui ==1 && f.H_Danmen_Flag == 1 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count ==0"]
[chara_mod  name="H_正上位"  time="0"  cross="true"  storage="chara/10/正上アニメ絶頂13.png" cond="f.H_Ue_Chakui ==1 && f.H_Danmen_Flag == 1 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count ==1"]
[chara_mod  name="H_正上位"  time="0"  cross="true"  storage="chara/10/正上アニメ絶頂14.png" cond="f.H_Ue_Chakui ==1 && f.H_Danmen_Flag == 1 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count >=2"]

[chara_mod  name="H_正上位"  time="0"  cross="true"  storage="chara/10/正上アニメ絶頂22.png" cond="f.H_Ue_Chakui >=2 && f.H_Danmen_Flag == 0"]
[chara_mod  name="H_正上位"  time="0"  cross="true"  storage="chara/10/正上アニメ絶頂22.png" cond="f.H_Ue_Chakui >=2 && f.H_Danmen_Flag == 1 && f.H_Condom_On == 1"]
[chara_mod  name="H_正上位"  time="0"  cross="true"  storage="chara/10/正上アニメ絶頂32.png" cond="f.H_Ue_Chakui >=2 && f.H_Danmen_Flag == 1 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count ==0"]
[chara_mod  name="H_正上位"  time="0"  cross="true"  storage="chara/10/正上アニメ絶頂33.png" cond="f.H_Ue_Chakui >=2 && f.H_Danmen_Flag == 1 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count ==1"]
[chara_mod  name="H_正上位"  time="0"  cross="true"  storage="chara/10/正上アニメ絶頂34.png" cond="f.H_Ue_Chakui >=2 && f.H_Danmen_Flag == 1 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count >=2"]

[elsif exp="f.H_Sex_Anal ==1"]
[chara_mod  name="H_正上位"  time="0"  cross="true"  storage="chara/10/正上アニメ絶頂42.png" cond="f.H_Ue_Chakui ==1"]
[chara_mod  name="H_正上位"  time="0"  cross="true"  storage="chara/10/正上アニメ絶頂52.png" cond="f.H_Ue_Chakui >=2"]
[endif]

[endswitch]

[_tb_end_tyrano_code]

[intrandom_ko10panda  max="2"  count="1"  show_result="false"  show_style="style_a"  show_detail="false"  detail_length="10"  show_log="log_4"  var_name="f.rand"  ]
[font  size="14"  color="0x000000"  face="JK-Gothic-testM"  bold="true"  ]
[resetfont  ]
[return  ]
*__道具素体変更

[tb_start_tyrano_code]
;道具による素体変更
[switch exp="f.H_Tool_Flag"]

;ローターは着衣パターンで分岐
[case is= 1001]
[chara_mod  name="H_正上位"  time="0"  cross="false"  storage="chara/10/正上03.png" cond="f.H_Ue_Chakui == 1 && f.H_Pantu_Chakui ==1"]
[chara_mod  name="H_正上位"  time="0"  cross="false"  storage="chara/10/正上05.png" cond="f.H_Ue_Chakui >= 2 && f.H_Pantu_Chakui ==1"]

[chara_mod  name="H_正上位"  time="0"  cross="false"  storage="chara/10/正上11.png" cond="f.H_Ue_Chakui == 1 && f.H_Pantu_Chakui ==2"]
[chara_mod  name="H_正上位"  time="0"  cross="false"  storage="chara/10/正上12.png" cond="f.H_Ue_Chakui >= 2 && f.H_Pantu_Chakui ==2"]

[case is= 1010]
[chara_mod  name="H_正上位"  time="0"  cross="false"  storage="chara/10/正上21.png" cond="f.H_Ue_Chakui == 1"]
[chara_mod  name="H_正上位"  time="0"  cross="false"  storage="chara/10/正上22.png" cond="f.H_Ue_Chakui >= 2"]
[case is= 1011]
[chara_mod  name="H_正上位"  time="0"  cross="false"  storage="chara/10/正上41.png" cond="f.H_Ue_Chakui == 1"]
[chara_mod  name="H_正上位"  time="0"  cross="false"  storage="chara/10/正上42.png" cond="f.H_Ue_Chakui >= 2"]

[case is= 1100]
[chara_mod  name="H_正上位"  time="0"  cross="false"  storage="chara/10/正上31.png" cond="f.H_Ue_Chakui == 1"]
[chara_mod  name="H_正上位"  time="0"  cross="false"  storage="chara/10/正上32.png" cond="f.H_Ue_Chakui >= 2"]
[case is= 1101]
[chara_mod  name="H_正上位"  time="0"  cross="false"  storage="chara/10/正上51.png" cond="f.H_Ue_Chakui == 1"]
[chara_mod  name="H_正上位"  time="0"  cross="false"  storage="chara/10/正上52.png" cond="f.H_Ue_Chakui >= 2"]
[case is= 1110]
[chara_mod  name="H_正上位"  time="0"  cross="false"  storage="chara/10/正上21.png" cond="f.H_Ue_Chakui == 1"]
[chara_mod  name="H_正上位"  time="0"  cross="false"  storage="chara/10/正上22.png" cond="f.H_Ue_Chakui >= 2"]
[case is= 1111]
[chara_mod  name="H_正上位"  time="0"  cross="false"  storage="chara/10/正上41.png" cond="f.H_Ue_Chakui == 1"]
[chara_mod  name="H_正上位"  time="0"  cross="false"  storage="chara/10/正上42.png" cond="f.H_Ue_Chakui >= 2"]

[endswitch]
[_tb_end_tyrano_code]

[return  ]
*__射精効果音

[intrandom_ko10panda  max="3"  count="1"  show_result="false"  show_style="style_a"  show_detail="false"  detail_length="10"  show_log="log_4"  var_name="f.rand"  ]
[font  size="14"  color="0x000000"  face="JK-Gothic-testM"  bold="true"  ]
[tb_start_tyrano_code]
;射精効果音ランダム

[switch exp="f.rand"]
[case is=1]
[ptext layer="1" x="&f.X_Ka_Size" y="&f.Y_K_Size" size="30" text="Squirt♥" name="Kouka01"  zindex=100 edge="0xffffff" color="0x000000" edge="0xffffff" face="JK-Gothic-testM"  bold="true"]
[ptext layer="1" x="&f.X_Kb_Size" y="&f.Y_K_Size" size="30" text="Squirt♥" name="Kouka02"  zindex=100 edge="0xffffff" color="0x000000" edge="0xffffff" face="JK-Gothic-testM"  bold="true"]
[anim name="Kouka01" left="&f.X_Ka_Size_After" top="&f.Y_K_Size_After"  opacity=0 time=3000]
[anim name="Kouka02" left="&f.X_Kb_Size_After" top="&f.Y_K_Size_After" opacity=0 time=3000]

[case is=2]
[ptext layer="1" x="&f.X_Ka_Size" y="&f.Y_K_Size" size="30" text="Spurt♥" name="Kouka01"  zindex=100 edge="0xffffff" color="0x000000" edge="0xffffff" face="JK-Gothic-testM"  bold="true"]
[ptext layer="1" x="&f.X_Kb_Size" y="&f.Y_K_Size" size="30" text="Spurt♥" name="Kouka02"  zindex=100 edge="0xffffff" color="0x000000" edge="0xffffff" face="JK-Gothic-testM"  bold="true"]
[anim name="Kouka01" left="&f.X_Ka_Size_After" top="&f.Y_K_Size_After"  opacity=0 time=3000]
[anim name="Kouka02" left="&f.X_Kb_Size_After" top="&f.Y_K_Size_After"  opacity=0 time=3000]

[case is=3]
[ptext layer="1" x="&f.X_Ka_Size" y="&f.Y_K_Size" size="30" text="Gulp♥" name="Kouka01"  zindex=100 edge="0xffffff" color="0x000000" edge="0xffffff" face="JK-Gothic-testM"  bold="true"]
[ptext layer="1" x="&f.X_Kb_Size" y="&f.Y_K_Size" size="30" text="Gulp♥" name="Kouka02"  zindex=100 edge="0xffffff" color="0x000000" edge="0xffffff" face="JK-Gothic-testM"  bold="true"]
[anim name="Kouka01" left="&f.X_Ka_Size_After" top="&f.Y_K_Size_After"  opacity=0 time=3000]
[anim name="Kouka02" left="&f.X_Kb_Size_After" top="&f.Y_K_Size_After"  opacity=0 time=3000]

[case]
[ptext layer="1" x="&f.X_Ka_Size" y="&f.Y_K_Size" size="30" text="Spurt♥" name="Kouka01"  zindex=100 edge="0xffffff" color="0x000000" edge="0xffffff" face="JK-Gothic-testM"  bold="true"]
[ptext layer="1" x="&f.X_Kb_Size" y="&f.Y_K_Size" size="30" text="Spurt♥" name="Kouka02"  zindex=100 edge="0xffffff" color="0x000000" edge="0xffffff" face="JK-Gothic-testM"  bold="true"]
[anim name="Kouka01" left="&f.X_Ka_Size_After" top="&f.Y_K_Size_After"  opacity=0 time=3000]
[anim name="Kouka02" left="&f.X_Kb_Size_After" top="&f.Y_K_Size_After"  opacity=0 time=3000]

[endswitch]
[_tb_end_tyrano_code]

[resetfont  ]
[return  ]
*__セリフと効果音Y座標

[tb_start_tyrano_code]
;効果音の位置を体位で分岐　Sはセリフの位置　Kは効果音の位置
[iscript]

// 初期値
f.Y_S_Size  = 180;
f.Y_K_Size  = 580;
f.X_Ka_Size = 710;
f.X_Kb_Size = 510;

// 体位による分岐
if ( (f.H_Sex_Speed >= 4 && f.H_Sex_Speed <= 7) ||
(f.H_Sex_Speed >= 14 && f.H_Sex_Speed <= 17) ) {

f.Y_S_Size  = 140;
f.Y_K_Size  = 500;
f.X_Ka_Size = 560;
f.X_Kb_Size = 360;
}

// 移動後のサイズ
f.Y_S_Size_After  = f.Y_S_Size  - 20;
f.Y_K_Size_After  = f.Y_K_Size  - 20;
f.X_Ka_Size_After = f.X_Ka_Size + 20;
f.X_Kb_Size_After = f.X_Kb_Size - 20;

[endscript]
[_tb_end_tyrano_code]

[return  ]
*特殊文字参考

[tb_show_message_window  ]
[font  size="14"  color="0xffffff"  face="JK-Gothic-testM"  ]
[tb_start_tyrano_code]
;効果音の位置を体位で分岐　Sはセリフの位置　Kは効果音の位置
[eval exp="f.Y_S_Size  = 180"]
[eval exp="f.Y_K_Size  = 580"]
[eval exp="f.X_Ka_Size  = 710"]
[eval exp="f.X_Kb_Size  = 510"]

[if exp="(f.H_Sex_Speed >= 4 && f.H_Sex_Speed <= 7) || (f.H_Sex_Speed >= 14 && f.H_Sex_Speed <= 17)"]
[eval exp="f.Y_S_Size  = 140"]
[eval exp="f.Y_K_Size  = 500"]
[eval exp="f.X_Ka_Size  = 560"]
[eval exp="f.X_Kb_Size  = 360"]

[endif]

;移動後のサイズ
[eval exp="f.Y_S_Size_After = f.Y_S_Size - 20"]
[eval exp="f.Y_K_Size_After = f.Y_K_Size - 20"]
[eval exp="f.X_Ka_Size_After = f.X_Ka_Size + 20"]
[eval exp="f.X_Kb_Size_After = f.X_Kb_Size - 20"]

[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
Guhehe♥⑴⑵⑹[p]
[_tb_end_text]

[resetfont  ]
[tb_hide_message_window  ]
