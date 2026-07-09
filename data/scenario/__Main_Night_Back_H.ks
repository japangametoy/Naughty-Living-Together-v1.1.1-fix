[_tb_system_call storage=system/___Main_Night_Back_H.ks]

[tb_start_tyrano_code]
[layopt layer=1 visible=true opacity=255]
[layopt layer=2 visible=true opacity=255]

[_tb_end_tyrano_code]

[call  storage="_Array_.ks"  target="*__配列宣言"  ]
[call  storage="_Array_Kaihatu.ks"  target="*__開発配列初期化"  ]
[tb_eval  exp="f.Sys_Syume=7"  name="Sys_Syume"  cmd="="  op="t"  val="7"  val_2="undefined"  ]
[tb_eval  exp="f.Sta_Risei=7"  name="Sta_Risei"  cmd="="  op="t"  val="7"  val_2="undefined"  ]
[tb_eval  exp="f.Oni_Ero=10"  name="Oni_Ero"  cmd="="  op="t"  val="10"  val_2="undefined"  ]
[tb_eval  exp="f.H_Taii_Flag=1"  name="H_Taii_Flag"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_start_tyrano_code]
;開発度初期値
[eval exp="f.my_Item[4].my_kazu = 2"]
[eval exp="f.my_Item[5].my_kazu = 1"]
[eval exp="f.my_Item[6].my_kazu = 1"]
[eval exp="f.my_Item[7].my_kazu = 1"]

[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;開発度初期値
[eval exp="f.Kaihatu[1].count = 100"]
[eval exp="f.Kaihatu[3].count = 100"]
[eval exp="f.Kaihatu[4].count = 100"]
[_tb_end_tyrano_code]

*__H_Night_Back

[mask  time="0"  effect="fadeIn"  color="0x000000"  ]
[stopse  time="1000"  buf="0"  ]
[stopse  time="1000"  buf="1"  ]
[stopse  time="1000"  buf="2"  ]
[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/01喘ぎ声(前)01.mp3"  loop="true"  ]
[chara_hide_all  time="0"  wait="true"  ]
[tb_image_hide  time="0"  ]
[tb_start_tyrano_code]
[clearfix]
[_tb_end_tyrano_code]

[tb_eval  exp="f.H_Ue_Chakui=0"  name="H_Ue_Chakui"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.H_Pantu_Chakui=0"  name="H_Pantu_Chakui"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.H_Left_Mune=0"  name="H_Left_Mune"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.H_Asoko_Touch=0"  name="H_Asoko_Touch"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.H_Right_Mune=0"  name="H_Right_Mune"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.Eve_Time=0"  name="Eve_Time"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.Eve_Time_Bad=0"  name="Eve_Time_Bad"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_start_tyrano_code]
;開発度によるBAD倍率　f.BAD確率宣言
[eval exp="f.i = 0"]

[for name=f.i from=0 to 4]
[if exp="f.Kaihatu[f.i].count  >= 100"]
[eval exp="f.Bad_H_Sta[f.i].count = 0"]
[else]
[eval exp="f.Bad_H_Sta[f.i].count = (100 - f.Kaihatu[f.i].count) /100"]

[endif]
[nextfor]
[_tb_end_tyrano_code]

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
[bg  time="0"  method="crossfade"  storage="H背景.png"  cross="false"  ]
[call  storage="Main_Sta.ks"  target="*__Hメインステ表示"  ]
[chara_show  name="H_バック"  time="0"  wait="true"  storage="chara/11/バック01.png"  width="760"  height="660"  left="160"  top="60"  reflect="false"  ]
[chara_part  name="H_バック"  time="0"  表情="バック表情01.png"  wait="true"  ]
[mask_off  time="500"  effect="fadeOut"  ]
[jump  storage="__Main_Night_Back_H.ks"  target="*__キャラ表示処理"  ]
*__体位変更スタート

[mask  time="300"  effect="fadeIn"  color="0x000000"  ]
[stopse  time="1000"  buf="0"  ]
[stopse  time="1000"  buf="1"  ]
[stopse  time="1000"  buf="2"  ]
[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/01喘ぎ声(前)01.mp3"  loop="true"  ]
[tb_start_tyrano_code]
[cm]
[clearfix]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;正上から移行して股開いてた場合
[if exp="f.H_Pantu_Chakui >= 1"]
[eval exp="f.H_Pantu_Chakui = 1"]
[endif]
[_tb_end_tyrano_code]

[call  storage="__Main_Night_Option.ks"  target="*__お触りカットフラグ全消し"  ]
[call  storage="__Main_Night_Option.ks"  target="*__カット消しバー再表示"  ]
[chara_hide_all  time="0"  wait="true"  ]
[chara_show  name="H_バック"  time="0"  wait="true"  storage="chara/11/バック01.png"  width="760"  height="660"  left="160"  top="60"  reflect="false"  ]
[chara_part  name="H_バック"  time="0"  表情="バック表情01.png"  wait="true"  ]
[call  storage="__Main_Night_Back_H.ks"  target="*__着衣判定"  ]
[call  storage="__Main_Night_Back_H.ks"  target="*__汗表示"  ]
[mask_off  time="300"  effect="fadeOut"  ]
*__服脱がせ戻り先

[tb_start_tyrano_code]
[clearfix]
[_tb_end_tyrano_code]

[stopse  time="1000"  buf="2"  ]
[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/01喘ぎ声(前)01.mp3"  loop="true"  ]
[call  storage="__Main_Night_Option.ks"  target="*__お触りフラグリセット後背位"  ]
[call  storage="__Main_Night_Back_H.ks"  target="*__お触りカット表示ステ上昇なし"  ]
*__標準戻り先

[tb_start_tyrano_code]
;バイブオン停止
[if exp="f.H_Tool_Flag == 1000 || f.H_Tool_Flag == 1100"]
[stopse  time="1000"  buf="2"]
[endif]
[_tb_end_tyrano_code]

[call  storage="__Main_Night_Back_H.ks"  target="*__着衣判定"  ]
[call  storage="__Main_Night_Back_H.ks"  target="*__汗表示"  ]
[call  storage="__Main_Night_Back_H.ks"  target="*__ティッシュ表示処理"  ]
[jump  storage="__Main_Night_Back_H.ks"  target="*__BAD上限で終了"  cond="f.H_Bad>219"  ]
[call  storage="__Main_Night_Back_H.ks"  target="*__絶頂処理"  cond="f.H_Good>219"  ]
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
[endif]

;上着ぬがしパンツあり04
[if exp="f.H_Ue_Chakui ==2 && f.H_Pantu_Chakui ==0"]
[glink  color="btn_05_black"  size="20"  target="*__服脱がせ戻り先"  text="Wear camisole"  x="1030"  y="220"  fix="true" exp="f.H_Ue_Chakui = 1" width=200 enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3"]
[glink  color="btn_05_black"  size="20"  target="*__服脱がせ戻り先"  text="Take off panties"  x="1030"  y="280"  fix="true" exp="f.H_Pantu_Chakui = 1" width=200 enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3"]
[endif]


;上着ぬがしパンツなし05
[if exp="f.H_Ue_Chakui ==2 && f.H_Pantu_Chakui ==1"]
[glink  color="btn_05_black"  size="20"  target="*__服脱がせ戻り先"  text="Wear camisole"  x="1030"  y="220"  fix="true" exp="f.H_Ue_Chakui = 1" width=200 enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3"]
[endif]

[if exp="f.H_Good >= 110 && f.H_Pantu_Chakui >=1"]
[glink  color="btn_05_black"  size="20"  target="*__挿入"  text="Penetrate"  x="1030"  y="340" fix="true"  width=200 exp="f.H_Sex_Anal = 0" cond="f.H_Kenja_Count >= 3" enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3"]
[glink  color="btn_05_black"  size="20"  target="*__標準戻り先"  text="Afterglow"  x="1030"  y="340" fix="true"  width=200 cond="f.H_Kenja_Count < 3" enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3"]

[if exp="f.Kaihatu[4].count >= 15"]
[glink  color="btn_05_black"   size="20"  target="*__挿入"  text="Anal penetration"  x="1030"  y="400" fix="true"  width=200 exp="f.H_Sex_Anal = 1" cond="f.H_Kenja_Count >= 3" enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3"]
[glink  color="btn_05_black"   size="20"  target="*__標準戻り先"  text="Afterglow"  x="1030"  y="400" fix="true"  width=200  cond="f.H_Kenja_Count < 3" enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3"]

[endif]
[endif]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;体位変更ボタン
[if exp="f.Sta_Risei <= 60"]
[glink  color="btn_03_white"  size="20"  storage="__Main_Night_Seijoui_H.ks" target="*__体位変更スタート"  text="Switch to Missionary"  x="30"  y="220"  fix="true" width=200 exp="f.H_Taii_Flag = 0" enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3"]
[endif]

[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;道具アイコン

[if exp="f.my_Item[4].my_kazu >= 1"]
[if exp="f.H_Condom_On == 0"]
[eval exp="f.コンドーム残 = 'Condom on (' + f.my_Item[4].my_kazu + ' left)' + f.Sys_Seiri_Hyouji"]
[button  storage="__Main_Night_Back_H.ks"  target="*__標準戻り先"  graphic="道具アイコン12.png" enterimg="道具アイコン11.png" width="60"  height="60"  x="30"  y="430"  name="H_Tool" fix="true" exp="f.H_Condom_On =1" hint="&f.コンドーム残" enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3"]
[else]
[button  storage="__Main_Night_Back_H.ks"  target="*__標準戻り先"  graphic="道具アイコン13.png" width="60"  height="60"  x="30"  y="430"  name="H_Tool" fix="true" exp="f.H_Condom_On =0" hint="Remove condom" enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3"]
[endif]
[endif]

[if exp="f.my_Item[5].my_kazu == 1 && f.H_Ue_Chakui >=1 "]
[if exp="!/^1[0-9][0-9]1$/.test(f.H_Tool_Flag)"]
[button  storage="__Main_Night_Back_H.ks"  target="*__ロータークリック"  graphic="道具アイコン22.png" enterimg="道具アイコン21.png" width="60"  height="60"  x="30"  y="500"  name="H_Tool" fix="true" exp="f.H_Tool_Flag += 1" hint="Use rotor" enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3"]
[elsif exp="/^1[0-9][0-9]1$/.test(f.H_Tool_Flag)"]
[button  storage="__Main_Night_Back_H.ks"  target="*__キャラ表示処理"  graphic="道具アイコン23.png" width="60"  height="60"  x="30"  y="500"  name="H_Tool" fix="true" exp="f.H_Tool_Flag -= 1" hint="Stop rotor" enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3"]

[endif]
[endif]

[if exp="f.my_Item[6].my_kazu == 1 && f.H_Pantu_Chakui >=1"]
[if exp="!/^1[0-9]1[0-9]$/.test(f.H_Tool_Flag)"]
[button  storage="__Main_Night_Back_H.ks"  target="*__バイブクリック"  graphic="道具アイコン32.png"  enterimg="道具アイコン31.png" width="60"  height="60"  x="30"  y="570"  name="H_Tool" fix="true" exp="f.H_Tool_Flag += 10" hint="Use vibrator" enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3"]
[elsif exp="/^1[0-9]1[0-9]$/.test(f.H_Tool_Flag)"]
[button  storage="__Main_Night_Back_H.ks"  target="*__キャラ表示処理"  graphic="道具アイコン33.png" width="60"  height="60"  x="30"  y="570"  name="H_Tool" fix="true" exp="f.H_Tool_Flag -= 10" hint="Stop rotor" enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3"]
[endif]
[endif]

[if exp="f.my_Item[7].my_kazu == 1 && f.H_Pantu_Chakui >=1"]
[if exp="!/^11[0-9][0-9]$/.test(f.H_Tool_Flag)"]
[button  storage="__Main_Night_Back_H.ks"  target="*__アナルクリック"  graphic="道具アイコン42.png"  enterimg="道具アイコン41.png" width="60"  height="60"  x="30"  y="640"  name="H_Tool" fix="true" exp="f.H_Tool_Flag += 100" hint="Use anal beads" enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3"]
[elsif exp="/^11[0-9][0-9]$/.test(f.H_Tool_Flag)"]
[button  storage="__Main_Night_Back_H.ks"  target="*__キャラ表示処理"  graphic="道具アイコン43.png" width="60"  height="60"  x="30"  y="640"  name="H_Tool" fix="true" exp="f.H_Tool_Flag -= 100" hint="Stop rotor" enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3"]
[endif]
[endif]

[_tb_end_tyrano_code]

[call  storage="__Main_Night_Option.ks"  target="*__Backバックアイコン表示"  ]
[call  storage="__Main_Night_Option.ks"  target="*__射精感初期表示"  ]
[clickable  storage="__Main_Night_Back_H.ks"  x="550"  y="65"  width="200"  height="110"  target="*__頭クリック"  _clickable_img=""  ]
[clickable  storage="__Main_Night_Back_H.ks"  x="539"  y="230"  width="212"  height="125"  target="*__背中クリック"  _clickable_img=""  ]
[clickable  storage="__Main_Night_Back_H.ks"  x="475"  y="525"  width="150"  height="190"  target="*__左尻クリック"  _clickable_img="H12.png"  ]
[clickable  storage="__Main_Night_Back_H.ks"  x="672"  y="525"  width="150"  height="190"  target="*__右尻クリック"  _clickable_img="H12.png"  ]
[jump  storage="__Main_Night_Back_H.ks"  target="*__パンツ飛ばし"  cond="f.H_Ue_Chakui==0"  ]
[clickable  storage="__Main_Night_Back_H.ks"  x="622"  y="644"  width="45"  height="49"  target="*__パンツクリック"  _clickable_img=""  ]
*__パンツ飛ばし

[s  ]
*__頭クリック

[chara_part  name="H_バック"  time="0"  表情="バック表情02.png"  ]
[call  storage="__Main_Night_Option.ks"  target="*__お触り単発弱"  ]
[call  storage="__Main_Night_Option.ks"  target="*__ランダムセリフ正上位"  ]
[tb_start_tyrano_code]
;頭　フラグあげさげ
[if exp="f.H_Kuchi_Touch == 0"]
[eval exp="f.H_Kuchi_Touch=1"]
[eval exp="f.H_Tool_Flag=1000"]
[eval exp="f.H_Right_Siri=0"]

[else]
[eval exp="f.H_Kuchi_Touch=0"]
[endif]
[_tb_end_tyrano_code]

[call  storage="__Main_Night_Option.ks"  target="*__腕を使うカット全消し"  ]
[jump  storage="__Main_Night_Back_H.ks"  target="*__キャラ表示処理"  ]
*__背中クリック

[chara_part  name="H_バック"  time="0"  表情="バック表情04.png"  ]
[call  storage="__Main_Night_Option.ks"  target="*__お触り単発弱"  ]
[call  storage="__Main_Night_Option.ks"  target="*__ランダムセリフ正上位"  ]
[tb_start_tyrano_code]
;頭　フラグあげさげ
[if exp="f.H_Senaka_Touch == 0"]
[eval exp="f.H_Senaka_Touch=1"]
[eval exp="f.H_Asoko_Touch=0"]

[else]
[eval exp="f.H_Senaka_Touch=0"]
[endif]
[_tb_end_tyrano_code]

[call  storage="__Main_Night_Option.ks"  target="*__舌を使うカット全消し"  ]
[jump  storage="__Main_Night_Back_H.ks"  target="*__キャラ表示処理"  ]
*__左尻クリック

[call  storage="__Main_Night_Option.ks"  target="*__ランダムセリフ正上位"  ]
[chara_part  name="H_バック"  time="0"  表情="バック表情03.png"  ]
[call  storage="__Main_Night_Option.ks"  target="*__お触り単発弱"  ]
[tb_start_tyrano_code]
;回数カウント
[eval exp="f.Kaihatu_Count[2].kazu += 1"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;左尻　フラグあげさげ
[if exp="f.H_Left_Siri == 0"]
[eval exp="f.H_Left_Siri=1"]
[else]
[eval exp="f.H_Left_Siri=0"]
[endif]
[_tb_end_tyrano_code]

[call  storage="__Main_Night_Option.ks"  target="*__左尻カットに係る全消し"  ]
[jump  storage="__Main_Night_Back_H.ks"  target="*__キャラ表示処理"  ]
*__右尻クリック

[call  storage="__Main_Night_Option.ks"  target="*__ランダムセリフ正上位"  ]
[chara_part  name="H_バック"  time="0"  表情="バック表情03.png"  ]
[call  storage="__Main_Night_Option.ks"  target="*__お触り単発弱"  ]
[tb_start_tyrano_code]
;回数カウント
[eval exp="f.Kaihatu_Count[2].kazu += 1"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;右尻
[if exp="f.H_Right_Siri == 0"]
[eval exp="f.H_Right_Siri=1"]
[eval exp="f.H_Kuchi_Touch=0"]
[eval exp="f.H_Tool_Flag=1000"]
[else]
[eval exp="f.H_Right_Siri=0"]
[endif]
[_tb_end_tyrano_code]

[call  storage="__Main_Night_Option.ks"  target="*__腕を使うカット全消し"  ]
[jump  storage="__Main_Night_Back_H.ks"  target="*__キャラ表示処理"  ]
*__パンツクリック

[call  storage="__Main_Night_Option.ks"  target="*__ランダムセリフ正上位"  ]
[chara_part  name="H_バック"  time="0"  表情="バック表情05.png"  ]
[call  storage="__Main_Night_Option.ks"  target="*__お触り単発強"  ]
[tb_start_tyrano_code]
;回数カウント
[eval exp="f.Kaihatu_Count[3].kazu += 1"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;股間 パンツないときは二段階
[if exp="f.H_Asoko_Touch== 0"]
[eval exp="f.H_Asoko_Touch=1"]
[eval exp="f.H_Senaka_Touch=0"]

[elsif exp="f.H_Asoko_Touch== 1"]
[eval exp="f.H_Asoko_Touch=2" cond="f.H_Pantu_Chakui >=1"]
[eval exp="f.H_Asoko_Touch=0" cond="f.H_Pantu_Chakui ==0"]
[eval exp="f.H_Senaka_Touch=0"]

[else]
[eval exp="f.H_Asoko_Touch=0"]
[eval exp="f.H_Senaka_Touch=0"]
[endif]
[_tb_end_tyrano_code]

[call  storage="__Main_Night_Option.ks"  target="*__舌を使うカット全消し"  ]
[jump  storage="__Main_Night_Back_H.ks"  target="*__キャラ表示処理"  ]
*__ロータークリック

[call  storage="__Main_Night_Option.ks"  target="*__道具セリフ正上位"  ]
[chara_part  name="H_バック"  time="0"  表情="バック表情05.png"  wait="true"  ]
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
;右手競合の頭　フラグキャンセル
[if exp="f.H_Tool_Flag > 1000"]
[eval exp="f.H_Kuchi_Touch=0"]
[eval exp="f.H_Right_Siri=0"]
[endif]
[_tb_end_tyrano_code]

[call  storage="__Main_Night_Option.ks"  target="*__腕を使うカット全消し"  ]
[jump  storage="__Main_Night_Back_H.ks"  target="*__キャラ表示処理"  ]
*__バイブクリック

[call  storage="__Main_Night_Option.ks"  target="*__道具セリフ正上位"  ]
[chara_part  name="H_バック"  time="0"  表情="バック表情06.png"  ]
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
;右手競合の頭　フラグキャンセル
[if exp="f.H_Tool_Flag > 1000"]
[eval exp="f.H_Kuchi_Touch=0"]
[eval exp="f.H_Right_Siri=0"]
[endif]
[_tb_end_tyrano_code]

[call  storage="__Main_Night_Option.ks"  target="*__腕を使うカット全消し"  ]
[jump  storage="__Main_Night_Back_H.ks"  target="*__キャラ表示処理"  ]
*__アナルクリック

[call  storage="__Main_Night_Option.ks"  target="*__道具セリフ正上位"  ]
[chara_part  name="H_バック"  time="0"  表情="バック表情07.png"  ]
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
;右手競合の頭　フラグキャンセル
[if exp="f.H_Tool_Flag > 1000"]
[eval exp="f.H_Kuchi_Touch=0"]
[eval exp="f.H_Right_Siri=0"]
[endif]
[_tb_end_tyrano_code]

[call  storage="__Main_Night_Option.ks"  target="*__腕を使うカット全消し"  ]
[jump  storage="__Main_Night_Back_H.ks"  target="*__キャラ表示処理"  ]
*__継続して触る処理

[call  storage="__Main_Night_Option.ks"  target="*__お触り単発弱"  ]
[call  storage="__Main_Night_Option.ks"  target="*__ランダムセリフ正上位"  ]
*__キャラ表示処理

[tb_eval  exp="f.H_Kenja_Count+=1"  name="H_Kenja_Count"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
*__射精後戻り先

[call  storage="__Main_Night_Back_H.ks"  target="*__道具素体変更"  ]
[call  storage="__Main_Night_Option.ks"  target="*__お触りフラグリセット後背位"  ]
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

[call  storage="__Main_Night_Back_H.ks"  target="*__お触りカット表示"  ]
[call  storage="__Main_Night_Back_H.ks"  target="*__汗表示"  ]
[mask_off  time="200"  effect="fadeOut"  ]
[tb_start_tyrano_code]
[clearfix]
[_tb_end_tyrano_code]

[call  storage="Tre_Bar.ks"  target="*__HGOODバー増処理__"  ]
[jump  storage="__Main_Night_Back_H.ks"  target="*__標準戻り先"  ]
*__触りを辞める

[call  storage="__Main_Night_Option.ks"  target="*__お触りカットフラグ全消し"  ]
[jump  storage="__Main_Night_Back_H.ks"  target="*__標準戻り先"  ]
[reset_camera  time="0"  wait="true"  ]
*__挿入

[mask  time="300"  effect="fadeIn"  color="0x000000"  ]
[chara_part  name="H_バック"  time="0"  表情="none"  wait="true"  ]
[stopse  time="1000"  buf="0"  ]
[stopse  time="1000"  buf="1"  ]
[stopse  time="1000"  buf="2"  ]
[stopse  time="1000"  buf="3"  ]
[tb_eval  exp="f.H_Sex_Speed=0"  name="H_Sex_Speed"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.H_Sex_Speed=1"  name="H_Sex_Speed"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_start_tyrano_code]
;汁だけ消去
[free layer=2 name="H_Seijoui_Ase" time="0"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[cm]
[clearfix]
[clearstack]
[wait_cancel]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;回数カウント
[eval exp="f.Kaihatu_Count[3].kazu += 1" cond="f.H_Sex_Anal == 0"]
[eval exp="f.Kaihatu_Count[4].kazu += 1" cond="f.H_Sex_Anal == 1"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;挿入前待機絵　上着で条件分岐【画像変更】
[chara_mod  name="H_バック"  time="0"  cross="false"  storage="chara/11/バックアニメ00_0.png" cond="f.H_Ue_Chakui  == 1 && (f.H_Danmen_Flag ==0 || f.H_Condom_On == 1 || f.H_Sex_Anal == 1)"]
[chara_mod  name="H_バック"  time="0"  cross="false"  storage="chara/11/バックアニメ10_0.png" cond="f.H_Ue_Chakui  == 1 && f.H_Danmen_Flag ==1 && f.H_Condom_On == 0 && f.H_Sex_Anal == 0 && f.H_DanmenNakadasi_Count ==0"]
[chara_mod  name="H_バック"  time="0"  cross="false"  storage="chara/11/バックアニメ10_01.png" cond="f.H_Ue_Chakui  == 1 && f.H_Danmen_Flag ==1 && f.H_Condom_On == 0 && f.H_Sex_Anal == 0 && f.H_DanmenNakadasi_Count ==1"]
[chara_mod  name="H_バック"  time="0"  cross="false"  storage="chara/11/バックアニメ10_02.png" cond="f.H_Ue_Chakui  == 1 && f.H_Danmen_Flag ==1 && f.H_Condom_On == 0 && f.H_Sex_Anal == 0 && f.H_DanmenNakadasi_Count >=2"]

[chara_mod  name="H_バック"  time="0"  cross="false"  storage="chara/11/バックアニメ20_0.png" cond="f.H_Ue_Chakui  >= 2 && (f.H_Danmen_Flag ==0 || f.H_Condom_On == 1 || f.H_Sex_Anal == 1)"]
[chara_mod  name="H_バック"  time="0"  cross="false"  storage="chara/11/バックアニメ30_0.png" cond="f.H_Ue_Chakui  >= 2 && f.H_Danmen_Flag ==1 && f.H_Condom_On == 0 && f.H_Sex_Anal == 0 && f.H_DanmenNakadasi_Count ==0"]
[chara_mod  name="H_バック"  time="0"  cross="false"  storage="chara/11/バックアニメ30_01.png" cond="f.H_Ue_Chakui  >= 2 && f.H_Danmen_Flag ==1 && f.H_Condom_On == 0 && f.H_Sex_Anal == 0 && f.H_DanmenNakadasi_Count ==1"]
[chara_mod  name="H_バック"  time="0"  cross="false"  storage="chara/11/バックアニメ30_02.png" cond="f.H_Ue_Chakui  >= 2 && f.H_Danmen_Flag ==1 && f.H_Condom_On == 0 && f.H_Sex_Anal == 0 && f.H_DanmenNakadasi_Count >=2"]

[_tb_end_tyrano_code]

[call  storage="__Main_Night_Back_H.ks"  target="*__セリフと効果音Y座標後背位"  ]
[call  storage="__Main_Night_Option.ks"  target="*__カット消しバー再表示"  ]
[call  storage="__Main_Night_Option.ks"  target="*__お触りカットフラグ全消し"  ]
[call  storage="__Main_Night_Option.ks"  target="*__Backバックアイコン表示"  ]
[call  storage="__Main_Night_Back_H.ks"  target="*__ティッシュ表示処理"  ]
[mask_off  time="300"  effect="fadeOut"  ]
[call  storage="__Main_Night_Option.ks"  target="*__挿入時セリフ"  ]
[tb_start_tyrano_code]
;挿入　上着キャラ【画像変更】
[if exp="f.H_Sex_Anal ==0"]
[chara_mod  name="H_バック"  time="0"  cross="false"  storage="chara/11/バックアニメ挿入01.png" cond="f.H_Ue_Chakui  == 1 && f.H_Danmen_Flag ==0"]
[chara_mod  name="H_バック"  time="0"  cross="false"  storage="chara/11/バックアニメ挿入01.png" cond="f.H_Ue_Chakui  == 1 && f.H_Danmen_Flag ==1 && f.H_Condom_On == 1"]
[chara_mod  name="H_バック"  time="0"  cross="false"  storage="chara/11/バックアニメ挿入11.png" cond="f.H_Ue_Chakui  == 1 && f.H_Danmen_Flag ==1 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count ==0"]
[chara_mod  name="H_バック"  time="0"  cross="false"  storage="chara/11/バックアニメ挿入12.png" cond="f.H_Ue_Chakui  == 1 && f.H_Danmen_Flag ==1 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count ==1"]
[chara_mod  name="H_バック"  time="0"  cross="false"  storage="chara/11/バックアニメ挿入13.png" cond="f.H_Ue_Chakui  == 1 && f.H_Danmen_Flag ==1 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count >=2"]

[chara_mod  name="H_バック"  time="0"  cross="false"  storage="chara/11/バックアニメ挿入21.png" cond="f.H_Ue_Chakui  >= 2 && f.H_Danmen_Flag ==0"]
[chara_mod  name="H_バック"  time="0"  cross="false"  storage="chara/11/バックアニメ挿入21.png" cond="f.H_Ue_Chakui  >= 2 && f.H_Danmen_Flag ==1 && f.H_Condom_On == 1"]
[chara_mod  name="H_バック"  time="0"  cross="false"  storage="chara/11/バックアニメ挿入31.png" cond="f.H_Ue_Chakui  >= 2 && f.H_Danmen_Flag ==1 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count ==0"]
[chara_mod  name="H_バック"  time="0"  cross="false"  storage="chara/11/バックアニメ挿入32.png" cond="f.H_Ue_Chakui  >= 2 && f.H_Danmen_Flag ==1 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count ==1"]
[chara_mod  name="H_バック"  time="0"  cross="false"  storage="chara/11/バックアニメ挿入33.png" cond="f.H_Ue_Chakui  >= 2 && f.H_Danmen_Flag ==1 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count >=2"]

[elsif exp="f.H_Sex_Anal ==1"]
[chara_mod  name="H_バック"  time="0"  cross="false"  storage="chara/11/バックアニメ挿入41.png" cond="f.H_Ue_Chakui  == 1"]
[chara_mod  name="H_バック"  time="0"  cross="false"  storage="chara/11/バックアニメ挿入51.png" cond="f.H_Ue_Chakui  >= 2"]
[endif]
[_tb_end_tyrano_code]

[playse  volume="100"  time="1000"  buf="0"  storage="挿入音/挿入音後背位.mp3"  ]
[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/絶頂声のみ02.mp3"  ]
[wait  time="2000"  ]
[call  storage="__Main_Night_Option.ks"  target="*__挿入時セリフ"  ]
*__動きを止める

[call  storage="__Main_Night_Back_H.ks"  target="*__セリフと効果音Y座標後背位"  ]
[tb_start_tyrano_code]
;ティッシュ消去
[free layer=1 name="H_Seijoui_tyissyu" time="0" cond="(f.H_Sex_Speed >=4 && f.H_Sex_Speed <= 7) || (f.H_Sex_Speed >=14 && f.H_Sex_Speed <= 17)"]
[call target="*__ティッシュ表示処理" cond="(f.H_Sex_Speed >=0 && f.H_Sex_Speed <= 3) || (f.H_Sex_Speed >=10 && f.H_Sex_Speed <= 13)"]

[_tb_end_tyrano_code]

[stopse  time="1000"  buf="0"  ]
[stopse  time="1000"  buf="1"  ]
[stopse  time="1000"  buf="2"  ]
[playse  volume="100"  time="1000"  buf="3"  loop="true"  storage="喘ぎ声/02喘ぎ声(前)02.mp3"  ]
[tb_start_tyrano_code]
;止める静止絵表示　条件分岐　Sex_Speedによって

[switch exp="f.H_Sex_Speed"]
[case is=4]
[chara_mod  name="H_バックプレス"  time="0"  cross="false"  storage="chara/38/バックプレス01.png" cond="f.H_Danmen_Flag == 0"]
[chara_mod  name="H_バックプレス"  time="0"  cross="false"  storage="chara/38/バックプレス01.png" cond="f.H_Danmen_Flag == 1 && f.H_Condom_On == 1"]
[chara_mod  name="H_バックプレス"  time="0"  cross="false"  storage="chara/38/バックプレス11.png" cond="f.H_Danmen_Flag == 1 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count ==0"]
[chara_mod  name="H_バックプレス"  time="0"  cross="false"  storage="chara/38/バックプレス14.png" cond="f.H_Danmen_Flag == 1 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count ==1"]
[chara_mod  name="H_バックプレス"  time="0"  cross="false"  storage="chara/38/バックプレス17.png" cond="f.H_Danmen_Flag == 1 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count >=2"]

[case is=5]
[chara_mod  name="H_バックプレス"  time="0"  cross="false"  storage="chara/38/バックプレス01.png" cond="f.H_Danmen_Flag == 0"]
[chara_mod  name="H_バックプレス"  time="0"  cross="false"  storage="chara/38/バックプレス01.png" cond="f.H_Danmen_Flag == 1 && f.H_Condom_On == 1"]
[chara_mod  name="H_バックプレス"  time="0"  cross="false"  storage="chara/38/バックプレス11.png" cond="f.H_Danmen_Flag == 1 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count ==0"]
[chara_mod  name="H_バックプレス"  time="0"  cross="false"  storage="chara/38/バックプレス14.png" cond="f.H_Danmen_Flag == 1 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count ==1"]
[chara_mod  name="H_バックプレス"  time="0"  cross="false"  storage="chara/38/バックプレス17.png" cond="f.H_Danmen_Flag == 1 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count >=2"]

[case is=6]
[chara_mod  name="H_バックプレス"  time="0"  cross="false"  storage="chara/38/バックプレス02.png" cond="f.H_Danmen_Flag == 0"]
[chara_mod  name="H_バックプレス"  time="0"  cross="false"  storage="chara/38/バックプレス02.png" cond="f.H_Danmen_Flag == 1 && f.H_Condom_On == 1"]
[chara_mod  name="H_バックプレス"  time="0"  cross="false"  storage="chara/38/バックプレス12.png" cond="f.H_Danmen_Flag == 1 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count ==0"]
[chara_mod  name="H_バックプレス"  time="0"  cross="false"  storage="chara/38/バックプレス15.png" cond="f.H_Danmen_Flag == 1 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count ==1"]
[chara_mod  name="H_バックプレス"  time="0"  cross="false"  storage="chara/38/バックプレス18.png" cond="f.H_Danmen_Flag == 1 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count >=2"]

[case is=7]
[chara_hide_all  time="0"  wait="false"  ]
[chara_show  name="H_バックプレス"  time="0"  wait="false"  storage="chara/38/バックプレス01.png"  width="760"  height="660"  left="160"  top="60" cond="f.H_Danmen_Flag == 0 && f.H_Ue_Chakui ==1" ]
[chara_show  name="H_バックプレス"  time="0"  wait="false"  storage="chara/38/バックプレス01.png"  width="760"  height="660"  left="160"  top="60" cond="f.H_Danmen_Flag == 1 && f.H_Ue_Chakui ==1 && f.H_Condom_On == 1"]
[chara_show  name="H_バックプレス"  time="0"  wait="false"  storage="chara/38/バックプレス11.png"  width="760"  height="660"  left="160"  top="60" cond="f.H_Danmen_Flag == 1 && f.H_Ue_Chakui ==1 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count ==0"]
[chara_show  name="H_バックプレス"  time="0"  wait="false"  storage="chara/38/バックプレス14.png"  width="760"  height="660"  left="160"  top="60" cond="f.H_Danmen_Flag == 1 && f.H_Ue_Chakui ==1 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count ==1"]
[chara_show  name="H_バックプレス"  time="0"  wait="false"  storage="chara/38/バックプレス17.png"  width="760"  height="660"  left="160"  top="60" cond="f.H_Danmen_Flag == 1 && f.H_Ue_Chakui ==1 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count >=2"]

[chara_show  name="H_バックプレス"  time="0"  wait="false"  storage="chara/38/バックプレス21.png"  width="760"  height="660"  left="160"  top="60" cond="f.H_Danmen_Flag == 0 && f.H_Ue_Chakui >=2" ]
[chara_show  name="H_バックプレス"  time="0"  wait="false"  storage="chara/38/バックプレス21.png"  width="760"  height="660"  left="160"  top="60" cond="f.H_Danmen_Flag == 1 && f.H_Ue_Chakui >=2 && f.H_Condom_On == 1" ]
[chara_show  name="H_バックプレス"  time="0"  wait="false"  storage="chara/38/バックプレス31.png"  width="760"  height="660"  left="160"  top="60" cond="f.H_Danmen_Flag == 1 && f.H_Ue_Chakui >=2 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count ==0" ]
[chara_show  name="H_バックプレス"  time="0"  wait="false"  storage="chara/38/バックプレス34.png"  width="760"  height="660"  left="160"  top="60" cond="f.H_Danmen_Flag == 1 && f.H_Ue_Chakui >=2 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count ==1" ]
[chara_show  name="H_バックプレス"  time="0"  wait="false"  storage="chara/38/バックプレス37.png"  width="760"  height="660"  left="160"  top="60" cond="f.H_Danmen_Flag == 1 && f.H_Ue_Chakui >=2 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count >=2" ]

[case is=14]
[chara_mod  name="H_バックプレス"  time="0"  cross="false"  storage="chara/38/バックプレス21.png" cond="f.H_Danmen_Flag == 0"]
[chara_mod  name="H_バックプレス"  time="0"  cross="false"  storage="chara/38/バックプレス21.png" cond="f.H_Danmen_Flag == 1 && f.H_Condom_On == 1"]
[chara_mod  name="H_バックプレス"  time="0"  cross="false"  storage="chara/38/バックプレス31.png" cond="f.H_Danmen_Flag == 1 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count ==0"]
[chara_mod  name="H_バックプレス"  time="0"  cross="false"  storage="chara/38/バックプレス34.png" cond="f.H_Danmen_Flag == 1 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count ==1"]
[chara_mod  name="H_バックプレス"  time="0"  cross="false"  storage="chara/38/バックプレス37.png" cond="f.H_Danmen_Flag == 1 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count >=2"]

[case is=15]
[chara_mod  name="H_バックプレス"  time="0"  cross="false"  storage="chara/38/バックプレス21.png" cond="f.H_Danmen_Flag == 0"]
[chara_mod  name="H_バックプレス"  time="0"  cross="false"  storage="chara/38/バックプレス21.png" cond="f.H_Danmen_Flag == 1 && f.H_Condom_On == 1"]
[chara_mod  name="H_バックプレス"  time="0"  cross="false"  storage="chara/38/バックプレス31.png" cond="f.H_Danmen_Flag == 1 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count ==0"]
[chara_mod  name="H_バックプレス"  time="0"  cross="false"  storage="chara/38/バックプレス34.png" cond="f.H_Danmen_Flag == 1 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count ==1"]
[chara_mod  name="H_バックプレス"  time="0"  cross="false"  storage="chara/38/バックプレス37.png" cond="f.H_Danmen_Flag == 1 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count >=2"]

[case is=16]
[chara_mod  name="H_バックプレス"  time="0"  cross="false"  storage="chara/38/バックプレス22.png" cond="f.H_Danmen_Flag == 0"]
[chara_mod  name="H_バックプレス"  time="0"  cross="false"  storage="chara/38/バックプレス22.png" cond="f.H_Danmen_Flag == 1 && f.H_Condom_On == 1"]
[chara_mod  name="H_バックプレス"  time="0"  cross="false"  storage="chara/38/バックプレス32.png" cond="f.H_Danmen_Flag == 1 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count ==0"]
[chara_mod  name="H_バックプレス"  time="0"  cross="false"  storage="chara/38/バックプレス35.png" cond="f.H_Danmen_Flag == 1 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count ==1"]
[chara_mod  name="H_バックプレス"  time="0"  cross="false"  storage="chara/38/バックプレス38.png" cond="f.H_Danmen_Flag == 1 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count >=2"]

[case is=17]
[chara_hide_all  time="0"  wait="false"  ]
[chara_show  name="H_バックプレス"  time="0"  wait="false"  storage="chara/38/バックプレス21.png"  width="760"  height="660"  left="160"  top="60" cond="f.H_Danmen_Flag == 0" ]
[chara_show  name="H_バックプレス"  time="0"  wait="false"  storage="chara/38/バックプレス21.png"  width="760"  height="660"  left="160"  top="60" cond="f.H_Danmen_Flag == 1 && f.H_Condom_On == 1" ]
[chara_show  name="H_バックプレス"  time="0"  wait="false"  storage="chara/38/バックプレス31.png"  width="760"  height="660"  left="160"  top="60" cond="f.H_Danmen_Flag == 1 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count ==0" ]
[chara_show  name="H_バックプレス"  time="0"  wait="false"  storage="chara/38/バックプレス34.png"  width="760"  height="660"  left="160"  top="60" cond="f.H_Danmen_Flag == 1 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count ==1" ]
[chara_show  name="H_バックプレス"  time="0"  wait="false"  storage="chara/38/バックプレス37.png"  width="760"  height="660"  left="160"  top="60" cond="f.H_Danmen_Flag == 1 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count >=2" ]

;バック
[case is=0]
[chara_hide_all  time="0"  wait="false"  ]
[chara_show  name="H_バック"  time="0"  wait="false" cross="false" storage="chara/11/バックアニメ00.png" cond="f.H_Ue_Chakui == 1 && f.H_Danmen_Flag == 0 && f.H_Sex_Anal ==0"  width="760"  height="660"  left="160"  top="60"]
[chara_show  name="H_バック"  time="0"  wait="false" cross="false" storage="chara/11/バックアニメ10.png" cond="f.H_Ue_Chakui == 1 && f.H_Danmen_Flag == 1 && f.H_Sex_Anal ==0 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count ==0"  width="760"  height="660"  left="160"  top="60"]
[chara_show  name="H_バック"  time="0"  wait="false" cross="false" storage="chara/11/バックアニメ10_11.png" cond="f.H_Ue_Chakui == 1 && f.H_Danmen_Flag == 1 && f.H_Sex_Anal ==0 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count ==1"  width="760"  height="660"  left="160"  top="60"]
[chara_show  name="H_バック"  time="0"  wait="false" cross="false" storage="chara/11/バックアニメ10_12.png" cond="f.H_Ue_Chakui == 1 && f.H_Danmen_Flag == 1 && f.H_Sex_Anal ==0 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count >=2"  width="760"  height="660"  left="160"  top="60"]

[chara_show  name="H_バック"  time="0"  wait="false" cross="false" storage="chara/11/バックアニメ20.png" cond="f.H_Ue_Chakui >= 2 && f.H_Danmen_Flag == 0 && f.H_Sex_Anal ==0"  width="760"  height="660"  left="160"  top="60"]
[chara_show  name="H_バック"  time="0"  wait="false" cross="false" storage="chara/11/バックアニメ30.png" cond="f.H_Ue_Chakui >= 2 && f.H_Danmen_Flag == 1 && f.H_Sex_Anal ==0 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count ==0"  width="760"  height="660"  left="160"  top="60"]
[chara_show  name="H_バック"  time="0"  wait="false" cross="false" storage="chara/11/バックアニメ30_11.png" cond="f.H_Ue_Chakui >= 2 && f.H_Danmen_Flag == 1 && f.H_Sex_Anal ==0 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count ==1"  width="760"  height="660"  left="160"  top="60"]
[chara_show  name="H_バック"  time="0"  wait="false" cross="false" storage="chara/11/バックアニメ30_12.png" cond="f.H_Ue_Chakui >= 2 && f.H_Danmen_Flag == 1 && f.H_Sex_Anal ==0 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count >=2"  width="760"  height="660"  left="160"  top="60"]

[chara_show  name="H_バック"  time="0"  wait="false"  storage="chara/11/バックアニメ40.png" cond="f.H_Ue_Chakui == 1 && (f.H_Sex_Anal ==1 || f.H_Condom_On == 1)"  width="760"  height="660"  left="160"  top="60"]
[chara_show  name="H_バック"  time="0"  wait="false"  storage="chara/11/バックアニメ50.png" cond="f.H_Ue_Chakui >= 2 && (f.H_Sex_Anal ==1 || f.H_Condom_On == 1)"  width="760"  height="660"  left="160"  top="60"]

;バック継続時
[case]
[chara_mod  name="H_バック"  time="0"  wait="false" cross="false" storage="chara/11/バックアニメ00.png" cond="f.H_Ue_Chakui == 1 && f.H_Danmen_Flag == 0 && f.H_Sex_Anal ==0"  width="760"  height="660"  left="160"  top="60"]
[chara_mod  name="H_バック"  time="0"  wait="false" cross="false" storage="chara/11/バックアニメ10.png" cond="f.H_Ue_Chakui == 1 && f.H_Danmen_Flag == 1 && f.H_Sex_Anal ==0 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count ==0"  width="760"  height="660"  left="160"  top="60"]
[chara_mod  name="H_バック"  time="0"  wait="false" cross="false" storage="chara/11/バックアニメ10_11.png" cond="f.H_Ue_Chakui == 1 && f.H_Danmen_Flag == 1 && f.H_Sex_Anal ==0 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count ==1"  width="760"  height="660"  left="160"  top="60"]
[chara_mod  name="H_バック"  time="0"  wait="false" cross="false" storage="chara/11/バックアニメ10_12.png" cond="f.H_Ue_Chakui == 1 && f.H_Danmen_Flag == 1 && f.H_Sex_Anal ==0 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count >=2"  width="760"  height="660"  left="160"  top="60"]

[chara_mod  name="H_バック"  time="0"  wait="false" cross="false" storage="chara/11/バックアニメ20.png" cond="f.H_Ue_Chakui >= 2 && f.H_Danmen_Flag == 0 && f.H_Sex_Anal ==0"  width="760"  height="660"  left="160"  top="60"]
[chara_mod  name="H_バック"  time="0"  wait="false" cross="false" storage="chara/11/バックアニメ30.png" cond="f.H_Ue_Chakui >= 2 && f.H_Danmen_Flag == 1 && f.H_Sex_Anal ==0 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count ==0"  width="760"  height="660"  left="160"  top="60"]
[chara_mod  name="H_バック"  time="0"  wait="false" cross="false" storage="chara/11/バックアニメ30_11.png" cond="f.H_Ue_Chakui >= 2 && f.H_Danmen_Flag == 1 && f.H_Sex_Anal ==0 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count ==1"  width="760"  height="660"  left="160"  top="60"]
[chara_mod  name="H_バック"  time="0"  wait="false" cross="false" storage="chara/11/バックアニメ30_12.png" cond="f.H_Ue_Chakui >= 2 && f.H_Danmen_Flag == 1 && f.H_Sex_Anal ==0 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count >=2"  width="760"  height="660"  left="160"  top="60"]

[chara_mod  name="H_バック"  time="0"  wait="false"  storage="chara/11/バックアニメ40.png" cond="f.H_Ue_Chakui == 1 && (f.H_Sex_Anal ==1 || f.H_Condom_On == 1)"  width="760"  height="660"  left="160"  top="60"]
[chara_mod  name="H_バック"  time="0"  wait="false"  storage="chara/11/バックアニメ50.png" cond="f.H_Ue_Chakui >= 2 && (f.H_Sex_Anal ==1 || f.H_Condom_On == 1)"  width="760"  height="660"  left="160"  top="60"]

[endswitch]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[clearfix]
[clearstack]
[wait_cancel]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;右選択肢　スピードで分岐
[call target = "*__挿入右選択肢プレス" cond="f.H_Sex_Speed == 4 || f.H_Sex_Speed == 5 || f.H_Sex_Speed == 6 || f.H_Sex_Speed == 7 || f.H_Sex_Speed == 14 || f.H_Sex_Speed == 15 || f.H_Sex_Speed == 16 || f.H_Sex_Speed == 17"]
[call target="*__挿入右選択肢" cond="f.H_Sex_Speed == 0 || f.H_Sex_Speed == 1 || f.H_Sex_Speed == 2 || f.H_Sex_Speed == 3 || f.H_Sex_Speed == 10 || f.H_Sex_Speed == 11 || f.H_Sex_Speed == 12 || f.H_Sex_Speed == 13"]
[_tb_end_tyrano_code]

[call  storage="__Main_Night_Option.ks"  target="*__Backバックアイコン表示"  ]
[s  ]
*__挿入をやめる

[tb_start_tyrano_code]
[clearstack]
[wait_cancel]
[_tb_end_tyrano_code]

[call  storage="__Main_Night_Option.ks"  target="*__Backバックアイコン表示"  ]
[stopse  time="1000"  buf="0"  ]
[stopse  time="1000"  buf="1"  ]
[stopse  time="1000"  buf="2"  ]
[stopse  time="1000"  buf="3"  ]
[jump  storage="__Main_Night_Back_H.ks"  target="*__体位変更スタート"  ]
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
[eval exp="f.H_Sex_Speed += 10"]
[endif]
[_tb_end_tyrano_code]

[call  storage="__Main_Night_Back_H.ks"  target="*__キャラのピストン速度変更"  ]
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
[jump  storage="__Main_Night_Back_H.ks"  target="*__射精感UP"  cond="f.H_Syaseikan<100"  ]
*__絶頂移行

[jump  storage="__Main_Night_Back_H.ks"  target="*__射精_処理"  cond="f.H_Syaseikan>99"  ]
[playse  volume="100"  time="1000"  buf="1"  storage="えっち系/射精音02.mp3"  ]
[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/絶頂声のみ04.mp3"  ]
[call  storage="__Main_Night_Back_H.ks"  target="*__絶頂処理挿入時"  ]
[call  storage="__Main_Night_Option.ks"  target="*__絶頂処理"  cond="f.H_Good>219"  ]
[tb_start_tyrano_code]
;絶頂回数プラスカウント
[eval exp="f.Sex_Count[5].count += 1"]
[_tb_end_tyrano_code]

[wait  time="4000"  ]
[call  storage="__Main_Night_Back_H.ks"  target="*__キャラのピストン速度変更"  ]
[jump  storage="__Main_Night_Back_H.ks"  target="*__絶頂したときのループ処理"  ]
[s  ]
*__射精_処理

[tb_start_tyrano_code]
[clearfix]
[_tb_end_tyrano_code]

[call  storage="__Main_Night_Option.ks"  target="*__Backバックアイコン表示"  ]
[tb_start_tyrano_code]
;右選択肢　スピードで分岐
[call target = "*__挿入右選択肢プレス" cond="f.H_Sex_Speed == 4 || f.H_Sex_Speed == 5 || f.H_Sex_Speed == 6 || f.H_Sex_Speed == 7 || f.H_Sex_Speed == 14 || f.H_Sex_Speed == 15 || f.H_Sex_Speed == 16 || f.H_Sex_Speed == 17"]
[call target="*__挿入右選択肢" cond="f.H_Sex_Speed == 0 || f.H_Sex_Speed == 1 || f.H_Sex_Speed == 2 || f.H_Sex_Speed == 3 || f.H_Sex_Speed == 10 || f.H_Sex_Speed == 11 || f.H_Sex_Speed == 12 || f.H_Sex_Speed == 13"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;右側の選択肢　fix仕様なので注意
[if exp="f.H_Syaseikan >=100 && f.H_Hold_Flag == 0""]
[glink  color="btn_05_black"  size="20" storage="__Main_Night_Back_H.ks" target="*__射精中"  text="Cum inside"  x="1030"  y="460" fix="true" width=200]
[glink  color="btn_05_black"  size="20" storage="__Main_Night_Back_H.ks" target="*__射精外"  text="Cum outside"  x="1030"  y="520" fix="true" width=200]
[endif]
[_tb_end_tyrano_code]

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
[jump  storage="__Main_Night_Back_H.ks"  target="*__射精感120まで"  cond="f.H_Syaseikan<120"  ]
*__絶頂移行100

[jump  storage="__Main_Night_Back_H.ks"  target="*__射精中"  cond="f.H_Syaseikan>119"  ]
[playse  volume="100"  time="1000"  buf="1"  storage="えっち系/射精音02.mp3"  ]
[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/絶頂声のみ04.mp3"  ]
[call  storage="__Main_Night_Back_H.ks"  target="*__絶頂処理挿入時"  ]
[call  storage="__Main_Night_Option.ks"  target="*__絶頂処理"  cond="f.H_Good>219"  ]
[tb_start_tyrano_code]
;絶頂回数プラスカウント
[eval exp="f.Sex_Count[5].count += 1"]
[_tb_end_tyrano_code]

[wait  time="4000"  ]
[call  storage="__Main_Night_Back_H.ks"  target="*__キャラのピストン速度変更"  ]
[jump  storage="__Main_Night_Back_H.ks"  target="*__射精_処理"  cond="f.H_Syaseikan<120"  ]
[s  ]
*__射精中

[tb_start_tyrano_code]
;中だし回数プラスカウント
[if exp="f.H_Sex_Anal ==0 && f.H_Condom_On ==0"]
[eval exp="f.Sex_Count[3].bestcount += 1"]
[eval exp="f.Sex_Count[4].count += 1"]
[eval exp="f.H_DanmenNakadasi_Count += 1"]
[eval exp="f.H_After_CG = 5"]
[elsif exp="f.H_Sex_Anal ==1"]
[eval exp="f.Sex_Count[2].bestcount += 1"]
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
[call  storage="__Main_Night_Back_H.ks"  target="*__射精効果音"  ]
[playse  volume="50"  time="1000"  buf="1"  storage="射精音/射精音後背位とプレス.mp3"  ]
[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/絶頂声のみ02.mp3"  ]
[delete_individual_image  layer="1"  name="effect"  time="0"  wait="false"  ]
[tb_start_tyrano_code]
;射精　上着キャラ【画像変更】
;バックプレス
[if exp="f.H_Sex_Speed >=4 &&  f.H_Sex_Speed <=7"]
[chara_mod  name="H_バックプレス"  time="0"  cross="false"  storage="chara/38/バックプレス射精02.png" cond="f.H_Danmen_Flag == 0"]
[chara_mod  name="H_バックプレス"  time="0"  cross="false"  storage="chara/38/バックプレス射精12.png" cond="f.H_Danmen_Flag == 1 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count == 1"]
[chara_mod  name="H_バックプレス"  time="0"  cross="false"  storage="chara/38/バックプレス射精15.png" cond="f.H_Danmen_Flag == 1 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count == 2"]
[chara_mod  name="H_バックプレス"  time="0"  cross="false"  storage="chara/38/バックプレス射精18.png" cond="f.H_Danmen_Flag == 1 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count >= 3"]

[chara_mod  name="H_バックプレス"  time="0"  cross="false"  storage="chara/38/バックプレス射精82.png" cond="f.H_Condom_On == 1"]

[elsif exp="f.H_Sex_Speed >=14 &&  f.H_Sex_Speed <=17"]
[chara_mod  name="H_バックプレス"  time="0"  cross="false"  storage="chara/38/バックプレス射精22.png" cond="f.H_Danmen_Flag == 0"]
[chara_mod  name="H_バックプレス"  time="0"  cross="false"  storage="chara/38/バックプレス射精32.png" cond="f.H_Danmen_Flag == 1 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count == 1"]
[chara_mod  name="H_バックプレス"  time="0"  cross="false"  storage="chara/38/バックプレス射精35.png" cond="f.H_Danmen_Flag == 1 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count == 2"]
[chara_mod  name="H_バックプレス"  time="0"  cross="false"  storage="chara/38/バックプレス射精38.png" cond="f.H_Danmen_Flag == 1 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count >= 3"]

[chara_mod  name="H_バックプレス"  time="0"  cross="false"  storage="chara/38/バックプレス射精92.png" cond="f.H_Condom_On == 1"]

[else]
[if exp="f.H_Sex_Anal ==0"]
[chara_mod  name="H_バック"  time="0"  cross="false"  storage="chara/11/バックアニメ射精01.png" cond="f.H_Ue_Chakui == 1 && f.H_Danmen_Flag == 0 && f.H_Condom_On == 0"]
[chara_mod  name="H_バック"  time="0"  cross="false"  storage="chara/11/バックアニメ射精11.png" cond="f.H_Ue_Chakui == 1 && f.H_Danmen_Flag == 1 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count == 1"]
[chara_mod  name="H_バック"  time="0"  cross="false"  storage="chara/11/バックアニメ射精12.png" cond="f.H_Ue_Chakui == 1 && f.H_Danmen_Flag == 1 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count == 2"]
[chara_mod  name="H_バック"  time="0"  cross="false"  storage="chara/11/バックアニメ射精13.png" cond="f.H_Ue_Chakui == 1 && f.H_Danmen_Flag == 1 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count >= 3"]

[chara_mod  name="H_バック"  time="0"  cross="false"  storage="chara/11/バックアニメ射精61.png" cond="f.H_Ue_Chakui == 1 && f.H_Condom_On == 1"]

[chara_mod  name="H_バック"  time="0"  cross="false"  storage="chara/11/バックアニメ射精21.png" cond="f.H_Ue_Chakui >= 2 && f.H_Danmen_Flag == 0 && f.H_Condom_On == 0"]
[chara_mod  name="H_バック"  time="0"  cross="false"  storage="chara/11/バックアニメ射精31.png" cond="f.H_Ue_Chakui >= 2 && f.H_Danmen_Flag == 1 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count == 1"]
[chara_mod  name="H_バック"  time="0"  cross="false"  storage="chara/11/バックアニメ射精32.png" cond="f.H_Ue_Chakui >= 2 && f.H_Danmen_Flag == 1 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count == 2"]
[chara_mod  name="H_バック"  time="0"  cross="false"  storage="chara/11/バックアニメ射精33.png" cond="f.H_Ue_Chakui >= 2 && f.H_Danmen_Flag == 1 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count >= 3"]

[chara_mod  name="H_バック"  time="0"  cross="false"  storage="chara/11/バックアニメ射精71.png" cond="f.H_Ue_Chakui >= 2 && f.H_Condom_On == 1"]

[elsif exp="f.H_Sex_Anal ==1"]
[chara_mod  name="H_バック"  time="0"  cross="false"  storage="chara/11/バックアニメ射精41.png" cond="f.H_Ue_Chakui == 1 && f.H_Condom_On == 0"]
[chara_mod  name="H_バック"  time="0"  cross="false"  storage="chara/11/バックアニメ射精81.png" cond="f.H_Ue_Chakui == 1 && f.H_Condom_On == 1"]

[chara_mod  name="H_バック"  time="0"  cross="false"  storage="chara/11/バックアニメ射精51.png" cond="f.H_Ue_Chakui >= 2 && f.H_Condom_On == 0"]
[chara_mod  name="H_バック"  time="0"  cross="false"  storage="chara/11/バックアニメ射精91.png" cond="f.H_Ue_Chakui >= 2 && f.H_Condom_On == 1"]
[endif]

[endif]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;ホールドしてた場合　カット消去
[free layer=1 name="Hold_Cut"]

[_tb_end_tyrano_code]

[call  storage="__Main_Night_Option.ks"  target="*__妊娠判定"  cond=""  ]
[call  storage="__Main_Night_Option.ks"  target="*__射精感を0に"  ]
[call  storage="Main_Sta.ks"  target="*__Hメインステ表示"  ]
[call  storage="__Main_Night_Option.ks"  target="*__射精時セリフ"  ]
[wait  time="6000"  ]
[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/01喘ぎ声(前)01.mp3"  ]
[l  ]
[glink  color="btn_05_black"  storage="__Main_Night_Back_H.ks"  size="20"  text="Wipe with tissue"  x="541"  y="441"  width=""  height=""  _clickable_img=""  target="*__中ティッシュ"  ]
[s  ]
*__中ティッシュ

[mask  time="500"  effect="fadeIn"  color="0xffffff"  ]
[chara_hide_all  time="0"  wait="true"  ]
[tb_start_tyrano_code]
;静止　上着キャラ【画像変更】
[chara_show  name="H_バック"  time="0"  wait="true"  storage="chara/11/バック03.png" cond="f.H_Ue_Chakui == 1"  width="760"  height="660"  left="160"  top="60"]
[chara_show  name="H_バック"  time="0"  wait="true"  storage="chara/11/バック05.png" cond="f.H_Ue_Chakui >= 2"  width="760"  height="660"  left="160"  top="60"]


[_tb_end_tyrano_code]

[chara_part  name="H_バック"  time="0"  wait="true"  表情="バック表情04.png"  ]
[call  storage="__Main_Night_Back_H.ks"  target="*__汗表示"  ]
[mask_off  time="500"  effect="fadeOut"  ]
[jump  storage="__Main_Night_Back_H.ks"  target="*__掃除後"  ]
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
[chara_show  name="H_バック"  time="0"  wait="true"  storage="chara/11/バック03.png" cond="f.H_Ue_Chakui == 1"  width="760"  height="660"  left="160"  top="60"]
[chara_show  name="H_バック"  time="0"  wait="true"  storage="chara/11/バック05.png" cond="f.H_Ue_Chakui >= 2"  width="760"  height="660"  left="160"  top="60"]


[_tb_end_tyrano_code]

[chara_part  name="H_バック"  time="0"  wait="true"  表情="バック表情04.png"  ]
[call  storage="__Main_Night_Back_H.ks"  target="*__汗表示"  ]
[delete_individual_image  layer="1"  name="effect"  time="300"  wait="true"  ]
[call  storage="__Main_Night_Option.ks"  target="*__はあはあ"  ]
[glink  color="btn_05_black"  storage="__Main_Night_Back_H.ks"  size="20"  text="Where to cum?"  x="540"  y="440"  width=""  height=""  _clickable_img=""  target="*__射精先選択"  ]
[s  ]
*__射精先選択

[clickable  storage="__Main_Night_Back_H.ks"  x="544"  y="199"  width="41"  height="38"  target="*__口_射精"  _clickable_img=""  ]
[clickable  storage="__Main_Night_Back_H.ks"  x="534"  y="284"  width="235"  height="160"  target="*__背中_射精"  _clickable_img="H11.png"  ]
[clickable  storage="__Main_Night_Back_H.ks"  x="473"  y="520"  width="355"  height="180"  target="*__お尻_射精"  _clickable_img=""  ]
[delete_individual_image  layer="1"  name="effect"  time="0"  wait="false"  ]
[s  ]
*__口_射精

[playse  volume="100"  time="1000"  buf="0"  storage="えっち系/射精音01.mp3"  ]
[call  storage="__Main_Night_Option.ks"  target="*__外射精エフェクト"  ]
[tb_start_tyrano_code]
[image layer=1 time="1000"  storage="default/正上カット/カット_正上_口05.png"  width="230"  height="180"  x="770"  y="100"  name="H_Seijoui_Seieki"  ]
[_tb_end_tyrano_code]

[jump  storage="__Main_Night_Back_H.ks"  target="*__外だし射精処理"  ]
*__背中_射精

[playse  volume="100"  time="1000"  buf="0"  storage="えっち系/射精音01.mp3"  ]
[call  storage="__Main_Night_Option.ks"  target="*__外射精エフェクト"  ]
[tb_start_tyrano_code]
[image layer=1 time="1000"  storage="default/正上カット/正上汁03.png"  width="560"  height="670"  x="360"  y="50"  name="H_Seijoui_Seieki"  ]
[_tb_end_tyrano_code]

[jump  storage="__Main_Night_Back_H.ks"  target="*__外だし射精処理"  ]
*__お尻_射精

[playse  volume="100"  time="1000"  buf="0"  storage="えっち系/射精音01.mp3"  ]
[call  storage="__Main_Night_Option.ks"  target="*__外射精エフェクト"  ]
[tb_start_tyrano_code]
[image layer=1 time="1000"   storage="default/正上カット/正上汁02.png"  width="560"  height="670"  x="360"  y="50"  name="H_Seijoui_Seieki"  ]
[_tb_end_tyrano_code]

[jump  storage="__Main_Night_Back_H.ks"  target="*__外だし射精処理"  ]
*__外だし射精処理

[call  storage="__Main_Night_Option.ks"  target="*__射精感を0に"  ]
[call  storage="Main_Sta.ks"  target="*__Hメインステ表示"  ]
*__射精処理後

[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/01喘ぎ声(前)01.mp3"  loop="false"  ]
[tb_start_tyrano_code]
;えっち回数プラスカウント
[if exp="f.H_Sex_Anal ==0"]
[eval exp="f.Sex_Count[1].bestcount += 1"]
[elsif exp="f.H_Sex_Anal ==1"]
[eval exp="f.Sex_Count[2].bestcount += 1"]
[endif]
[_tb_end_tyrano_code]

[wait  time="2000"  ]
[glink  color="btn_05_black"  storage="__Main_Night_Back_H.ks"  size="20"  text="Wipe with tissue"  x="540"  y="440"  width=""  height=""  _clickable_img=""  target="*__掃除後"  ]
[s  ]
*__掃除後

[tb_start_tyrano_code]
;ローカルえっち回数プラスカウント
[eval exp="f.Sex_Count[6].bestcount += 1"]
[_tb_end_tyrano_code]

[call  storage="__Main_Night_Option.ks"  target="*__はあはあ"  ]
[tb_start_tyrano_code]
;汁だけ消去
[free layer=1 name="H_Seijoui_Seieki" time="1000" wait="true"]
[_tb_end_tyrano_code]

[wait  time="1000"  ]
[tb_eval  exp="f.H_Kenja_Count=0"  name="H_Kenja_Count"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.H_Sex_Count+=1"  name="H_Sex_Count"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="__Main_Night_Back_H.ks"  target="*__射精後戻り先"  cond="f.Sys_Seiryoku>0"  ]
[jump  storage="__Main_Night_Seijoui_H.ks"  target="*__精液なし終了処理"  ]
[s  ]
*__BAD上限で終了

[jump  storage="__Main_Night_Seijoui_H.ks"  target="*__BAD上限で終了"  ]
*__途中でやめる

[jump  storage="__Main_Night_Seijoui_H.ks"  target="*__途中でやめる"  ]
[s  ]
*__絶頂処理

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
[chara_part  name="H_バック"  time="0"  表情="バック表情06.png"  ]
[tb_start_tyrano_code]
;絶頂画像表示
[image  layer=1 time="0"  width="300"  height="180"  x="500"  y="400" storage="default/バックカット/バック絶頂カット.png"  name="H_Org_Image" zindex="300"]
[_tb_end_tyrano_code]

[call  storage="__Main_Night_Option.ks"  target="*__外射精エフェクト"  ]
[call  storage="__Main_Night_Option.ks"  target="*__道具セリフ正上位"  ]
[font  size="14"  color="0x000000"  face="JKG-M_3"  bold="true"  ]
[tb_start_tyrano_code]
;びくんびくん文字
[ptext layer="1" x="500" y="400" size="20" text="Twitch" name="Org01"  zindex=100 edge="0xffffff"]
[xanim name="Org01" left=480 top=380  opacity=0 time=2000]

[keyframe name="H_Bikun"]
[frame p="0%"  opacity=0]
[frame p="1%"  opacity=255]
[frame p="100%"  opacity=0 x=20 y= -20]
[endkeyframe]

[ptext layer="1" x="640" y="400" size="20" text="Twitch" name="Org02"  zindex=100 edge="0xffffff"]
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

[jump  storage="__Main_Night_Back_H.ks"  target="*__GOOD下限達成"  cond="f.H_Good<1"  ]
[tb_start_tyrano_code]
;GOODバー減アニメ
[anim name="line" width="&f.Eve_Time" time="1"]
[eval exp="f.Eve_Time -= 0.5"]

[_tb_end_tyrano_code]

[jump  storage="__Main_Night_Back_H.ks"  target="*__HGOOD減ループ"  cond="f.Eve_Time>f.H_Good"  ]
*__GOOD下限達成

[wait  time="2000"  ]
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
[chara_mod  name="H_バック"  time="0"  cross="false"  storage="chara/11/バック01.png" time=500]

[elsif exp="f.H_Ue_Chakui ==1 && f.H_Pantu_Chakui ==0"]
[chara_mod  name="H_バック"  time="0"  cross="false"  storage="chara/11/バック02.png"  time=500]

[elsif exp="f.H_Ue_Chakui ==1 && f.H_Pantu_Chakui ==1"]
[chara_mod  name="H_バック"  time="0"  cross="false"  storage="chara/11/バック03.png" time=500]

[elsif exp="f.H_Ue_Chakui ==2 && f.H_Pantu_Chakui ==0"]
[chara_mod  name="H_バック"  time="0"  cross="false"  storage="chara/11/バック04.png"  time=500]

[elsif exp="f.H_Ue_Chakui ==2 && f.H_Pantu_Chakui ==1"]
[chara_mod  name="H_バック"  time="0"  cross="false"  storage="chara/11/バック05.png"  time=500]

[elsif exp="f.H_Ue_Chakui ==1 && f.H_Pantu_Chakui ==2"]
[chara_mod  name="H_バック"  time="0"  cross="false"  storage="chara/11/バック05.png" time=500]

[elsif exp="f.H_Ue_Chakui ==2 && f.H_Pantu_Chakui ==2"]
[chara_mod  name="H_バック"  time="0"  cross="false"  storage="chara/11/バック05.png" time=500]
[endif]

;道具使用時 1ローター　2バイブ　3アナルビーズ
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
[image layer=2  time="0"  storage="default/バックカット/バック汗01.png"  width="760"  height. ="660"  x="160"  y="60"  zindex="10" name="H_Seijoui_Ase"]
[endif]

;服上げ、足閉じ
[if exp="f.H_Good >=100 && f.H_Ue_Chakui == 1 && f.H_Pantu_Chakui ==0" ]
[image layer=2  time="0"  storage="default/バックカット/バック汗02.png"  width="760"  height. ="660"  x="160"  y="60"  zindex="10" name="H_Seijoui_Ase"]
[endif]

;服脱ぎ、足閉じ
[if exp="f.H_Good >=100 && f.H_Ue_Chakui == 1 && f.H_Pantu_Chakui ==1" ]
[image layer=2  time="0"  storage="default/バックカット/バック汗04.png"  width="760"  height. ="660"  x="160"  y="60"  zindex="10" name="H_Seijoui_Ase"]
[endif]

;服上げ、足開き
[if exp="f.H_Good >=100 && f.H_Ue_Chakui == 2 && f.H_Pantu_Chakui ==0" ]
[image layer=2  time="0"  storage="default/バックカット/バック汗03.png"  width="760"  height. ="660"  x="160"  y="60"  zindex="10" name="H_Seijoui_Ase"]
[endif]

;服脱ぎ、足開き
[if exp="f.H_Good >=100 && f.H_Ue_Chakui == 2 && f.H_Pantu_Chakui ==1" ]
[image layer=2  time="0"  storage="default/バックカット/バック汗05.png"  width="760"  height. ="660"  x="160"  y="60"  zindex="10" name="H_Seijoui_Ase"]
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
;フラグ事の絵変更　着衣　＆　快感不快感　増減処理

;口
[if exp="f.H_Kuchi_Touch == 1"]
[image  layer=1 time="0"  width="230"  height="180"  x="750"  y="70" storage="default/バックカット/カット_バック_頭01.png" name="H_Cut_Image_Arm" zindex="200"]
[eval  exp="f.H_Good +=Math.max(1, Math.floor((3 + f.Oni_Ero + f.Good_H_Sta[0].count)* ((220 - f.H_Good) / 220)))"]
[eval  exp="f.H_Bad += Math.floor(1 + 4  * f.Bad_H_Sta[0].count * f.H_Bad_Aroma)"  ]
[endif]

;背中
[if exp="f.H_Senaka_Touch == 1"]
[image  layer=1 time="0"  width="230"  height="180"  x="250"  y="250" storage="default/バックカット/カット_バック_背中01.png" name="H_Cut_Image_Ue" zindex="200"]
[eval  exp="f.H_Good +=Math.max(1, Math.floor((3 + f.Oni_Ero + f.Good_H_Sta[0].count)* ((220 - f.H_Good) / 220)))"]
[eval  exp="f.H_Bad += Math.floor(1 + 4  * f.Bad_H_Sta[0].count * f.H_Bad_Aroma)"  ]
[endif]

;左尻
[if exp="f.H_Left_Siri == 1"]

[if exp="f.H_Ue_Chakui  == 0"]
[image  layer=1 time="0"  width="230"  height="180"  x="280"  y="470" storage="default/バックカット/カット_バック_尻01.png"  name="H_Cut_Image_Sita" zindex="200"]
[eval  exp="f.H_Good +=Math.max(1, Math.floor((3 + f.Oni_Ero + f.Good_H_Sta[1].count)* ((220 - f.H_Good) / 220)))"]
[eval  exp="f.H_Bad += Math.floor(1 + 6  * f.Bad_H_Sta[1].count)"  ]

[elsif exp="f.H_Ue_Chakui >=1"]

[if exp="f.H_Pantu_Chakui == 0"]
[image  layer=1 time="0"  width="230"  height="180"  x="280"  y="470" storage="default/バックカット/カット_バック_尻03.png"  name="H_Cut_Image_Sita" zindex="200"]
[eval  exp="f.H_Good +=Math.max(1, Math.floor((3 + f.Oni_Ero + f.Good_H_Sta[1].count)* ((220 - f.H_Good) / 220)))"]
[eval  exp="f.H_Bad += Math.floor(1 + 6  * f.Bad_H_Sta[1].count)"  ]

[elsif exp="f.H_Pantu_Chakui == 1"]
[image  layer=1 time="0"  width="230"  height="180"  x="280"  y="470" storage="default/バックカット/カット_バック_尻05.png"  name="H_Cut_Image_Sita" zindex="200"]
[eval  exp="f.H_Good +=3 + f.Oni_Ero + f.Good_H_Sta[1].count"]
[eval  exp="f.H_Bad += Math.floor(1 + 6  * f.Bad_H_Sta[1].count)"  ]
[endif]
[endif]
[endif]

;右尻
[if exp="f.H_Right_Siri == 1"]

[if exp="f.H_Ue_Chakui  == 0"]
[image  layer=1 time="0"  width="230"  height="180"  x="780"  y="470" storage="default/バックカット/カット_バック_尻02.png"  name="H_Cut_Image_MigiSita" zindex="200"]
[eval  exp="f.H_Good +=Math.max(1, Math.floor((3 + f.Oni_Ero + f.Good_H_Sta[1].count)* ((220 - f.H_Good) / 220)))"]
[eval  exp="f.H_Bad += Math.floor(1 + 6  * f.Bad_H_Sta[1].count)"  ]

[elsif exp="f.H_Ue_Chakui >=1"]

[if exp="f.H_Pantu_Chakui == 0"]
[image  layer=1 time="0"  width="230"  height="180"  x="780"  y="470" storage="default/バックカット/カット_バック_尻04.png"  name="H_Cut_Image_MigiSita" zindex="200"]
[eval  exp="f.H_Good +=Math.max(1, Math.floor((3 + f.Oni_Ero + f.Good_H_Sta[1].count)* ((220 - f.H_Good) / 220)))"]
[eval  exp="f.H_Bad += Math.floor(1 + 6  * f.Bad_H_Sta[1].count)"  ]

[elsif exp="f.H_Pantu_Chakui == 1"]
[image  layer=1 time="0"  width="230"  height="180"  x="780"  y="470" storage="default/バックカット/カット_バック_尻06.png"  name="H_Cut_Image_MigiSita" zindex="200"]
[eval  exp="f.H_Good +=3 + f.Oni_Ero + f.Good_H_Sta[1].count"]
[eval  exp="f.H_Bad += Math.floor(1 + 6  * f.Bad_H_Sta[1].count)"  ]
[endif]
[endif]
[endif]

;下くぱぁ
[if exp="f.H_Right_Siri == 1 && f.H_Left_Siri == 1 && f.H_Pantu_Chakui == 1 && f.H_Ue_Chakui >=1"]

[if exp="f.H_Asoko_Touch == 0"]
[image  layer=1 time="0"  width="230"  height="180"  x="520"  y="400" storage="default/バックカット/カット_バック_膣04.png"  name="H_Cut_Image_TongueSita" zindex="200"]

[elsif exp="f.H_Asoko_Touch == 1"]
[image  layer=1 time="0"  width="230"  height="180"  x="520"  y="400" storage="default/バックカット/カット_バック_膣05.png"  name="H_Cut_Image_TongueSita" zindex="200"]
[eval  exp="f.H_Good +=3 + f.Oni_Ero + f.Good_H_Sta[3].count"]
[eval  exp="f.H_Bad += Math.floor(1 + 6  * f.Bad_H_Sta[3].count)"  ]

[elsif exp="f.H_Asoko_Touch == 2"]
[image  layer=1 time="0"  width="230"  height="180"  x="520"  y="400" storage="default/バックカット/カット_バック_膣06.png"  name="H_Cut_Image_TongueSita" zindex="200"]
[eval  exp="f.H_Good +=3 + f.Oni_Ero + f.Good_H_Sta[3].count"]
[eval  exp="f.H_Bad += Math.floor(1 + 6  * f.Bad_H_Sta[3].count)"  ]
[endif]

;下触り
[elsif exp="f.H_Asoko_Touch == 1 && f.H_Ue_Chakui >=1"]

[if exp="f.H_Pantu_Chakui == 0"]
[image  layer=1 time="0"  width="230"  height="180"  x="520"  y="400" storage="default/バックカット/カット_バック_膣01.png"  name="H_Cut_Image_TongueSita" zindex="200"]
[eval  exp="f.H_Good +=3 + f.Oni_Ero + f.Good_H_Sta[3].count"]
[eval  exp="f.H_Bad += Math.floor(1 + 6  * f.Bad_H_Sta[3].count)"  ]

[elsif exp="f.H_Pantu_Chakui == 1"]
[image  layer=1 time="0"  width="230"  height="180"  x="520"  y="400" storage="default/バックカット/カット_バック_膣02.png"  name="H_Cut_Image_TongueSita" zindex="200"]
[eval  exp="f.H_Good +=4 + f.Oni_Ero + f.Good_H_Sta[3].count"]
[eval  exp="f.H_Bad += Math.floor(1 +  (10+f.H_Bad_Levelup)  * f.Bad_H_Sta[1].count * f.H_Bad_Aroma)"  ]

[endif]

[elsif exp="f.H_Asoko_Touch == 2 && f.H_Ue_Chakui >=1"]
[image  layer=1 time="0"  width="230"  height="180"  x="520"  y="400" storage="default/バックカット/カット_バック_膣03.png"  name="H_Cut_Image_TongueSita" zindex="200"]
[eval  exp="f.H_Good +=6 + f.Oni_Ero + f.Good_H_Sta[3].count"]
[eval  exp="f.H_Bad += Math.floor(1 +  (15+f.H_Bad_Levelup)  * f.Bad_H_Sta[1].count * f.H_Bad_Aroma)"  ]

[endif]

;道具
[if exp="f.H_Tool_Flag  != 1000"]

[switch exp="f.H_Tool_Flag"]

;ローターは着衣パターンで分岐
[case is= 1001]
[if exp="f.H_Ue_Chakui == 0"]
[image  layer=1 time="0"  width="230"  height="180"  x="520"  y="400" storage="default/正上カット/カット_正上_道具01.png"  name="H_Cut_Image_Tool" zindex="200"]
[eval  exp="f.H_Good +=10 + f.Oni_Ero + f.Good_H_Sta[3].count"]
[eval  exp="f.H_Bad += Math.floor(1 + 20  * f.Bad_H_Sta[3].count * f.H_Bad_Aroma)"  ]

[elsif exp="f.H_Ue_Chakui >= 1 && f.H_Pantu_Chakui ==0"]
[image  layer=1 time="0"  width="230"  height="180"  x="520"  y="400" storage="default/バックカット/カット_バック_道具01.png"  name="H_Cut_Image_Tool" zindex="200"]
[eval  exp="f.H_Good +=10 + f.Oni_Ero + f.Good_H_Sta[3].count"]
[eval  exp="f.H_Bad += Math.floor(1 + 20  * f.Bad_H_Sta[3].count * f.H_Bad_Aroma)"  ]

[elsif exp="f.H_Ue_Chakui >= 1 && f.H_Pantu_Chakui ==1"]
[image  layer=1 time="0"  width="230"  height="180"  x="520"  y="400" storage="default/バックカット/カット_バック_道具02.png"  name="H_Cut_Image_Tool" zindex="200"]
[eval  exp="f.H_Good +=10 + f.Oni_Ero + f.Good_H_Sta[3].count"]
[eval  exp="f.H_Bad += Math.floor(1 +  (20+f.H_Bad_Levelup)  * f.Bad_H_Sta[3].count * f.H_Bad_Aroma)"  ]

[elsif exp="f.H_Ue_Chakui >= 1 && f.H_Pantu_Chakui ==2"]
[image  layer=1 time="0"  width="230"  height="180"  x="520"  y="400" storage="default/バックカット/カット_バック_道具03.png"  name="H_Cut_Image_Tool" zindex="200"]
[eval  exp="f.H_Good +=12 + f.Oni_Ero + f.Good_H_Sta[3].count"]
[eval  exp="f.H_Bad += Math.floor(1 +  (20+f.H_Bad_Levelup)  * f.Bad_H_Sta[3].count * f.H_Bad_Aroma)"  ]
[endif]

;その他道具は足開きのみ
[case is=1010]
[image  layer=1 time="0"  width="230"  height="180"  x="520"  y="400" storage="default/バックカット/カット_バック_道具11.png"  name="H_Cut_Image_Tool" zindex="200"]
[eval  exp="f.H_Good +=15 + f.Oni_Ero + f.Good_H_Sta[3].count"]
[eval  exp="f.H_Bad += Math.floor(1 +  (20+f.H_Bad_Levelup)  * f.Bad_H_Sta[3].count * f.H_Bad_Aroma)"  ]

[case is=1100]
[image  layer=1 time="0"  width="230"  height="180"  x="520"  y="400" storage="default/バックカット/カット_バック_道具21.png"  name="H_Cut_Image_Tool" zindex="200"]
[eval  exp="f.H_Good +=18 + f.Oni_Ero + f.Good_H_Sta[4].count"]
[eval  exp="f.H_Bad += Math.floor(1 +  (30+f.H_Bad_Levelup)  * f.Bad_H_Sta[4].count * f.H_Bad_Aroma)"  ]

[case is=1011]
[image  layer=1 time="0"  width="230"  height="180"  x="520"  y="400" storage="default/バックカット/カット_バック_道具31.png"  name="H_Cut_Image_Tool" zindex="200"]
[eval  exp="f.H_Good +=15 + f.Oni_Ero + f.Good_H_Sta[3].count"]
[eval  exp="f.H_Bad += Math.floor(1 +  (20+f.H_Bad_Levelup) * f.Bad_H_Sta[3].count * f.H_Bad_Aroma)"  ]

[case is=1101]
[image  layer=1 time="0"  width="230"  height="180"  x="520"  y="400" storage="default/バックカット/カット_バック_道具32.png"  name="H_Cut_Image_Tool" zindex="200"]
[eval  exp="f.H_Good +=18 + f.Oni_Ero + f.Good_H_Sta[4].count"]
[eval  exp="f.H_Bad += Math.floor(1 +  (30+f.H_Bad_Levelup)  * f.Bad_H_Sta[4].count * f.H_Bad_Aroma)"  ]

[case is=1110]
[image  layer=1 time="0"  width="230"  height="180"  x="520"  y="400" storage="default/バックカット/カット_バック_道具33.png"  name="H_Cut_Image_Tool" zindex="200"]
[eval  exp="f.H_Good +=18 + f.Oni_Ero + f.Good_H_Sta[4].count"]
[eval  exp="f.H_Bad += Math.floor(1 +  (30+f.H_Bad_Levelup)  * f.Bad_H_Sta[4].count * f.H_Bad_Aroma)"  ]

[case is=1111]
[image  layer=1 time="0"  width="230"  height="180"  x="520"  y="400" storage="default/バックカット/カット_バック_道具34.png"  name="H_Cut_Image_Tool" zindex="200"]
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
;フラグ事の絵変更　着衣　＆　快感不快感　増減処理

;口
[if exp="f.H_Kuchi_Touch == 1"]
[image  layer=1 time="0"  width="230"  height="180"  x="750"  y="70" storage="default/バックカット/カット_バック_頭01.png" name="H_Cut_Image_Arm" zindex="200"]
[endif]

;背中
[if exp="f.H_Senaka_Touch == 1"]
[image  layer=1 time="0"  width="230"  height="180"  x="250"  y="250" storage="default/バックカット/カット_バック_背中01.png" name="H_Cut_Image_Ue" zindex="200"]
[endif]

;左尻
[if exp="f.H_Left_Siri == 1"]

[if exp="f.H_Ue_Chakui  == 0"]
[image  layer=1 time="0"  width="230"  height="180"  x="280"  y="470" storage="default/バックカット/カット_バック_尻01.png"  name="H_Cut_Image_Sita" zindex="200"]

[elsif exp="f.H_Ue_Chakui >=1"]

[if exp="f.H_Pantu_Chakui == 0"]
[image  layer=1 time="0"  width="230"  height="180"  x="280"  y="470" storage="default/バックカット/カット_バック_尻03.png"  name="H_Cut_Image_Sita" zindex="200"]

[elsif exp="f.H_Pantu_Chakui == 1"]
[image  layer=1 time="0"  width="230"  height="180"  x="280"  y="470" storage="default/バックカット/カット_バック_尻05.png"  name="H_Cut_Image_Sita" zindex="200"]
[endif]
[endif]
[endif]

;右尻
[if exp="f.H_Right_Siri == 1"]

[if exp="f.H_Ue_Chakui  == 0"]
[image  layer=1 time="0"  width="230"  height="180"  x="780"  y="470" storage="default/バックカット/カット_バック_尻02.png"  name="H_Cut_Image_MigiSita" zindex="200"]

[elsif exp="f.H_Ue_Chakui >=1"]

[if exp="f.H_Pantu_Chakui == 0"]
[image  layer=1 time="0"  width="230"  height="180"  x="780"  y="470" storage="default/バックカット/カット_バック_尻04.png"  name="H_Cut_Image_MigiSita" zindex="200"]

[elsif exp="f.H_Pantu_Chakui == 1"]
[image  layer=1 time="0"  width="230"  height="180"  x="780"  y="470" storage="default/バックカット/カット_バック_尻06.png"  name="H_Cut_Image_MigiSita" zindex="200"]
[endif]
[endif]
[endif]

;下くぱぁ
[if exp="f.H_Right_Siri == 1 && f.H_Left_Siri == 1 && f.H_Pantu_Chakui == 1 && f.H_Ue_Chakui >=1"]

[if exp="f.H_Asoko_Touch == 0"]
[image  layer=1 time="0"  width="230"  height="180"  x="520"  y="400" storage="default/バックカット/カット_バック_膣04.png"  name="H_Cut_Image_TongueSita" zindex="200"]

[elsif exp="f.H_Asoko_Touch == 1"]
[image  layer=1 time="0"  width="230"  height="180"  x="520"  y="400" storage="default/バックカット/カット_バック_膣05.png"  name="H_Cut_Image_TongueSita" zindex="200"]

[elsif exp="f.H_Asoko_Touch == 2"]
[image  layer=1 time="0"  width="230"  height="180"  x="520"  y="400" storage="default/バックカット/カット_バック_膣06.png"  name="H_Cut_Image_TongueSita" zindex="200"]
[endif]

;下触り
[elsif exp="f.H_Asoko_Touch == 1 && f.H_Ue_Chakui >=1"]

[if exp="f.H_Pantu_Chakui == 0"]
[image  layer=1 time="0"  width="230"  height="180"  x="520"  y="400" storage="default/バックカット/カット_バック_膣01.png"  name="H_Cut_Image_TongueSita" zindex="200"]

[elsif exp="f.H_Pantu_Chakui == 1"]
[image  layer=1 time="0"  width="230"  height="180"  x="520"  y="400" storage="default/バックカット/カット_バック_膣02.png"  name="H_Cut_Image_TongueSita" zindex="200"]
[endif]

[elsif exp="f.H_Asoko_Touch == 2 && f.H_Ue_Chakui >=1"]
[image  layer=1 time="0"  width="230"  height="180"  x="520"  y="400" storage="default/バックカット/カット_バック_膣03.png"  name="H_Cut_Image_TongueSita" zindex="200"]

[endif]

;道具
[if exp="f.H_Tool_Flag  != 1000"]

[switch exp="f.H_Tool_Flag"]

;ローターは着衣パターンで分岐
[case is= 1001]
[if exp="f.H_Ue_Chakui == 0"]
[image  layer=1 time="0"  width="230"  height="180"  x="520"  y="400" storage="default/正上カット/カット_正上_道具01.png"  name="H_Cut_Image_Tool" zindex="200"]

[elsif exp="f.H_Ue_Chakui >= 1 && f.H_Pantu_Chakui ==0"]
[image  layer=1 time="0"  width="230"  height="180"  x="520"  y="400" storage="default/バックカット/カット_バック_道具01.png"  name="H_Cut_Image_Tool" zindex="200"]

[elsif exp="f.H_Ue_Chakui >= 1 && f.H_Pantu_Chakui ==1"]
[image  layer=1 time="0"  width="230"  height="180"  x="520"  y="400" storage="default/バックカット/カット_バック_道具02.png"  name="H_Cut_Image_Tool" zindex="200"]

[elsif exp="f.H_Ue_Chakui >= 1 && f.H_Pantu_Chakui ==2"]
[image  layer=1 time="0"  width="230"  height="180"  x="520"  y="400" storage="default/バックカット/カット_バック_道具03.png"  name="H_Cut_Image_Tool" zindex="200"]
[endif]

;その他道具は足開きのみ
[case is=1010]
[image  layer=1 time="0"  width="230"  height="180"  x="520"  y="400" storage="default/バックカット/カット_バック_道具11.png"  name="H_Cut_Image_Tool" zindex="200"]

[case is=1100]
[image  layer=1 time="0"  width="230"  height="180"  x="520"  y="400" storage="default/バックカット/カット_バック_道具21.png"  name="H_Cut_Image_Tool" zindex="200"]

[case is=1011]
[image  layer=1 time="0"  width="230"  height="180"  x="520"  y="400" storage="default/バックカット/カット_バック_道具31.png"  name="H_Cut_Image_Tool" zindex="200"]

[case is=1101]
[image  layer=1 time="0"  width="230"  height="180"  x="520"  y="400" storage="default/バックカット/カット_バック_道具32.png"  name="H_Cut_Image_Tool" zindex="200"]

[case is=1110]
[image  layer=1 time="0"  width="230"  height="180"  x="520"  y="400" storage="default/バックカット/カット_バック_道具33.png"  name="H_Cut_Image_Tool" zindex="200"]

[case is=1111]
[image  layer=1 time="0"  width="230"  height="180"  x="520"  y="400" storage="default/バックカット/カット_バック_道具34.png"  name="H_Cut_Image_Tool" zindex="200"]

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
*__キャラのピストン速度変更

[intrandom_ko10panda  max="2"  count="1"  show_result="false"  show_style="style_a"  show_detail="false"  detail_length="10"  show_log="log_4"  var_name="tf.rand"  ]
[tb_start_tyrano_code]
;キャラのピストン速度、キャラ【画像変更】
;バックプレス
[switch exp="f.H_Sex_Speed"]
[case is=4]
[chara_mod  name="H_バックプレス"  time="0"  cross="false"  storage="chara/38/バックプレスアニメ01.png" cond="f.H_Danmen_Flag == 0"]
[chara_mod  name="H_バックプレス"  time="0"  cross="false"  storage="chara/38/バックプレスアニメ01.png" cond="f.H_Danmen_Flag == 1 && f.H_Condom_On == 1"]
[chara_mod  name="H_バックプレス"  time="0"  cross="false"  storage="chara/38/バックプレスアニメ11.png" cond="f.H_Danmen_Flag == 1 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count == 0"]
[chara_mod  name="H_バックプレス"  time="0"  cross="false"  storage="chara/38/バックプレスアニメ14.png" cond="f.H_Danmen_Flag == 1 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count == 1"]
[chara_mod  name="H_バックプレス"  time="0"  cross="false"  storage="chara/38/バックプレスアニメ17.png" cond="f.H_Danmen_Flag == 1 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count >= 2"]

[playse  volume="100"  time="1000"  buf="1"  storage="ピストン系/バックプレスピストン01.mp3"  loop="true"  ]
[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/06喘ぎ声(挿入)01.mp3"  loop="true" cond="tf.rand ==1"]
[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/03喘ぎ声(前)03.mp3"  loop="true"  cond="tf.rand !=1"]

[case is=5]
[chara_mod  name="H_バックプレス"  time="0"  cross="false"  storage="chara/38/バックプレスアニメ02.png" cond="f.H_Danmen_Flag == 0"]
[chara_mod  name="H_バックプレス"  time="0"  cross="false"  storage="chara/38/バックプレスアニメ02.png" cond="f.H_Danmen_Flag == 1 && f.H_Condom_On == 1"]
[chara_mod  name="H_バックプレス"  time="0"  cross="false"  storage="chara/38/バックプレスアニメ12.png" cond="f.H_Danmen_Flag == 1 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count == 0"]
[chara_mod  name="H_バックプレス"  time="0"  cross="false"  storage="chara/38/バックプレスアニメ15.png" cond="f.H_Danmen_Flag == 1 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count == 1"]
[chara_mod  name="H_バックプレス"  time="0"  cross="false"  storage="chara/38/バックプレスアニメ18.png" cond="f.H_Danmen_Flag == 1 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count >= 2"]

[playse  volume="100"  time="1000"  buf="1"  storage="ピストン系/バックプレスピストン02.mp3"  loop="true"  ]
[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/06喘ぎ声(挿入)01.mp3"  loop="true" cond="tf.rand ==1"]
[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/07喘ぎ声(挿入)02.mp3"  loop="true"  cond="tf.rand !=1"]

[case is=6]
[chara_mod  name="H_バックプレス"  time="0"  cross="false"  storage="chara/38/バックプレスアニメ03.png" cond="f.H_Danmen_Flag == 0"]
[chara_mod  name="H_バックプレス"  time="0"  cross="false"  storage="chara/38/バックプレスアニメ03.png" cond="f.H_Danmen_Flag == 1 && f.H_Condom_On == 1"]
[chara_mod  name="H_バックプレス"  time="0"  cross="false"  storage="chara/38/バックプレスアニメ13.png" cond="f.H_Danmen_Flag == 1 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count == 0"]
[chara_mod  name="H_バックプレス"  time="0"  cross="false"  storage="chara/38/バックプレスアニメ16.png" cond="f.H_Danmen_Flag == 1 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count == 1"]
[chara_mod  name="H_バックプレス"  time="0"  cross="false"  storage="chara/38/バックプレスアニメ19.png" cond="f.H_Danmen_Flag == 1 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count >= 2"]

[playse  volume="100"  time="1000"  buf="1"  storage="ピストン系/バックプレスピストン03.mp3"  loop="true"  ]
[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/09喘ぎ声(挿入)04.mp3"  loop="true" cond="tf.rand ==1"]
[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/10喘ぎ声(挿入)05.mp3"  loop="true"  cond="tf.rand !=1"]

[case is=7]
[chara_mod  name="H_バックプレス"  time="0"  cross="false"  storage="chara/38/バックプレス02.png" cond="f.H_Danmen_Flag == 0"]
[chara_mod  name="H_バックプレス"  time="0"  cross="false"  storage="chara/38/バックプレス02.png" cond="f.H_Danmen_Flag == 1 && f.H_Condom_On == 1"]
[chara_mod  name="H_バックプレス"  time="0"  cross="false"  storage="chara/38/バックプレス12.png" cond="f.H_Danmen_Flag == 1 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count == 0"]
[chara_mod  name="H_バックプレス"  time="0"  cross="false"  storage="chara/38/バックプレス15.png" cond="f.H_Danmen_Flag == 1 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count == 1"]
[chara_mod  name="H_バックプレス"  time="0"  cross="false"  storage="chara/38/バックプレス18.png" cond="f.H_Danmen_Flag == 1 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count >= 2"]

[case is=14]
[chara_mod  name="H_バックプレス"  time="0"  cross="false"  storage="chara/38/バックプレスアニメ21.png" cond="f.H_Danmen_Flag == 0"]
[chara_mod  name="H_バックプレス"  time="0"  cross="false"  storage="chara/38/バックプレスアニメ21.png" cond="f.H_Danmen_Flag == 1 && f.H_Condom_On == 1"]
[chara_mod  name="H_バックプレス"  time="0"  cross="false"  storage="chara/38/バックプレスアニメ31.png" cond="f.H_Danmen_Flag == 1 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count == 0"]
[chara_mod  name="H_バックプレス"  time="0"  cross="false"  storage="chara/38/バックプレスアニメ34.png" cond="f.H_Danmen_Flag == 1 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count == 1"]
[chara_mod  name="H_バックプレス"  time="0"  cross="false"  storage="chara/38/バックプレスアニメ37.png" cond="f.H_Danmen_Flag == 1 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count >= 2"]

[playse  volume="100"  time="1000"  buf="1"  storage="ピストン系/バックプレスピストン01.mp3"  loop="true"  ]
[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/06喘ぎ声(挿入)01.mp3"  loop="true" cond="tf.rand ==1"]
[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/03喘ぎ声(前)03.mp3"  loop="true"  cond="tf.rand !=1"]

[case is=15]
[chara_mod  name="H_バックプレス"  time="0"  cross="false"  storage="chara/38/バックプレスアニメ22.png" cond="f.H_Danmen_Flag == 0"]
[chara_mod  name="H_バックプレス"  time="0"  cross="false"  storage="chara/38/バックプレスアニメ22.png" cond="f.H_Danmen_Flag == 1 && f.H_Condom_On == 1"]
[chara_mod  name="H_バックプレス"  time="0"  cross="false"  storage="chara/38/バックプレスアニメ32.png" cond="f.H_Danmen_Flag == 1 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count == 0"]
[chara_mod  name="H_バックプレス"  time="0"  cross="false"  storage="chara/38/バックプレスアニメ35.png" cond="f.H_Danmen_Flag == 1 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count == 1"]
[chara_mod  name="H_バックプレス"  time="0"  cross="false"  storage="chara/38/バックプレスアニメ38.png" cond="f.H_Danmen_Flag == 1 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count >= 2"]

[playse  volume="100"  time="1000"  buf="1"  storage="ピストン系/バックプレスピストン02.mp3"  loop="true" ]
[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/06喘ぎ声(挿入)01.mp3"  loop="true" cond="tf.rand ==1"]
[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/07喘ぎ声(挿入)02.mp3"  loop="true"  cond="tf.rand !=1"]

[case is=16]
[chara_mod  name="H_バックプレス"  time="0"  cross="false"  storage="chara/38/バックプレスアニメ23.png" cond="f.H_Danmen_Flag == 0"]
[chara_mod  name="H_バックプレス"  time="0"  cross="false"  storage="chara/38/バックプレスアニメ23.png" cond="f.H_Danmen_Flag == 1 && f.H_Condom_On == 1"]
[chara_mod  name="H_バックプレス"  time="0"  cross="false"  storage="chara/38/バックプレスアニメ33.png" cond="f.H_Danmen_Flag == 1 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count == 0"]
[chara_mod  name="H_バックプレス"  time="0"  cross="false"  storage="chara/38/バックプレスアニメ36.png" cond="f.H_Danmen_Flag == 1 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count == 1"]
[chara_mod  name="H_バックプレス"  time="0"  cross="false"  storage="chara/38/バックプレスアニメ39.png" cond="f.H_Danmen_Flag == 1 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count >= 2"]

[playse  volume="100"  time="1000"  buf="1"  storage="ピストン系/バックプレスピストン03.mp3"  loop="true" ]
[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/09喘ぎ声(挿入)04.mp3"  loop="true" cond="tf.rand ==1"]
[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/10喘ぎ声(挿入)05.mp3"  loop="true"  cond="tf.rand !=1"]

[case is=17]
[chara_mod  name="H_バックプレス"  time="0"  cross="false"  storage="chara/38/バックプレス22.png" cond="f.H_Danmen_Flag == 0"]
[chara_mod  name="H_バックプレス"  time="0"  cross="false"  storage="chara/38/バックプレス22.png" cond="f.H_Danmen_Flag == 1 && f.H_Condom_On == 1"]
[chara_mod  name="H_バックプレス"  time="0"  cross="false"  storage="chara/38/バックプレス32.png" cond="f.H_Danmen_Flag == 1 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count == 0"]
[chara_mod  name="H_バックプレス"  time="0"  cross="false"  storage="chara/38/バックプレス35.png" cond="f.H_Danmen_Flag == 1 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count == 1"]
[chara_mod  name="H_バックプレス"  time="0"  cross="false"  storage="chara/38/バックプレス38.png" cond="f.H_Danmen_Flag == 1 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count >= 2"]

[case is=1]
[chara_mod  name="H_バック"  time="0"  cross="false"  storage="chara/11/バックアニメ01.png" cond="f.H_Danmen_Flag == 0 && f.H_Sex_Anal ==0"]
[chara_mod  name="H_バック"  time="0"  cross="false"  storage="chara/11/バックアニメ01.png" cond="f.H_Danmen_Flag == 1 && f.H_Sex_Anal ==0 && f.H_Condom_On == 1"]
[chara_mod  name="H_バック"  time="0"  cross="false"  storage="chara/11/バックアニメ11.png" cond="f.H_Danmen_Flag == 1 && f.H_Sex_Anal ==0 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count == 0"]
[chara_mod  name="H_バック"  time="0"  cross="false"  storage="chara/11/バックアニメ14.png" cond="f.H_Danmen_Flag == 1 && f.H_Sex_Anal ==0 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count == 1"]
[chara_mod  name="H_バック"  time="0"  cross="false"  storage="chara/11/バックアニメ17.png" cond="f.H_Danmen_Flag == 1 && f.H_Sex_Anal ==0 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count >= 2"]

[chara_mod  name="H_バック"  time="0"  cross="false"  storage="chara/11/バックアニメ41.png" cond="f.H_Sex_Anal ==1"]
[playse  volume="100"  time="1000"  buf="1"  storage="ピストン系/バックピストン01.mp3"  loop="true"  ]
[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/06喘ぎ声(挿入)01.mp3"  loop="true" cond="tf.rand ==1"]
[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/03喘ぎ声(前)03.mp3"  loop="true"  cond="tf.rand !=1"]

[case is=2]
[chara_mod  name="H_バック"  time="0"  cross="false"  storage="chara/11/バックアニメ02.png" cond="f.H_Danmen_Flag == 0 && f.H_Sex_Anal ==0"]
[chara_mod  name="H_バック"  time="0"  cross="false"  storage="chara/11/バックアニメ02.png" cond="f.H_Danmen_Flag == 1 && f.H_Sex_Anal ==0 && f.H_Condom_On == 1"]
[chara_mod  name="H_バック"  time="0"  cross="false"  storage="chara/11/バックアニメ12.png" cond="f.H_Danmen_Flag == 1 && f.H_Sex_Anal ==0 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count == 0"]
[chara_mod  name="H_バック"  time="0"  cross="false"  storage="chara/11/バックアニメ15.png" cond="f.H_Danmen_Flag == 1 && f.H_Sex_Anal ==0 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count == 1"]
[chara_mod  name="H_バック"  time="0"  cross="false"  storage="chara/11/バックアニメ18.png" cond="f.H_Danmen_Flag == 1 && f.H_Sex_Anal ==0 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count >= 2"]

[chara_mod  name="H_バック"  time="0"  cross="false"  storage="chara/11/バックアニメ42.png" cond="f.H_Sex_Anal ==1"]
[playse  volume="100"  time="1000"  buf="1"  storage="ピストン系/バックピストン02.mp3"  loop="true"  ]
[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/06喘ぎ声(挿入)01.mp3"  loop="true" cond="tf.rand ==1"]
[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/07喘ぎ声(挿入)02.mp3"  loop="true"  cond="tf.rand !=1"]

[case is=3]
[chara_mod  name="H_バック"  time="0"  cross="false"  storage="chara/11/バックアニメ03.png" cond="f.H_Danmen_Flag == 0 && f.H_Sex_Anal ==0"]
[chara_mod  name="H_バック"  time="0"  cross="false"  storage="chara/11/バックアニメ03.png" cond="f.H_Danmen_Flag == 1 && f.H_Sex_Anal ==0 && f.H_Condom_On == 1"]
[chara_mod  name="H_バック"  time="0"  cross="false"  storage="chara/11/バックアニメ13.png" cond="f.H_Danmen_Flag == 1 && f.H_Sex_Anal ==0 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count == 0"]
[chara_mod  name="H_バック"  time="0"  cross="false"  storage="chara/11/バックアニメ16.png" cond="f.H_Danmen_Flag == 1 && f.H_Sex_Anal ==0 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count == 1"]
[chara_mod  name="H_バック"  time="0"  cross="false"  storage="chara/11/バックアニメ19.png" cond="f.H_Danmen_Flag == 1 && f.H_Sex_Anal ==0 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count >= 2"]

[chara_mod  name="H_バック"  time="0"  cross="false"  storage="chara/11/バックアニメ43.png" cond="f.H_Sex_Anal ==1"]
[playse  volume="100"  time="1000"  buf="1"  storage="ピストン系/バックピストン03.mp3"  loop="true"  ]
[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/09喘ぎ声(挿入)04.mp3"  loop="true" cond="tf.rand ==1"]
[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/10喘ぎ声(挿入)05.mp3"  loop="true"  cond="tf.rand !=1"]

[case is=11]
[chara_mod  name="H_バック"  time="0"  cross="false"  storage="chara/11/バックアニメ21.png" cond="f.H_Danmen_Flag == 0 && f.H_Sex_Anal ==0"]
[chara_mod  name="H_バック"  time="0"  cross="false"  storage="chara/11/バックアニメ21.png" cond="f.H_Danmen_Flag == 1 && f.H_Sex_Anal ==0 && f.H_Condom_On == 1"]
[chara_mod  name="H_バック"  time="0"  cross="false"  storage="chara/11/バックアニメ31.png" cond="f.H_Danmen_Flag == 1 && f.H_Sex_Anal ==0 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count == 0"]
[chara_mod  name="H_バック"  time="0"  cross="false"  storage="chara/11/バックアニメ34.png" cond="f.H_Danmen_Flag == 1 && f.H_Sex_Anal ==0 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count == 1"]
[chara_mod  name="H_バック"  time="0"  cross="false"  storage="chara/11/バックアニメ37.png" cond="f.H_Danmen_Flag == 1 && f.H_Sex_Anal ==0 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count >= 2"]

[chara_mod  name="H_バック"  time="0"  cross="false"  storage="chara/11/バックアニメ51.png" cond="f.H_Sex_Anal ==1"]
[playse  volume="100"  time="1000"  buf="1"  storage="ピストン系/バックピストン01.mp3"  loop="true"  ]
[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/06喘ぎ声(挿入)01.mp3"  loop="true" cond="tf.rand ==1"]
[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/03喘ぎ声(前)03.mp3"  loop="true"  cond="tf.rand !=1"]

[case is=12]
[chara_mod  name="H_バック"  time="0"  cross="false"  storage="chara/11/バックアニメ22.png" cond="f.H_Danmen_Flag == 0 && f.H_Sex_Anal ==0"]
[chara_mod  name="H_バック"  time="0"  cross="false"  storage="chara/11/バックアニメ22.png" cond="f.H_Danmen_Flag == 1 && f.H_Sex_Anal ==0 && f.H_Condom_On == 1"]
[chara_mod  name="H_バック"  time="0"  cross="false"  storage="chara/11/バックアニメ32.png" cond="f.H_Danmen_Flag == 1 && f.H_Sex_Anal ==0 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count == 0"]
[chara_mod  name="H_バック"  time="0"  cross="false"  storage="chara/11/バックアニメ35.png" cond="f.H_Danmen_Flag == 1 && f.H_Sex_Anal ==0 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count == 1"]
[chara_mod  name="H_バック"  time="0"  cross="false"  storage="chara/11/バックアニメ38.png" cond="f.H_Danmen_Flag == 1 && f.H_Sex_Anal ==0 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count >= 2"]

[chara_mod  name="H_バック"  time="0"  cross="false"  storage="chara/11/バックアニメ52.png" cond="f.H_Sex_Anal ==1"]
[playse  volume="100"  time="1000"  buf="1"  storage="ピストン系/バックピストン02.mp3"  loop="true"  ]
[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/06喘ぎ声(挿入)01.mp3"  loop="true" cond="tf.rand ==1"]
[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/07喘ぎ声(挿入)02.mp3"  loop="true"  cond="tf.rand !=1"]

[case is=13]
[chara_mod  name="H_バック"  time="0"  cross="false"  storage="chara/11/バックアニメ23.png" cond="f.H_Danmen_Flag == 0 && f.H_Sex_Anal ==0"]
[chara_mod  name="H_バック"  time="0"  cross="false"  storage="chara/11/バックアニメ23.png" cond="f.H_Danmen_Flag == 1 && f.H_Sex_Anal ==0 && f.H_Condom_On == 1"]
[chara_mod  name="H_バック"  time="0"  cross="false"  storage="chara/11/バックアニメ33.png" cond="f.H_Danmen_Flag == 1 && f.H_Sex_Anal ==0 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count == 0"]
[chara_mod  name="H_バック"  time="0"  cross="false"  storage="chara/11/バックアニメ36.png" cond="f.H_Danmen_Flag == 1 && f.H_Sex_Anal ==0 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count == 1"]
[chara_mod  name="H_バック"  time="0"  cross="false"  storage="chara/11/バックアニメ39.png" cond="f.H_Danmen_Flag == 1 && f.H_Sex_Anal ==0 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count >= 2"]

[chara_mod  name="H_バック"  time="0"  cross="false"  storage="chara/11/バックアニメ53.png" cond="f.H_Sex_Anal ==1"]
[playse  volume="100"  time="1000"  buf="1"  storage="ピストン系/バックピストン03.mp3"  loop="true"  ]
[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/09喘ぎ声(挿入)04.mp3"  loop="true" cond="tf.rand ==1"]
[playse  volume="100"  time="1000"  buf="3"  storage="喘ぎ声/10喘ぎ声(挿入)05.mp3"  loop="true"  cond="tf.rand !=1"]

[case]
[chara_mod  name="H_バック"  time="0"  cross="false"  storage="chara/11/バックアニメ00.png" cond="f.H_Danmen_Flag == 0 && f.H_Sex_Anal ==0 && f.H_Ue_Chakui == 1"]
[chara_mod  name="H_バック"  time="0"  cross="false"  storage="chara/11/バックアニメ00.png" cond="f.H_Danmen_Flag == 1 && f.H_Sex_Anal ==0 && f.H_Ue_Chakui == 1 && f.H_Condom_On == 1"]
[chara_mod  name="H_バック"  time="0"  cross="false"  storage="chara/11/バックアニメ10.png" cond="f.H_Danmen_Flag == 1 && f.H_Sex_Anal ==0 && f.H_Ue_Chakui == 1 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count == 0"]
[chara_mod  name="H_バック"  time="0"  cross="false"  storage="chara/11/バックアニメ10_11.png" cond="f.H_Danmen_Flag == 1 && f.H_Sex_Anal ==0 && f.H_Ue_Chakui == 1 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count == 1"]
[chara_mod  name="H_バック"  time="0"  cross="false"  storage="chara/11/バックアニメ10_12.png" cond="f.H_Danmen_Flag == 1 && f.H_Sex_Anal ==0 && f.H_Ue_Chakui == 1 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count >= 2"]

[chara_mod  name="H_バック"  time="0"  cross="false"  storage="chara/11/バックアニメ20.png" cond="f.H_Danmen_Flag == 0 && f.H_Sex_Anal ==0 && f.H_Ue_Chakui >= 2"]
[chara_mod  name="H_バック"  time="0"  cross="false"  storage="chara/11/バックアニメ20.png" cond="f.H_Danmen_Flag == 1 && f.H_Sex_Anal ==0 && f.H_Ue_Chakui >= 2 && f.H_Condom_On == 1"]
[chara_mod  name="H_バック"  time="0"  cross="false"  storage="chara/11/バックアニメ30.png" cond="f.H_Danmen_Flag == 1 && f.H_Sex_Anal ==0 && f.H_Ue_Chakui >= 2 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count == 0"]
[chara_mod  name="H_バック"  time="0"  cross="false"  storage="chara/11/バックアニメ30_11.png" cond="f.H_Danmen_Flag == 1 && f.H_Sex_Anal ==0 && f.H_Ue_Chakui >= 2 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count == 1"]
[chara_mod  name="H_バック"  time="0"  cross="false"  storage="chara/11/バックアニメ30_12.png" cond="f.H_Danmen_Flag == 1 && f.H_Sex_Anal ==0 && f.H_Ue_Chakui >= 2 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count >= 2"]

[chara_mod  name="H_バック"  time="0"  cross="false"  storage="chara/11/バックアニメ40.png" cond="f.H_Sex_Anal ==1 && f.H_Ue_Chakui == 1"]
[chara_mod  name="H_バック"  time="0"  cross="false"  storage="chara/11/バックアニメ50.png" cond="f.H_Sex_Anal ==1 && f.H_Ue_Chakui >= 2"]

[endswitch]
[_tb_end_tyrano_code]

[return  ]
*__挿入右選択肢

[tb_start_tyrano_code]
;右側の選択肢　fix仕様なので注意
[glink  color="btn_05_black"  size="20" storage="__Main_Night_Back_H.ks" target="*__ゆっくり動く"  text="Slow thrust"  x="1030"  y="100" fix="true" width=200 exp="f.H_Sex_Speed =1" enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3"]
[glink  color="btn_05_black"  size="20" storage="__Main_Night_Back_H.ks" target="*__激しく動く"  text="Hard thrust"  x="1030"  y="160" fix="true" width=200 exp="f.H_Sex_Speed =2" enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3"]
[glink  color="btn_05_black"  size="20" storage="__Main_Night_Back_H.ks" target="*__全力ピストン"  text="Max thrust"  x="1030"  y="220" fix="true" width=200 exp="f.H_Sex_Speed =3" enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3"]
[glink  color="btn_05_black"  size="20" storage="__Main_Night_Back_H.ks" target="*__動きを止める"  text="Back press"  x="1030"  y="280" fix="true" width=200 exp="f.H_Sex_Speed = 7" cond="f.Sta_Risei <= 10 && f.H_Sex_Anal ==0" enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3"]
[glink  color="btn_05_black"  size="20" storage="__Main_Night_Back_H.ks" target="*__動きを止める"  text="Stop moving"  x="1030"  y="340" fix="true" width=200 enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3"]
[glink  color="btn_05_black"  size="20" storage="__Main_Night_Back_H.ks" target="*__挿入をやめる"  text="Pull out"  x="1030"  y="400" fix="true" width=200 enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3"]

[glink  color="btn_05_black"  size="20" storage="__Main_Night_Back_H.ks" target="*__動きを止める"  text="Cross-section ON" x="30"  y="200"  fix="true" width=200 exp="f.H_Danmen_Flag = 1" cond="f.H_Danmen_Flag == 0 && f.H_Sex_Anal ==0 && f.H_Condom_On == 0" enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3"]
[glink  color="btn_05_black"  size="20" storage="__Main_Night_Back_H.ks" target="*__動きを止める"  text="Cross-section OFF" x="30"  y="200"  fix="true" width=200 exp="f.H_Danmen_Flag = 0" cond="f.H_Danmen_Flag == 1 && f.H_Sex_Anal ==0 && f.H_Condom_On == 0" enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3"]

[_tb_end_tyrano_code]

[return  ]
*__挿入右選択肢プレス

[tb_start_tyrano_code]
;右側の選択肢　fix仕様なので注意
[glink  color="btn_05_black"  size="20" storage="__Main_Night_Back_H.ks" target="*__ゆっくり動く"  text="Slow thrust"  x="1030"  y="100" fix="true" width=200 exp="f.H_Sex_Speed =4" enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3"]
[glink  color="btn_05_black"  size="20" storage="__Main_Night_Back_H.ks" target="*__激しく動く"  text="Hard thrust"  x="1030"  y="160" fix="true" width=200 exp="f.H_Sex_Speed =5" enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3"]
[glink  color="btn_05_black"  size="20" storage="__Main_Night_Back_H.ks" target="*__全力ピストン"  text="Max thrust"  x="1030"  y="220" fix="true" width=200 exp="f.H_Sex_Speed =6" enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3"]
[glink  color="btn_05_black"  size="20" storage="__Main_Night_Back_H.ks" target="*__動きを止める"  text="Doggy style"  x="1030"  y="280" fix="true" width=200 exp="f.H_Sex_Speed = 0" enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3"]
[glink  color="btn_05_black"  size="20" storage="__Main_Night_Back_H.ks" target="*__動きを止める"  text="Stop moving"  x="1030"  y="340" fix="true" width=200  enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3"]
[glink  color="btn_05_black"  size="20" storage="__Main_Night_Back_H.ks" target="*__挿入をやめる"  text="Pull out"  x="1030"  y="400" fix="true" width=200 enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3"]

[glink  color="btn_05_black"  size="20" storage="__Main_Night_Back_H.ks" target="*__動きを止める"  text="Cross-section ON" x="30"  y="200"  fix="true" width=200 exp="f.H_Danmen_Flag = 1" cond="f.H_Danmen_Flag == 0 && f.H_Sex_Anal ==0 && f.H_Condom_On == 0" enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3"]
[glink  color="btn_05_black"  size="20" storage="__Main_Night_Back_H.ks" target="*__動きを止める"  text="Cross-section OFF" x="30"  y="200"  fix="true" width=200 exp="f.H_Danmen_Flag = 0" cond="f.H_Danmen_Flag == 1 && f.H_Sex_Anal ==0 && f.H_Condom_On == 0" enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3"]

[_tb_end_tyrano_code]

[return  ]
*__絶頂処理挿入時

[font  size="14"  color="0x000000"  face="JKG-M_3"  bold="true"  ]
[tb_start_tyrano_code]
;射精音

[switch exp="f.rand"]
[case is=1]
[ptext layer="1" x="&f.X_Ka_Size" y="&f.Y_K_Size" size="30" text="Twitch♥" name="Kouka01"  zindex=100 edge="0xffffff" color="0x000000" edge="0xffffff" face="JK-Gothic-testM"  bold="true"]
[ptext layer="1" x="&f.X_Kb_Size" y="&f.Y_K_Size" size="30" text="Twitch♥" name="Kouka02"  zindex=100 edge="0xffffff" color="0x000000" edge="0xffffff" face="JK-Gothic-testM"  bold="true"]
[anim name="Kouka01" left="&f.X_Ka_Size_After" top="&f.Y_K_Size_After"  opacity=0 time=3000]
[anim name="Kouka02" left="&f.X_Kb_Size_After" top="&f.Y_K_Size_After"  opacity=0 time=3000]

[case is=2]
[ptext layer="1" x="&f.X_Ka_Size" y="&f.Y_K_Size" size="30" text="Throb♥" name="Kouka01"  zindex=100 edge="0xffffff" color="0x000000" edge="0xffffff" face="JK-Gothic-testM"  bold="true"]
[ptext layer="1" x="&f.X_Kb_Size" y="&f.Y_K_Size" size="30" text="Throb♥" name="Kouka02"  zindex=100 edge="0xffffff" color="0x000000" edge="0xffffff" face="JK-Gothic-testM"  bold="true"]
[anim name="Kouka01" left="&f.X_Ka_Size_After" top="&f.Y_K_Size_After"  opacity=0 time=3000]
[anim name="Kouka02" left="&f.X_Kb_Size_After" top="&f.Y_K_Size_After"  opacity=0 time=3000]

[case]
[ptext layer="1" x="&f.X_Ka_Size" y="&f.Y_K_Size" size="30" text="Throb♥" name="Kouka01"  zindex=100 edge="0xffffff" color="0x000000" edge="0xffffff" face="JK-Gothic-testM"  bold="true"]
[ptext layer="1" x="&f.X_Kb_Size" y="&f.Y_K_Size" size="30" text="Throb♥" name="Kouka02"  zindex=100 edge="0xffffff" color="0x000000" edge="0xffffff" face="JK-Gothic-testM"  bold="true"]
[anim name="Kouka01" left="&f.X_Ka_Size_After" top="&f.Y_K_Size_After"  opacity=0 time=3000]
[anim name="Kouka02" left="&f.X_Kb_Size_After" top="&f.Y_K_Size_After"  opacity=0 time=3000]

[endswitch]
[_tb_end_tyrano_code]

[resetfont  ]
[tb_start_tyrano_code]
;絶頂処理、キャラ【画像変更】
[switch exp="f.H_Sex_Speed"]
[case is=4]
[chara_mod  name="H_バックプレス"  time="0"  cross="false"  storage="chara/38/バックプレス絶頂01.png" cond="f.H_Danmen_Flag == 0 || f.H_Condom_On == 1"]
[chara_mod  name="H_バックプレス"  time="0"  cross="false"  storage="chara/38/バックプレス絶頂11.png" cond="f.H_Danmen_Flag == 1 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count == 0"]
[chara_mod  name="H_バックプレス"  time="0"  cross="false"  storage="chara/38/バックプレス絶頂14.png" cond="f.H_Danmen_Flag == 1 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count == 1"]
[chara_mod  name="H_バックプレス"  time="0"  cross="false"  storage="chara/38/バックプレス絶頂17.png" cond="f.H_Danmen_Flag == 1 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count >= 2"]

[case is=5]
[chara_mod  name="H_バックプレス"  time="0"  cross="false"  storage="chara/38/バックプレス絶頂01.png" cond="f.H_Danmen_Flag == 0 || f.H_Condom_On == 1"]
[chara_mod  name="H_バックプレス"  time="0"  cross="false"  storage="chara/38/バックプレス絶頂11.png" cond="f.H_Danmen_Flag == 1 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count == 0"]
[chara_mod  name="H_バックプレス"  time="0"  cross="false"  storage="chara/38/バックプレス絶頂14.png" cond="f.H_Danmen_Flag == 1 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count == 1"]
[chara_mod  name="H_バックプレス"  time="0"  cross="false"  storage="chara/38/バックプレス絶頂17.png" cond="f.H_Danmen_Flag == 1 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count >= 2"]

[case is=6]
[chara_mod  name="H_バックプレス"  time="0"  cross="false"  storage="chara/38/バックプレス絶頂02.png" cond="f.H_Danmen_Flag == 0 || f.H_Condom_On == 1"]
[chara_mod  name="H_バックプレス"  time="0"  cross="false"  storage="chara/38/バックプレス絶頂12.png" cond="f.H_Danmen_Flag == 1 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count == 0"]
[chara_mod  name="H_バックプレス"  time="0"  cross="false"  storage="chara/38/バックプレス絶頂15.png" cond="f.H_Danmen_Flag == 1 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count == 1"]
[chara_mod  name="H_バックプレス"  time="0"  cross="false"  storage="chara/38/バックプレス絶頂18.png" cond="f.H_Danmen_Flag == 1 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count >= 2"]

[case is=14]
[chara_mod  name="H_バックプレス"  time="0"  cross="false"  storage="chara/38/バックプレス絶頂21.png" cond="f.H_Danmen_Flag == 0 || f.H_Condom_On == 1"]
[chara_mod  name="H_バックプレス"  time="0"  cross="false"  storage="chara/38/バックプレス絶頂31.png" cond="f.H_Danmen_Flag == 1 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count == 0"]
[chara_mod  name="H_バックプレス"  time="0"  cross="false"  storage="chara/38/バックプレス絶頂34.png" cond="f.H_Danmen_Flag == 1 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count == 1"]
[chara_mod  name="H_バックプレス"  time="0"  cross="false"  storage="chara/38/バックプレス絶頂37.png" cond="f.H_Danmen_Flag == 1 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count >= 2"]

[case is=15]
[chara_mod  name="H_バックプレス"  time="0"  cross="false"  storage="chara/38/バックプレス絶頂21.png" cond="f.H_Danmen_Flag == 0 || f.H_Condom_On == 1"]
[chara_mod  name="H_バックプレス"  time="0"  cross="false"  storage="chara/38/バックプレス絶頂31.png" cond="f.H_Danmen_Flag == 1 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count == 0"]
[chara_mod  name="H_バックプレス"  time="0"  cross="false"  storage="chara/38/バックプレス絶頂34.png" cond="f.H_Danmen_Flag == 1 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count == 1"]
[chara_mod  name="H_バックプレス"  time="0"  cross="false"  storage="chara/38/バックプレス絶頂37.png" cond="f.H_Danmen_Flag == 1 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count >= 2"]

[case is=16]
[chara_mod  name="H_バックプレス"  time="0"  cross="false"  storage="chara/38/バックプレス絶頂22.png" cond="f.H_Danmen_Flag == 0 || f.H_Condom_On == 1"]
[chara_mod  name="H_バックプレス"  time="0"  cross="false"  storage="chara/38/バックプレス絶頂32.png" cond="f.H_Danmen_Flag == 1 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count == 0"]
[chara_mod  name="H_バックプレス"  time="0"  cross="false"  storage="chara/38/バックプレス絶頂35.png" cond="f.H_Danmen_Flag == 1 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count == 1"]
[chara_mod  name="H_バックプレス"  time="0"  cross="false"  storage="chara/38/バックプレス絶頂38.png" cond="f.H_Danmen_Flag == 1 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count >= 2"]

[case]
[if exp="f.H_Sex_Anal ==0"]
[chara_mod  name="H_バック"  time="0"  cross="false"  storage="chara/11/バックアニメ絶頂01.png" cond="f.H_Ue_Chakui ==1 && (f.H_Danmen_Flag == 0 || f.H_Condom_On == 1)"]
[chara_mod  name="H_バック"  time="0"  cross="false"  storage="chara/11/バックアニメ絶頂11.png" cond="f.H_Ue_Chakui ==1 && f.H_Danmen_Flag == 1 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count == 0"]
[chara_mod  name="H_バック"  time="0"  cross="false"  storage="chara/11/バックアニメ絶頂12.png" cond="f.H_Ue_Chakui ==1 && f.H_Danmen_Flag == 1 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count == 1"]
[chara_mod  name="H_バック"  time="0"  cross="false"  storage="chara/11/バックアニメ絶頂13.png" cond="f.H_Ue_Chakui ==1 && f.H_Danmen_Flag == 1 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count >= 2"]

[chara_mod  name="H_バック"  time="0"  cross="false"  storage="chara/11/バックアニメ絶頂21.png" cond="f.H_Ue_Chakui >=2 && (f.H_Danmen_Flag == 0 || f.H_Condom_On == 1)"]
[chara_mod  name="H_バック"  time="0"  cross="false"  storage="chara/11/バックアニメ絶頂31.png" cond="f.H_Ue_Chakui >=2 && f.H_Danmen_Flag == 1 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count == 0"]
[chara_mod  name="H_バック"  time="0"  cross="false"  storage="chara/11/バックアニメ絶頂32.png" cond="f.H_Ue_Chakui >=2 && f.H_Danmen_Flag == 1 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count == 1"]
[chara_mod  name="H_バック"  time="0"  cross="false"  storage="chara/11/バックアニメ絶頂33.png" cond="f.H_Ue_Chakui >=2 && f.H_Danmen_Flag == 1 && f.H_Condom_On == 0 && f.H_DanmenNakadasi_Count >= 2"]

[elsif exp="f.H_Sex_Anal ==1"]
[chara_mod  name="H_バック"  time="0"  cross="false"  storage="chara/11/バックアニメ絶頂41.png" cond="f.H_Ue_Chakui ==1"]
[chara_mod  name="H_バック"  time="0"  cross="false"  storage="chara/11/バックアニメ絶頂51.png" cond="f.H_Ue_Chakui >=2"]
[endif]

[endswitch]

[_tb_end_tyrano_code]

[return  ]
*__道具素体変更

[tb_start_tyrano_code]
;道具による素体変更
[switch exp="f.H_Tool_Flag"]

;ローターは着衣パターンで分岐
[case is= 1001]
[chara_mod  name="H_バック"  time="0"  cross="false"  storage="chara/11/バック11.png" cond="f.H_Ue_Chakui == 1 && H_Pantu_Chakui >=1"]
[chara_mod  name="H_バック"  time="0"  cross="false"  storage="chara/11/バック12.png" cond="f.H_Ue_Chakui >= 2 && H_Pantu_Chakui >=1"]

[case is= 1010]
[chara_mod  name="H_バック"  time="0"  cross="false"  storage="chara/11/バック21.png" cond="f.H_Ue_Chakui == 1"]
[chara_mod  name="H_バック"  time="0"  cross="false"  storage="chara/11/バック22.png" cond="f.H_Ue_Chakui >= 2"]
[case is= 1011]
[chara_mod  name="H_バック"  time="0"  cross="false"  storage="chara/11/バック21.png" cond="f.H_Ue_Chakui == 1"]
[chara_mod  name="H_バック"  time="0"  cross="false"  storage="chara/11/バック22.png" cond="f.H_Ue_Chakui >= 2"]

[case is= 1100]
[chara_mod  name="H_バック"  time="0"  cross="false"  storage="chara/11/バック31.png" cond="f.H_Ue_Chakui == 1"]
[chara_mod  name="H_バック"  time="0"  cross="false"  storage="chara/11/バック32.png" cond="f.H_Ue_Chakui >= 2"]
[case is= 1101]
[chara_mod  name="H_バック"  time="0"  cross="false"  storage="chara/11/バック41.png" cond="f.H_Ue_Chakui == 1"]
[chara_mod  name="H_バック"  time="0"  cross="false"  storage="chara/11/バック42.png" cond="f.H_Ue_Chakui >= 2"]
[case is= 1110]
[chara_mod  name="H_バック"  time="0"  cross="false"  storage="chara/11/バック51.png" cond="f.H_Ue_Chakui == 1"]
[chara_mod  name="H_バック"  time="0"  cross="false"  storage="chara/11/バック52.png" cond="f.H_Ue_Chakui >= 2"]
[case is= 1111]
[chara_mod  name="H_バック"  time="0"  cross="false"  storage="chara/11/バック51.png" cond="f.H_Ue_Chakui == 1"]
[chara_mod  name="H_バック"  time="0"  cross="false"  storage="chara/11/バック52.png" cond="f.H_Ue_Chakui >= 2"]

[endswitch]
[_tb_end_tyrano_code]

[return  ]
*__射精効果音

[intrandom_ko10panda  max="3"  count="1"  show_result="false"  show_style="style_a"  show_detail="false"  detail_length="10"  show_log="log_4"  var_name="tf.rand"  ]
[font  size="14"  color="0x000000"  face="JKG-M_3"  bold="true"  ]
[tb_start_tyrano_code]
;射精効果音ランダム

[switch exp="tf.rand"]
[case is=1]
[ptext layer="1" x="&f.X_Ka_Size" y="&f.Y_K_Size" size="30" text="Spurt♥" name="Kouka01"  zindex=100 edge="0xffffff" color="0x000000" edge="0xffffff" face="JK-Gothic-testM"  bold="true"]
[ptext layer="1" x="&f.X_Kb_Size" y="&f.Y_K_Size" size="30" text="Spurt♥" name="Kouka02"  zindex=100 edge="0xffffff" color="0x000000" edge="0xffffff" face="JK-Gothic-testM"  bold="true"]
[anim name="Kouka01" left="&f.X_Ka_Size_After" top="&f.Y_K_Size_After"  opacity=0 time=3000]
[anim name="Kouka02" left="&f.X_Kb_Size_After" top="&f.Y_K_Size_After"  opacity=0 time=3000]

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
*__セリフと効果音Y座標後背位

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

f.Y_S_Size  = 580;
f.Y_K_Size  = 180;
f.X_Ka_Size = 690;
f.X_Kb_Size = 490;
}

// 移動後のサイズ
f.Y_S_Size_After  = f.Y_S_Size  - 20;
f.Y_K_Size_After  = f.Y_K_Size  - 20;
f.X_Ka_Size_After = f.X_Ka_Size + 20;
f.X_Kb_Size_After = f.X_Kb_Size - 20;

[endscript]

[_tb_end_tyrano_code]

[return  ]
[tb_start_tyrano_code]
;効果音の位置を体位で分岐　Sはセリフの位置　Kは効果音の位置
[eval exp="f.Y_S_Size  = 180"]
[eval exp="f.Y_K_Size  = 580"]
[eval exp="f.X_Ka_Size  = 710"]
[eval exp="f.X_Kb_Size  = 510"]

[if exp="(f.H_Sex_Speed >= 4 && f.H_Sex_Speed <= 7) || (f.H_Sex_Speed >= 14 && f.H_Sex_Speed <= 17)"]
[eval exp="f.Y_S_Size  = 580"]
[eval exp="f.Y_K_Size  = 180"]
[eval exp="f.X_Ka_Size  = 690"]
[eval exp="f.X_Kb_Size  = 490"]
[endif]

;移動後のサイズ
[eval exp="f.Y_S_Size_After = f.Y_S_Size - 20"]
[eval exp="f.Y_K_Size_After = f.Y_K_Size - 20"]
[eval exp="f.X_Ka_Size_After = f.X_Ka_Size + 20"]
[eval exp="f.X_Kb_Size_After = f.X_Kb_Size - 20"]


[_tb_end_tyrano_code]

