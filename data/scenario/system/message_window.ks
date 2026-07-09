;メッセージレイヤの定義

		[position width=950 height=160 top=550 left=200 ]


		
			[position page=fore margint=45 marginl=10 marginr=20 marginb=10 vertical=false opacity="180" radius="0" color="0x000000" ]
		

		[ptext name="chara_name_area" layer="message0" color=0xFFFFFF size=26 x=220 y=550 bold="bold" edge="undefined" shadow="undefined"]

		;キャラクターの表示モードに関する定義
		[chara_config ptext="chara_name_area" pos_mode=true time="600" memory="false" anim="true" effect="easeInQuad" pos_change_time="600" ]

		;キャラクターフォーカスなど
		[chara_config  talk_focus="none" talk_anim="" ]

		;クリック待ちボタンについて
		[glyph fix="false" left="0" top="0" line="" anim="" ]

		

            
            [button role="save" graphic="button/save.png" x="1180" y="560" width="70" height="25" visible="false" ]
            

        

            
            [button role="sleepgame" graphic="button/config.png" x="1180" y="620" width="70" height="25" visible="false" storage="config.ks"]
            

        

            
            [button role="load" graphic="button/load.png" x="1180" y="590" width="70" height="25" visible="false" ]
            

        

            
            [button role="auto" graphic="button/auto.png" x="1180" y="650" width="70" height="26" visible="false" ]
            

        

            
            [button role="title" graphic="button/title.png" x="1180" y="680" width="70" height="26" visible="false" ]
            

        

		;CG・回想用の共通項目
		[eval exp="sf._tb_cg_noimage='noimage.png'" ]
		[eval exp="sf._tb_replay_noimage='回想モード/回想モード00.png'" ]

		;ふきだし用の設定（message1）
		;[position layer="message1" left=160 top=500 width=1000 height=200 radius=15 page=fore visible=true color="white" opacity=255 border_size="3" border_color="black" ]
		;[position layer="message1" page=fore margint="15" marginl="20" marginr="20" marginb="20"]

		[position layer="message1" width=950 height=160 top=550 left=200 ]
		[position layer="message1" page=fore margint=5 marginl=10 marginr=10 marginb=10 vertical=false opacity="180" radius="0" color="0x000000" ]

		;glink_configの設定
		[glink_config auto_place_force="" width="" height="" show_time="" select_time="" reject_time=""]

		

		

		[glink_config show_easing="" select_easing="" reject_easing=""  place_area=""]

		



		