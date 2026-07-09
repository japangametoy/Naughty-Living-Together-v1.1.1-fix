[_tb_system_call storage=system/___Main_Haisin_H_Option.ks]

*__ライブステアップ

[tb_start_tyrano_code]
;ファン数獲得　総合力×カード効果×週目
[eval exp="f.Tre_Up = Math.floor(f.Imo_Sougou * f.Haisin_Card_Finish[f.Live_array[f.i]].rise * f.Sys_Syume/30 )" ]

[_tb_end_tyrano_code]

[call  storage="Tre_Sta_Up.ks"  target="*__ライブファン数UP"  ]
[intrandom_ko10panda  max="10"  count="1"  show_result="false"  show_style="style_a"  show_detail="false"  detail_length="10"  show_log="log_1"  var_name="tf.rand"  ]
[tb_start_tyrano_code]
;70％で疑惑の値場合分け
[if exp="tf.rand >7"]
[eval exp="f.Tre_Up = f.Haisin_Card_Finish[f.Live_array[f.i]].giwaku + 2"]
[else]
[eval exp="f.Tre_Up = 0"]
[endif]
[_tb_end_tyrano_code]

[call  storage="Tre_Sta_Up.ks"  target="*__ライブ疑惑UP"  ]
[tb_start_tyrano_code]
[eval exp="f.Tre_Up = Math.floor(f.Haisin_Card_Finish[f.Live_array[f.i]].rise * f.Sys_Syume/10 )"]
[_tb_end_tyrano_code]

[call  storage="Tre_Sta_Up.ks"  target="*__ライブお金UP"  ]
[tb_start_tyrano_code]
[wa]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;アップ数字文字クリア
[free layer=2 name="Fan_Plus"]
[free layer=2 name="Giwaku_Plus"]
[free layer=2 name="Money_Plus"]

[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;ライブのアップ総量　常時表示文字　クリア
[free layer=1 name="fan_kazu"]
[free layer=1 name="giwaku_kazu"]
[free layer=1 name="money_kazu"]

[_tb_end_tyrano_code]

[font  size="18"  color="0xffffff"  face="JKG-M_3"  bold="true"  ]
[tb_start_tyrano_code]
;ライブ中のファン表示
[iscript]
f.ライブファン表示 = f.Fan_Live.toLocaleString();
[endscript]

[ptext layer="1" x="850" y="220" size="25" text="Fans" bold="bold" edge="0x000000" name="fan_kazu"]
[ptext layer="1" x="950" y="220" size="25" text="&f.ライブファン表示" width=150 align=right bold="bold" edge="0x000000" name="fan_kazu"]
[ptext layer="1" x="1110" y="220" size="25" text="People" bold="bold" edge="0x000000" name="fan_kazu"]

[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;ライブ中の疑惑と金表示
[iscript]
f.ライブファン表示 = f.Fan_Live.toLocaleString();
f.ライブマネー表示 = f.Money_Live.toLocaleString();

[endscript]

[ptext layer="1" x="860" y="70" size="25" text="Suspicion" bold="bold" edge="0x000000" name="giwaku_kazu"]
[ptext layer="1" x="910" y="70" size="25" text="&f.Giwaku_Live" width=50 align=right bold="bold" edge="0x000000" name="giwaku_kazu"]
[ptext layer="1" x="970" y="70" size="25" text="P" bold="bold" edge="0x000000" name="giwaku_kazu"]

[ptext layer="1" x="1000" y="70" size="25" text="Money" bold="bold" edge="0x000000" name="money_kazu"]
[ptext layer="1" x="1060" y="70" size="25" text="&f.ライブマネー表示" width=150 align=right bold="bold" edge="0x000000" name="money_kazu"]
[ptext layer="1" x="1220" y="70" size="25" text="¥" bold="bold" edge="0x000000" name="money_kazu"]

[_tb_end_tyrano_code]

[resetfont  ]
[return  ]
*__ライブステアップ挿入

[tb_start_tyrano_code]
;ファン数獲得　総合力×カード効果×週目
[eval exp="f.Tre_Up = Math.floor(f.Imo_Sougou * f.Haisin_Card_Finish[f.Live_array[f.i]].rise * f.Sys_Syume/30 )" ]

[_tb_end_tyrano_code]

[call  storage="Tre_Sta_Up.ks"  target="*__ライブファン数UP"  ]
[intrandom_ko10panda  max="10"  count="1"  show_result="false"  show_style="style_a"  show_detail="false"  detail_length="10"  show_log="log_1"  var_name="tf.rand"  ]
[tb_start_tyrano_code]
;70％で疑惑の値場合分け
[if exp="tf.rand >7"]
[eval exp="f.Tre_Up = f.Haisin_Card_Finish[f.Live_array[f.i]].giwaku + 2"]
[else]
[eval exp="f.Tre_Up = 0"]
[endif]
[_tb_end_tyrano_code]

[call  storage="Tre_Sta_Up.ks"  target="*__ライブ疑惑UP"  ]
[tb_start_tyrano_code]
[eval exp="f.Tre_Up = Math.floor(f.Haisin_Card_Finish[f.Live_array[f.i]].rise * f.Sys_Syume/10 )"]
[_tb_end_tyrano_code]

[call  storage="Tre_Sta_Up.ks"  target="*__ライブお金UP"  ]
[tb_start_tyrano_code]
[wa]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;アップ数字文字クリア
[free layer=2 name="Fan_Plus"]
[free layer=2 name="Giwaku_Plus"]
[free layer=2 name="Money_Plus"]

[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;ライブのアップ総量　常時表示文字　クリア
[free layer=1 name="fan_kazu"]
[free layer=1 name="giwaku_kazu"]
[free layer=1 name="money_kazu"]

[_tb_end_tyrano_code]

[font  size="18"  color="0xffffff"  face="JKG-M_3"  bold="true"  ]
[tb_start_tyrano_code]
;ライブ中のファン表示
[iscript]
f.ライブファン表示 = f.Fan_Live.toLocaleString();
[endscript]

[ptext layer="1" x="850" y="220" size="25" text="Fans" bold="bold" edge="0x000000" name="fan_kazu"]
[ptext layer="1" x="950" y="220" size="25" text="&f.ライブファン表示" width=150 align=right bold="bold" edge="0x000000" name="fan_kazu"]
[ptext layer="1" x="1110" y="220" size="25" text="People" bold="bold" edge="0x000000" name="fan_kazu"]

[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;ライブ中の疑惑と金表示
[iscript]
f.ライブファン表示 = f.Fan_Live.toLocaleString();
f.ライブマネー表示 = f.Money_Live.toLocaleString();

[endscript]

[ptext layer="1" x="860" y="70" size="25" text="Suspicion" bold="bold" edge="0x000000" name="giwaku_kazu"]
[ptext layer="1" x="910" y="70" size="25" text="&f.Giwaku_Live" width=50 align=right bold="bold" edge="0x000000" name="giwaku_kazu"]
[ptext layer="1" x="970" y="70" size="25" text="P" bold="bold" edge="0x000000" name="giwaku_kazu"]

[ptext layer="1" x="1000" y="70" size="25" text="Money" bold="bold" edge="0x000000" name="money_kazu"]
[ptext layer="1" x="1060" y="70" size="25" text="&f.ライブマネー表示" width=150 align=right bold="bold" edge="0x000000" name="money_kazu"]
[ptext layer="1" x="1220" y="70" size="25" text="¥" bold="bold" edge="0x000000" name="money_kazu"]

[_tb_end_tyrano_code]

[resetfont  ]
[return  ]
