[_tb_system_call storage=system/_Hint_Game.ks]

[bg  time="0"  method="crossfade"  storage="BG00.png"  ]
[call  storage="_Array_.ks"  target="*__配列宣言"  ]
[tb_start_tyrano_code]
[eval exp="f.my_Item[27].my_kazu = 1"]
[eval exp="f.my_Item[28].my_kazu = 1"]
[eval exp="f.my_Item[29].my_kazu = 1"]
[eval exp="f.my_Item[30].my_kazu = 1"]
[eval exp="f.my_Item[31].my_kazu = 1"]
[eval exp="f.my_Item[32].my_kazu = 1"]
[eval exp="f.my_Item[33].my_kazu = 1"]
[eval exp="f.my_Item[34].my_kazu = 1"]
[eval exp="f.my_Item[35].my_kazu = 1"]
[eval exp="f.my_Item[36].my_kazu = 1"]
[eval exp="f.my_Item[37].my_kazu = 1"]
[eval exp="f.my_Item[38].my_kazu = 1"]

[_tb_end_tyrano_code]

*__攻略本開始

[tb_hide_message_window  ]
[tb_start_tyrano_code]
[clearfix]
[cm]
[_tb_end_tyrano_code]

[tb_image_hide  time="0"  ]
[individual_image  layer="1"  zindex="1"  storage="default/チュートリアル.png"  width="1280"  height="720"  name="hint_waku"  ]
*__繰り返し戻り位置

[tb_start_tyrano_code]
[clearfix]
;[clearstack]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;ヒントボタン　fix仕様
[glink  color="btn_05_black"  storage="Hint_Game.ks"  size="17"  text="Escort Lady"  x="230"  y="100"  width="200"  height="45"  target="*__風俗のお姉さん" fix=true enterse="カーソル移動12.mp3"  clickse="決定ボタンを押す53.mp3" cond="f.my_Item[27].my_kazu >= 1"]
[glink  color="btn_05_black"  storage="Hint_Game.ks"  size="17"  text="Road to 1 Million Fans (1)"  x="230"  y="145"  width="200"  height="45"  target="*__１００万人への道１" fix=true enterse="カーソル移動12.mp3"  clickse="決定ボタンを押す53.mp3" cond="f.my_Item[28].my_kazu >= 1"]
[glink  color="btn_05_black"  storage="Hint_Game.ks"  size="17"  text="Rare Conversation Conditions (1)"  x="230"  y="190"  width="200"  height="45"  target="*__レア会話の条件１" fix=true enterse="カーソル移動12.mp3"  clickse="決定ボタンを押す53.mp3" cond="f.my_Item[29].my_kazu >= 1"]
[glink  color="btn_05_black"  storage="Hint_Game.ks"  size="17"  text="BAD END Conditions"  x="230"  y="235"  width="200"  height="45"  target="*__BADENDの条件" fix=true enterse="カーソル移動12.mp3"  clickse="決定ボタンを押す53.mp3" cond="f.my_Item[30].my_kazu >= 1"]
[glink  color="btn_05_black"  storage="Hint_Game.ks"  size="17"  text="Road to 1 Million Fans (2)"  x="230"  y="280"  width="200"  height="45"  target="*__１００万人への道２" fix=true enterse="カーソル移動12.mp3"  clickse="決定ボタンを押す53.mp3" cond="f.my_Item[31].my_kazu >= 1"]
[glink  color="btn_05_black"  storage="Hint_Game.ks"  size="17"  text="Virgin END Route"  x="230"  y="325"  width="200"  height="45"  target="*__純潔ENDルート" fix=true enterse="カーソル移動12.mp3"  clickse="決定ボタンを押す53.mp3" cond="f.my_Item[32].my_kazu >= 1"]
[glink  color="btn_05_black"  storage="Hint_Game.ks"  size="17"  text="Road to 1 Million Fans (3)"  x="230"  y="370"  width="200"  height="45"  target="*__１００万人への道３" fix=true enterse="カーソル移動12.mp3"  clickse="決定ボタンを押す53.mp3" cond="f.my_Item[33].my_kazu >= 1"]
[glink  color="btn_05_black"  storage="Hint_Game.ks"  size="17"  text="Rare Conversation Conditions (2)"  x="230"  y="415"  width="200"  height="45"  target="*__レア会話の条件２" fix=true enterse="カーソル移動12.mp3"  clickse="決定ボタンを押す53.mp3" cond="f.my_Item[34].my_kazu >= 1"]
[glink  color="btn_05_black"  storage="Hint_Game.ks"  size="17"  text="Conditions for Sex (1)"  x="230"  y="460"  width="200"  height="45"  target="*__えっちの条件１" fix=true enterse="カーソル移動12.mp3"  clickse="決定ボタンを押す53.mp3" cond="f.my_Item[35].my_kazu >= 1"]
[glink  color="btn_05_black"  storage="Hint_Game.ks"  size="17"  text="Conditions for Sex (2)"  x="230"  y="505"  width="200"  height="45"  target="*__えっちの条件２" fix=true enterse="カーソル移動12.mp3"  clickse="決定ボタンを押す53.mp3" cond="f.my_Item[36].my_kazu >= 1"]
[glink  color="btn_05_black"  storage="Hint_Game.ks"  size="17"  text="Unlock All Albums"  x="230"  y="550"  width="200"  height="45"  target="*__回想全開放" fix=true enterse="カーソル移動12.mp3"  clickse="決定ボタンを押す53.mp3" cond="f.my_Item[37].my_kazu >= 1"]
[glink  color="btn_05_black"  storage="Hint_Game.ks"  size="17"  text="New Game +"  x="230"  y="595"  width="200"  height="45"  target="*__強くてニューゲーム" fix=true enterse="カーソル移動12.mp3"  clickse="決定ボタンを押す53.mp3" cond="f.my_Item[38].my_kazu >= 1"]
[glink  color="btn_05_black"  storage="Hint_Game.ks"  size="17"  text="Back"  x="230"  y="640"  width="200"  height="45"  target="*__もどる" fix=true name="rightClickButton" enterse="カーソル移動12.mp3"  clickse="決定ボタンを押す53.mp3"]
[_tb_end_tyrano_code]

[s  ]
*__風俗のお姉さん

[call  storage="Hint_Game.ks"  target="*__テキストクリア"  ]
[tb_start_tyrano_code]
[ptext  layer=1 x="480"  y="150"  size="30"  color="0x000000"  time="0"  anim="false" width=700 name="hint_1" overwrite="true" text="【Strategy Guide ①: About Ecsort Lady】"    ]
[ptext  layer=1 x="480"  y="220"  size="30"  color="0x000000"  time="0"  anim="false" width=700 name="hint_2" overwrite="true" text="◆When you go out and enter an「Erotic Parlor」, the lady has a chance to increase your Sex Skills and Max Energy."    ]
[ptext  layer=1 x="480"  y="340"  size="30"  color="0x000000"  time="0"  anim="false" width=700 name="hint_5" overwrite="true" text="◆If you have 4 or more Sex Skills"    ]
[ptext  layer=1 x="480"  y="390"  size="25"  color="0x000000"  time="0"  anim="false" width=700 name="hint_7" overwrite="true" text="・The probability of increasing Sex Skills decreases."    ]
[ptext  layer=1 x="480"  y="440"  size="25"  color="0x000000"  time="0"  anim="false" width=700 name="hint_6" overwrite="true" text="・If you choose to have her teach you Sex Technique, you can see a special reaction from the lady."    ]

[_tb_end_tyrano_code]

[return  ]
[s  ]
*__１００万人への道１

[call  storage="Hint_Game.ks"  target="*__テキストクリア"  ]
[tb_start_tyrano_code]
[ptext  layer=1 x="480"  y="150"  size="30"  color="0x000000"  time="0"  anim="false" width=700  name="hint_1" overwrite="true" text="【Strategy Guide ②: Road to 1 Million Fans Part 1】"    ]
[ptext  layer=1 x="480"  y="220"  size="30"  color="0x000000"  time="0"  anim="false" width=700  name="hint_2" overwrite="true" text="◆To gain fans, you need to raise her stats above all else."    ]
[ptext  layer=1 x="480"  y="340"  size="30"  color="0x000000"  time="0"  anim="false" width=700  name="hint_3" overwrite="true" text="◆Weekly special training, independent training on weekends, and buying books at the shop to give as presents are good ideas."    ]
[ptext  layer=1 x="480"  y="460"  size="30"  color="0x000000"  time="0"  anim="false" width=700  name="hint_4" overwrite="true" text="◆Try purchasing the following items first." ]
[ptext  layer=1 x="480"  y="510"  size="25"  color="0x000000"  time="0"  anim="false" width=700  name="hint_5" overwrite="true" text="・Ultimate Focus Book" ]
[ptext  layer=1 x="480"  y="560"  size="25"  color="0x000000"  time="0"  anim="false" width=700  name="hint_6" overwrite="true" text="・Pure Earrings" ]
[ptext  layer=1 x="480"  y="610"  size="25"  color="0x000000"  time="0"  anim="false" width=700  name="hint_7" overwrite="true" text="・Radiant Necklace" ]

[_tb_end_tyrano_code]

[return  ]
[s  ]
*__レア会話の条件１

[call  storage="Hint_Game.ks"  target="*__テキストクリア"  ]
[tb_start_tyrano_code]
[ptext  layer=1 x="480"  y="150"  size="30"  color="0x000000"  time="0"  anim="false" width=700 name="hint_1" overwrite="true" text="【Strategy Guide ③: Rare Conversation Conditions Part 1】"    ]
[ptext  layer=1 x="480"  y="220"  size="30"  color="0x000000"  time="0"  anim="false" width=700 name="hint_6" overwrite="true" text="◆Conversation appears when Reason reaches 0"    ]
[ptext  layer=1 x="480"  y="290"  size="30"  color="0x000000"  time="0"  anim="false" width=700 name="hint_7" overwrite="true" text="◆Conversation appears when Love reaches 200"    ]
[ptext  layer=1 x="480"  y="360"  size="30"  color="0x000000"  time="0"  anim="false" width=700 name="hint_2" overwrite="true" text="◆If the protagonist's stats are 7 or higher, conversations corresponding to those stats will appear"    ]
[ptext  layer=1 x="480"  y="480"  size="30"  color="0x000000"  time="0"  anim="false" width=700 name="hint_3" overwrite="true" text="◆Conversations appear based on the reached % of Development Level"    ]
[ptext  layer=1 x="480"  y="550"  size="25"  color="0x000000"  time="0"  anim="false" width=700 name="hint_4" overwrite="true" text="・Development Level 30% or higher: Mouth, Breasts, Butt, Anus"    ]
[ptext  layer=1 x="480"  y="600"  size="25"  color="0x000000"  time="0"  anim="false" width=700 name="hint_5" overwrite="true" text="・Development Level 50% or higher: Pussy"    ]


[_tb_end_tyrano_code]

[return  ]
[s  ]
*__BADENDの条件

[call  storage="Hint_Game.ks"  target="*__テキストクリア"  ]
[tb_start_tyrano_code]
[ptext  layer=1 x="480"  y="150"  size="30"  color="0x000000"  time="0"  anim="false" width=700  name="hint_1" overwrite="true" text="【Strategy Guide ④: BAD END Conditions】"    ]
[ptext  layer=1 x="480"  y="220"  size="30"  color="0x000000"  time="0"  anim="false" width=700  name="hint_2" overwrite="true" text="◆These are BAD END conditions."    ]
[ptext  layer=1 x="480"  y="270"  size="25"  color="0x000000"  time="0"  anim="false" width=700  name="hint_3" overwrite="true" text="・Affection drops below 10."    ]
[ptext  layer=1 x="480"  y="320"  size="25"  color="0x000000"  time="0"  anim="false" width=700 name="hint_4" overwrite="true" text="・Getting her pregnant." ]
[ptext  layer=1 x="480"  y="370"  size="25"  color="0x000000"  time="0"  anim="false" width=700  name="hint_5" overwrite="true" text="・Suspicion exceeds 100." ]
[ptext  layer=1 x="480"  y="420"  size="25"  color="0x000000"  time="0"  anim="false" width=700  name="hint_6" overwrite="true" text="・Exceeding 100 weeks without gaining 1 million fans." ]
[_tb_end_tyrano_code]

[return  ]
[s  ]
*__１００万人への道２

[call  storage="Hint_Game.ks"  target="*__テキストクリア"  ]
[tb_start_tyrano_code]
[ptext  layer=1 x="480"  y="150"  size="30"  color="0x000000"  time="0"  anim="false" width=700  name="hint_1" overwrite=true text="【Strategy Guide ⑤: Road to 1 Million Fans Part 2】"    ]
[ptext  layer=1 x="480"  y="220"  size="30"  color="0x000000"  time="0"  anim="false" width=700  name="hint_3" overwrite=true text="◆Looks are something she was born with, so they will not increase through training."    ]
[ptext  layer=1 x="480"  y="340"  size="30"  color="0x000000"  time="0"  anim="false" width=700  name="hint_4" overwrite=true text="◆If each stat exceeds the Looks value, selecting cards from other stats is more advantageous during concert."    ]
[ptext  layer=1 x="480"  y="460"  size="30"  color="0x000000"  time="0"  anim="false" width=700  name="hint_5" overwrite=true text="◆Once stats become high, utilize streaming and such to gain fans."    ]
[_tb_end_tyrano_code]

[return  ]
[s  ]
*__純潔ENDルート

[call  storage="Hint_Game.ks"  target="*__テキストクリア"  ]
[tb_start_tyrano_code]
[ptext  layer=1 x="480"  y="150"  size="30"  color="0x000000"  time="0"  anim="false" width=700  name="hint_1" overwrite=true text="【Strategy Guide ⑥: About the Virgin END Route】"    ]
[ptext  layer=1 x="480"  y="220"  size="30"  color="0x000000"  time="0"  anim="false" width=700  name="hint_2" overwrite=true text="◆This game is designed with a sexy lifestyle in mind, but it is possible to clear the game while remaining a virgin."    ]
[ptext  layer=1 x="480"  y="340"  size="30"  color="0x000000"  time="0"  anim="false" width=700  name="hint_3" overwrite=true text="◆For the sake of onii-chans who think 'Idols should be virgins!', we have prepared a virgin route end."    ]
[ptext  layer=1 x="480"  y="460"  size="30"  color="0x000000"  time="0"  anim="false" width=700  name="hint_4" overwrite=true text="◆Also, even if she is a virgin, if her Anal Development Level exceeds 10, you will be able to have anal sex."    ]
[ptext  layer=1 x="480"  y="580"  size="30"  color="0x000000"  time="0"  anim="false" width=700  name="hint_5" overwrite=true text="◆However・・・it is a path of hardship, so please do not push yourself too much."    ]
[_tb_end_tyrano_code]

[return  ]
[s  ]
*__１００万人への道３

[call  storage="Hint_Game.ks"  target="*__テキストクリア"  ]
[tb_start_tyrano_code]
[ptext  layer=1 x="480"  y="150"  size="30"  color="0x000000"  time="0"  anim="false" width=700 name="hint_1" overwrite="true" text="【Strategy Guide ⑦:Road to 1 Million Fans Part 3】"    ]
[ptext  layer=1 x="480"  y="220"  size="30"  color="0x000000"  time="0"  anim="false" width=700 name="hint_2" overwrite="true" text="◆At Affection 200 or higher, special conversations for stat increases appear"    ]
[ptext  layer=1 x="480"  y="290"  size="30"  color="0x000000"  time="0"  anim="false" width=700 name="hint_3" overwrite="true" text="◆If Reason is 0 and Fan Count is over 30,000, you can attach a remote rotor during a concert." ]
[ptext  layer=1 x="480"  y="410"  size="30"  color="0x000000"  time="0"  anim="false" width=700 name="hint_4" overwrite="true" text="◆If you activate the remote rotor during a concert, highly effective special cards will be dealt." ]
[ptext  layer=1 x="480"  y="530"  size="30"  color="0x000000"  time="0"  anim="false" width=700 name="hint_5" overwrite="true" text="◆Also, once you exceed 100,000 fans, you can perform special streams, so do your best." ]

[_tb_end_tyrano_code]

[return  ]
[s  ]
*__レア会話の条件２

[call  storage="Hint_Game.ks"  target="*__テキストクリア"  ]
[tb_start_tyrano_code]
[ptext  layer=1 x="480"  y="150"  size="30"  color="0x000000"  time="0"  anim="false" width=700 name="hint_1" overwrite="true" text="【Strategy Guide ⑧: Rare Conversation Conditions Part 2】"    ]
[ptext  layer=1 x="480"  y="220"  size="30"  color="0x000000"  time="0"  anim="false" width=700 name="hint_2" overwrite="true" text="◆When Reason is 0, conversations appear under the following conditions"    ]
[ptext  layer=1 x="480"  y="270"  size="25"  color="0x000000"  time="0"  anim="false" width=700 name="hint_3" overwrite="true" text="・Every time 100,000 fans are achieved, up to 900,000"    ]
[ptext  layer=1 x="480"  y="320"  size="25"  color="0x000000"  time="0"  anim="false" width=700 name="hint_4" overwrite="true" text="・Suspicion count up to 80"    ]
[ptext  layer=1 x="480"  y="390"  size="30"  color="0x000000"  time="0"  anim="false" width=700 name="hint_5" overwrite="true" text="◆Conversation appears when the max cum inside count is 7 or more"    ]
[ptext  layer=1 x="480"  y="460"  size="30"  color="0x000000"  time="0"  anim="false" width=700 name="hint_6" overwrite="true" text="◆Conversation appears at Max Climax Count 10 times or more"    ]
[_tb_end_tyrano_code]

[return  ]
[s  ]
*__えっちの条件１

[call  storage="Hint_Game.ks"  target="*__テキストクリア"  ]
[tb_start_tyrano_code]
[ptext  layer=1 x="480"  y="150"  size="30"  color="0x000000"  time="0"  anim="false" width=700  name="hint_1" overwrite="true" text="【Strategy Guide ⑨: Sex Scene Conditions Part 1】"    ]
[ptext  layer=1 x="480"  y="220"  size="30"  color="0x000000"  time="0"  anim="false" width=700  name="hint_2" overwrite="true" text="◆All require her Lust 100 or higher"    ]
[ptext  layer=1 x="480"  y="270"  size="25"  color="0x000000"  time="0"  anim="false" width=700  name="hint_3" overwrite="true" text="・Reason 60: Before sleep, option to have sex"    ]
[ptext  layer=1 x="480"  y="320"  size="25"  color="0x000000"  time="0"  anim="false" width=700  name="hint_4" overwrite="true" text="・Reason 50: Bathing together, option to have sex" ]
[ptext  layer=1 x="480"  y="370"  size="25"  color="0x000000"  time="0"  anim="false" width=700  name="hint_5" overwrite="true" text="・Reason 40: During intimacy, option to have sex" ]
[ptext  layer=1 x="480"  y="420"  size="25"  color="0x000000"  time="0"  anim="false" width=700  name="hint_6" overwrite="true" text="・Reason 30: Night bed, change position during sex" ]
[ptext  layer=1 x="480"  y="470"  size="25"  color="0x000000"  time="0"  anim="false" width=700  name="hint_7" overwrite="true" text="・Reason 20: Night bed, select Breeding Press during missionary" ]
[ptext  layer=1 x="480"  y="520"  size="25"  color="0x000000"  time="0"  anim="false" width=700  name="hint_8" overwrite="true" text="・Reason 15: Friday, option to have sex" ]
[ptext  layer=1 x="480"  y="570"  size="25"  color="0x000000"  time="0"  anim="false" width=700  name="hint_9" overwrite="true" text="・Reason 10: Night bed, select Back Press during doggy style" ]
[ptext  layer=1 x="480"  y="620"  size="25"  color="0x000000"  time="0"  anim="false" width=700  name="hint_10" overwrite="true" text="・Reason 0: While sleeping, option to have sex" ]
[_tb_end_tyrano_code]

[return  ]
[s  ]
*__えっちの条件２

[call  storage="Hint_Game.ks"  target="*__テキストクリア"  ]
[tb_start_tyrano_code]
[ptext  layer=1 x="480"  y="150"  size="30"  color="0x000000"  time="0"  anim="false" width=700  name="hint_1" overwrite="true" text="【Strategy Guide ⑩: Sex Scene Conditions Part 2】"    ]
[ptext  layer=1 x="480"  y="220"  size="30"  color="0x000000"  time="0"  anim="false" width=700  name="hint_2" overwrite="true" text="◆All require her Reason at 0" ]
[ptext  layer=1 x="480"  y="270"  size="25"  color="0x000000"  time="0"  anim="false" width=700  name="hint_3" overwrite="true" text="・Fan Count 100,000: Select "Stream" on Saturday/Sunday" ]
[ptext  layer=1 x="480"  y="320"  size="25"  color="0x000000"  time="0"  anim="false" width=700  name="hint_4" overwrite="true" text="・Fan Count 300,000: Select "Conversation"" ]
[ptext  layer=1 x="480"  y="370"  size="25"  color="0x000000"  time="0"  anim="false" width=700  name="hint_5" overwrite="true" text="・Fan Count 400,000: Select "Have Sex" at entrance before concert" ]
[ptext  layer=1 x="480"  y="420"  size="25"  color="0x000000"  time="0"  anim="false" width=700  name="hint_6" overwrite="true" text="・Fan Count 500,000: Select "Conversation", then option appears Monday morning" ]
[ptext  layer=1 x="480"  y="470"  size="25"  color="0x000000"  time="0"  anim="false" width=700  name="hint_7" overwrite="true" text="・Fan Count 600,000: Select "Penetrate" card during Saturday/Sunday stream" ]
[ptext  layer=1 x="480"  y="520"  size="25"  color="0x000000"  time="0"  anim="false" width=700  name="hint_8" overwrite="true" text="・Fan count 700,000: Select 「Visit the dressing room」 after a concert" ]
[ptext  layer=1 x="480"  y="590"  size="30"  color="0x000000"  time="0"  anim="false" width=700  name="hint_9" overwrite="true" text="◆Conversation appears with max orgasm count of 10 and Energy 6 or higher" ]
[_tb_end_tyrano_code]

[return  ]
[s  ]
*__回想全開放

[call  storage="Hint_Game.ks"  target="*__テキストクリア"  ]
[tb_start_tyrano_code]
[ptext  layer=1 x="480"  y="150"  size="30"  color="0x000000"  time="0"  anim="false" width=700  name="hint_1" overwrite="true" text="【Super Strategy Guide A: Unlock All Albums】"    ]
[ptext  layer=1 x="480"  y="220"  size="30"  color="0x000000"  time="0"  anim="false" width=700  name="hint_2" overwrite="true" text="◆Click the heroine's earring on the title screen, then enter the following password."    ]
[ptext  layer=1 x="480"  y="320"  size="25"  color="0x000000"  time="0"  anim="false" width=700  name="hint_3" overwrite="true" text="・「１１４」"    ]

[_tb_end_tyrano_code]

[return  ]
[s  ]
*__強くてニューゲーム

[call  storage="Hint_Game.ks"  target="*__テキストクリア"  ]
[tb_start_tyrano_code]
[ptext  layer=1 x="480"  y="150"  size="30"  color="0x000000"  time="0"  anim="false" width=700  name="hint_1" overwrite="true" text="【Super Strategy Guide B: New Game +】"    ]
[ptext  layer=1 x="480"  y="220"  size="30"  color="0x000000"  time="0"  anim="false" width=700  name="hint_2" overwrite="true" text="◆After clicking the heroine's earring on the title screen, enter the following password."    ]
[ptext  layer=1 x="480"  y="320"  size="25"  color="0x000000"  time="0"  anim="false" width=700  name="hint_3" overwrite="true" text="・「７７７」"    ]
[_tb_end_tyrano_code]

[return  ]
[s  ]
*__もどる

[call  storage="Hint_Game.ks"  target="*__テキストクリア"  ]
[tb_start_tyrano_code]
[awakegame]
[_tb_end_tyrano_code]

[s  ]
*__テキストクリア

[tb_start_tyrano_code]
;テキストクリア
[free layer=1 name="hint_1"]
[free layer=1 name="hint_2"]
[free layer=1 name="hint_3"]
[free layer=1 name="hint_4"]
[free layer=1 name="hint_5"]
[free layer=1 name="hint_6"]
[free layer=1 name="hint_7"]
[free layer=1 name="hint_8"]
[free layer=1 name="hint_9"]
[free layer=1 name="hint_10"]

[_tb_end_tyrano_code]

[return  ]
