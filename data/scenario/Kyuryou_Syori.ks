[_tb_system_call storage=system/_Kyuryou_Syori.ks]

*__給料処理

[bg  time="0"  method="crossfade"  storage="BG_Black.png"  ]
[mask_off  time="300"  effect="fadeOut"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#
Your salary has been deposited!![p]
[_tb_end_text]

[tb_eval  exp="f.Tre_Up=f.Oni_Kyuryou"  name="Tre_Up"  cmd="="  op="h"  val="Oni_Kyuryou"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__お金UP"  ]
[call  storage="Main_Sta.ks"  target="*__メインステ表示"  ]
[tb_start_tyrano_code]
;仕事力１アップ処理
[if exp="f.Oni_Work < 25"]
[eval exp="f.Oni_Work += 1"]
Work skill increased by 1!![l]
[endif]
[_tb_end_tyrano_code]

[call  storage="Oni_Kyuryou.ks"  target="*__兄給料初期"  ]
[tb_hide_message_window  ]
[jump  storage="scene1.ks"  target="*___週末処理後"  ]
