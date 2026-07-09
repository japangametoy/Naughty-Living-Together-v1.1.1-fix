[_tb_system_call storage=system/_Shoki_Sousa.ks]

*__年齢プラス

[playse  volume="100"  time="1000"  buf="0"  storage="カーソル移動12.mp3"  ]
[jump  storage="SyokiStatus.ks"  target="*__初期ステ途中"  cond="f.Oni_Point<1"  ]
[jump  storage="Shoki_Sousa.ks"  target="*_年齢上限"  cond="f.Oni_Toshi>34"  ]
[tb_eval  exp="f.Oni_Toshi+=1"  name="Oni_Toshi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="Shoki_Sousa.ks"  target="*_残ポイント計算"  ]
*_年齢上限

[jump  storage="SyokiStatus.ks"  target="*__初期ステ途中"  ]
*__年齢マイナス

[playse  volume="100"  time="1000"  buf="0"  storage="カーソル移動12.mp3"  ]
[jump  storage="Shoki_Sousa.ks"  target="*_年齢下限"  cond="f.Oni_Toshi<21"  ]
[tb_eval  exp="f.Oni_Toshi-=1"  name="Oni_Toshi"  cmd="-="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="Shoki_Sousa.ks"  target="*_残ポイント計算戻し"  ]
*_年齢下限

[jump  storage="SyokiStatus.ks"  target="*__初期ステ途中"  ]
*__容姿プラス

[playse  volume="100"  time="1000"  buf="0"  storage="カーソル移動12.mp3"  ]
[jump  storage="SyokiStatus.ks"  target="*__初期ステ途中"  cond="f.Oni_Point<1"  ]
[jump  storage="Shoki_Sousa.ks"  target="*_容姿上限"  cond="f.Oni_Youshi>9"  ]
[tb_eval  exp="f.Oni_Youshi+=1"  name="Oni_Youshi"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="Shoki_Sousa.ks"  target="*_残ポイント計算"  ]
*_容姿上限

[jump  storage="SyokiStatus.ks"  target="*__初期ステ途中"  ]
*__容姿マイナス

[playse  volume="100"  time="1000"  buf="0"  storage="カーソル移動12.mp3"  ]
[jump  storage="Shoki_Sousa.ks"  target="*_容姿下限"  cond="f.Oni_Youshi<1"  ]
[tb_eval  exp="f.Oni_Youshi-=1"  name="Oni_Youshi"  cmd="-="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="Shoki_Sousa.ks"  target="*_残ポイント計算戻し"  ]
*_容姿下限

[jump  storage="SyokiStatus.ks"  target="*__初期ステ途中"  ]
*__体格プラス

[playse  volume="100"  time="1000"  buf="0"  storage="カーソル移動12.mp3"  ]
[jump  storage="SyokiStatus.ks"  target="*__初期ステ途中"  cond="f.Oni_Point<1"  ]
[jump  storage="Shoki_Sousa.ks"  target="*__体格上限"  cond="f.Oni_Taikaku>9"  ]
[tb_eval  exp="f.Oni_Taikaku+=1"  name="Oni_Taikaku"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="Shoki_Sousa.ks"  target="*_残ポイント計算"  ]
*__体格上限

[jump  storage="SyokiStatus.ks"  target="*__初期ステ途中"  ]
*__体格マイナス

[playse  volume="100"  time="1000"  buf="0"  storage="カーソル移動12.mp3"  ]
[jump  storage="Shoki_Sousa.ks"  target="*_体格下限"  cond="f.Oni_Taikaku<1"  ]
[tb_eval  exp="f.Oni_Taikaku-=1"  name="Oni_Taikaku"  cmd="-="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="Shoki_Sousa.ks"  target="*_残ポイント計算戻し"  ]
*_体格下限

[jump  storage="SyokiStatus.ks"  target="*__初期ステ途中"  ]
*__仕事プラス

[playse  volume="100"  time="1000"  buf="0"  storage="カーソル移動12.mp3"  ]
[jump  storage="SyokiStatus.ks"  target="*__初期ステ途中"  cond="f.Oni_Point<1"  ]
[jump  storage="Shoki_Sousa.ks"  target="*_仕事上限"  cond="f.Oni_Work>24"  ]
[tb_eval  exp="f.Oni_Work+=1"  name="Oni_Work"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="Shoki_Sousa.ks"  target="*_残ポイント計算"  ]
*_仕事上限

[jump  storage="SyokiStatus.ks"  target="*__初期ステ途中"  ]
*__仕事マイナス

[playse  volume="100"  time="1000"  buf="0"  storage="カーソル移動12.mp3"  ]
[jump  storage="Shoki_Sousa.ks"  target="*_仕事下限"  cond="f.Oni_Work<1"  ]
[tb_eval  exp="f.Oni_Work-=1"  name="Oni_Work"  cmd="-="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="Shoki_Sousa.ks"  target="*_残ポイント計算戻し"  ]
*_仕事下限

[jump  storage="SyokiStatus.ks"  target="*__初期ステ途中"  ]
*__エロプラス

[playse  volume="100"  time="1000"  buf="0"  storage="カーソル移動12.mp3"  ]
[jump  storage="SyokiStatus.ks"  target="*__初期ステ途中"  cond="f.Oni_Point<1"  ]
[jump  storage="Shoki_Sousa.ks"  target="*_エロ上限"  cond="f.Oni_Ero>9"  ]
[tb_eval  exp="f.Oni_Ero+=1"  name="Oni_Ero"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="Shoki_Sousa.ks"  target="*_残ポイント計算"  ]
*_エロ上限

[jump  storage="SyokiStatus.ks"  target="*__初期ステ途中"  ]
*__エロマイナス

[playse  volume="100"  time="1000"  buf="0"  storage="カーソル移動12.mp3"  ]
[jump  storage="Shoki_Sousa.ks"  target="*_エロ下限"  cond="f.Oni_Ero<1"  ]
[tb_eval  exp="f.Oni_Ero-=1"  name="Oni_Ero"  cmd="-="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="Shoki_Sousa.ks"  target="*_残ポイント計算戻し"  ]
*_エロ下限

[jump  storage="SyokiStatus.ks"  target="*__初期ステ途中"  ]
*_残ポイント計算

[jump  storage="SyokiStatus.ks"  target="*__初期ステ途中"  cond="f.Oni_Point<1"  ]
[tb_eval  exp="f.Oni_Point-=1"  name="Oni_Point"  cmd="-="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
*_残ポイント計算戻し

[tb_start_tyrano_code]
;強くてと分岐
[jump  storage="SyokiStatus.ks"  target="*__初期ステ途中"  cond="(f.Oni_Point > 19) && (f.Tuyokute_Flag == 0)" ]
[jump  storage="SyokiStatus.ks"  target="*__初期ステ途中"  cond="(f.Oni_Point > 98) && (f.Tuyokute_Flag == 1)" ]

[_tb_end_tyrano_code]

[tb_eval  exp="f.Oni_Point+=1"  name="Oni_Point"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[return  ]
