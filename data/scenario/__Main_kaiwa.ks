[_tb_system_call storage=system/___Main_kaiwa.ks]

[tb_eval  exp="f.Oni_Youshi=8"  name="Oni_Youshi"  cmd="="  op="t"  val="8"  val_2="undefined"  ]
[tb_eval  exp="f.Sta_Suki=150"  name="Sta_Suki"  cmd="="  op="t"  val="150"  val_2="undefined"  ]
[call  storage="_Array_.ks"  target="*__配列宣言"  ]
[chara_show  name="さくら01"  time="0"  wait="true"  storage="chara/1/キャラ待機01.png"  width="500"  height="550"  left="750"  top="170"  ]
*__日常会話

[tb_image_hide  time="0"  ]
[call  storage="Main_Sta.ks"  target="*__メインステ表示"  ]
[tb_show_message_window  ]
[tb_eval  exp="f.Kaiwa_Nichijou+=1"  name="Kaiwa_Nichijou"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="__Main_Kaiwa_Flag.ks"  target="*__会話フラグ"  ]
[tb_start_tyrano_code]
;未読の会話を取得
[iscript]
//未読のみぶちこみ
f.unread_talks = f.talks.filter(item => !item.read);
//未読最初の三個をぶちこみ
f.会話選択 = f.unread_talks.sort((a, b) => a.id - b.id).slice(0, 3);

f.isEmptyTalks = (f.unread_talks.length === 0); // 空の場合

[endscript]
[if exp="f.unread_talks.length ===2"]
[endif]
[_tb_end_tyrano_code]

[font  size="18"  color="0x000000"  face="JKG-M_3"  bold="true"  ]
[tb_start_tyrano_code]
;選択肢表示
[if exp="f.unread_talks.length ===0"]
[jump target=*__会話カット]
[elsif exp="f.unread_talks.length ===1"]
[glink  color="btn_05_black"  storage="__Main_kaiwa.ks"  size="20"  text="&f.会話選択[0].title"  x="530"  y="200"  width="250"  height="50"  _clickable_img=""  target="*_会話０" enterse="マウスオーバー.mp3"  clickse="決定ボタンを押す53.mp3" ]
[jump target=*_選択が空]

[elsif exp="f.unread_talks.length ===2"]
[glink  color="btn_05_black"  storage="__Main_kaiwa.ks"  size="20"  text="&f.会話選択[0].title"  x="530"  y="200"  width="250"  height="50"  _clickable_img=""  target="*_会話０" enterse="マウスオーバー.mp3"  clickse="決定ボタンを押す53.mp3" ]
[glink  color="btn_05_black"  storage="__Main_kaiwa.ks"  size="20"  text="&f.会話選択[1].title"  x="530"  y="250"  width="250"  height="50"  _clickable_img=""  target="*_会話１" enterse="マウスオーバー.mp3"  clickse="決定ボタンを押す53.mp3" ]
[jump target=*_選択が空]

[elsif exp="f.unread_talks.length >=3"]
[glink  color="btn_05_black"  storage="__Main_kaiwa.ks"  size="20"  text="&f.会話選択[0].title"  x="530"  y="200"  width="250"  height="50"  _clickable_img=""  target="*_会話０" enterse="マウスオーバー.mp3"  clickse="決定ボタンを押す53.mp3" ]
[glink  color="btn_05_black"  storage="__Main_kaiwa.ks"  size="20"  text="&f.会話選択[1].title"  x="530"  y="250"  width="250"  height="50"  _clickable_img=""  target="*_会話１" enterse="マウスオーバー.mp3"  clickse="決定ボタンを押す53.mp3" ]
[glink  color="btn_05_black"  storage="__Main_kaiwa.ks"  size="20"  text="&f.会話選択[2].title"  x="530"  y="300"  width="250"  height="50"  _clickable_img=""  target="*_会話２" enterse="マウスオーバー.mp3"  clickse="決定ボタンを押す53.mp3" ]
[endif]
[_tb_end_tyrano_code]

*_選択が空

[tb_start_tyrano_code]
[glink name="rightClickButton" x="530" y="350" size="25" width="250" height=50 color="btn_05_black" storage="__Main_Kyuuka.ks" text="Back" target="*__日常会話戻り先" enterse="マウスオーバー.mp3"  clickse="キャンセル1.mp3"]
[_tb_end_tyrano_code]

[resetfont  ]
[s  ]
*_会話０

[resetfont  ]
[tb_start_tyrano_code]
[iscript]
// ユーザーが選択した1つのID（ここでは例としてIDを動的に設定）
let selectedTalkId = f.会話選択[0].id; // This ID is dynamically replaced with the value selected by the user

// f.会話選択から該当するアイテムを取得
const selectedTalk = f.会話選択.find(item => item.id === selectedTalkId);
console.log("選ばれた会話:", selectedTalk);

// 該当するf.talks内の要素の`read`プロパティをtrueに更新
if (selectedTalk) {
const target = f.talks.find(item => item.id === selectedTalk.id);
if (target) {
target.read = true;
console.log("選択された会話を既読に設定:", target);
} else {
console.warn("Element corresponding to the selected ID not found");
};
} else {
console.warn("Specified ID not found in conversation selection");
};
[endscript]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;id番号へジャンプ
[eval exp="f.ジャンプ先 = '*' + f.会話選択[0].id"]
[jump storage="__Main_Kaiwa_EP.ks" target="&f.ジャンプ先"]

[_tb_end_tyrano_code]

[s  ]
*_会話１

[resetfont  ]
[tb_start_tyrano_code]
[iscript]
// ユーザーが選択した1つのID（ここでは例としてIDを動的に設定）
let selectedTalkId = f.会話選択[1].id; // This ID is dynamically replaced with the value selected by the user

// f.会話選択から該当するアイテムを取得
const selectedTalk = f.会話選択.find(item => item.id === selectedTalkId);
console.log("選ばれた会話:", selectedTalk);

// 該当するf.talks内の要素の`read`プロパティをtrueに更新
if (selectedTalk) {
const target = f.talks.find(item => item.id === selectedTalk.id);
if (target) {
target.read = true;
console.log("選択された会話を既読に設定:", target);
} else {
console.warn("Element corresponding to the selected ID not found");
};
} else {
console.warn("Specified ID not found in conversation selection");
};
[endscript]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;id番号へジャンプ
[eval exp="f.ジャンプ先 = '*' + f.会話選択[1].id"]
[jump storage="__Main_Kaiwa_EP.ks" target="&f.ジャンプ先"]

[_tb_end_tyrano_code]

*_会話２

[resetfont  ]
[tb_start_tyrano_code]
[iscript]
// ユーザーが選択した1つのID（ここでは例としてIDを動的に設定）
let selectedTalkId = f.会話選択[2].id; // This ID is dynamically replaced with the value selected by the user

// f.会話選択から該当するアイテムを取得
const selectedTalk = f.会話選択.find(item => item.id === selectedTalkId);
console.log("選ばれた会話:", selectedTalk);

// 該当するf.talks内の要素の`read`プロパティをtrueに更新
if (selectedTalk) {
const target = f.talks.find(item => item.id === selectedTalk.id);
if (target) {
target.read = true;
console.log("選択された会話を既読に設定:", target);
} else {
console.warn("Element corresponding to the selected ID not found");
};
} else {
console.warn("Specified ID not found in conversation selection");
};
[endscript]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;id番号へジャンプ
[eval exp="f.ジャンプ先 = '*' + f.会話選択[2].id"]
[jump storage="__Main_Kaiwa_EP.ks" target="&f.ジャンプ先"]

[_tb_end_tyrano_code]

[s  ]
*__会話カット

[font  size="18"  color="0x000000"  face="JKG-M_3"  bold="true"  ]
[tb_start_tyrano_code]
[glink  color="btn_05_black"  storage="__Main_kaiwa.ks"  size="20"  text="Talk normally"  x="530"  y="200"  width="250"  height="50"  _clickable_img=""  target="*__普通に会話"  ]
[glink name="rightClickButton" x="530" y="350" size="25" width="250" height=50 color="btn_05_black" storage="__Main_Kyuuka.ks" text="Back" target="*__日常会話戻り先"]
[_tb_end_tyrano_code]

[resetfont  ]
[s  ]
*__普通に会話

[tb_image_show  time="0"  storage="default/イベントカット26日常会話.png"  width="500"  height="300"  x="450"  y="170"  name="img_15"  ]
[call  storage="Tre_Bar.ks"  target="*__土日イベントバー増減"  ]
[tb_eval  exp="f.Tre_Up=1"  name="Tre_Up"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__話術UP"  ]
[tb_eval  exp="f.Tre_Up=1"  name="Tre_Up"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__好きUP"  ]
[tb_image_hide  time="0"  ]
[call  storage="Main_Sta.ks"  target="*__メインステ表示"  ]
[jump  storage="__Main_kaiwa.ks"  target="*__会話終了"  ]
*__会話終了

[call  storage="H_Kaihatu_Upshori.ks"  target="*__開発アップ処理"  ]
[call  storage="_Array_Kaihatu.ks"  target="*__開発配列初期化"  ]
[jump  storage="__Main_Kyuuka.ks"  target="*___イベント終了時間経過"  ]
