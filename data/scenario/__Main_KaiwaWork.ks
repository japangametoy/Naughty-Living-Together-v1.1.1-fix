[_tb_system_call storage=system/___Main_KaiwaWork.ks]

*__仕事話

[tb_start_tyrano_code]
[layopt layer=1 visible=true opacity=255]
[_tb_end_tyrano_code]

[tb_eval  exp="f.Tre_Up=1"  name="Tre_Up"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_image_hide  time="0"  ]
[call  storage="Main_Sta.ks"  target="*__メインステ表示"  ]
[tb_show_message_window  ]
[tb_start_tyrano_code]
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

[tb_image_show  time="0"  storage="default/イベントカット29自主練.png"  width="500"  height="300"  x="450"  y="170"  name="img_15"  ]
[call  storage="Tre_Bar.ks"  target="*__土日イベントバー増減"  ]
[tb_start_tyrano_code]
[iscript]
f.ほめ会話番号 = '*'+f.Kaiwa_Bangou;
[endscript]

[jump target="&f.ほめ会話番号"]
[_tb_end_tyrano_code]

*1

[tb_start_text mode=1 ]
It seems you're not doing so well.[p]
[_tb_end_text]

[tb_start_tyrano_code]
;ランダムで妹の能力アップ
[getrand var="f.Kaiwa_Random" min="1" max="4"]

[switch exp="f.Kaiwa_Random"]
[case is=1]
[call storage=Tre_Sta_Up.ks target=*__歌UP]
[case is=2]
[call storage=Tre_Sta_Up.ks target=*__ダンスUP]
[case is=3]
[call storage=Tre_Sta_Up.ks target=*__演技UP]
[case is=4]
[call storage=Tre_Sta_Up.ks target=*__話術UP]
[case]
Error
[endswitch]
[_tb_end_tyrano_code]

[jump  storage="__Main_Homeru.ks"  target="*__会話終了"  ]
*2

[tb_start_text mode=1 ]
You're doing great![p]
[_tb_end_text]

[tb_start_tyrano_code]
;ランダムで妹の能力アップ
[getrand var="f.Kaiwa_Random" min="1" max="4"]

[switch exp="f.Kaiwa_Random"]
[case is=1]
[call storage=Tre_Sta_Up.ks target=*__歌UP]
[case is=2]
[call storage=Tre_Sta_Up.ks target=*__ダンスUP]
[case is=3]
[call storage=Tre_Sta_Up.ks target=*__演技UP]
[case is=4]
[call storage=Tre_Sta_Up.ks target=*__話術UP]
[case]
Error
[endswitch]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;ランダムで妹の能力アップ
[getrand var="f.Kaiwa_Random" min="1" max="4"]

[switch exp="f.Kaiwa_Random"]
[case is=1]
[call storage=Tre_Sta_Up.ks target=*__歌UP]
[case is=2]
[call storage=Tre_Sta_Up.ks target=*__ダンスUP]
[case is=3]
[call storage=Tre_Sta_Up.ks target=*__演技UP]
[case is=4]
[call storage=Tre_Sta_Up.ks target=*__話術UP]
[case]
Error
[endswitch]
[_tb_end_tyrano_code]

[jump  storage="__Main_Homeru.ks"  target="*__会話終了"  ]
*3

[tb_start_text mode=1 ]
She's gotten way better![p]
[_tb_end_text]

[tb_start_tyrano_code]
;ランダムで妹の能力アップ
[getrand var="f.Kaiwa_Random" min="1" max="4"]

[switch exp="f.Kaiwa_Random"]
[case is=1]
[call storage=Tre_Sta_Up.ks target=*__歌UP]
[case is=2]
[call storage=Tre_Sta_Up.ks target=*__ダンスUP]
[case is=3]
[call storage=Tre_Sta_Up.ks target=*__演技UP]
[case is=4]
[call storage=Tre_Sta_Up.ks target=*__話術UP]
[case]
Error
[endswitch]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;ランダムで妹の能力アップ
[getrand var="f.Kaiwa_Random" min="1" max="4"]

[switch exp="f.Kaiwa_Random"]
[case is=1]
[call storage=Tre_Sta_Up.ks target=*__歌UP]
[case is=2]
[call storage=Tre_Sta_Up.ks target=*__ダンスUP]
[case is=3]
[call storage=Tre_Sta_Up.ks target=*__演技UP]
[case is=4]
[call storage=Tre_Sta_Up.ks target=*__話術UP]
[case]
Error
[endswitch]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;ランダムで妹の能力アップ
[getrand var="f.Kaiwa_Random" min="1" max="4"]

[switch exp="f.Kaiwa_Random"]
[case is=1]
[call storage=Tre_Sta_Up.ks target=*__歌UP]
[case is=2]
[call storage=Tre_Sta_Up.ks target=*__ダンスUP]
[case is=3]
[call storage=Tre_Sta_Up.ks target=*__演技UP]
[case is=4]
[call storage=Tre_Sta_Up.ks target=*__話術UP]
[case]
Error
[endswitch]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;ランダムで妹の能力アップ
[getrand var="f.Kaiwa_Random" min="1" max="4"]

[switch exp="f.Kaiwa_Random"]
[case is=1]
[call storage=Tre_Sta_Up.ks target=*__歌UP]
[case is=2]
[call storage=Tre_Sta_Up.ks target=*__ダンスUP]
[case is=3]
[call storage=Tre_Sta_Up.ks target=*__演技UP]
[case is=4]
[call storage=Tre_Sta_Up.ks target=*__話術UP]
[case]
Error
[endswitch]
[_tb_end_tyrano_code]

[jump  storage="__Main_Homeru.ks"  target="*__会話終了"  ]
*

[tb_image_hide  time="0"  ]
[call  storage="Main_Sta.ks"  target="*__メインステ表示"  ]
[jump  storage="__Main_Kyuuka.ks"  target="*___イベント終了時間経過"  ]
