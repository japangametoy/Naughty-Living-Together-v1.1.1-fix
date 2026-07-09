[_tb_system_call storage=system/_Taikenban.ks]

*__体験版

[mask  time="300"  effect="fadeIn"  color="0x000000"  ]
[tb_start_tyrano_code]
[freeimage layer=0]
[freeimage layer=1]
[freeimage layer=2]
[clearfix]



[_tb_end_tyrano_code]

[bg  time="0"  method="crossfade"  storage="BG_Black.png"  ]
[call  storage="Main_Sta.ks"  target="*__Hメインステ表示"  ]
[tb_show_message_window  ]
[mask_off  time="300"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
Thanks for playing, the trial version ends here.[p]
Please note that in the trial version, the Reason stat is designed not to drop below 50.[p]
In the full version, an even more intensely sweet, lovey-dovey, and super lewd life with the heroine unfolds after this.[p]
Please consider purchasing the full version.[p]
※Please note that save data cannot be transferred to the full version.[p]
[_tb_end_text]

[glink  color="btn_05_white"  storage="Taikenban.ks"  size="20"  x="550"  y="200"  width="200"  height=""  text="Open Ci-en Site"  _clickable_img=""  target="*_リンク"  ]
[glink  color="btn_05_white"  storage="Taikenban.ks"  size="20"  x="550"  y="300"  width="200"  height=""  text="Return to Title"  _clickable_img=""  target="*_ゲーム終了"  ]
[s  ]
*_リンク

[tb_start_tyrano_code]
[web url="https://ci-en.dlsite.com/creator/33052"]
[_tb_end_tyrano_code]

[glink  color="btn_05_white"  storage="Taikenban.ks"  size="20"  x="550"  y="300"  width="200"  height=""  text="Return to Title"  _clickable_img=""  target="*_ゲーム終了"  ]
[s  ]
*_ゲーム終了

[tb_start_tyrano_code]
;タイトルリロード 　タイトルへ戻る
[iscript]
location.href="./index.html";
[endscript]
[_tb_end_tyrano_code]

[s  ]
