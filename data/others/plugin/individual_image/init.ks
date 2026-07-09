;画像に個別に名前をつけて表示します。
[macro name=individual_image]

[image layer=%layer visible="true" x=%x y=%y storage=%storage width=%width height=%height time=%time wait=%wait zindex=%zindex name=%name]

[endmacro]

;レイヤーにある画像を全て消去します。デフォルトレイヤーは１です。
[macro name=delete_all_image]

[freeimage layer=%layer time=%time|0 wait=%wait]

[endmacro]


;画像を名前ごとに個別に消去します。
[macro name=delete_individual_image]

[free name=%name layer=%layer time=%time|0 wait=%wait]

[endmacro]