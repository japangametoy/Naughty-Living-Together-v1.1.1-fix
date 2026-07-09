;(function () {
    //既定イベント保存用
    TYRANO.kag.stat.f._event_set = {}

    //右クリックイベントをセット
    TYRANO.kag.tag.back_set = {
        pm: {
            storage: "",
            target: "",
        },
        start: function (pm) {
            TYRANO.kag.ftag.startTag("event_set", {
                name: "rightclick",
                mouse: "3",
                once: "true",
                storage: pm.storage,
                target: pm.target,
            })
        },
    }
    TYRANO.kag.ftag.master_tag.back_set = tyrano.plugin.kag.tag.back_set
    TYRANO.kag.ftag.master_tag.back_set.kag = tyrano.plugin.kag

    //右クリックイベントを消去
    TYRANO.kag.tag.back_delete = {
        pm: {},
        start: function (pm) {
            TYRANO.kag.ftag.startTag("event_delete", {
                name: "rightclick",
            })
        },
    }
    TYRANO.kag.ftag.master_tag.back_delete = tyrano.plugin.kag.tag.back_delete
    TYRANO.kag.ftag.master_tag.back_delete.kag = tyrano.plugin.kag

    //任意のクリック・キーイベントをセット
    TYRANO.kag.tag.event_set = {
        vital: ["name"],
        pm: {
            name: "",
            type: "mouse", //or key
            mouse: "3",
            key: "",
            storage: "",
            target: "",
            exp: "",
            once: "true",
            default: "true",
        },
        start: function (pm) {
            const f = TYRANO.kag.stat.f._event_set

            if (pm.type === "mouse") {
                //登録済みの場合一旦削除
                $(document).off("mousedown." + pm.name)

                $(document).on("mousedown." + pm.name, function (e) {
                    if (e.which == parseInt(pm.mouse)) {
                        if (pm.once == "true") {
                            //一回だけ発火
                            TYRANO.kag.ftag.startTag("event_delete", {
                                name: pm.name,
                                nextorder: "false",
                            })
                        }
                        if (pm.exp != "") {
                            TYRANO.kag.evalScript(pm.exp)
                        }
                        if (pm.storage != "" || pm.target != "") {
                            TYRANO.kag.ftag.startTag("jump", {
                                storage: pm.storage,
                                target: pm.target,
                            })
                        }
                    }
                })
            } else if (pm.type === "key") {
                //登録済みの場合一旦削除
                $(document).off("keyup." + pm.name)

                //既定のイベント
                if (pm.default === "false") {
                    f[pm.name] = {
                        key: pm.key,
                        action: TYRANO.kag.key_mouse.map_key[pm.key],
                    }
                    TYRANO.kag.key_mouse.map_key[pm.key] = ""
                }

                $(document).on("keyup." + pm.name, function (e) {
                    const key = TYRANO.kag.key_mouse.keyboard.getKeyState(e)
                    if (key.key === pm.key) {
                        if (pm.once === "true") {
                            //一回だけ発火
                            TYRANO.kag.ftag.startTag("event_delete", {
                                name: pm.name,
                                nextorder: "false",
                            })
                        }
                        if (pm.exp !== "") {
                            TYRANO.kag.evalScript(pm.exp)
                        }
                        if (pm.storage !== "" || pm.target !== "") {
                            TYRANO.kag.ftag.startTag("jump", {
                                storage: pm.storage,
                                target: pm.target,
                            })
                        }
                    }
                })
            }

            TYRANO.kag.ftag.nextOrder()
        },
    }
    TYRANO.kag.ftag.master_tag.event_set = tyrano.plugin.kag.tag.event_set
    TYRANO.kag.ftag.master_tag.event_set.kag = tyrano.plugin.kag

    //任意のクリックイベントを消去
    TYRANO.kag.tag.event_delete = {
        vital: ["name"],
        pm: {
            name: "",
            nextorder: "true",
        },
        start: function (pm) {
            const f = TYRANO.kag.stat.f._event_set

            $(document).off("mousedown." + pm.name)
            $(document).off("keyup." + pm.name)

            //既定のイベント戻す
            if (f[pm.name] !== undefined) {
                TYRANO.kag.key_mouse.map_key[f[pm.name].key] = f[pm.name].action
                delete f[pm.name]
            }

            if (pm.nextorder === "true") {
                TYRANO.kag.ftag.nextOrder()
            }
        },
    }
    TYRANO.kag.ftag.master_tag.event_delete = tyrano.plugin.kag.tag.event_delete
    TYRANO.kag.ftag.master_tag.event_delete.kag = tyrano.plugin.kag
})()
