import 
    globals, json, macros, tables

proc init*(prgm: NimNode, model: string, sess: NimNode) =
    let init = newNimNode(nnkCall)
    init.add bracketExpr("newOutList", "oinvalid")

    for v in globalVars[model]:
        init.add newCall("anyToInvalid", v.asgn)

    prgm.add discardNode newCall("runSessionVoid", sess, init)
 
proc run*(prgm: NimNode, model: string, sess: NimNode) =
    let run = newNimNode(nnkCall)
    run.add bracketExpr("newOutList", "oinvalid")

    let feedvar = newNimNode(nnkStmtList)
    let feed = genSym(nskVar, "feed")
    feedvar.add newNimNode(nnkVarSection).add(newIdentDefs(feed, ident "FeedDict"))

    let i = metadata[model].len
    var cdown = 1
    while i >= cdown:
        if metadata[model][i-cdown].hasKey("optim"):
            for v in metadata[model][i-cdown]["optim"]:
                run.add newCall("anyToInvalid", ident v.to(string))
        elif metadata[model][i-cdown].hasKey("feed"):
            feedvar.add newNimNode(nnkAsgn)
                            .add(newNimNode(nnkBracketExpr)
                                    .add(feed)
                                    .add(ident metadata[model][i-cdown]["output"].to(string)))
                            .add(ident metadata[model][i-cdown]["feed"].to(string))

        cdown += 1

    let res = ident "res"
    prgm.add feedvar
    prgm.add newLetStmt(res, newCall("runSession", sess, feed, run))
    prgm.add newNimNode(nnkCommand).add(ident "echo").add(newNimNode(nnkBracketExpr).add(res).add(newLit 0))

