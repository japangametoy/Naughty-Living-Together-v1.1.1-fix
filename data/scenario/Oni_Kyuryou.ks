[_tb_system_call storage=system/_Oni_Kyuryou.ks]

*__兄給料初期

[tb_start_tyrano_code]
[iscript]
// 年齢加算の指数関数
f.calculateKyu_Toshi = function(x) {
const a = 0.01; // スケール
const b = 0.5;  // 成長率
return Math.floor(a * Math.exp(b * (x - 10)) )*100;
};
[endscript]

[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[iscript] //仕事力加算　指数関数
f.calculateKyu_Work = function(x){
const a = 0.01; //スケール
const b = 0.5; //成長率
return Math.floor(a * Math.exp(b * x)) * 100 + (f.Oni_Work * 2000);
}
[endscript]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[iscript] //体格加算　指数関数
f.calculateKyu_Taikaku = function(x){
const a = 0.01; //スケール
const b = 0.9; //成長率
return Math.floor(a*Math.exp(b*x))*100;
}
[endscript]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[iscript]
f.Oni_Kyuryou=f.calculateKyu_Toshi(f.Oni_Toshi)+f.calculateKyu_Work(f.Oni_Work)+f.calculateKyu_Taikaku(f.Oni_Taikaku) ;
[endscript]
[_tb_end_tyrano_code]

[return  ]
