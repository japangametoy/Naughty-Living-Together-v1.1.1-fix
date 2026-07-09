[_tb_system_call storage=system/_Tutorial.ks]

*__チュートリアル開始

[stopbgm  time="1000"  fadeout="true"  ]
[mask  time="300"  effect="fadeIn"  color="0x000000"  ]
[bg  time="0"  method="crossfade"  storage="BG00.png"  ]
[call  storage="Main_Sta.ks"  target="*__メインステ表示"  ]
[tb_show_message_window  ]
[mask_off  time="300"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
#About the Game's Objective
【About the Game's Objective】[p]
The objective is to make her a top idol (gain 1 million fans) while she is a student (100 weeks).[p]
[_tb_end_text]

[individual_image  layer="1"  zindex="1"  storage="default/矢印.png"  width="50"  height="50"  name="Yaji_01"  x="170"  y="50"  _clickable_img=""  ]
[tb_start_tyrano_code]
;やじるしアニメ
;キーフレームアニメーションを無限ループで適用
[keyframe name="kakusyuku"]
[frame p="0%" scale="1"]
[frame p="100%" scale="1.3"]
[endkeyframe]
[xanim name="Yaji_01" keyframe="kakusyuku" count="infinite" time="1000" direction="alternate" easing="linear"]

[xanim name="Yaji_01" time=500 count=1 top=95]
[wa]

[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
Fan count is displayed here.[p]
To gain 1 million fans, spend your daily life listening to her troubles.[p]
[_tb_end_text]

[tb_start_text mode=1 ]
First, raise her affection before the one-month house-hunting deadline to prevent her from moving out.[p]

[_tb_end_text]

[tb_start_text mode=1 ]
#How to Gain Fans
【How to Gain Fans】[p]
Fans can be gained through the following:[p]
・Streaming activities[p]
・Concert (once a month)[p]
・Certain events[p]
[_tb_end_text]

[tb_start_text mode=1 ]
#How to Have Sex
【How to Have Sex】[p]
Since she loves you very much, she will allow a certain level of physical contact.[p]
However, aiming to be a top idol, she will refuse naughty stuff with strong reason.[p]
[_tb_end_text]

[individual_image  layer="1"  zindex="1"  storage="default/矢印.png"  width="50"  height="50"  name="Yaji_01"  x="170"  y="50"  _clickable_img=""  ]
[tb_start_tyrano_code]
;やじるしアニメ
;キーフレームアニメーションを無限ループで適用
[keyframe name="kakusyuku"]
[frame p="0%" scale="1"]
[frame p="100%" scale="1.3"]
[endkeyframe]
[xanim name="Yaji_01" keyframe="kakusyuku" count="infinite" time="1000" direction="alternate" easing="linear"]

[xanim name="Yaji_01" time=500 count=1 top=350]
[wa]

[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
Reason is displayed here.[p]
The more you lower her Reason, the more she will allow naughty stuff, so how you act is up to you.[p]
Also, if you are a virgin, you'll be too nervous to even lay a finger on her![p]
Go to an Erotic Parlor soon and become an adult![p]
[_tb_end_text]

[tb_start_tyrano_code]
;やじるしアニメ
;キーフレームアニメーションを無限ループで適用

[xanim name="Yaji_01" time=550 count=1 top=530 left=90]
[wa]

[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
#
You can check other game hints anytime by pressing the icon on the left.[p]
There are hints written besides the current explanation, so please take a look if you're interested.[p]
Now then, let's start the game.[p]
[_tb_end_text]

[jump  storage="scene1.ks"  target="*__週末"  ]
[s  ]
*__ライブチュートリアル

[bg  time="0"  method="crossfade"  storage="ライブチュートリアル.png"  ]
[call  storage="Main_Sta.ks"  target="*__メインステ表示"  ]
[tb_show_message_window  ]
[mask_off  time="300"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
#Concert Explanation
【Concert Explanation】[p]
Concert is held once every 4 weeks.[p]
[_tb_end_text]

[individual_image  layer="1"  zindex="1"  storage="default/矢印.png"  width="50"  height="50"  name="Yaji_01"  x="1215"  y="375"  _clickable_img=""  ]
[tb_start_tyrano_code]
;やじるしアニメ
;キーフレームアニメーションを無限ループで適用
[keyframe name="kakusyuku"]
[frame p="0%" scale="1"]
[frame p="100%" scale="1.3"]
[endkeyframe]
[xanim name="Yaji_01" keyframe="kakusyuku" count="infinite" time="1000" direction="alternate" easing="linear"]

[xanim name="Yaji_01" time=500 count=1 top=350]
[wa]

[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
Choose one card from the three dealt to you to decide your appeal action during the concert.[p]
[_tb_end_text]

[individual_image  layer="0"  zindex="1"  storage="default/ライブ0202.png"  width="240"  height="300"  x="468"  y="188"  _clickable_img=""  name="Card01"  wait="true"  ]
[tb_start_tyrano_code]
[xanim name="Yaji_01" time=500 count=1 top=220 left=620]
[wa]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
The center of the card shows the affected stat.[p]
[_tb_end_text]

[tb_start_tyrano_code]
[xanim name="Yaji_01" time=500 count=1 top=190 left=530]
[wa]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
The number on the top left is the fan acquisition effect.[p]
[_tb_end_text]

[tb_start_tyrano_code]
[xanim name="Yaji_01" time=500 count=1 top=190 left=705]
[wa]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
The number on the top right is the time elapsed value.[p]
[_tb_end_text]

[delete_individual_image  layer="1"  name="Yaji_01"  ]
[tb_start_text mode=1 ]
If you keep choosing the same type of card, a combo will occur.[p]
Each combo increases the fan acquisition effect by 10%, so try aiming for consecutive combos.[p]
Let's make efficient appeals until the concert time runs out.[p]
[_tb_end_text]

[mask  time="300"  effect="fadeIn"  color="0x000000"  ]
[tb_hide_message_window  ]
[tb_eval  exp="f.Tutorial_On=0"  name="Tutorial_On"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_image_hide  time="0"  ]
[delete_individual_image  layer="0"  name="Card01"  wait="true"  ]
[jump  storage="Live.ks"  target="*__チュートリアル戻り先"  ]
*__ライブローターチュートリアル

[bg  time="0"  method="crossfade"  storage="ライブチュートリアル2.png"  ]
[call  storage="Main_Sta.ks"  target="*__メインステ表示"  ]
[tb_show_message_window  ]
[mask_off  time="300"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
#Remote Rotor Explanation
【Rotor Explanation】[p]
If you've inserted the remote rotor[p]
[_tb_end_text]

[individual_image  layer="1"  zindex="1"  storage="default/矢印.png"  width="50"  height="50"  name="Yaji_01"  x="1231"  y="224"  _clickable_img=""  ]
[tb_start_text mode=1 ]
A switch icon will appear here.[p]
Clicking it turns on the rotor switch, changing her condition.[p]
While active, special cards will be mixed in.[p]
While there will be more bad cards, very high effect cards will also be dealt, so try to make use of it.[p]
#

[_tb_end_text]

[mask  time="300"  effect="fadeIn"  color="0x000000"  ]
[tb_eval  exp="f.Live_roter_first=2"  name="Live_roter_first"  cmd="="  op="t"  val="2"  val_2="undefined"  ]
[delete_individual_image  layer="1"  name="Yaji_01"  wait="true"  ]
[tb_hide_message_window  ]
[tb_image_hide  time="0"  ]
[jump  storage="Live.ks"  target="*__チュートリアル戻り先"  ]
*__配信チュートリアル

[playbgm  volume="30"  time="1000"  loop="true"  storage="PerituneMaterial_Cafe_Seaside.mp3"  ]
[chara_hide_all  time="0"  wait="false"  ]
[bg  time="0"  method="crossfade"  storage="配信チュートリアル.png"  ]
[call  storage="Main_Sta.ks"  target="*__メインステ表示"  ]
[tb_show_message_window  ]
[mask_off  time="300"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
#Lewd Streaming Explanation
【Lewd Streaming Explanation】[p]
It's almost the same format as a regular concert stream, where you are dealt 3 cards[p]
During the stream, the total power of your stats influences the card effects[p]
[_tb_end_text]

[individual_image  layer="1"  zindex="1"  storage="default/矢印.png"  width="50"  height="50"  name="Yaji_01"  x="620"  y="0"  _clickable_img=""  ]
[individual_image  layer="0"  zindex="1"  storage="default/配信カード0302.png"  width="240"  height="300"  x="468"  y="188"  _clickable_img=""  name="Card01"  wait="true"  ]
[tb_start_tyrano_code]
;やじるしアニメ
;キーフレームアニメーションを無限ループで適用
[keyframe name="kakusyuku"]
[frame p="0%" scale="1"]
[frame p="100%" scale="1.3"]
[endkeyframe]
[xanim name="Yaji_01" keyframe="kakusyuku" count="infinite" time="1000" direction="alternate" easing="linear"]

[xanim name="Yaji_01" time=500 count=1 top=395 left=620]
[wa]

[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
Also, the cards dealt during the stream now have a Suspicion value added to them[p]
The values of the cards you choose are added to your Suspicion all at once when the stream ends[p]
Be careful when choosing cards, because it's game over if Suspicion exceeds 100[p]
Your current Suspicion value is shown here[p]
[_tb_end_text]

[tb_start_tyrano_code]
;キーフレームアニメーションを無限ループで適用
[keyframe name="kakusyuku_rotate"]
[frame p="0%" scale="1" rotate="90deg]
[frame p="100%" scale="1.3" rotate="90deg]
[endkeyframe]
[xanim name="Yaji_01" keyframe="kakusyuku_rotate" count="infinite" time="1000" direction="alternate" easing="linear"]

[xanim name="Yaji_01" time=500 count=1 top=70 left=900]
[wa]

[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
Also, if you select specific cards like 'Make Her Cum', naughty stuff happens at the end of the stream[p]
If you have the leeway, try aiming for it[p]
#
[_tb_end_text]

[mask  time="300"  effect="fadeIn"  color="0x000000"  ]
[tb_hide_message_window  ]
[tb_image_hide  time="0"  ]
[delete_individual_image  layer="1"  name="Yaji_01"  ]
[delete_individual_image  layer="0"  name="Card01"  wait="true"  ]
[tb_eval  exp="f.Haisin_Hfirst_Flag=1"  name="Haisin_Hfirst_Flag"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="__Main_Haisin_H.ks"  target="*__チュートリアル戻り先"  ]
