[_tb_system_call storage=system/___Main_Asobu.ks]

*__一緒に遊ぶ

[tb_start_tyrano_code]
[layopt layer=1 visible=true opacity=255]
[_tb_end_tyrano_code]

[tb_eval  exp="f.Tre_Up=1"  name="Tre_Up"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="Backgraund_Select.ks"  target="*__背景時間で選択"  ]
[tb_image_hide  time="0"  ]
[call  storage="Main_Sta.ks"  target="*__メインステ表示"  ]
[tb_show_message_window  ]
[tb_start_tyrano_code]
;ランダム数値生成
[getrand var="f.Kaiwa_Random" min="1" max="11"]

[iscript]
if(f.Kaiwa_Random <= 1){
f.Kaiwa_Bangou = 1;
} else if(f.Kaiwa_Random >1 && f.Kaiwa_Random <= 9){
f.Kaiwa_Bangou = 2;
} else if(f.Kaiwa_Random > 9 && f.Kaiwa_Random <= 11){
f.Kaiwa_Bangou = 3;
}else{
f.Kaiwa_Bangou = 4;
};
[endscript]

[_tb_end_tyrano_code]

[tb_image_show  time="0"  storage="default/イベントカット28土日遊び.png"  width="500"  height="300"  x="450"  y="170"  name="img_15"  ]
[call  storage="Tre_Bar.ks"  target="*__土日イベントバー増減"  ]
[tb_start_tyrano_code]
[iscript]
f.ほめ会話番号 = '*'+f.Kaiwa_Bangou;
[endscript]

[jump target="&f.ほめ会話番号"]
[_tb_end_tyrano_code]

*1

[tb_start_text mode=1 ]
We enjoyed it normally.[p]
[_tb_end_text]

[call  storage="Tre_Sta_Up.ks"  target="*__好きUP"  ]
[jump  storage="__Main_Homeru.ks"  target="*__会話終了"  ]
*2

[tb_start_text mode=1 ]
It got pretty heated.[p]
[_tb_end_text]

[call  storage="Tre_Sta_Up.ks"  target="*__好きUP"  ]
[jump  storage="__Main_Homeru.ks"  target="*__会話終了"  ]
*3

[tb_start_text mode=1 ]
It got totally wild.[p]
[_tb_end_text]

[tb_start_tyrano_code]
;理性下落対策
[call  storage="Tre_Sta_Up.ks"  target="*__理性DOWN"  cond="f.Sta_Risei >= 40 || f.Sex_Count[0].bestcount  > 0"]
[_tb_end_tyrano_code]

[tb_eval  exp="f.Tre_Up=2"  name="Tre_Up"  cmd="="  op="t"  val="2"  val_2="undefined"  ]
[call  storage="Tre_Sta_Up.ks"  target="*__好きUP"  ]
[jump  storage="__Main_Homeru.ks"  target="*__会話終了"  ]
*__会話終了

[tb_image_hide  time="0"  ]
[call  storage="Main_Sta.ks"  target="*__メインステ表示"  ]
[jump  storage="__Main_Kyuuka.ks"  target="*___イベント終了時間経過"  ]
