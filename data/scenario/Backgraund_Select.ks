[_tb_system_call storage=system/_Backgraund_Select.ks]

*__背景時間で選択

[jump  storage="Backgraund_Select.ks"  target="*__昼"  cond="f.Sys_Jikan==1"  ]
[jump  storage="Backgraund_Select.ks"  target="*__夜"  cond="f.Sys_Jikan>1"  ]
*__朝

[bg  time="0"  method="crossfade"  storage="BG00.png"  ]
[return  ]
*__昼

[bg  time="00"  method="crossfade"  storage="BG01.png"  ]
[return  ]
*__夜

[bg  time="00"  method="crossfade"  storage="BG02.png"  ]
[return  ]
