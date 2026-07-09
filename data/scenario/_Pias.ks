[_tb_system_call storage=system/__Pias.ks]

*__清純ピアス処理

[bg  time="300"  method="crossfade"  storage="BG_Black.png"  ]
[tb_eval  exp="f.Tre_Up=1"  name="Tre_Up"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#
Effect of the Pure Earrings[p]
[_tb_end_text]

[tb_hide_message_window  ]
[call  storage="Tre_Sta_Up.ks"  target="*__歌UP"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__ダンスUP"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__演技UP"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__話術UP"  ]
[tb_image_hide  time="0"  ]
[call  storage="Main_Sta.ks"  target="*__メインステ表示"  ]
[jump  storage="scene1.ks"  target="*__ピアス戻り先"  ]
*__輝ネックレス処理

[bg  time="300"  method="crossfade"  storage="BG_Black.png"  ]
[tb_eval  exp="f.Tre_Up=2"  name="Tre_Up"  cmd="="  op="t"  val="2"  val_2="undefined"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#
Effect of the Radiant Necklace[p]
[_tb_end_text]

[tb_hide_message_window  ]
[call  storage="Tre_Sta_Up.ks"  target="*__歌UP"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__ダンスUP"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__演技UP"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__話術UP"  ]
[tb_image_hide  time="0"  ]
[call  storage="Main_Sta.ks"  target="*__メインステ表示"  ]
[jump  storage="scene1.ks"  target="*__ネックレス戻り先"  ]
*__疑惑の風化

[bg  time="300"  method="crossfade"  storage="BG_Black.png"  ]
[intrandom_ko10panda  max="3"  count="1"  show_result="false"  show_style="style_a"  show_detail="false"  detail_length="10"  show_log="log_4"  var_name="tf.rand"  min="1"  ]
[tb_start_tyrano_code]
[eval exp="f.Tre_Up = tf.rand"]
[_tb_end_tyrano_code]

[tb_show_message_window  ]
[tb_start_text mode=1 ]
#
Fading of suspicion over time[p]
[_tb_end_text]

[tb_hide_message_window  ]
[call  storage="Tre_Sta_Up.ks"  target="*__疑惑DOWN"  ]
[call  storage="Main_Sta.ks"  target="*__メインステ表示"  ]
[return  ]
