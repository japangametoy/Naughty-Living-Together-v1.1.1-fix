
*start

;背景変更マクロ　storage と time を指定する
[macro name="back"]

;@layopt layer=message0 visible=false
[backlay]
[image layer=base page=back storage=%storage]
[trans layer="base" method=%method|crossfade children=false time=%time|2000]
[wt]
;@layopt layer=message0 visible=true

[endmacro]


;キャラクターを表示、そして設定
[macro name="charaset"]

[backlay]
[image storage=%storage left=%left|0 top=%top|0 layer=%layer page=back visible=true  ]
[trans time=%time|1]
@wt

[endmacro]

[macro name="chararemove"]

[freeimage layer = %layer]

[endmacro]

;;;;;;;;;;;;セーブ関係

;save情報を取得、ptextを継承する

[macro name="saveinfo"]

[iscript]

tf.savetext = "";

tf.array_save = TG.menu.getSaveData().data;
tf.data = tf.array_save[mp.index];

tf.title = tf.data.title;
tf.save_date = tf.data.save_date;

tf.savetext = "<span style='font-size:10px'>"+tf.save_date+"</span><br />"+tf.title;

[endscript]

[ptext * text=&tf.savetext ]


[endmacro]

[macro name="setsave"]

    [iscript]

        TG.menu.doSave(mp.index);
        
    [endscript]

[endmacro]

[macro name="loading"]

    [iscript]

        TG.menu.loadGame(mp.index);

    [endscript]

[endmacro]


;/////////////拡張 CGモードなどを利用するための設定

[iscript]
	
	if(sf.cg_view){
    }else{
    	sf.cg_view = {};
    }
	
	if(sf.replay_view){
    }else{
    	sf.replay_view = {};
    }
	
	
[endscript]


;CGモードのボタンを表示するためのマクロ
[macro name="cg_image_button"]
	
	[iscript]
		
		mp.graphic = mp.graphic.split(',');
		mp.tmp_graphic = mp.graphic.concat();
		tf.is_cg_open = false;
		if(sf.cg_view[mp.graphic[0]]){
			tf.is_cg_open = true;
		}
		
        if(typeof mp.thumb !="undefined"){
            mp.tmp_graphic[0] = mp.thumb;
        }
	
	
	[endscript]
	
	;渡された値を元に、CG状態を確認していく
	[if exp="tf.is_cg_open==true"]
		[button graphic=&mp.tmp_graphic[0] x=&mp.x y=&mp.y width=&mp.width height=&mp.height preexp="mp.graphic" exp="tf.selected_cg_image = preexp" storage="cg.ks" target="*clickcg" folder="bgimage" ]
	[else]
		[button graphic=&mp.no_graphic x=&mp.x y=&mp.y width=&mp.width height=&mp.height storage="cg.ks" target="*no_image" folder="bgimage" ]
	[endif]
[endmacro]

;CGが閲覧された場合、CGモードで表示できるようにする
[macro name="cg" ]

    [iscript]

        sf.cg_view[mp.storage] = "on";
    
    [endscript]

[endmacro]


;リプレイモード
;CGモードのボタンを表示するためのマクロ
[macro name="replay_image_button"]
	
	[iscript]
		
		tf.is_replay_open = false;
		if(sf.replay_view[mp.name]){
			tf.is_replay_open = true;
		}
	
	[endscript]
	
	;渡された値を元に、CG状態を確認していく
	[if exp="tf.is_replay_open==true"]
		[button graphic=&mp.graphic x=&mp.x y=&mp.y width=&mp.width height=&mp.height preexp="sf.replay_view[mp.name]" exp="tf.selected_replay_obj = preexp" storage="replay.ks" target="*clickcg" folder="bgimage" ]
	[else]
		[button graphic=&mp.no_graphic x=&mp.x y=&mp.y width=&mp.width height=&mp.height storage="replay.ks" target="*no_image" folder="bgimage" ]
	[endif]
	
[endmacro]

;リプレイを開放する
[macro name="setreplay" ]

    [iscript]

        sf.replay_view[mp.name] = {storage:mp.storage, target:mp.target};
    
    [endscript]

[endmacro]

[macro name="endreplay"]

    [if exp="tf.flag_replay == true"]
        
        @layopt page="fore" layer="message0" visible=false
        ;システムボタンを非表示にするなど
        [hidemenubutton]
        
        @jump storage="replay.ks" 
        
    [endif]

[endmacro]

;ハート　インラインマクロ
[macro name="heart"]
[graph storage="ハート.png"]
[endmacro]

; ----------------------------------------------------------

; 乱数マクロ

; ----------------------------------------------------------



; [getrand var="XXX" min="XXX" max="XXX"]

; 一時変数 tf.rand に min 以上 max 以下の乱数(整数)をセットするマクロです。

; var には変数の名前を指定できます（var="f.a"のように）。

; 指定すると、tf.rand の内容をその変数にコピーします。

[macro name="getrand"]

  [iscript]

  var max = mp.max || '10'

  var min = mp.min || '1'

  max = Number(max)

  min = Number(min)

  tf.rand = min + Math.floor(Math.random() * (max - min + 1))

  if (mp['var']) eval(mp['var'] + ' = ' + tf.rand)

  [endscript]

[endmacro]



; [getrandname var="XXX" name="XXX" min="XXX" max="XXX"]

; 文字列 name の{R}部分を「min 以上 max 以下のランダムな整数」で置き換えた文字列を生成し、

; 一時変数 tf.randname にセットします。

; var には変数の名前を指定できます（var="f.a"のように）。

; 指定すると、tf.randname の内容をその変数にコピーします。

[macro name="getrandname"]

  [iscript]

  var name  = mp.name || '*Label{R}'

  var max   = mp.max  || '10'

  var min   = mp.min  || '1'

  max = Number(max)

  min = Number(min)

  var rand    = min + Math.floor(Math.random() * (max - min + 1))

  tf.randname = name.replace('{R}', rand)

  if (mp['var']) eval(mp['var'] + ' = "' + tf.randname + '"')

  [endscript]

[endmacro]

;--------------------------
;whileタグ
;--------------------------

[plugin name="rightClickButton"]
[plugin name="switch"]
[plugin name="for"]
[plugin name="notice_ex"]
[plugin name="glink_ex"]
[plugin name=rightclick_back]

;--------------------------
[iscript]
TYRANO.kag.ftag.master_tag.while = {
vital: ["target"],
pm: {},

start: function(pm) {
this.kag.ftag.nextOrderWithLabel(pm.target, null);
},

kag: TYRANO.kag
};
[endscript]

[return]


