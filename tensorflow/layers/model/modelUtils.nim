import ../../utils/utils
import ../../core/core
import ../variable
{.hint[XDeclaredButNotUsed]:off.}

proc vvarSeq(vars: seq[TVariable]): OutList =
    var outlist: OutList

    for v in vars:
        outlist.add v.vvar

    return outlist

proc assignSeq(vars: seq[TVariable]): OutList =
    var outlist: OutList

    for v in vars:
        outlist.add v.assign

    return outlist


proc getNames(vars: OutList): Tensor = 
    let names = newTensor(cppstring.tf, newTensorShape([vars.len]))
    var buf = names.flat(newCPPString(""))

    for i in 0..vars.len-1:
        buf[i] = newCPPString(vars[i].name)

    return names

export vvarSeq,
       assignSeq,
       getNames