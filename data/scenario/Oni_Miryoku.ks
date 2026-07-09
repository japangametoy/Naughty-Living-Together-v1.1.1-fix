[_tb_system_call storage=system/_Oni_Miryoku.ks]

*__兄魅力初期

[tb_start_tyrano_code]
[iscript] //最小1　最大30
//容姿ｘ２+体格-（年齢-30）
f.Oni_Miryoku = Math.max(1, (f.Oni_Youshi * 2) + (f.Oni_Taikaku) - (f.Oni_Toshi > 29 ? Math.max(0, f.Oni_Toshi - 29) : 0));

[endscript]


[_tb_end_tyrano_code]

[return  ]
