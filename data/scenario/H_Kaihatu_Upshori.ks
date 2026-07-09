[_tb_system_call storage=system/_H_Kaihatu_Upshori.ks]

*__開発アップ処理

[tb_start_tyrano_code]
;開発度アップ処理

[getrand var="f.Kaiwa_Random" min="1" max="1"]


[for name=f.i from=0 to=4]
[if exp="f.Kaihatu_Count[f.i].kazu >= f.Kaiwa_Random"]
[eval exp="f.Kaihatu[f.i].count += 1"]
[eval exp="f.アップ宣言 = f.Kaihatu[f.i].name + ' has been developed!'"]
[eval exp="f.ワイ座標 = 130 + 50*f.i"]
[notice color=black top="&f.ワイ座標" right=0 width=150 height=45 size=15 text="&f.アップ宣言" wait=false wait_time=2000 method="fadeInRight"]
[endif]
[nextfor]
[_tb_end_tyrano_code]

[return  ]
