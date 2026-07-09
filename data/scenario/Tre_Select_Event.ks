[_tb_system_call storage=system/_Tre_Select_Event.ks]

*__トレランダムイベント

[intrandom_ko10panda  max="7"  count="1"  show_result="false"  show_style="style_a"  show_detail="false"  detail_length="10"  show_log="log_4"  var_name="tf.rand"  min="1"  ]
[tb_start_tyrano_code]
[eval exp="f.Tre_Up=tf.rand"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;ほめられイベント
[getrand var="f.Kaiwa_Random" min="1" max="100"]

;バイトと遊びはステアップなし
[if exp="f.Tre_Count == 5 || f.Tre_Count == 6"]
[jump target=*__バイト遊び飛び先]
[endif]

;トレほめられアップ
[if exp="f.Kaiwa_Random>=0 && f.Kaiwa_Random<25"]


[if exp="f.Tre_Count > 0 && f.Tre_Count <= 4"]
[image layer=1 storage="default/イベントカット33ほめる.png" time=0 x=450 y=170 width=500 height=300]

[switch exp="f.Tre_Count"]
[case is=1]
The training instructor praised me![l]
[call storage="Tre_Sta_Up.ks" target=*__歌UP]

[case is=2]
The training instructor praised me![l]
[call storage="Tre_Sta_Up.ks" target=*__ダンスUP]

[case is=3]
The training instructor praised me![l]
[call storage="Tre_Sta_Up.ks" target=*__演技UP]

[case is=4]
I had a fun stream![l]
[call storage="Tre_Sta_Up.ks" target=*__話術UP]

[endswitch]
[endif]
[endif]

[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;アイドルイベント

[if exp="f.Kaiwa_Random>=25 && f.Kaiwa_Random<85"]

;____________1000　地方営業
[if exp="f.Fan >= 0 && f.Fan <1000"]
[image layer=1 storage="default/イベントカット08地方営業.png" time=0 x=450 y=170 width=500 height=300]
I succeeded in the regional sales![l]

[eval exp="f.Tre_Up= 50"]
[call storage="Tre_Sta_Up.ks" target=*__ファン数UP]

[eval exp="f.Tre_Up=2"]
[call storage="Tre_Sta_Up.ks" target=*__歌UP]
[call storage="Tre_Sta_Up.ks" target=*__ダンスUP]

[eval exp="f.Tre_Up=f.Imo_Sougou * 20"]
[call storage="Tre_Sta_Up.ks" target=*__お金UP]

;____________5000まで　SNS成功
[elsif exp="f.Fan >= 1000 && f.Fan <5000"]
[image layer=1 storage="default/イベントカット09配信成功.png" time=0 x=450 y=170 width=500 height=300]
SNS went viral![l]

[eval exp="f.Tre_Up= 300"]
[call storage="Tre_Sta_Up.ks" target=*__ファン数UP]

[eval exp="f.Tre_Up=2"]
[call storage="Tre_Sta_Up.ks" target=*__話術UP]

[eval exp="f.Tre_Up=f.Imo_Sougou * 20"]
[call storage="Tre_Sta_Up.ks" target=*__お金UP]

;____________10000まで　ミニライブ
[elsif exp="f.Fan >= 5000 && f.Fan < 10000"]
[image layer=1 storage="default/イベントカット10ライブ.png" time=0 x=450 y=170 width=500 height=300]
Mini concert was a success![l]

[eval exp="f.Tre_Up= 500"]
[call storage="Tre_Sta_Up.ks" target=*__ファン数UP]

[eval exp="f.Tre_Up=3"]
[call storage="Tre_Sta_Up.ks" target=*__歌UP]
[call storage="Tre_Sta_Up.ks" target=*__ダンスUP]
[call storage="Tre_Sta_Up.ks" target=*__演技UP]
[call storage="Tre_Sta_Up.ks" target=*__話術UP]

[eval exp="f.Tre_Up=f.Imo_Sougou * 25"]
[call storage="Tre_Sta_Up.ks" target=*__お金UP]

;____________20000まで　舞台成功
[elsif exp="f.Fan >= 10000 && f.Fan < 20000"]
[image layer=1 storage="default/イベントカット11舞台.png" time=0 x=450 y=170 width=500 height=300]
Stage performance was a success![l]

[eval exp="f.Tre_Up= 700"]
[call storage="Tre_Sta_Up.ks" target=*__ファン数UP]

[eval exp="f.Tre_Up=4"]
[call storage="Tre_Sta_Up.ks" target=*__歌UP]
[eval exp="f.Tre_Up=4"]
[call storage="Tre_Sta_Up.ks" target=*__演技UP]

[eval exp="f.Tre_Up=f.Imo_Sougou * 30"]
[call storage="Tre_Sta_Up.ks" target=*__お金UP]

;____________40000まで　グラビア成功
[elsif exp="f.Fan >= 20000 && f.Fan < 40000"]
[image layer=1 storage="default/イベントカット12グラビア.png" time=0 x=450 y=170 width=500 height=300]
Got a gravure job![l]

[eval exp="f.Tre_Up= 1000"]
[call storage="Tre_Sta_Up.ks" target=*__ファン数UP]

[eval exp="f.Tre_Up=2"]
[call storage="Tre_Sta_Up.ks" target=*__容姿UP]
[eval exp="f.Tre_Up=1"]
[call storage="Tre_Sta_Up.ks" target=*__理性DOWN]

[eval exp="f.Tre_Up=f.Imo_Sougou * 40"]
[call storage="Tre_Sta_Up.ks" target=*__お金UP]

;____________80000まで　TV出演
[elsif exp="f.Fan >= 40000 && f.Fan < 80000"]
[image layer=1 storage="default/イベントカット13TV出演.png" time=0 x=450 y=170 width=500 height=300]
Appeared on TV![l]

[eval exp="f.Tre_Up= 2000"]
[call storage="Tre_Sta_Up.ks" target=*__ファン数UP]

[eval exp="f.Tre_Up=1"]
[call storage="Tre_Sta_Up.ks" target=*__容姿UP]

[eval exp="f.Tre_Up=5"]
[call storage="Tre_Sta_Up.ks" target=*__話術UP]

[eval exp="f.Tre_Up=f.Imo_Sougou * 50"]
[call storage="Tre_Sta_Up.ks" target=*__お金UP]

;____________160000　歌番組
[elsif exp="f.Fan >= 80000 && f.Fan <160000"]
[image layer=1 storage="default/イベントカット14歌番組.png" time=0 x=450 y=170 width=500 height=300]
Appeared on a music show![l]

[eval exp="f.Tre_Up= 5000"]
[call storage="Tre_Sta_Up.ks" target=*__ファン数UP]

[eval exp="f.Tre_Up=1"]
[call storage="Tre_Sta_Up.ks" target=*__容姿UP]

[eval exp="f.Tre_Up=5"]
[call storage="Tre_Sta_Up.ks" target=*__歌UP]
[call storage="Tre_Sta_Up.ks" target=*__ダンスUP]

[eval exp="f.Tre_Up=f.Imo_Sougou * 60"]
[call storage="Tre_Sta_Up.ks" target=*__お金UP]

;____________320000 ドラマ出演
[elsif exp="f.Fan >= 160000 && f.Fan < 320000"]
[image layer=1 storage="default/イベントカット15ドラマ出演.png" time=0 x=450 y=170 width=500 height=300]
Appeared in a drama![l]

[eval exp="f.Tre_Up= 10000"]
[call storage="Tre_Sta_Up.ks" target=*__ファン数UP]

[eval exp="f.Tre_Up=1"]
[call storage="Tre_Sta_Up.ks" target=*__容姿UP]

[eval exp="f.Tre_Up=5"]
[call storage="Tre_Sta_Up.ks" target=*__演技UP]


[eval exp="f.Tre_Up=f.Imo_Sougou * 70"]
[call storage="Tre_Sta_Up.ks" target=*__お金UP]

;____________640000　CM出演
[elsif exp="f.Fan >= 320000 && f.Fan < 640000"]
[image layer=1 storage="default/イベントカット16CM撮影.png" time=0 x=450 y=170 width=500 height=300]
Appeared in a commercial![l]

[eval exp="f.Tre_Up= 30000"]
[call storage="Tre_Sta_Up.ks" target=*__ファン数UP]

[eval exp="f.Tre_Up=1"]
[call storage="Tre_Sta_Up.ks" target=*__容姿UP]
[eval exp="f.Tre_Up=4"]
[call storage="Tre_Sta_Up.ks" target=*__歌UP]
[call storage="Tre_Sta_Up.ks" target=*__ダンスUP]
[call storage="Tre_Sta_Up.ks" target=*__演技UP]
[call storage="Tre_Sta_Up.ks" target=*__話術UP]

[eval exp="f.Tre_Up=f.Imo_Sougou * 80"]
[call storage="Tre_Sta_Up.ks" target=*__お金UP]

;____________1000000　究極のアイドル
[elsif exp="f.Fan >= 640000"]
[image layer=1 storage="default/イベントカット17ソロCD.png" time=0 x=450 y=170 width=500 height=300]
The ultimate idol descends![l]

[eval exp="f.Tre_Up= 50000"]
[call storage="Tre_Sta_Up.ks" target=*__ファン数UP]

[eval exp="f.Tre_Up=1"]
[call storage="Tre_Sta_Up.ks" target=*__容姿UP]
[eval exp="f.Tre_Up=5"]
[call storage="Tre_Sta_Up.ks" target=*__歌UP]
[call storage="Tre_Sta_Up.ks" target=*__ダンスUP]
[call storage="Tre_Sta_Up.ks" target=*__演技UP]
[call storage="Tre_Sta_Up.ks" target=*__話術UP]

[eval exp="f.Tre_Up=f.Imo_Sougou * 100"]
[call storage="Tre_Sta_Up.ks" target=*__お金UP]

[endif]
[endif]

;セクハライベント
[if exp="f.Kaiwa_Random >= 85 && f.Kaiwa_Random < 95"]
[image layer=1 storage="default/イベントカット25セクハラ尻.png" time=0 x=450 y=170 width=500 height=300]
Got sexually harassed by a co-star![l]

[eval exp="f.Tre_Up=1"]
[call storage="Tre_Sta_Up.ks" target=*__理性DOWN]

[eval exp="f.Tre_Up=20"]
[call storage="Tre_Sta_Up.ks" target=*__性欲UP]
[endif]
[_tb_end_tyrano_code]

*__バイト遊び飛び先

[tb_start_tyrano_code]
;バッドイベント

[if exp="f.Kaiwa_Random >= 95 && f.Kaiwa_Random < 98"]
[image layer=1 storage="default/イベントカット18一般人見る.png" time=0 x=450 y=170 width=500 height=300]
Spotted together by a civilian![l]

[eval exp="f.Tre_Up=1"]
[call storage="Tre_Sta_Up.ks" target=*__疑惑UP]

[elsif exp="f.Kaiwa_Random == 98"]
[image layer=1 storage="default/イベントカット19同僚みる.png" time=0 x=450 y=170 width=500 height=300]
We were seen together by a colleague![l]

[eval exp="f.Tre_Up=2"]
[call storage="Tre_Sta_Up.ks" target=*__疑惑UP]

[elsif exp="f.Kaiwa_Random == 99"]
[image layer=1 storage="default/イベントカット20記者見る.png" time=0 x=450 y=170 width=500 height=300]
We were seen together by a reporter![l]

[eval exp="f.Tre_Up=10"]
[call storage="Tre_Sta_Up.ks" target=*__疑惑UP]

[elsif exp="f.Kaiwa_Random == 100"]
[image layer=1 storage="default/イベントカット22マネ説教.png" time=0 x=450 y=170 width=500 height=300]
We got warned by the manager![l]

[eval exp="f.Tre_Up=1"]
[call storage="Tre_Sta_Up.ks" target=*__理性UP]


[endif]
[_tb_end_tyrano_code]

[tb_image_hide  time="0"  ]
[call  storage="Main_Sta.ks"  target="*__メインステ表示"  ]
[jump  storage="Tre_Select.ks"  target="*__トレイベント終了"  ]
