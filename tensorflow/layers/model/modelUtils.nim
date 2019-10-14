import ../../utils/utils
import ../../core/core
import ../variable
{.hint[XDeclaredButNotUsed]:off.}

proc vvarSeq(vars: seq[HVariable[oall]]): OutList =
    var outlist: OutList

    for v in vars:
        outlist.add v.vvar

    return outlist

proc assignSeq(vars: seq[HVariable[oall]]): OutList =
    var outlist: OutList

    for v in vars:
        outlist.add v.assign

    return outlist


proc getNames(vars: olist[oall]): Tensor[ostring] = 
    let names = tensor([vars.len], ostring)
    var buf = names.flat()

    for i in 0..vars.len-1:
        buf[i] = newCPPString(vars[i].name)

    return names

export vvarSeq,
       assignSeq,
       getNames