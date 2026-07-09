[_tb_system_call storage=system/_Tre_Sta_Up.ks]

[tb_image_show  time="0"  storage="default/イベントカット03演技レ.png"  width="1000"  height="600"  ]
[tb_image_hide  time="0"  ]
[bg  time="1000"  method="crossfade"  storage="BG00.png"  ]
*__ファン数UP

[playse  volume="100"  time="1000"  buf="0"  storage="アップ.mp3"  ]
[tb_start_tyrano_code]
[iscript]
f.アップ数 = '+' + f.Tre_Up;
[endscript]

[ptext layer="2" x="150" y="105" size="30" text="&f.アップ数" name="Fan_Plus" edge="0x000000" bold="bold"]

[anim name="Fan_Plus" top=85 opacity=255 time=500]
[wa]
[_tb_end_tyrano_code]

[tb_eval  exp="f.Fan+=f.Tre_Up"  name="Fan"  cmd="+="  op="h"  val="Tre_Up"  val_2="undefined"  ]
[jump  storage="Tre_Sta_Up.ks"  target="*__処理終了"  ]
*__ファンDOWN

[playse  volume="100"  time="1000"  buf="0"  storage="アップ.mp3"  ]
[tb_start_tyrano_code]
[iscript]
f.アップ数 = '-' + f.Tre_Up;
[endscript]

[ptext layer="2" x="150" y="105" size="30" text="&f.アップ数" name="Fan_Down" edge="0x000000" bold="bold"]

[anim name="Fan_Down" top=85 opacity=255 time=500]
[wa]
[_tb_end_tyrano_code]

[tb_eval  exp="f.Sta_Suki-=f.Tre_Up"  name="Sta_Suki"  cmd="-="  op="h"  val="Tre_Up"  val_2="undefined"  ]
[tb_start_tyrano_code]
;好き下限0
[iscript]
if(f.Sta_Suki<0){
f.Sta_Suki = 0;
};
[endscript]
[_tb_end_tyrano_code]

[jump  storage="Tre_Sta_Up.ks"  target="*__処理終了"  ]
*__容姿UP

[playse  volume="100"  time="1000"  buf="0"  storage="アップ.mp3"  ]
[tb_start_tyrano_code]
[iscript]
f.アップ数 = '+' + f.Tre_Up;
[endscript]

[ptext layer="2" x="150" y="155" size="30" text="&f.アップ数" name="Yousi_Plus" edge="0x000000" bold="bold"]

[anim name="Yousi_Plus" top=135 opacity=255 time=500]
[wa]
[_tb_end_tyrano_code]

[tb_eval  exp="f.Imo_Youshi+=f.Tre_Up"  name="Imo_Youshi"  cmd="+="  op="h"  val="Tre_Up"  val_2="undefined"  ]
[jump  storage="Tre_Sta_Up.ks"  target="*__処理終了"  ]
*__歌UP

[playse  volume="100"  time="1000"  buf="0"  storage="アップ.mp3"  ]
[tb_start_tyrano_code]
[iscript]
f.アップ数 = '+' + f.Tre_Up;
[endscript]

[ptext layer="2" x="150" y="190" size="30" text="&f.アップ数" name="Uta_Plus" edge="0x000000" bold="bold"]

[anim name="Uta_Plus" top=170 opacity=255 time=500]
[wa]
[_tb_end_tyrano_code]

[tb_eval  exp="f.Imo_Uta+=f.Tre_Up"  name="Imo_Uta"  cmd="+="  op="h"  val="Tre_Up"  val_2="undefined"  ]
[jump  storage="Tre_Sta_Up.ks"  target="*__処理終了"  ]
*__ダンスUP

[playse  volume="100"  time="1000"  buf="0"  storage="アップ.mp3"  ]
[tb_start_tyrano_code]
[iscript]
f.アップ数 = '+' + f.Tre_Up;
[endscript]

[ptext layer="2" x="150" y="225" size="30" text="&f.アップ数" name="Dance_Plus" edge="0x000000" bold="bold"]

[anim name="Dance_Plus" top=205 opacity=255 time=500]
[wa]
[_tb_end_tyrano_code]

[tb_eval  exp="f.Imo_Dance+=f.Tre_Up"  name="Imo_Dance"  cmd="+="  op="h"  val="Tre_Up"  val_2="undefined"  ]
[jump  storage="Tre_Sta_Up.ks"  target="*__処理終了"  ]
*__演技UP

[playse  volume="100"  time="1000"  buf="0"  storage="アップ.mp3"  ]
[tb_start_tyrano_code]
[iscript]
f.アップ数 = '+' + f.Tre_Up;
[endscript]

[ptext layer="2" x="150" y="260" size="30" text="&f.アップ数" name="Engi_Plus" edge="0x000000" bold="bold"]

[anim name="Engi_Plus" top=240 opacity=255 time=500]
[wa]
[_tb_end_tyrano_code]

[tb_eval  exp="f.Imo_Engi+=f.Tre_Up"  name="Imo_Engi"  cmd="+="  op="h"  val="Tre_Up"  val_2="undefined"  ]
[jump  storage="Tre_Sta_Up.ks"  target="*__処理終了"  ]
*__話術UP

[playse  volume="100"  time="1000"  buf="0"  storage="アップ.mp3"  ]
[tb_start_tyrano_code]
[iscript]
f.アップ数 = '+' + f.Tre_Up;
[endscript]

[ptext layer="2" x="150" y="295" size="30" text="&f.アップ数" name="Wajutu_Plus" edge="0x000000" bold="bold"]

[anim name="Wajutu_Plus" top=275 opacity=255 time=500]
[wa]
[_tb_end_tyrano_code]

[tb_eval  exp="f.Imo_Wajutu+=f.Tre_Up"  name="Imo_Wajutu"  cmd="+="  op="h"  val="Tre_Up"  val_2="undefined"  ]
[jump  storage="Tre_Sta_Up.ks"  target="*__処理終了"  ]
*__理性UP

[playse  volume="100"  time="1000"  buf="0"  storage="アップ.mp3"  ]
[tb_start_tyrano_code]
[iscript]
f.アップ数 = '+' + f.Tre_Up;
[endscript]

[ptext layer="2" x="150" y="365" size="30" text="&f.アップ数" name="Risei_Plus" edge="0x000000" bold="bold"]

[anim name="Risei_Plus" top=345 opacity=255 time=500]
[wa]
[_tb_end_tyrano_code]

[tb_eval  exp="f.Sta_Risei+=f.Tre_Up"  name="Sta_Risei"  cmd="+="  op="h"  val="Tre_Up"  val_2="undefined"  ]
[tb_start_tyrano_code]
;理性上限100
[iscript]
if(f.Sta_Risei>=100){
f.Sta_Risei = 100;
};
[endscript]
[_tb_end_tyrano_code]

[jump  storage="Tre_Sta_Up.ks"  target="*__処理終了"  ]
*__理性DOWN

[playse  volume="100"  time="1000"  buf="0"  storage="アップ.mp3"  ]
[tb_start_tyrano_code]
[iscript]
f.アップ数 = '-' + f.Tre_Up;
[endscript]

[ptext layer="2" x="150" y="365" size="30" text="&f.アップ数" name="Risei_Down" edge="0x000000" bold="bold"]

[anim name="Risei_Down" top=345 opacity=255 time=500]
[wa]
[_tb_end_tyrano_code]

[tb_eval  exp="f.Sta_Risei-=f.Tre_Up"  name="Sta_Risei"  cmd="-="  op="h"  val="Tre_Up"  val_2="undefined"  ]
[tb_start_tyrano_code]
[iscript]
if(f.Sta_Risei<0){
f.Sta_Risei = 0;
};
[endscript]
[_tb_end_tyrano_code]

[jump  storage="Tre_Sta_Up.ks"  target="*__処理終了"  ]
*__好きUP

[playse  volume="100"  time="1000"  buf="0"  storage="アップ.mp3"  ]
[tb_start_tyrano_code]
;魅力による好感度アップ補正（魅力×ランダム数/50）10×5で＋1　30×5で＋3
[getrand var="f.Kaiwa_Random" min="1" max="5"]

[iscript]
f.Tre_Up+= Math.floor(f.Oni_Miryoku * f.Kaiwa_Random/50);
[endscript]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[iscript]
f.アップ数 = '+' + f.Tre_Up;
[endscript]

[ptext layer="2" x="150" y="400" size="30" text="&f.アップ数" name="Suki_Plus" edge="0x000000" bold="bold"]

[anim name="Suki_Plus" top=380 opacity=255 time=500]
[wa]
[_tb_end_tyrano_code]

[tb_eval  exp="f.Sta_Suki+=f.Tre_Up"  name="Sta_Suki"  cmd="+="  op="h"  val="Tre_Up"  val_2="undefined"  ]
[tb_start_tyrano_code]
;好き上限150
[iscript]
if(f.Sta_Sukii>=150){
f.Sta_Suki = 150;
};
[endscript]
[_tb_end_tyrano_code]

[jump  storage="Tre_Sta_Up.ks"  target="*__処理終了"  ]
*__好きDOWN

[playse  volume="100"  time="1000"  buf="0"  storage="アップ.mp3"  ]
[tb_start_tyrano_code]
[iscript]
f.アップ数 = '-' + f.Tre_Up;
[endscript]

[ptext layer="2" x="150" y="400" size="30" text="&f.アップ数" name="Suki_Down" edge="0x000000" bold="bold"]

[anim name="Suki_Down" top=380 opacity=255 time=500]
[wa]
[_tb_end_tyrano_code]

[tb_eval  exp="f.Sta_Suki-=f.Tre_Up"  name="Sta_Suki"  cmd="-="  op="h"  val="Tre_Up"  val_2="undefined"  ]
[tb_start_tyrano_code]
;好き下限0
[iscript]
if(f.Sta_Suki<0){
f.Sta_Suki = 0;
};
[endscript]
[_tb_end_tyrano_code]

[jump  storage="Tre_Sta_Up.ks"  target="*__処理終了"  ]
*__知識UP

[playse  volume="100"  time="1000"  buf="0"  storage="アップ.mp3"  ]
[tb_start_tyrano_code]
[iscript]
f.アップ数 = '+' + f.Tre_Up;
[endscript]

[ptext layer="2" x="150" y="435" size="30" text="&f.アップ数" name="Chisiki_Plus" edge="0x000000" bold="bold"]

[anim name="Chisiki_Plus" top=415 opacity=255 time=500]
[wa]
[_tb_end_tyrano_code]

[tb_eval  exp="f.Sta_Chisiki+=f.Tre_Up"  name="Sta_Chisiki"  cmd="+="  op="h"  val="Tre_Up"  val_2="undefined"  ]
[tb_start_tyrano_code]
;知識上限100
[iscript]
if(f.Sta_Chisiki>=100){
f.Sta_Chisiki = 100;
};
[endscript]
[_tb_end_tyrano_code]

[jump  storage="Tre_Sta_Up.ks"  target="*__処理終了"  ]
*__性欲UP

[playse  volume="100"  time="1000"  buf="0"  storage="アップ.mp3"  ]
[tb_start_tyrano_code]
[iscript]
f.アップ数 = '+' + f.Tre_Up;
[endscript]

[ptext layer="2" x="150" y="435" size="30" text="&f.アップ数" name="Seiyoku_Plus" edge="0x000000" bold="bold"]

[anim name="Seiyoku_Plus" top=415 opacity=255 time=500]
[wa]
[_tb_end_tyrano_code]

[tb_eval  exp="f.Sta_Seiyoku+=f.Tre_Up"  name="Sta_Seiyoku"  cmd="+="  op="h"  val="Tre_Up"  val_2="undefined"  ]
[tb_start_tyrano_code]
;性欲上限120
[iscript]
if(f.Sta_Seiyoku>=120){
f.Sta_Seiyoku = 120;
};
[endscript]
[_tb_end_tyrano_code]

[jump  storage="Tre_Sta_Up.ks"  target="*__処理終了"  ]
*__性欲DOWN

[playse  volume="100"  time="1000"  buf="0"  storage="アップ.mp3"  ]
[tb_start_tyrano_code]
[iscript]
f.アップ数 = '-' + f.Tre_Up;
[endscript]

[ptext layer="2" x="150" y="435" size="30" text="&f.アップ数" name="Seiyoku_Down" edge="0x000000" bold="bold"]

[anim name="Seiyoku_Down" top=415 opacity=255 time=500]
[wa]
[_tb_end_tyrano_code]

[tb_eval  exp="f.Sta_Seiyoku-=f.Tre_Up"  name="Sta_Seiyoku"  cmd="-="  op="h"  val="Tre_Up"  val_2="undefined"  ]
[tb_start_tyrano_code]
[iscript]
if(f.Sta_Seiyoku<0){
f.Sta_Seiyoku = 0;
};
[endscript]
[_tb_end_tyrano_code]

[jump  storage="Tre_Sta_Up.ks"  target="*__処理終了"  ]
*__お金UP

[playse  volume="100"  time="1000"  buf="0"  storage="アップ.mp3"  ]
[tb_start_tyrano_code]
[iscript]
f.アップ数 = '+' + f.Tre_Up;
[endscript]

[ptext layer="2" x="1100" y="40" size="30" text="&f.アップ数" name="Okane_Plus" edge="0x000000" bold="bold"]

[anim name="Okane_Plus" top=30 opacity=255 time=1000]
[wa]
[_tb_end_tyrano_code]

[tb_eval  exp="f.Sys_Okane+=f.Tre_Up"  name="Sys_Okane"  cmd="+="  op="h"  val="Tre_Up"  val_2="undefined"  ]
[tb_start_tyrano_code]
[iscript]
if(f.Sys_Okane<0){
f.Sys_Okane = 0;
};
[endscript]
[_tb_end_tyrano_code]

[jump  storage="Tre_Sta_Up.ks"  target="*__処理終了"  ]
*__疑惑UP

[playse  volume="100"  time="1000"  buf="0"  storage="アップ.mp3"  ]
[tb_start_tyrano_code]
[iscript]
f.アップ数 = '+' + f.Tre_Up;
[endscript]

[ptext layer="2" x="950" y="40" size="30" text="&f.アップ数" name="Giwaku_Plus" edge="0x000000" bold="bold"]

[anim name="Giwaku_Plus" top=30 opacity=255 time=500]
[wa]
[_tb_end_tyrano_code]

[tb_eval  exp="f.Sys_Giwaku+=f.Tre_Up"  name="Sys_Giwaku"  cmd="+="  op="h"  val="Tre_Up"  val_2="undefined"  ]
[jump  storage="Tre_Sta_Up.ks"  target="*__処理終了"  ]
*__疑惑DOWN

[playse  volume="100"  time="1000"  buf="0"  storage="アップ.mp3"  ]
[tb_start_tyrano_code]
[iscript]
f.アップ数 = '-' + f.Tre_Up;
[endscript]

[ptext layer="2" x="950" y="40" size="30" text="&f.アップ数" name="Giwaku_Down" edge="0x000000" bold="bold"]

[anim name="Giwaku_Down" top=30 opacity=255 time=500]
[wa]
[_tb_end_tyrano_code]

[tb_eval  exp="f.Sys_Giwaku-=f.Tre_Up"  name="Sys_Giwaku"  cmd="-="  op="h"  val="Tre_Up"  val_2="undefined"  ]
[tb_start_tyrano_code]
[iscript]
if(f.Sys_Giwaku<0){
f.Sys_Giwaku = 0;
};
[endscript]
[_tb_end_tyrano_code]

[jump  storage="Tre_Sta_Up.ks"  target="*__処理終了"  ]
*__処理終了

[return  ]
*__ライブファン数UP

[playse  volume="100"  time="1000"  buf="0"  storage="アップ.mp3"  ]
[tb_start_tyrano_code]
[iscript]
f.アップ数 = '+' + f.Tre_Up;
[endscript]

[ptext layer="2" x="900" y="180" width=200 size="30" text="&f.アップ数" name="Fan_Plus" edge="0x000000" bold="bold" align="right" face="JKG-M_3"]

[anim name="Fan_Plus" top=155 opacity=255 time=500]
[wa]
[_tb_end_tyrano_code]

[tb_eval  exp="f.Fan_Live+=f.Tre_Up"  name="Fan_Live"  cmd="+="  op="h"  val="Tre_Up"  val_2="undefined"  ]
[return  ]
*__ライブ疑惑UP

[jump  storage="Tre_Sta_Up.ks"  target="*_疑惑0アップの飛び先"  cond="f.Tre_Up==0"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="アップ.mp3"  ]
[tb_start_tyrano_code]
[if exp="f.Tre_Up >= 0]
[eval exp="f.アップ数 = '+' + f.Tre_Up"]
[else]
[eval exp="f.アップ数 = f.Tre_Up"]
[endif]

[ptext layer="2" x="920" y="120" width=50 size="25" text="&f.アップ数" name="Giwaku_Plus" edge="0x000000" bold="bold" align="right" face="JKG-M_3"]
[anim name="Giwaku_Plus" top=100 opacity=255 time=500]
[wa]


[_tb_end_tyrano_code]

[tb_eval  exp="f.Giwaku_Live+=f.Tre_Up"  name="Giwaku_Live"  cmd="+="  op="h"  val="Tre_Up"  val_2="undefined"  ]
*_疑惑0アップの飛び先

[return  ]
*__ライブお金UP

[jump  storage="Tre_Sta_Up.ks"  target="*_お金0アップの飛び先"  cond="f.Tre_Up==0"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="アップ.mp3"  ]
[tb_start_tyrano_code]
[if exp="f.Tre_Up >= 0]
[eval exp="f.アップ数 = '+' + f.Tre_Up"]
[else]
[eval exp="f.アップ数 = f.Tre_Up"]
[endif]

[ptext layer="2" x="1060" y="120" width=150 size="25" text="&f.アップ数" name="Money_Plus" edge="0x000000" bold="bold" align="right" face="JKG-M_3"]
[anim name="Money_Plus" top=100 opacity=255 time=500]
[wa]


[_tb_end_tyrano_code]

[tb_eval  exp="f.Money_Live+=f.Tre_Up"  name="Money_Live"  cmd="+="  op="h"  val="Tre_Up"  val_2="undefined"  ]
*_お金0アップの飛び先

[return  ]
