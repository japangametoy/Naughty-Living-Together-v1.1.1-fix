[_tb_system_call storage=system/___Main_Kyuuka.ks]

[tb_eval  exp="f.Fan=900000"  name="Fan"  cmd="="  op="t"  val="900000"  val_2="undefined"  ]
[tb_eval  exp="f.Imo_Uta=150"  name="Imo_Uta"  cmd="="  op="t"  val="150"  val_2="undefined"  ]
[tb_eval  exp="f.Imo_Dance=80"  name="Imo_Dance"  cmd="="  op="t"  val="80"  val_2="undefined"  ]
[tb_eval  exp="f.Imo_Engi=80"  name="Imo_Engi"  cmd="="  op="t"  val="80"  val_2="undefined"  ]
[tb_eval  exp="f.Imo_Wajutu=100"  name="Imo_Wajutu"  cmd="="  op="t"  val="100"  val_2="undefined"  ]
[tb_eval  exp="f.Oni_Youshi=6"  name="Oni_Youshi"  cmd="="  op="t"  val="6"  val_2="undefined"  ]
[tb_eval  exp="f.Oni_Work=10"  name="Oni_Work"  cmd="="  op="t"  val="10"  val_2="undefined"  ]
[tb_eval  exp="f.Oni_Taikaku=7"  name="Oni_Taikaku"  cmd="="  op="t"  val="7"  val_2="undefined"  ]
[tb_eval  exp="f.Oni_Ero=5"  name="Oni_Ero"  cmd="="  op="t"  val="5"  val_2="undefined"  ]
[tb_eval  exp="f.Sta_Seiyoku=100"  name="Sta_Seiyoku"  cmd="="  op="t"  val="100"  val_2="undefined"  ]
[tb_eval  exp="f.Sys_Seiryoku_Max=8"  name="Sys_Seiryoku_Max"  cmd="="  op="t"  val="8"  val_2="undefined"  ]
[tb_eval  exp="f.Sys_Seiryoku=8"  name="Sys_Seiryoku"  cmd="="  op="t"  val="8"  val_2="undefined"  ]
[tb_eval  exp="f.Sta_Suki=200"  name="Sta_Suki"  cmd="="  op="t"  val="200"  val_2="undefined"  ]
[tb_eval  exp="f.Sys_Syume=100"  name="Sys_Syume"  cmd="="  op="t"  val="100"  val_2="undefined"  ]
[tb_eval  exp="f.BestEnd_Endless_Flag=0"  name="BestEnd_Endless_Flag"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.Live_roter_first=3"  name="Live_roter_first"  cmd="="  op="t"  val="3"  val_2="undefined"  ]
[tb_eval  exp="f.H_First_Flag=3"  name="H_First_Flag"  cmd="="  op="t"  val="3"  val_2="undefined"  ]
[tb_eval  exp="f.Sys_Okane=9999999"  name="Sys_Okane"  cmd="="  op="t"  val="9999999"  val_2="undefined"  ]
[tb_eval  exp="f.H_Furo_First=1"  name="H_Furo_First"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.Sys_Youbi=6"  name="Sys_Youbi"  cmd="="  op="t"  val="6"  val_2="undefined"  ]
[tb_eval  exp="f.Clear_Flag=1"  name="Clear_Flag"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="_Array_.ks"  target="*__配列宣言"  ]
[tb_start_tyrano_code]
[eval exp="f.talks[15].read=true]
[eval exp="f.talks[15].flag=true]
[eval exp="f.talks[40].read=true]
[eval exp="f.talks[40].flag=true]
[eval exp="f.talks[45].read=true]
[eval exp="f.talks[45].flag=true]


[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;処女判定
;[eval exp="f.Sex_Count[0].bestcount =1"]
;[eval exp="f.Sex_Count[0].syume =5"]

[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;途中でリセットされているが、フラグ管理の貼り付け用
[eval exp="f.Sex_Count[7].bestcount =5"]

[_tb_end_tyrano_code]

[tb_eval  exp="f.Sta_Risei=35"  name="Sta_Risei"  cmd="="  op="t"  val="35"  val_2="undefined"  ]
[tb_start_tyrano_code]
[iscript]
f.Sex_Count[3].bestcount=15;
f.Sex_Count[4].bestcount=15;
f.Sex_Count[5].bestcount=15;
[endscript]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[iscript]
f.Kaihatu[0].count=50;
f.Kaihatu[1].count=50;
f.Kaihatu[2].count=50;
f.Kaihatu[3].count=50;
f.Kaihatu[4].count=50;
[endscript]
[_tb_end_tyrano_code]

*__メイン休暇

[tb_autosave  title="オートセーブ"  ]
[tb_start_tyrano_code]
;体験版用
[eval exp="sf.Taikenban = 0"]
[eval exp="f.Sta_Risei = 50" cond="f.Sta_Risei <= 50 && sf.Taikenban == 1"]

[_tb_end_tyrano_code]

[call  storage="Main_Sta.ks"  target="*__メインステ表示"  ]
[call  storage="_Array_Kaihatu.ks"  target="*__一日H回数リセット"  ]
[tb_start_tyrano_code]
;妹　性欲増加
[getrand var="f.Kaiwa_Random" min="1" max="11"]

[iscript]
f.Sta_Seiyoku += Math.floor((101-f.Sta_Risei) /4 + f.Kaiwa_Random);
if(f.Sta_Seiyoku > 120){
f.Sta_Seiyoku = 120;
};
[endscript]
[_tb_end_tyrano_code]

[tb_eval  exp="f.Sys_Jikan=0"  name="Sys_Jikan"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_start_tyrano_code]
[layopt layer=1 visible=true opacity=255]
[_tb_end_tyrano_code]

*_戻り先

[tb_start_tyrano_code]
[playbgm  volume="30"  time="500"  loop="true"  storage="調整版.mp3"  fadein="true" restart="false" ]
[_tb_end_tyrano_code]

[call  storage="_Array_Kaihatu.ks"  target="*__開発配列初期化"  ]
[tb_start_tyrano_code]
;時間経過マスクを条件分岐
[switch exp="f.Sys_Jikan"]

[case is=0]
[if exp="f.Sys_Youbi == 5"]
[playse  volume="50"  time="1000"  buf="0"  storage="スズメが鳴く朝02.mp3"  ]
[mask  time="2000"  effect="fadeIn"  color="0x000000"  graphic="時間経過カット01_1.png"  ]
[elsif exp="f.Sys_Youbi == 6"]
[playse  volume="50"  time="1000"  buf="0"  storage="スズメが鳴く朝02.mp3"  ]
[mask  time="2000"  effect="fadeIn"  color="0x000000"  graphic="時間経過カット01_2.png"  ]
[elsif exp="f.Sys_Youbi == 0"]
[playse  volume="50"  time="1000"  buf="0"  storage="スズメが鳴く朝02.mp3"  ]
[mask  time="2000"  effect="fadeIn"  color="0x000000"  graphic="時間経過カット01_3.png"  ]
[endif]

[case is=1]
[playse  volume="100"  time="1000"  buf="0"  storage="時計の針2.mp3"  ]
[mask  time="500"  effect="fadeInUp"  color="0x000000"  graphic="時間経過カット02_.png"  ]

[case is=2]
[playse  volume="100"  time="1000"  buf="0"  storage="時計の針2.mp3"  ]
[mask  time="500"  effect="fadeInUp"  color="0x000000"  graphic="時間経過カット03.png"  ]

[case is=3]
[playse  volume="100"  time="1000"  buf="0"  storage="時計の針2.mp3"  ]
[mask  time="500"  effect="fadeInUp"  color="0x000000"  graphic="時間経過カット04.png"  ]
[endswitch]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;怪しい店通知
[if exp="f.Sys_Syume  == 30 && f.Sys_Youbi == 5 && f.Sys_Jikan == 0"]
[notice color=black top=350 right=0  height=45 width=150 size=15 text="A shady shop opened" wait=false wait_time=2400]
[endif]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;攻略本通知　クリア後の攻略本も通知
[if exp="f.Sys_Syume >0 && f.Sys_Syume  < 46 && f.Sys_Syume%5 == 0 && f.Sys_Youbi == 5 && f.Sys_Jikan == 0"]
[notice color=black top=400 right=0  height=45 width=150 size=15 text="Strategy book in stock" wait=false wait_time=2400]

[elsif exp="f.Clear_Flag_Book ==0 && f.Clear_Flag ==1 "]
[notice color=black top=400 right=0  height=45 width=150 size=15 text="Strategy book in stock" wait=false wait_time=2400]
[eval exp="f.Clear_Flag_Book = 1"]
[endif]
[_tb_end_tyrano_code]

*_時間経過なし戻り先

[chara_hide_all  time="0"  wait="true"  ]
[tb_hide_message_window  ]
[tb_image_hide  time="0"  ]
[call  storage="Backgraund_Select.ks"  target="*__背景時間で選択"  ]
[cm  ]
[call  storage="__Main_Back.ks"  target="*__メイン背景ランダム"  ]
*__キス戻り先

[call  storage="Oni_Name1.ks"  target="*__兄名前変更"  ]
[call  storage="Main_Sta.ks"  target="*__メインステ表示"  ]
[tb_eval  exp="f.Tre_Up=1"  name="Tre_Up"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[mask_off  time="300"  effect="fadeOut"  ]
[call  storage="__Main_Kaiwa_Flag.ks"  target="*__会話フラグ"  ]
[tb_start_tyrano_code]
;会話追加通知
[if exp="f.Talk_New_Flag > 0"]
[notice color=black top=450 right=0  height=45 width=150 size=15 text="New conversation added" wait=false wait_time=2000]
[eval exp="f.Talk_New_Flag = 0"]
[endif]
[_tb_end_tyrano_code]

[tb_show_message_window  ]
[tb_start_tyrano_code]
;休日朝のセリフ　＆ライブの日か判定
[if exp="f.Sys_Syume%4 == 0 && f.Sys_Youbi == 5 && f.Sys_Jikan==0"]
Today is [emb exp="f.Imo_Name"]'s concert day.[l]
[elsif exp="f.Sys_Jikan ==0"]
Today is my day off.[r]
What should I do?[l]
[endif]

[_tb_end_tyrano_code]

[tb_hide_message_window  ]
[call  storage="Main_Sta.ks"  target="*__メインステ表示"  ]
[tb_start_tyrano_code]
;BG番号によるクリッカブル　分岐

[switch exp="f.Bg_Random"]
[case is=1]
[clickable x=950 y=170 width=250 height=550 target=*__妹クリック後]
[case is=2]
[clickable x=368 y=353 width=180 height=320 target=*__妹クリック後]
[case is=3]
[clickable x=930 y=170 width=250 height=550 target=*__妹クリック後]
[case is=4]
;2と共有
[clickable x=368 y=353 width=180 height=320 target=*__妹クリック後 cond="f.Sta_Suki < 30"]
[clickable x=665 y=389 width=165 height=330 target=*__妹クリック後 cond="f.Sta_Suki >= 30"]

[case is=5]
;3と共有
[clickable x=930 y=170 width=250 height=550 target=*__妹クリック後 cond="f.Sta_Suki < 60"]
[clickable x=613 y=369 width=450 height=155 target=*__妹クリック後 cond="f.Sta_Suki >= 60"]

[case is=6]
;1と共有
[clickable x=950 y=170 width=250 height=550 target=*__妹クリック後 cond="f.Sta_Suki < 90"]
[clickable x=741 y=70 width=400 height=650 target=*__妹クリック後 cond="f.Sta_Suki >= 90" ]

[case is=7]
;2と共有さくら07
[clickable x=368 y=353 width=180 height=320 target=*__妹クリック後 cond="f.Sta_Suki < 120"]
[clickable x=860 y=110 width=410 height=440 target=*__妹クリック後 cond="f.Sta_Suki >= 120"]

[case is=8]
;3と共有さくら07
[clickable x=930 y=170 width=250 height=550 target=*__妹クリック後 cond="f.Sta_Suki < 120"]
[clickable x=860 y=110 width=410 height=440 target=*__妹クリック後 cond="f.Sta_Suki >= 120" ]

[case is=9]
;1と共有さくら08
[clickable x=950 y=170 width=250 height=550 target=*__妹クリック後 cond="f.Sta_Suki < 150" ]
[clickable x=780 y=110 width=490 height=440 target=*__妹クリック後 cond="f.Sta_Suki >= 150"]
[clickable x=900 y=550 width=200 height=130 storage="__Main_Back.ks" target=*__妹キス後 cond="f.Sta_Suki >= 150"]

[case is=10]
;3と6と共有さくら08
[clickable x=930 y=170 width=250 height=550 target=*__妹クリック後 cond="f.Sta_Suki < 90"]
[clickable x=741 y=70 width=400 height=650 target=*__妹クリック後  cond="f.Sta_Suki >= 90 && f.Sta_Suki < 150" ]
[clickable x=780 y=110 width=490 height=440 target=*__妹クリック後 cond="f.Sta_Suki  >= 150"]
[clickable x=900 y=550 width=200 height=130 storage="__Main_Back.ks" target=*__妹キス後 cond="f.Sta_Suki  >= 150"]

[case is=11]
;1と共有さくらA
[clickable x=950 y=170 width=250 height=550 target=*__妹クリック後 cond="f.Sta_Risei > 0"]
[clickable x=845 y=115 width=430 height=600 storage="__Main_Back.ks"  target=*__妹待機おっぱい cond="f.Sta_Risei == 0"]

[case is=12]
;2と共有さくらA
[clickable x=368 y=353 width=180 height=320 target=*__妹クリック後 cond="f.Sta_Risei > 0"]
[clickable x=845 y=115 width=430 height=600 storage="__Main_Back.ks"  target=*__妹待機おっぱい cond="f.Sta_Risei == 0"]

[case is=13]
;1と共有さくらB
[clickable x=950 y=170 width=250 height=550 target=*__妹クリック後  cond="!f.talks[42].flag || !f.talks[42].read" ]
[clickable x=845 y=115 width=430 height=600 storage="__Main_Back.ks" target=*__妹待機えっち  cond="f.talks[42].flag && f.talks[42].read" ]

[case is=14]
;3と共有さくらB
[clickable x=930 y=170 width=250 height=550 target=*__妹クリック後 cond="!f.talks[42].flag || !f.talks[42].read"]
[clickable x=845 y=115 width=430 height=600 storage="__Main_Back.ks" target=*__妹待機えっち cond=" f.talks[42].flag && f.talks[42].read"]

[endswitch]

[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;バイト、買い物、寝る　のアイコン配置
[button  layer=1  x="1130"  y="65"  width="60"  height="60"   graphic="休暇アイコン12.png" enterimg="休暇アイコン11.png"  target="*__寝る"   name="Kyuka_Icon" hint="Sleep"  enterse="カーソル移動12.mp3"  clickse="決定ボタンを押す53.mp3"]
[button  layer=1  x="1060"  y="65"  width="60"  height="60"   graphic="休暇アイコン22.png" enterimg="休暇アイコン21.png"  storage="_Buy_Item.ks" target="*__アイテム購入スタート"   name="Kyuka_Icon" hint="Go shopping"  enterse="カーソル移動12.mp3"  clickse="決定ボタンを押す53.mp3"]
[button  layer=1  x="990"  y="65"  width="60"  height="60"   graphic="休暇アイコン32.png" enterimg="休暇アイコン31.png"  target="*__バイト"   name="Kyuka_Icon" hint="Work part-time"  enterse="カーソル移動12.mp3"  clickse="決定ボタンを押す53.mp3"]

[_tb_end_tyrano_code]

[s  ]
*__妹クリック後

[tb_show_message_window  ]
[call  storage="Backgraund_Select.ks"  target="*__背景時間で選択"  ]
[chara_hide_all  time="0"  wait="true"  ]
[chara_show  name="さくら01"  time="0"  wait="true"  storage="chara/1/キャラ待機01.png"  width="500"  height="550"  left="750"  top="170"  reflect="false"  ]
[chara_part  name="さくら01"  time="0"  目="キャラ待機01_01.png"  wait="true"  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
What's wrong, [emb exp="f.Oni_Name3"]?[p]
#
[_tb_end_text]

*__妹クリック後戻り先

[font  size="18"  color="0x000000"  face="JKG-M_3"  bold="true"  ]
[tb_start_tyrano_code]
;妹クリック後　選択肢
[glink  color="btn_05_black"  storage="__Main_Kyuuka.ks"  size="25"  x="530"  y="200"  width="250"  height="50"  text="Communication"  _clickable_img=""  target="*__コミュニケーション" enterse="マウスオーバー.mp3"  clickse="決定ボタンを押す53.mp3" ]
[glink  color="btn_05_black"  storage="__Main_SkinShip.ks"  size="25"  x="530"  y="250"  width="250"  height="50"  text="Skinship"  _clickable_img=""  target="*__スキンシップトップ" enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3" ]
[glink  color="btn_05_black"  storage="__Main_KaiwaWork.ks"  size="25"  x="530"  y="300"  width="250"  height="50"  text="Help with practice"  _clickable_img=""  target="*__仕事話" enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3" ]
[glink  color="btn_05_black"  storage="__Main_Haisin.ks"  size="25"  x="530"  y="350"  width="250"  height="50"  text="Help with streaming"  _clickable_img=""  target="*__配信を手伝う" enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3" ]
[glink  color="btn_05_black"  storage="__Main_Drink.ks"  size="25"  x="530"  y="400"  width="250"  height="50"  text="Use item"  _clickable_img=""  target="*__何か飲むトップ" enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3" ]
[glink name="rightClickButton" x="530" y="450" size="25" width="250" height="50" color="btn_05_black" storage="__Main_Kyuuka.ks" text="Nothing" target="*_時間経過なし戻り先" enterse="マウスオーバー.mp3" clickse="キャンセル1.mp3"]
[_tb_end_tyrano_code]

[resetfont  ]
[s  ]
*__コミュニケーション

*__日常会話戻り先

[font  size="18"  color="0x000000"  face="JKG-M_3"  bold="true"  ]
[tb_start_tyrano_code]
[glink  color="btn_05_black"  storage="__Main_kaiwa.ks"  size="25"  x="530"  y="200"  width="250"  height="50"  text="Casual chat"  _clickable_img=""  target="*__日常会話" enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3" ]
[glink  color="btn_05_black"  storage="__Main_Hkaiwa.ks"  size="25"  x="530"  y="250"  width="250"  height="50"  text="Naughty chat"  _clickable_img=""  target="*__H会話" enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3" ]
[glink  color="btn_05_black"  storage="__Main_Asobu.ks"  size="25"  x="530"  y="300"  width="250"  height="50"  text="Play together"  _clickable_img=""  target="*__一緒に遊ぶ" enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3" ]
[glink name="rightClickButton" x="530" y="350" size="25" width="250" height="50" color="btn_05_black" storage="__Main_Kyuuka.ks" text="Back" target="*__妹クリック後戻り先" enterse="マウスオーバー.mp3" clickse="キャンセル1.mp3"]
[_tb_end_tyrano_code]

[resetfont  ]
[s  ]
*__バイト

[tb_start_tyrano_code]
[cm]
[_tb_end_tyrano_code]

[font  size="18"  color="0x000000"  face="JKG-M_3"  bold="true"  ]
[tb_start_tyrano_code]
;バイト選択肢
[glink  color="btn_05_black"  storage="__Main_Kyuuka.ks"  size="25"  x="530"  y="300"  width="250"  height="50"  text="Start part-time job"  _clickable_img=""  target="*_バイト処理" enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3"]
[glink name="rightClickButton" x="530" y="400" size="25" width="250" height=50 color="btn_05_black" storage="__Main_Kyuuka.ks" text="Nothing" target="*_時間経過なし戻り先" enterse="マウスオーバー.mp3" clickse="キャンセル1.mp3"]
[_tb_end_tyrano_code]

[resetfont  ]
[s  ]
*_バイト処理

[tb_image_show  time="0"  storage="default/イベントカット31土日バイト.png"  width="500"  height="300"  x="450"  y="170"  name="img_81"  ]
[call  storage="Tre_Bar.ks"  target="*__土日イベントバー増減"  ]
[tb_start_tyrano_code]
;バイト　仕事力と週目が影響
[eval exp="f.Tre_Up = 3000 + 500*( f.Oni_Work) + 100*(f.Sys_Syume)"]
[_tb_end_tyrano_code]

[call  storage="Tre_Sta_Up.ks"  target="*__お金UP"  ]
[tb_image_hide  time="0"  ]
[call  storage="Main_Sta.ks"  target="*__メインステ表示"  ]
[jump  storage="__Main_Kyuuka.ks"  target="*___イベント終了時間経過"  ]
*__寝る

[tb_start_tyrano_code]
[cm]
[_tb_end_tyrano_code]

[font  size="18"  color="0x000000"  face="JKG-M_3"  bold="true"  ]
[tb_start_tyrano_code]
;寝る選択肢
[glink  color="btn_05_black"  storage="__Main_Kyuuka.ks"  size="25"  x="530"  y="250"  width="250"  height="50"  text="Take a nap"  _clickable_img=""  target="*___イベント終了時間経過"  enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3"]
[glink  color="btn_05_black"  storage="__Main_Kyuuka.ks"  size="25"  x="530"  y="300"  width="250"  height="50"  text="Sleep all day"  _clickable_img=""  target="*_寝る処理"  enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3" ]
[glink name="rightClickButton" x="530" y="400" size="25" width="250" height=50 color="btn_05_black" storage="__Main_Kyuuka.ks" text="Nothing" target="*_時間経過なし戻り先" enterse="マウスオーバー.mp3" clickse="キャンセル1.mp3"]
[_tb_end_tyrano_code]

[resetfont  ]
[s  ]
*_寝る処理

[jump  storage="__Main_Kyuuka.ks"  target="*__直寝の飛び先"  ]
*__店からの帰り先

[tb_start_tyrano_code]
;BGM復帰　夜以外
[playbgm  volume="30"  time="500"  loop="true"  storage="調整版.mp3"  fadein="true" cond="f.Sys_Jikan <=2" ]
[_tb_end_tyrano_code]

*___イベント終了時間経過

[tb_eval  exp="f.Sys_Jikan+=1"  name="Sys_Jikan"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_start_tyrano_code]
;ライブへの分岐　４週目かつ土曜日かつ夜
[if exp="f.Sys_Syume%4 == 0 && f.Sys_Youbi == 5 && f.Sys_Jikan == 2]
[jump storage="Live.ks" target="*__ライブ開始"]
[endif]

[if exp="f.Sys_Syume%4 == 0 && f.Sys_Youbi == 5 && f.Sys_Jikan == 1]
[jump storage="_Entrance.ks" target="*__ライブ前"]
[endif]

[_tb_end_tyrano_code]

[jump  storage="__Main_Kyuuka.ks"  target="*_戻り先"  cond="f.Sys_Jikan<3"  ]
*___夜中

[stopbgm  time="1000"  fadeout="true"  ]
[playbgm  volume="100"  time="1000"  loop="true"  storage="シャワーの音増幅版.mp3"  fadein="true"  ]
[chara_hide_all  time="0000"  wait="true"  ]
[tb_image_hide  time="1000"  ]
[call  storage="Oni_Name1.ks"  target="*__兄名前変更"  ]
[call  storage="Main_Sta.ks"  target="*__メインステ表示"  ]
[call  storage="Backgraund_Select.ks"  target="*__背景時間で選択"  ]
[mask_off  time="300"  effect="fadeOut"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#
[emb exp="f.Imo_Name"] is in the bath・・・[p]

[_tb_end_text]

[font  size="18"  color="0x000000"  face="JKG-M_3"  bold="true"  ]
[tb_start_tyrano_code]
;風呂オナニー選択肢

[glink  color="btn_05_black"  storage="__Main_Kyuuka.ks"  size="25"  x="530"  y="200"  width="250"  height="50"  text="Masturbate" target="*__夜中オナニー" cond="f.Sys_Seiryoku>0" enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3"]
[glink  color="btn_05_black"  storage="__Main_Furo.ks"  size="25"  x="530"  y="250"  width="250"  height="50"  text="Join her"  _clickable_img=""  target="*__深夜風呂" cond="f.Sta_Risei<=75" enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3"]
[glink  color="btn_05_black"  storage="__Main_Kyuuka.ks"  size="25"  x="530"  y="300"  width="250"  height="50"  text="Meditate"  _clickable_img=""  target="*__風呂入浴後"  enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3"]
[_tb_end_tyrano_code]

[resetfont  ]
[s  ]
*__夜中オナニー

[tb_image_show  time="0"  storage="default/イベントカット47オナニー.png"  width="500"  height="300"  x="450"  y="170"  name="img_124"  ]
[call  storage="Tre_Bar.ks"  target="*__土日イベントバー増減"  ]
[tb_eval  exp="f.Sys_Seiryoku-=1"  name="Sys_Seiryoku"  cmd="-="  op="t"  val="1"  val_2="undefined"  ]
[tb_start_tyrano_code]
;ランダム　オナニーでエロ技プラス
[getrand var="f.Kaiwa_Random" min="1" max="10"]

[switch exp="f.Kaiwa_Random"]
[case is=1]
[jump target="*_エロ技アップオナニー" cond ="f.Oni_Ero < 10"]
[case]
[jump target=*_オナニー何もなし]
[endswitch]
[_tb_end_tyrano_code]

*_エロ技アップオナニー

[tb_start_text mode=1 ]
#
・・・[p]
・・・Phew.[p]
I feel like I've reached enlightenment.[p]
[_tb_end_text]

[tb_start_tyrano_code]
[notice color=black top=200 right=0 width=150 height=45 size=15 text="Sex Skill + 1" wait=false wait_time=2000 cond="f.Oni_Ero < 10"]
[eval exp="f.Oni_Ero += 1" cond="f.Oni_Ero < 10"]
[_tb_end_tyrano_code]

[tb_image_hide  time="0"  ]
[call  storage="Main_Sta.ks"  target="*__メインステ表示"  ]
[jump  storage="__Main_Kyuuka.ks"  target="*__風呂入浴後"  ]
*_オナニー何もなし

[tb_start_text mode=1 ]
#
・・・[p]
・・・Phew.[p]
[_tb_end_text]

[tb_image_hide  time="0"  ]
[call  storage="Main_Sta.ks"  target="*__メインステ表示"  ]
[jump  storage="__Main_Kyuuka.ks"  target="*__風呂入浴後"  ]
*__風呂入浴後

[stopbgm  time="1000"  fadeout="true"  ]
[call  storage="Backgraund_Select.ks"  target="*__背景時間で選択"  ]
[tb_start_tyrano_code]
;4週目　継続判定
[jump storage="__Main_Night_Option.ks" target="*__4週目継続" cond=" f.Sta_Suki >=10 && f.Sys_Syume ==4 && f.Sys_Youbi == 6"]

[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;性欲100以上　理性85以下 60以上
[jump storage="__Main_Night_Option.ks" target="*__ベッドでもんもん" cond=" f.Sta_Seiyoku >=100 && f.Sta_Risei > 60 && f.Sta_Risei <= 90"]

[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;処女判定　押し倒しへジャンプ　理性60既読または２回夜通過後
[jump storage="__Main_Night_First_H.ks" target="*__初夜" cond="f.Sex_Count[0].bestcount ==0 && f.Sta_Risei <=60 && f.talks[15].flag && f.talks[15].read"]

[if exp="f.Sex_Count[0].bestcount ==0 && f.Sta_Risei <=60"]
[eval exp="f.H_First_Flag += 1"]
[jump storage="__Main_Night_First_H.ks" target="*__初夜" cond="f.H_First_Flag > 2"]
[endif]
[_tb_end_tyrano_code]

[chara_show  name="さくら_風呂後"  time="1000"  wait="true"  storage="chara/2/キャラ待機91.png"  width="225"  height="325"  left="383"  top="358"  reflect="false"  ]
[mask_off  time="300"  effect="fadeOut"  ]
[font  size="18"  color="0x000000"  face="JKG-M_3"  bold="true"  ]
[tb_start_tyrano_code]
;寝ようか　えっち　選択肢
[glink  color="btn_05_black"  storage="__Main_Kyuuka.ks"  size="25"  x="530"  y="200"  width="250"  height="50"  text="Go to sleep"  target="*__夜中処理後" enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3" ]
[glink  color="btn_05_black"  storage="__Main_Night_Seijoui_H.ks"  size="25"  x="530"  y="250"  width="250"  height="50"  text="Have sex"  target="*__H_Night_Seijoui" cond="f.Sta_Risei<=60 && f.Sta_Seiyoku>=100 && f.Sys_Seiryoku>0 && f.Sex_Count[0].bestcount > 0" enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3"]
[glink  color="btn_05_black"  storage="__Main_Kudoki_Challenge.ks"  size="25"  x="530"  y="300"  width="250"  height="50"  text="Seduce her 80%"  target="*__口説きスタート" cond="f.Sta_Risei <= 10 && f.Sta_Seiyoku<100 && f.Sys_Seiryoku>0 && f.Sex_Count[0].bestcount > 0 && f.H_Furo_Challenge == 1" enterse="マウスオーバー.mp3" clickse="決定ボタンを押す53.mp3"]


[_tb_end_tyrano_code]

[resetfont  ]
[s  ]
*__夜中処理後

[tb_show_message_window  ]
[tb_start_text mode=1 ]
#&f.Imo_Name
Yeah. Good night♪ [emb exp="f.Oni_Name3"]♪[p]
#
[_tb_end_text]

*__直寝の飛び先

[mask  time="300"  effect="fadeIn"  color="0x000000"  ]
[tb_hide_message_window  ]
[chara_hide_all  time="0"  wait="true"  ]
[tb_start_tyrano_code]
;騎乗位へ移行判定
[if exp="f.Sta_Seiyoku >= 100 && f.Sta_Risei <= 0 && f.Sys_Seiryoku >= 1 "]
[jump storage="__Main_Night_Kijoui_H.ks" target="*__H_Night_Kijoui"]
[endif]
[_tb_end_tyrano_code]

[jump  storage="H__Onani_Yoru.ks"  target="*__Hオナニー開始"  cond="f.Sta_Seiyoku>99"  ]
*__オナニー後

[call  storage="Main_Sta.ks"  target="*__メインステセーブ無"  ]
[tb_eval  exp="f.H_Furo_Challenge=0"  name="H_Furo_Challenge"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.Sys_Jikan=0"  name="Sys_Jikan"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.H_Aroma_Flag=0"  name="H_Aroma_Flag"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.H_Condom_On=0"  name="H_Condom_On"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_start_tyrano_code]
;事後背景　変化

[switch exp="f.H_After_CG"]

;ノーマル
[case is=0]
[bg  time="0"  method="crossfade"  storage="事後01.png"  ]

;オナニー後
[case is=1]
[bg  time="0"  method="crossfade"  storage="事後02.png"  ]

;失敗後
[case is=2]
[bg  time="0"  method="crossfade"  storage="事後03.png"  ]

;中出しなしえっち後
[case is=3]
[bg  time="0"  method="crossfade"  storage="事後04.png"  ]

;正上位えっち後
[case is=4]
[bg  time="0"  method="crossfade"  storage="事後05.png"  ]

;バックえっち後
[case is=5]
[bg  time="0"  method="crossfade"  storage="事後06.png"  ]

;24えっち後
[case is=6]
[bg  time="0"  method="crossfade"  storage="事後07.png"  ]

[endswitch]

[_tb_end_tyrano_code]

[tb_eval  exp="f.H_After_CG=0"  name="H_After_CG"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[mask_off  time="500"  effect="fadeOut"  ]
[playbgm  volume="100"  time="1000"  loop="false"  storage="夜明け.mp3"  ]
[wait  time="6000"  ]
[tb_start_tyrano_code]
;一日[5]最高絶頂と[4]中田氏　チェックおよび初期化
[if exp="f.Sex_Count[4].count > f.Sex_Count[4].bestcount"]
[eval exp="f.Sex_Count[4].bestcount = f.Sex_Count[4].count"]
[endif]

[if exp="f.Sex_Count[5].count > f.Sex_Count[5].bestcount"]
[eval exp="f.Sex_Count[5].bestcount = f.Sex_Count[5].count"]
[endif]

;初期化
[eval exp="f.Sex_Count[4].count = 0"]
[eval exp="f.Sex_Count[5].count = 0"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;精力+２　もしくは最大値まで
[eval exp="f.Sys_Seiryoku += 2"]
[if exp="f.Sys_Seiryoku > f.Sys_Seiryoku_Max"]
[eval exp="f.Sys_Seiryoku = f.Sys_Seiryoku_Max"]
[endif]
[_tb_end_tyrano_code]

[jump  storage="scene1.ks"  target="*___メイン休暇終了"  ]
