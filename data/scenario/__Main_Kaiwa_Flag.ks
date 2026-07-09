[_tb_system_call storage=system/___Main_Kaiwa_Flag.ks]

*__会話フラグ

[tb_start_tyrano_code]
;条件付きで会話を表示　flagプロパティを参照
[iscript]
//好感度条件
if (!f.talks[5].flag && f.Sta_Suki >= 25) { // Execute only if flag is false and conditions are met
f.talks[5].flag = true;
f.talks[5].read = false;
f.Talk_New_Flag = 1;
};

if (!f.talks[6].flag && f.Sta_Suki >= 50 && f.talks[5].flag && f.talks[5].read) { // Execute only if flag is false and conditions are met
f.talks[6].flag = true;
f.talks[6].read = false;
f.Talk_New_Flag = 1;
};

if (!f.talks[7].flag && f.Sta_Suki >= 75 && f.talks[6].flag && f.talks[6].read) { // Execute only if flag is false and conditions are met
f.talks[7].flag = true;
f.talks[7].read = false;
f.Talk_New_Flag = 1;
};

if (!f.talks[8].flag && f.Sta_Suki >= 100 && f.talks[7].flag && f.talks[7].read) { // Execute only if flag is false and conditions are met
f.talks[8].flag = true;
f.talks[8].read = false;
f.Talk_New_Flag = 1;
};

if (!f.talks[9].flag && f.Sta_Suki >= 125 && f.talks[8].flag && f.talks[8].read) { // Execute only if flag is false and conditions are met
f.talks[9].flag = true;
f.talks[9].read = false;
f.Talk_New_Flag = 1;
};

if (!f.talks[10].flag && f.Sta_Suki >= 150 && f.talks[9].flag && f.talks[9].read) { // Execute only if flag is false and conditions are met
f.talks[10].flag = true;
f.talks[10].read = false;
f.Talk_New_Flag = 1;
};

if (!f.talks[11].flag && f.Sta_Suki >= 200 && f.talks[10].flag && f.talks[10].read) { // Execute only if flag is false and conditions are met
f.talks[11].flag = true;
f.talks[11].read = false;
f.Talk_New_Flag = 1;
};

//理性条件
if (!f.talks[12].flag && f.Sta_Risei <= 90) { // Execute only if flag is false and conditions are met
f.talks[12].flag = true;
f.talks[12].read = false;
f.Talk_New_Flag = 1;
};

if (!f.talks[13].flag && f.Sta_Risei <= 80 && f.talks[12].flag && f.talks[12].read) { // Execute only if flag is false and conditions are met
f.talks[13].flag = true;
f.talks[13].read = false;
f.Talk_New_Flag = 1;
};

if (!f.talks[14].flag && f.Sta_Risei <= 70 && f.talks[13].flag && f.talks[13].read) { // Execute only if flag is false and conditions are met
f.talks[14].flag = true;
f.talks[14].read = false;
f.Talk_New_Flag = 1;
};


if (!f.talks[15].flag && f.Sta_Risei <= 60 && f.talks[14].flag && f.talks[14].read) { // Execute only if flag is false and conditions are met
f.talks[15].flag = true;
f.talks[15].read = false;
f.Talk_New_Flag = 1;
};

if (!f.talks[16].flag && f.Sta_Risei <= 50 && f.talks[15].flag && f.talks[15].read) { // Execute only if flag is false and conditions are met
f.talks[16].flag = true;
f.talks[16].read = false;
f.Talk_New_Flag = 1;
};

if (!f.talks[17].flag && f.Sta_Risei <= 40 && f.talks[16].flag && f.talks[16].read) { // Execute only if flag is false and conditions are met
f.talks[17].flag = true;
f.talks[17].read = false;
f.Talk_New_Flag = 1;
};

if (!f.talks[18].flag && f.Sta_Risei <= 30 && f.talks[17].flag && f.talks[17].read) { // Execute only if flag is false and conditions are met
f.talks[18].flag = true;
f.talks[18].read = false;
f.Talk_New_Flag = 1;
};

if (!f.talks[19].flag && f.Sta_Risei <= 20 && f.talks[18].flag && f.talks[18].read) { // Execute only if flag is false and conditions are met
f.talks[19].flag = true;
f.talks[19].read = false;
f.Talk_New_Flag = 1;
};

if (!f.talks[20].flag && f.Sta_Risei <= 10 && f.talks[19].flag && f.talks[19].read) { // Execute only if flag is false and conditions are met
f.talks[20].flag = true;
f.talks[20].read = false;
f.Talk_New_Flag = 1;
};

if (!f.talks[21].flag && f.Sta_Risei <= 0 && f.talks[20].flag && f.talks[20].read) { // Execute only if flag is false and conditions are met
f.talks[21].flag = true;
f.talks[21].read = false;
f.Talk_New_Flag = 1;
};

//ライブ　週目条件
if (!f.talks[22].flag && f.Sys_Syume == 4 && f.Sys_Youbi == 6) { // Execute only if flag is false and conditions are met
f.talks[22].flag = true;
f.talks[22].read = false;
f.Talk_New_Flag = 1;
};

//容姿　条件
if (!f.talks[23].flag && f.Oni_Youshi >= 7) { // Execute only if flag is false and conditions are met
f.talks[23].flag = true;
f.talks[23].read = false;
f.Talk_New_Flag = 1;
};

//体格　条件
if (!f.talks[24].flag && f.Oni_Taikaku >= 7) { // Execute only if flag is false and conditions are met
f.talks[24].flag = true;
f.talks[24].read = false;
f.Talk_New_Flag = 1;
};

//仕事　条件
if (!f.talks[25].flag && f.Oni_Work >= 7) { // Execute only if flag is false and conditions are met
f.talks[25].flag = true;
f.talks[25].read = false;
f.Talk_New_Flag = 1;
};

//エロ技　条件
if (!f.talks[26].flag && f.Oni_Ero >= 7) { // Execute only if flag is false and conditions are met
f.talks[26].flag = true;
f.talks[26].read = false;
f.Talk_New_Flag = 1;
};

//お尻フラグ　条件
if (!f.talks[27].flag && f.Kaihatu[2].count >= 5) { // Execute only if flag is false and conditions are met
f.talks[27].flag = true;
f.talks[27].read = false;
f.Talk_New_Flag = 1;
};

//口フラグ　条件
if (!f.talks[28].flag && f.Kaihatu[0].count >= 1) { // Execute only if flag is false and conditions are met
f.talks[28].flag = true;
f.talks[28].read = false;
f.Talk_New_Flag = 1;
};

//おっぱいフラグ　条件
if (!f.talks[29].flag && f.Kaihatu[1].count >= 1) { // Execute only if flag is false and conditions are met
f.talks[29].flag = true;
f.talks[29].read = false;
f.Talk_New_Flag = 1;
};

//初風呂フラグ　条件---------------------------------------------
if (!f.talks[30].flag && f.H_Furo_First >= 1) { // Execute only if flag is false and conditions are met
f.talks[30].flag = true;
f.talks[30].read = false;
f.Talk_New_Flag = 1;
};

//初体験フラグ　条件---------------------------------------------
if (!f.talks[31].flag && f.Sex_Count[0].bestcount >= 1) { // Execute only if flag is false and conditions are met
f.talks[31].flag = true;
f.talks[31].read = false;
f.Talk_New_Flag = 1;
};

//オナニーばれ
if (!f.talks[32].flag && f.H_Onani_Bare_Flag > 0) { // Execute only if flag is false and conditions are met
f.talks[32].flag = true;
f.talks[32].read = false;
f.Talk_New_Flag = 1;
};

//初めての絶頂
if (!f.talks[33].flag && f.H_Furo_Ikase_Flag > 0) { // Execute only if flag is false and conditions are met
f.talks[33].flag = true;
f.talks[33].read = false;
f.Talk_New_Flag = 1;
};

//初めての中出し
if (!f.talks[34].flag && f.Sex_Count[3].bestcount >= 1) { // Execute only if flag is false and conditions are met
f.talks[34].flag = true;
f.talks[34].read = false;
f.Talk_New_Flag = 1;
};

// 中出し10回
if (!f.talks[35].flag && f.Sex_Count[3].bestcount >= 10) { // Execute only if flag is false and conditions are met
f.talks[35].flag = true;
f.talks[35].read = false;
f.Talk_New_Flag = 1;
};

//24時間セックス後
if (!f.talks[36].flag && f.H_24H_Flag >= 1) { // Execute only if flag is false and conditions are met
f.talks[36].flag = true;
f.talks[36].read = false;
f.Talk_New_Flag = 1;
};

//ファン数フラグ1千　条件
if (!f.talks[37].flag && f.Fan >= 1000) { // Execute only if flag is false and conditions are met
f.talks[37].flag = true;
f.talks[37].read = false;
f.Talk_New_Flag = 1;
};

if (!f.talks[38].flag && f.Fan >= 10000 && f.talks[37].flag && f.talks[37].read) { // Execute only if flag is false and conditions are met
f.talks[38].flag = true;
f.talks[38].read = false;
f.Talk_New_Flag = 1;
};

if (!f.talks[39].flag && f.Fan >= 30000 && f.Sta_Risei == 0 && f.talks[38].flag && f.talks[38].read) { // Execute only if flag is false and conditions are met
f.talks[39].flag = true;
f.talks[39].read = false;
f.Talk_New_Flag = 1;
};

if (!f.talks[40].flag && f.Fan >= 100000 && f.talks[39].flag && f.talks[39].read) { // Execute only if flag is false and conditions are met
f.talks[40].flag = true;
f.talks[40].read = false;
f.Talk_New_Flag = 1;
};

if (!f.talks[41].flag && f.Fan >= 200000 && f.talks[40].flag && f.talks[40].read) { // Execute only if flag is false and conditions are met
f.talks[41].flag = true;
f.talks[41].read = false;
f.Talk_New_Flag = 1;
};

if (!f.talks[42].flag && f.Fan >= 300000 && f.talks[41].flag && f.talks[41].read) { // Execute only if flag is false and conditions are met
f.talks[42].flag = true;
f.talks[42].read = false;
f.Talk_New_Flag = 1;
};

if (!f.talks[43].flag && f.Fan >= 400000 && f.talks[42].flag && f.talks[42].read) { // Execute only if flag is false and conditions are met
f.talks[43].flag = true;
f.talks[43].read = false;
f.Talk_New_Flag = 1;
};

if (!f.talks[44].flag && f.Fan >= 500000 && f.talks[43].flag && f.talks[43].read) { // Execute only if flag is false and conditions are met
f.talks[44].flag = true;
f.talks[44].read = false;
f.Talk_New_Flag = 1;
};

if (!f.talks[45].flag && f.Fan >= 600000 && f.talks[44].flag && f.talks[44].read) { // Execute only if flag is false and conditions are met
f.talks[45].flag = true;
f.talks[45].read = false;
f.Talk_New_Flag = 1;
};

if (!f.talks[46].flag && f.Fan >= 700000 && f.talks[45].flag && f.talks[45].read) { // Execute only if flag is false and conditions are met
f.talks[46].flag = true;
f.talks[46].read = false;
f.Talk_New_Flag = 1;
};

if (!f.talks[47].flag && f.Fan >= 800000 && f.talks[46].flag && f.talks[46].read) { // Execute only if flag is false and conditions are met
f.talks[47].flag = true;
f.talks[47].read = false;
f.Talk_New_Flag = 1;
};

if (!f.talks[48].flag && f.Fan >= 900000 && f.talks[47].flag && f.talks[47].read) { // Execute only if flag is false and conditions are met
f.talks[48].flag = true;
f.talks[48].read = false;
f.Talk_New_Flag = 1;
};


//開発度口　条件
if (!f.talks[49].flag && f.Kaihatu[0].count >= 15 && f.talks[28].flag && f.talks[28].read) { // Execute only if flag is false and conditions are met
f.talks[49].flag = true;
f.talks[49].read = false;
f.Talk_New_Flag = 1;
};

if (!f.talks[50].flag && f.Kaihatu[0].count >= 30 && f.talks[49].flag && f.talks[49].read) { // Execute only if flag is false and conditions are met
f.talks[50].flag = true;
f.talks[50].read = false;
f.Talk_New_Flag = 1;
};

//開発度胸　条件
if (!f.talks[51].flag && f.Kaihatu[1].count >= 15 && f.talks[29].flag && f.talks[29].read) { // Execute only if flag is false and conditions are met
f.talks[51].flag = true;
f.talks[51].read = false;
f.Talk_New_Flag = 1;
};

if (!f.talks[52].flag && f.Kaihatu[1].count >= 30 && f.talks[51].flag && f.talks[51].read) { // Execute only if flag is false and conditions are met
f.talks[52].flag = true;
f.talks[52].read = false;
f.Talk_New_Flag = 1;
};

//開発度尻　条件
if (!f.talks[53].flag && f.Kaihatu[2].count >= 30) { // Execute only if flag is false and conditions are met
f.talks[53].flag = true;
f.talks[53].read = false;
f.Talk_New_Flag = 1;
};

//開発度膣　条件
if (!f.talks[54].flag && f.Kaihatu[3].count >= 5) { // Execute only if flag is false and conditions are met
f.talks[54].flag = true;
f.talks[54].read = false;
f.Talk_New_Flag = 1;
};

if (!f.talks[55].flag && f.Kaihatu[3].count >= 30 && f.talks[54].flag && f.talks[54].read) { // Execute only if flag is false and conditions are met
f.talks[55].flag = true;
f.talks[55].read = false;
f.Talk_New_Flag = 1;
};

if (!f.talks[56].flag && f.Kaihatu[3].count >= 50 && f.talks[55].flag && f.talks[55].read) { // Execute only if flag is false and conditions are met
f.talks[56].flag = true;
f.talks[56].read = false;
f.Talk_New_Flag = 1;
};

//開発度穴　条件
if (!f.talks[57].flag && f.Kaihatu[4].count >= 15) { // Execute only if flag is false and conditions are met
f.talks[57].flag = true;
f.talks[57].read = false;
f.Talk_New_Flag = 1;
};

if (!f.talks[58].flag && f.Kaihatu[4].count >= 30 && f.talks[57].flag && f.talks[57].read) { // Execute only if flag is false and conditions are met
f.talks[58].flag = true;
f.talks[58].read = false;
f.Talk_New_Flag = 1;
};

//2週目以降　2週目ごと
if (!f.talks[59].flag && f.Sys_Syume >= 5) { // Execute only if flag is false and conditions are met
f.talks[59].flag = true;
f.talks[59].read = false;
f.Talk_New_Flag = 1;
};

if (!f.talks[60].flag && f.Sys_Syume >= 5) { // Execute only if flag is false and conditions are met
f.talks[60].flag = true;
f.talks[60].read = false;
f.Talk_New_Flag = 1;
};

if (!f.talks[61].flag && f.Sys_Syume >= 6) { // Execute only if flag is false and conditions are met
f.talks[61].flag = true;
f.talks[61].read = false;
f.Talk_New_Flag = 1;
};

if (!f.talks[62].flag && f.Sys_Syume >= 6) { // Execute only if flag is false and conditions are met
f.talks[62].flag = true;
f.talks[62].read = false;
f.Talk_New_Flag = 1;
};

if (!f.talks[63].flag && f.Sys_Syume >= 7) { // Execute only if flag is false and conditions are met
f.talks[63].flag = true;
f.talks[63].read = false;
f.Talk_New_Flag = 1;
};

if (!f.talks[64].flag && f.Sys_Syume >= 7) { // Execute only if flag is false and conditions are met
f.talks[64].flag = true;
f.talks[64].read = false;
f.Talk_New_Flag = 1;
};

if (!f.talks[65].flag && f.Sys_Syume >= 8) { // Execute only if flag is false and conditions are met
f.talks[65].flag = true;
f.talks[65].read = false;
f.Talk_New_Flag = 1;
};

if (!f.talks[66].flag && f.Sys_Syume >= 8) { // Execute only if flag is false and conditions are met
f.talks[66].flag = true;
f.talks[66].read = false;
f.Talk_New_Flag = 1;
};

if (!f.talks[67].flag && f.Sys_Syume >= 9) { // Execute only if flag is false and conditions are met
f.talks[67].flag = true;
f.talks[67].read = false;
f.Talk_New_Flag = 1;
};

if (!f.talks[68].flag && f.Sys_Syume >= 9) { // Execute only if flag is false and conditions are met
f.talks[68].flag = true;
f.talks[68].read = false;
f.Talk_New_Flag = 1;
};

if (!f.talks[69].flag && f.Sys_Syume >= 10) { // Execute only if flag is false and conditions are met
f.talks[69].flag = true;
f.talks[69].read = false;
f.Talk_New_Flag = 1;
};

if (!f.talks[70].flag && f.Sys_Syume >= 10) { // Execute only if flag is false and conditions are met
f.talks[70].flag = true;
f.talks[70].read = false;
f.Talk_New_Flag = 1;
};

if (!f.talks[71].flag && f.Sys_Syume >= 11) { // Execute only if flag is false and conditions are met
f.talks[71].flag = true;
f.talks[71].read = false;
f.Talk_New_Flag = 1;
};

if (!f.talks[72].flag && f.Sys_Syume >= 11) { // Execute only if flag is false and conditions are met
f.talks[72].flag = true;
f.talks[72].read = false;
f.Talk_New_Flag = 1;
};

if (!f.talks[73].flag && f.Sys_Syume >= 12) { // Execute only if flag is false and conditions are met
f.talks[73].flag = true;
f.talks[73].read = false;
f.Talk_New_Flag = 1;
};

if (!f.talks[74].flag && f.Sys_Syume >= 12) { // Execute only if flag is false and conditions are met
f.talks[74].flag = true;
f.talks[74].read = false;
f.Talk_New_Flag = 1;
};

//疑惑50
if (!f.talks[75].flag && f.Sys_Giwaku >= 50) { // Execute only if flag is false and conditions are met
f.talks[75].flag = true;
f.talks[75].read = false;
f.Talk_New_Flag = 1;
};

//疑惑80
if (!f.talks[76].flag && f.Sys_Giwaku >= 80 && f.talks[75].flag && f.talks[75].read ) { // Execute only if flag is false and conditions are met
f.talks[76].flag = true;
f.talks[76].read = false;
f.Talk_New_Flag = 1;
};


// 最高中出し4回
if (!f.talks[77].flag && f.Sex_Count[4].bestcount >= 4) { // Execute only if flag is false and conditions are met
f.talks[77].flag = true;
f.talks[77].read = false;
f.Talk_New_Flag = 1;
};

// 最高中出し7回
if (!f.talks[78].flag && f.Sex_Count[4].bestcount >= 7) { // Execute only if flag is false and conditions are met
f.talks[78].flag = true;
f.talks[78].read = false;
f.Talk_New_Flag = 1;
};

// 最高絶頂5回
if (!f.talks[79].flag && f.Sex_Count[5].bestcount >= 5) { // Execute only if flag is false and conditions are met
f.talks[79].flag = true;
f.talks[79].read = false;
f.Talk_New_Flag = 1;
};

// 最高絶頂10回
if (f.Sys_Seiryoku >= 6 && f.Sex_Count[5].bestcount >= 10 && f.talks[78].flag && f.talks[78].read) { // Execute only if flag is false and conditions are met
if (f.talks[90].read){
f.Talk_New_Flag = 1;
};
f.talks[90].flag = true;
f.talks[90].read = false;
};

// 好感度が高く、会話11が既読なら会話73を解放
if (f.Sta_Suki >= 200 && f.talks[11].flag && f.talks[11].read) {
f.talks[91].flag = true;
f.talks[91].read = false;
};

// 理性がゼロ以下で、会話21が既読なら会話74を解放
if (f.Sta_Risei <= 0 && f.talks[21].flag && f.talks[21].read) {
f.talks[92].flag = true;
f.talks[92].read = false;
};

[endscript]


[_tb_end_tyrano_code]

[return  ]
