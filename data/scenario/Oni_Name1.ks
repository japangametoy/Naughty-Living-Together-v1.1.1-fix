[_tb_system_call storage=system/_Oni_Name1.ks]

*__兄名前初期

[tb_start_tyrano_code]
[iscript]
if (f.Oni_Toshi>=30) {
f.Oni_Name3 = "Uncle ";
} else if (f.Oni_Toshi<30) {
f.Oni_Name3 = "Onii-chan"
}
[endscript]
[_tb_end_tyrano_code]

*__兄名前変更

[tb_start_tyrano_code]
[iscript]
f.brotherName = 10000;  // Success

// オニ_容姿
if (f.Oni_Youshi >= 9) {
f.brotherName += 2000;
} else if (f.Oni_Youshi >= 7) {
f.brotherName += 1000;
}

// オニ_体格
if (f.Oni_Taikaku >= 9) {
f.brotherName += 200;
} else if (f.Oni_Taikaku >= 7) {
f.brotherName += 100;
}

// オニ_仕事
if (f.Oni_Work >= 17) {
f.brotherName += 30;
} else if (f.Oni_Work >= 12) {
f.brotherName += 20;
} else if (f.Oni_Work >= 7) {
f.brotherName += 10;
}

// オニ_エロ
if (f.Oni_Ero >= 9) {
f.brotherName += 3;
} else if (f.Oni_Ero >= 7) {
f.brotherName += 2;
} else if (f.Oni_Ero >= 1) {
f.brotherName += 1;
}

// 文字列に変換して比較
var Oni_Name_Str = f.brotherName.toString();

// 文字列比較
if (/^122/.test(Oni_Name_Str)) {
f.Oni_Name1 = "Super Hot ";
f.Oni_Name2 = "Model-class ";
} else if (/^121/.test(Oni_Name_Str)) {
f.Oni_Name1 = "Super Hot ";
f.Oni_Name2 = "Tall ";
} else if (/^1203/.test(Oni_Name_Str)) {
f.Oni_Name1 = "Super Hot ";
f.Oni_Name2 = "Super Elite ";
} else if (/^1202/.test(Oni_Name_Str)) {
f.Oni_Name1 = "Super Hot ";
f.Oni_Name2 = "Elite ";
} else if (/^1201/.test(Oni_Name_Str)) {
f.Oni_Name1 = "Super Hot ";
f.Oni_Name2 = "Capable ";
} else if (/^12003/.test(Oni_Name_Str)) {
f.Oni_Name1 = "Super Hot ";
f.Oni_Name2 = "Sex God ";
} else if (/^12002/.test(Oni_Name_Str)) {
f.Oni_Name1 = "Super Hot ";
f.Oni_Name2 = "Sex Master ";
} else if (/^12001/.test(Oni_Name_Str)) {
f.Oni_Name1 = "Super Hot ";
f.Oni_Name2 = "Skilled ";
} else if (/^12000/.test(Oni_Name_Str)) {
f.Oni_Name1 = "Super Hot ";
f.Oni_Name2 = "Virgin ";

} else if (/^112/.test(Oni_Name_Str)) {
f.Oni_Name1 = "Handsome ";
f.Oni_Name2 = "Model-class ";
} else if (/^111/.test(Oni_Name_Str)) {
f.Oni_Name1 = "Handsome ";
f.Oni_Name2 = "Tall ";
} else if (/^1103/.test(Oni_Name_Str)) {
f.Oni_Name1 = "Handsome ";
f.Oni_Name2 = "Super Elite ";
} else if (/^1102/.test(Oni_Name_Str)) {
f.Oni_Name1 = "Handsome ";
f.Oni_Name2 = "Elite ";
} else if (/^1101/.test(Oni_Name_Str)) {
f.Oni_Name1 = "Handsome ";
f.Oni_Name2 = "Capable ";
} else if (/^11003/.test(Oni_Name_Str)) {
f.Oni_Name1 = "Handsome ";
f.Oni_Name2 = "Sex God ";
} else if (/^11002/.test(Oni_Name_Str)) {
f.Oni_Name1 = "Handsome ";
f.Oni_Name2 = "Sex Master ";
} else if (/^11001/.test(Oni_Name_Str)) {
f.Oni_Name1 = "Handsome ";
f.Oni_Name2 = "Skilled ";
} else if (/^11000/.test(Oni_Name_Str)) {
f.Oni_Name1 = "Handsome ";
f.Oni_Name2 = "Virgin ";

} else if (/^1023/.test(Oni_Name_Str)) {
f.Oni_Name1 = "Model-class ";
f.Oni_Name2 = "Super Elite ";
} else if (/^1022/.test(Oni_Name_Str)) {
f.Oni_Name1 = "Model-class ";
f.Oni_Name2 = "Elite ";
} else if (/^1021/.test(Oni_Name_Str)) {
f.Oni_Name1 = "Model-class ";
f.Oni_Name2 = "Capable ";
} else if (/^10203/.test(Oni_Name_Str)) {
f.Oni_Name1 = "Model-class ";
f.Oni_Name2 = "Sex God ";
} else if (/^10202/.test(Oni_Name_Str)) {
f.Oni_Name1 = "Model-class ";
f.Oni_Name2 = "Sex Master ";
} else if (/^10201/.test(Oni_Name_Str)) {
f.Oni_Name1 = "Model-class ";
f.Oni_Name2 = "Skilled ";
} else if (/^10200/.test(Oni_Name_Str)) {
f.Oni_Name1 = "Model-class ";
f.Oni_Name2 = "Virgin ";

} else if (/^1013/.test(Oni_Name_Str)) {
f.Oni_Name1 = "Tall ";
f.Oni_Name2 = "Super Elite ";
} else if (/^1012/.test(Oni_Name_Str)) {
f.Oni_Name1 = "Tall ";
f.Oni_Name2 = "Elite ";
} else if (/^1011/.test(Oni_Name_Str)) {
f.Oni_Name1 = "Tall ";
f.Oni_Name2 = "Capable ";
} else if (/^10103/.test(Oni_Name_Str)) {
f.Oni_Name1 = "Tall ";
f.Oni_Name2 = "Sex God ";
} else if (/^10102/.test(Oni_Name_Str)) {
f.Oni_Name1 = "Tall ";
f.Oni_Name2 = "Sex Master ";
} else if (/^10101/.test(Oni_Name_Str)) {
f.Oni_Name1 = "Tall ";
f.Oni_Name2 = "Skilled ";
} else if (/^10100/.test(Oni_Name_Str)) {
f.Oni_Name1 = "Tall ";
f.Oni_Name2 = "Virgin ";

} else if (/^10033/.test(Oni_Name_Str)) {
f.Oni_Name1 = "Super Elite ";
f.Oni_Name2 = "Sex God ";
} else if (/^10032/.test(Oni_Name_Str)) {
f.Oni_Name1 = "Super Elite ";
f.Oni_Name2 = "Sex Master ";
} else if (/^10031/.test(Oni_Name_Str)) {
f.Oni_Name1 = "Super Elite ";
f.Oni_Name2 = "Skilled ";
} else if (/^10030/.test(Oni_Name_Str)) {
f.Oni_Name1 = "Super Elite ";
f.Oni_Name2 = "Virgin ";

} else if (/^10023/.test(Oni_Name_Str)) {
f.Oni_Name1 = "Elite ";
f.Oni_Name2 = "Sex God ";
} else if (/^10022/.test(Oni_Name_Str)) {
f.Oni_Name1 = "Elite ";
f.Oni_Name2 = "Sex Master ";
} else if (/^10021/.test(Oni_Name_Str)) {
f.Oni_Name1 = "Elite ";
f.Oni_Name2 = "Skilled ";
} else if (/^10020/.test(Oni_Name_Str)) {
f.Oni_Name1 = "Elite ";
f.Oni_Name2 = "Virgin ";

} else if (/^10013/.test(Oni_Name_Str)) {
f.Oni_Name1 = "Capable ";
f.Oni_Name2 = "Sex God ";
} else if (/^10012/.test(Oni_Name_Str)) {
f.Oni_Name1 = "Capable ";
f.Oni_Name2 = "Sex Master ";
} else if (/^10011/.test(Oni_Name_Str)) {
f.Oni_Name1 = "Capable ";
f.Oni_Name2 = "Skilled ";
} else if (/^10010/.test(Oni_Name_Str)) {
f.Oni_Name1 = "Capable ";
f.Oni_Name2 = "Virgin ";

} else if (/^10003/.test(Oni_Name_Str)) {
f.Oni_Name1 = "Ordinary ";
f.Oni_Name2 = "Sex God ";
} else if (/^10002/.test(Oni_Name_Str)) {
f.Oni_Name1 = "Ordinary ";
f.Oni_Name2 = "Sex Master ";
} else if (/^10001/.test(Oni_Name_Str)) {
f.Oni_Name1 = "Ordinary ";
f.Oni_Name2 = "Skilled ";

} else {
f.Oni_Name1 = "Ordinary ";
f.Oni_Name2 = "Virgin ";
}

// 最後に0の数チェック
//var zeroCount = (Oni_Name_Str.match(/0/g) || []).length;
//if (zeroCount == 2) {
//  f.Oni_Name2 = "モテモテ";
//} else if (zeroCount == 1) {
//  f.Oni_Name2 = "モテスギ";
//} else if (zeroCount > 2) {
//  f.Oni_Name2 = "童貞";
//}
[endscript]

[_tb_end_tyrano_code]

[return  ]
