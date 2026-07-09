/*
    ティラノビルダープラグイン開発用のテンプレート
    まず、このファイルを編集してプラグイン開発を試してみると良いでしょう。    
*/

'use strict';
export class plugin_setting {
    
    constructor(TB) {
        
        /* TBはティラノビルダーの機能にアクセスするためのインターフェスを提供する */
        this.TB = TB;
        
        /* プラグイン名を格納する */
        this.name= TB.$.s("個別画像表示・消去プラグイン");
        
        /*プラグインの説明文を格納する*/
        this.plugin_text= TB.$.s("個別に画像を表示・消去するためのプラグインです。");
        
        /*プラグイン説明用の画像ファイルを指定する。プラグインフォルダに配置してください*/
        this.plugin_img = "kobetu.png";
        
    }
    
    
    /* プラグインをインストールを実行した時１度だけ走ります。フォルダのコピーなどにご活用ください。*/
    triggerInstall(){
        
        /*
        //プラグインからプロジェクトにファイルをコピーするサンプルです 
        var project_path = TB.getProjectPath() ; 
        var from_path = project_path + "data/others/plugin/plugin_template/copy_folder";
        var to_path = project_path + "data/image/copy_folder";
        TB.io.copy(from_path,to_path);
        */
        
    }
        
    /*
        追加するコンポーネントを定義します。
    */
    
    defineComponents(){
        
        var cmp = {};
        var TB = this.TB;
        
        
        /*
            cmp配列
            cmpにプラグイン用のコンポーネントを定義していきます。
            配列名にはタグ名を指定してください。
            他のタグと被らないように世界で一つだけの名称になるように工夫してください。
            （自分の所持しているドメイン名を含めるなど）
        */
        
        /*
            sample_component_1 
            次のパラメータのサンプルを設置
            Image:イメージ選択
            
        */
        
        cmp["individual_image"] = {
            
            "info":{
                
                "default":true, /*trueを指定するとコンポーネントがデフォルトで配置されます。*/
                "name":TB.$.s("個別画像表示"), /* コンポーネント名称 */
                "help":TB.$.s("個別に画像を表示するためのプラグインです"), /* コンポーネントの説明を記述します */ 
                "icon":TB.$.s("s-icon-star-full") /* ここは変更しないでください */
                
            },
            
            /* コンポーネントの情報の詳細を定義します */
            
            "component":{
                
                name : TB.$.s("個別画像表示"), /* コンポーネント名称 */
                component_type : "Image", /*タイムラインのコンポーネントタイプ Simple Movie Image Text Soundが指定可能 */
                
                /*ビューに渡す値*/
                default_view : {
                    base_img_url : "data/fgimage/",  /*画像選択のベースとなるフォルダを指定*/
                    icon : "s-icon-star-full", /*変更しない*/
                    icon_color : "#FFFF99", /*変更しない*/
                    category : "plugin" /*変更しない*/
                },
                custom_image_url:function(component){
                    
                    var img_path =  "./data/fgimage/" + component.data.pm.storage;
                    
                    return img_path;

                    
                },
                               
                //paramとひもづけるためのマップ
                param_view : {
                    image_url : "storage",

                },
                /*
                    write_system_code
                    以下のメソッドは、同時生成されるシステム用のシナリオファイルにタグを追加することができます
                    scene1.ks なら system/_scene1.ks です。
                    プリロードや準備作業が必要な場合はこのメソッドでタグを記述してください。
                */
                
                    write_system_code : function(context) {
                    
                        var tag_name = this.data.name;
                        var pm = this.data.pm;
                        var storage = "./data/fgimage/" + pm.storage;
            
                        if (!context["map_preload"][storage]) {
                            context["map_preload"][storage] = "1";
                            return $.tag("preload", {
                                "storage" : storage
                            });
                        } else {
                            return "";
                        }
                    },
                
                    /* コンポーネントのパラメータを定義していきます */
                param : {
                        
                     storage : {
                        type : "ImageSelect",
                            file_path : "fgimage/default/",
                            name : TB.$.s("画像"),
                            help : TB.$.s("表示するイメージを選択します"),
                            vital : true, //必須かどうか
                            default_val : "",
                            validate : {
                                required : true
                            }
                        },
                        
                        /*画像をプレビューしながら位置を設定することができます*/
                        _clickable_img : {
                            type : "BoundSelect",
                            bound_type : "image",
                            file_path : "fgimage/", //背景画像からデフォルト選択するようになっていること。
                            name : TB.$.s("領域選択"),
                            help : TB.$.s("座標を見やすいツールを使って指定することができます"),
                            vital : false, //必須かどうか
                            default_val : "",
                        },            

                    
                    /*パラメータを指定します。storageはパラメータ名を表しています。*/
                    /*画像選択の例*/

                    
                    /*テキストの自由入力*/
                    "name" : {
                        type : "Text",
                        name : TB.$.s("画像の名前を設定します。"),
                        validate : {
                            required : true,
                        },
                        
                        /*
                            onChangeメソッド 
                            テキストが変更されたタイミングで、手動でパラメータを設定する必要があります。
                            Textの場合は必須です。
                        */
                        onChange : function(val, component) {
                            TB.component.changeParam(component, "name", val);
                        }
                        
                    },
                    /*数値入力の例*/
                    "layer" : {
                        type : "Num", /*Numは数字入力を設定できます*/
                        name : "レイヤー番号", /*パラメータ名*/
                        help : TB.$.s("レイヤー番号を指定します。デフォルトは1です。"),
                        
                        default_val : 1, /*初期値*/
                        
                        /*spinnerは数値をスピナー形式で表現します*/
                        spinner : {
                            min : 0, /*入力の最小値*/
                            max : 10000, /*入力の最大値*/
                            step : 1 /*スピナーを１回動かした時のステップ値*/
                        },
                        
                        validate : {
                            number : true /*数値か否かのチェックを有効化*/
                        }
        
                    },

                    x : {
                        type : "Num",
                        name : TB.$.s("横位置"),
                        unit : TB.$.s("px"),
                        help : TB.$.s("イメージを表示する横位置を指定。"),
                        validate : {
                            number : true
                        }
                        //    default_val:3000,
                    },
                    y : {
                        type : "Num",
                        name : TB.$.s("縦位置"),
                        unit : TB.$.s("px"),
                        help : TB.$.s("イメージを表示する画面上部からのを位置を指定。"),
                        validate : {
                            number : true
                        }
                        //    default_val:3000,
                    },
                    width : {
                        type : "Num",
                        name : TB.$.s("横幅"),
                        unit : TB.$.s("px"),
                        help : TB.$.s("イメージの横幅を指定します"),
                        validate : {
                            number : true
                        }
                        //    default_val:3000,
                    },
                    
                    height : {
                        
                        type : "Num",
                        name : TB.$.s("高さ"),
                        unit : TB.$.s("px"),
                        help : TB.$.s("イメージの高さを指定します"),
                        validate : {
                            number : true
                        }
                        
                    },

                                        /*数値入力の例*/
                    "time" : {
                        type : "Num", /*Numは数字入力を設定できます*/
                        name : "フェードイン時間", /*パラメータ名*/
                        unit : "ﾐﾘ秒", /*単位を表示できます*/
                        help : TB.$.s("フェードインする時間です。デフォルトは0秒です。"),
                        
                        default_val : 0, /*初期値*/
                        
                        /*spinnerは数値をスピナー形式で表現します*/
                        spinner : {
                            min : 0, /*入力の最小値*/
                            max : 10000, /*入力の最大値*/
                            step : 50 /*スピナーを１回動かした時のステップ値*/
                        },
                        
                        validate : {
                            number : true /*数値か否かのチェックを有効化*/
                        }
        
                    },

                    /*チェックボックス形式*/
                    "wait" : {
                        type : "Check",
                        text : TB.$.s("完了を待つ"),
                        default_val : false
                    },  
                    

                    /*数値入力の例*/
                      "zindex" : {
                        type : "Num", /*Numは数字入力を設定できます*/
                        name : "優先度", /*パラメータ名*/
                        help : TB.$.s("表示の優先度です。数字が大きいほど前面になります。初期値は1です。"),
                        
                        default_val : 1, /*初期値*/
                        
                        /*spinnerは数値をスピナー形式で表現します*/
                        spinner : {
                            min : 0, /*入力の最小値*/
                            max : 10000, /*入力の最大値*/
                            step : 1 /*スピナーを１回動かした時のステップ値*/
                        },
                        
                        validate : {
                            number : true /*数値か否かのチェックを有効化*/
                        }
        
                    },
                    

                    


                    
                    
                },
                
                
                /*
                    途中からプレビューの時に実行するタグを返す。
                    例えば背景変更の機能をもったコンポーネントの場合、
                    途中からプレビューのときに背景変更のタグを実行しておかないと
                    途中からプレビューにこのコンポーネントが反映されません。
                    timeなどの時間は短くしておく必要があります。
                */
                /*
                preview_tag:function(preview,cmp){
                    
                    var storage = cmp.data.pm["storage"]; 
                    
                    //返却用のタグを設定
                    preview.code_current_bg ="[bg time=10 storage="+storage+" ] \n";
                             
                },
                */
            
            }
            
        };
        
        
        /* 
            cmp は複数設定することができます。
            つまり、１プラグインに対して３つのコンポーネントを追加するようなことも可能です。
        */
        
        /*イメージ選択、位置変更など*/
        cmp["delete_all_image"] = {
            
            "info":{
                
                "default":true, /*trueを指定するとコンポーネントがデフォルトで配置されます。*/
                "name":TB.$.s("画像全消去"), /* コンポーネント名称 */
                "help":TB.$.s("指定したレイヤーにある画像を全て消去します。"), /* コンポーネントの説明を記述します */ 
                "icon":TB.$.s("s-icon-star-full") /* ここは変更しないでください */
                
            },
            
            /* コンポーネントの情報の詳細を定義します */
            
            "component":{
                
                name : TB.$.s("画像全消去"), /* コンポーネント名称 */
                
                /*
                    headerが定義されている場合、タイムライン上のコンポーネントバー部分の文字列を自由に設定できます。
                    以下の例はジャンプ先のシナリオ名とターゲットをバーに表示させて視認性を確保します。
                */
                                
                component_type : "Simple", /*タイムラインのコンポーネントタイプ Simpleはバーのみ */
                
                /*ビューに渡す値*/
                default_view : {
 
                    icon : "s-icon-star-full", /*変更しない*/
                    icon_color : "#FFFF99", /*変更しない*/
                    category : "plugin" /*変更しない*/
                },
                
                /*変更しない*/
                param_view : {
                },
                
                /*
                    write_system_code
                    以下のメソッドは、同時生成されるシステム用のシナリオファイルにタグを追加することができます
                    scene1.ks なら system/_scene1.ks です。
                    プリロードや準備作業が必要な場合はこのメソッドでタグを記述してください。
                */
                

            
                /* コンポーネントのパラメータを定義していきます */
                param : {
                    

                     /*数値入力の例*/
                     "layer" : {
                        type : "Num", /*Numは数字入力を設定できます*/
                        name : "レイヤー番号", /*パラメータ名*/
                        help : TB.$.s("レイヤー番号を指定します。デフォルトは1です。"),
                        
                        default_val : 1, /*初期値*/
                        
                        /*spinnerは数値をスピナー形式で表現します*/
                        spinner : {
                            min : 0, /*入力の最小値*/
                            max : 10000, /*入力の最大値*/
                            step : 1 /*スピナーを１回動かした時のステップ値*/
                        },
                        
                        validate : {
                            number : true /*数値か否かのチェックを有効化*/
                        }
        
                    },  
                    
                    "time" : {
                        type : "Num", /*Numは数字入力を設定できます*/
                        name : "フェードイン時間", /*パラメータ名*/
                        unit : "ﾐﾘ秒", /*単位を表示できます*/
                        help : TB.$.s("フェードインする時間です。デフォルトは0秒です。"),
                        
                        default_val : 0, /*初期値*/
                        
                        /*spinnerは数値をスピナー形式で表現します*/
                        spinner : {
                            min : 0, /*入力の最小値*/
                            max : 10000, /*入力の最大値*/
                            step : 50 /*スピナーを１回動かした時のステップ値*/
                        },
                        
                        validate : {
                            number : true /*数値か否かのチェックを有効化*/
                        }
        
                    },

                    /*チェックボックス形式*/
                    "wait" : {
                        type : "Check",
                        text : TB.$.s("完了を待つ"),
                        default_val : false
                    },  
                    
                    
                     
                                      
                },                    
                
               
                /*
                    途中からプレビューの時に実行するタグを返す。
                    例えば背景変更の機能をもったコンポーネントの場合、
                    途中からプレビューのときに背景変更のタグを実行しておかないと
                    途中からプレビューにこのコンポーネントが反映されません。
                    timeなどの時間は短くしておく必要があります。
                */
                /*
                preview_tag:function(preview,cmp){
                    
                    var storage = cmp.data.pm["storage"]; 
                    
                    //返却用のタグを設定
                    preview.code_current_bg ="[bg time=10 storage="+storage+" ] \n";
                             
                },
                */
            
            }
            
        };
        
        /*個別に画像を消去するコンポーネント*/
        cmp["delete_individual_image"] = {
            
            "info":{
                
                "default":true, /*trueを指定するとコンポーネントがデフォルトで配置されます。*/
                "name":TB.$.s("個別画像消去"), /* コンポーネント名称 */
                "help":TB.$.s("画像を個別に消去します。"), /* コンポーネントの説明を記述します */ 
                "icon":TB.$.s("s-icon-star-full") /* ここは変更しないでください */
                
            },
            
            /* コンポーネントの情報の詳細を定義します */
            
            "component":{
                
                name : TB.$.s("個別画像消去"), /* コンポーネント名称 */
                
        
                component_type : "Simple", /*タイムラインのコンポーネントタイプ Simpleはバーのみ */
                
                /*ビューに渡す値*/
                default_view : {
                    icon : "s-icon-star-full", /*変更しない*/
                    icon_color : "#FFFF99", /*変更しない*/
                    category : "plugin" /*変更しない*/
                },
                
                /*変更しない*/
                param_view : {
                },
                
                            
                /* コンポーネントのパラメータを定義していきます */
                param : {
 
                     /*テキストの自由入力*/
                     "name" : {
                        type : "Text",
                        name : TB.$.s("画像の名前を設定します。"),
                        validate : {
                            required : true,
                        },
                        
                        /*
                            onChangeメソッド 
                            テキストが変更されたタイミングで、手動でパラメータを設定する必要があります。
                            Textの場合は必須です。
                        */
                        onChange : function(val, component) {
                            TB.component.changeParam(component, "name", val);
                        }
                        
                    },                   

                     /*数値入力の例*/
                     "layer" : {
                        type : "Num", /*Numは数字入力を設定できます*/
                        name : "レイヤー番号", /*パラメータ名*/
                        help : TB.$.s("レイヤー番号を指定します。デフォルトは1です。"),
                        
                        default_val : 1, /*初期値*/
                        
                        /*spinnerは数値をスピナー形式で表現します*/
                        spinner : {
                            min : 0, /*入力の最小値*/
                            max : 10000, /*入力の最大値*/
                            step : 1 /*スピナーを１回動かした時のステップ値*/
                        },
                        
                        validate : {
                            number : true /*数値か否かのチェックを有効化*/
                        }
        
                    },  
                    
                    "time" : {
                        type : "Num", /*Numは数字入力を設定できます*/
                        name : "フェードイン時間", /*パラメータ名*/
                        unit : "ﾐﾘ秒", /*単位を表示できます*/
                        help : TB.$.s("フェードインする時間です。デフォルトは0秒です。"),
                        
                        default_val : 0, /*初期値*/
                        
                        /*spinnerは数値をスピナー形式で表現します*/
                        spinner : {
                            min : 0, /*入力の最小値*/
                            max : 10000, /*入力の最大値*/
                            step : 50 /*スピナーを１回動かした時のステップ値*/
                        },
                        
                        validate : {
                            number : true /*数値か否かのチェックを有効化*/
                        }
        
                    },

                    /*チェックボックス形式*/
                    "wait" : {
                        type : "Check",
                        text : TB.$.s("完了を待つ"),
                        default_val : false
                    }, 
                                      
                },                    
                            
            }
            
        };
        
        

        
            
                
        return cmp;
    
        
    }
    
    test(){
        
        
    }
        
}

