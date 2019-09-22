import strutils, tables

proc fromTo*(str: string, start: char, eend: char): string =
    let s = str.find(start)+1
    let e = str.find(eend)-1

    return str[s..e]

proc rfromTo*(str: string, start: char, eend: char): string =
    let s = str.rfind(start)+1
    let e = str.rfind(eend)-1

    return str[s..e]

proc rfromToInc*(str: string, start: char, eend: char): string =
    let s = str.rfind(start)
    let e = str.rfind(eend)

    return str[s..e]

proc toFrom*(str: string, start: char, eend: char): string =
    let s = str.find(start)+1
    let e = str[0..s].rfind(eend)-1

    return str[s..e]

proc fromTo*(str: string, start: int, eend: char): string =
    let e = str.find(eend)-1

    return str[start..e]

proc getOrReturn*[M, N](table: Table[M, N], key: M): N =
    if table.hasKey(key):
        return table[key]
    else:
        return key

proc firstCharToLower*(str: string): string = 
    var lower = str
    lower[0] = chr(ord(str[0]) + (ord('a') - ord('A')))
    return lower

proc firstCharToUpper*(str: string): string = 
    var lower = str
    lower[0] = chr(ord(str[0]) + (ord('A') - ord('a')))
    return lower

proc reinterpretLeadingUnderscore*(str: string): string = 
    var nounderscore = str
    if nounderscore[0] == '_':
        nounderscore[0] = 'I'
    return nounderscore

proc quote*(str: string): string =
    return "\"" & str & "\""

proc trippleQuote*(str: string): string =
    return "\"\"\"" & str & "\"\"\""
    
proc emitStmt*(str: string): string =
    return "{.emit:" & trippleQuote(str) & ".}"
    
proc importcppStmt*(str: string, header = "", isConstructor = false): string =
    var source = "{."
    if header != "":
        source &= "header:" & quote(header) & ", "

    source &= "importcpp:" & quote(str) 

    if isConstructor:
        source &= ", constructor"
    
    source &= ".}"

    return source
