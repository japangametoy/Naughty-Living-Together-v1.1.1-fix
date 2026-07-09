tyrano.plugin.kag.tag.notice = {
    vital: [],
    pm: {
        text: "",
        name: "",
        color: "black",
        top: "",
        left: "",
        bottom: "",
        right: "",
        width: "400",
        height: "60",
        font_color: "",
        size: "30",
        face: "",
        align: "left",
        graphic: "",
        graphic_align: "left",
        border_width: "0",
        border_color: "black",
        radius: "0",
        bgcolor: "",
        method: "fadeIn",
        fade_time: "200",
        wait_time: "1000",
        wait: "true",
    },   
    start: function(pm){
        that = TYRANO

        const target = $("#tyrano_base")
        let j_notice = $("<div></div>")

        //テキスト方向
        if(pm.align == "left"){
            pm.align = "flex-start"
        }else if(pm.align == "right"){
            pm.align = "flex-end"
        }

        //画像
        let img_align = ""
        if(pm.graphic != ""){
            let img = $("<img />")
            img.attr("src", `data/image/${pm.graphic}`)
            j_notice.append(img)    
            if(pm.graphic_align == "left"){
                img_align = "row"
            }else if(pm.graphic_align == "right"){
                img_align = "row-reverse"
            }else if(pm.graphic_align == "top"){
                img_align = "column"
            }else if(pm.graphic_align == "bottom"){
                img_align = "column-reverse"
            }
        }
        j_notice.append(pm.text)
        j_notice.addClass("notice_area")

        //背景色指定
        if(pm.bgcolor != ""){
            j_notice.css({
                "background-color": pm.bgcolor,
            })
        }else{
            j_notice.addClass("n" + pm.color)
        }
        $.setName(j_notice, pm.name)
        j_notice.css({
            position: "absolute",
            color: pm.font_color,
            "font-size": pm.size + "px",
            "font-family": pm.face,
            width: pm.width,
            height: pm.height,
            top: pm.top + "px",
            left: pm.left + "px",
            bottom: pm.bottom + "px",
            right: pm.right + "px",
            "z-index": 999999999,
            display: "flex",
            opacity: 0,
            "justify-content": pm.align,
            "flex-direction": img_align,
        })
        //ボーター指定
        if(pm.border_width != "0"){
            j_notice.css({
                "border-width": pm.border_width + "px",
                "border-color": pm.border_color,    
            })
        }
        //角丸指定
        if(pm.radius != "0"){
            j_notice.css({
                "border-radius": pm.radius + "px",
            })
        }
        
        target.append(j_notice)
        $.trans(pm.method, j_notice, parseInt(pm.fade_time), "show", (function () {
            j_notice.css("opacity", 1);
            setTimeout(function(){
                $.trans(pm.method, j_notice, parseInt(pm.fade_time), "hide", (function(){
                    j_notice.remove()
                }))
                setTimeout(function(){
                    if(pm.wait == "true"){
                        that.kag.layer.showEventLayer();
                        that.kag.ftag.nextOrder()
                    }    
                }, parseInt(pm.fade_time))
            }, parseInt(pm.wait_time))
        }))
        if(pm.wait == "false"){
            that.kag.ftag.nextOrder()
        }
    }
}
tyrano.plugin.kag.ftag.master_tag.notice = tyrano.plugin.kag.tag.notice
tyrano.plugin.kag.ftag.master_tag.notice.kag = tyrano.plugin.kag