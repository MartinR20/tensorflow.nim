import ../core

{.compile:"lookup/lookup.cc".}


type LookupTableExport*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/lookup/lookup.h", importcpp:"LookupTableExport/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iilookupTableExport[oT: oall](scope: Scope,
                        table_handle: ostring,
                        Tkeys: DType,
                        Tvalues: DType,
                        explicitT: type(oT)): LookupTableExport[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/lookup/lookup.h", importcpp:"LookupTableExport(*#, #, #, #)", constructor.}

proc lookupTableExport*(scope: Scope,
                        table_handle: ostring,
                        Tkeys: type = oinvalid,
                        Tvalues: type oall = oinvalid): auto =
  return iilookupTableExport(scope,
                             table_handle,
                             Tkeys.oTF,
                             Tvalues.oTF,
                             Tkeys)

converter lookupTableExportToOut*[oT: oall](op: LookupTableExport[oT]): oT {.inline.} = return op.output


type LookupTableExportV2*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/lookup/lookup.h", importcpp:"LookupTableExportV2/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iilookupTableExportV2[oT: oall](scope: Scope,
                          table_handle: oresource,
                          Tkeys: DType,
                          Tvalues: DType,
                          explicitT: type(oT)): LookupTableExportV2[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/lookup/lookup.h", importcpp:"LookupTableExportV2(*#, #, #, #)", constructor.}

proc lookupTableExportV2*(scope: Scope,
                          table_handle: oresource,
                          Tkeys: type = oinvalid,
                          Tvalues: type oall = oinvalid): auto =
  return iilookupTableExportV2(scope,
                               table_handle,
                               Tkeys.oTF,
                               Tvalues.oTF,
                               Tkeys)

converter lookupTableExportV2ToOut*[oT: oall](op: LookupTableExportV2[oT]): oT {.inline.} = return op.output

type LookupTableFindTin* = oall

type LookupTableFind*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/lookup/lookup.h", importcpp:"LookupTableFind/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iilookupTableFind[oT: oall](scope: Scope,
                      table_handle: ostring,
                      keys: LookupTableFindTin,
                      default_value: oT,
                      Tout: DType): LookupTableFind[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/lookup/lookup.h", importcpp:"LookupTableFind(*#, #, #, #, #)", constructor.}

proc lookupTableFind*[oT: oall](scope: Scope,
                      table_handle: ostring,
                      keys: LookupTableFindTin,
                      default_value: oT): LookupTableFind[oT] =
  return iilookupTableFind(scope,
                           table_handle,
                           keys,
                           default_value,
                           oT.oTF)

converter lookupTableFindToOut*[oT: oall](op: LookupTableFind[oT]): oT {.inline.} = return op.output

type LookupTableFindV2Tin* = oall

type LookupTableFindV2*[oT:oall] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/lookup/lookup.h", importcpp:"LookupTableFindV2/*'0*/".} = object
  operation*: Operation[oT]
  output*: oT

proc iilookupTableFindV2[oT: oall](scope: Scope,
                        table_handle: oresource,
                        keys: LookupTableFindV2Tin,
                        default_value: oT,
                        Tout: DType): LookupTableFindV2[oT] {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/lookup/lookup.h", importcpp:"LookupTableFindV2(*#, #, #, #, #)", constructor.}

proc lookupTableFindV2*[oT: oall](scope: Scope,
                        table_handle: oresource,
                        keys: LookupTableFindV2Tin,
                        default_value: oT): LookupTableFindV2[oT] =
  return iilookupTableFindV2(scope,
                             table_handle,
                             keys,
                             default_value,
                             oT.oTF)

converter lookupTableFindV2ToOut*[oT: oall](op: LookupTableFindV2[oT]): oT {.inline.} = return op.output

type LookupTableImportTout* = oall
type LookupTableImportTin* = oall

type LookupTableImport*{.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/lookup/lookup.h", importcpp:"LookupTableImport/*'0*/".} = object
  operation*: Operation[oinvalid]


proc iilookupTableImport(scope: Scope,
                        table_handle: ostring,
                        keys: LookupTableImportTin,
                        values: LookupTableImportTout): LookupTableImport {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/lookup/lookup.h", importcpp:"LookupTableImport(*#, #, #, #)", constructor.}

proc lookupTableImport*(scope: Scope,
                        table_handle: ostring,
                        keys: LookupTableImportTin,
                        values: LookupTableImportTout): LookupTableImport =
  return iilookupTableImport(scope,
                             table_handle,
                             keys,
                             values)

type LookupTableImportV2Tout* = oall
type LookupTableImportV2Tin* = oall

type LookupTableImportV2*{.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/lookup/lookup.h", importcpp:"LookupTableImportV2/*'0*/".} = object
  operation*: Operation[oinvalid]


proc iilookupTableImportV2(scope: Scope,
                          table_handle: oresource,
                          keys: LookupTableImportV2Tin,
                          values: LookupTableImportV2Tout): LookupTableImportV2 {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/lookup/lookup.h", importcpp:"LookupTableImportV2(*#, #, #, #)", constructor.}

proc lookupTableImportV2*(scope: Scope,
                          table_handle: oresource,
                          keys: LookupTableImportV2Tin,
                          values: LookupTableImportV2Tout): LookupTableImportV2 =
  return iilookupTableImportV2(scope,
                               table_handle,
                               keys,
                               values)

type LookupTableInsertTout* = oall
type LookupTableInsertTin* = oall

type LookupTableInsert*{.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/lookup/lookup.h", importcpp:"LookupTableInsert/*'0*/".} = object
  operation*: Operation[oinvalid]


proc iilookupTableInsert(scope: Scope,
                        table_handle: ostring,
                        keys: LookupTableInsertTin,
                        values: LookupTableInsertTout): LookupTableInsert {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/lookup/lookup.h", importcpp:"LookupTableInsert(*#, #, #, #)", constructor.}

proc lookupTableInsert*(scope: Scope,
                        table_handle: ostring,
                        keys: LookupTableInsertTin,
                        values: LookupTableInsertTout): LookupTableInsert =
  return iilookupTableInsert(scope,
                             table_handle,
                             keys,
                             values)

type LookupTableInsertV2Tout* = oall
type LookupTableInsertV2Tin* = oall

type LookupTableInsertV2*{.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/lookup/lookup.h", importcpp:"LookupTableInsertV2/*'0*/".} = object
  operation*: Operation[oinvalid]


proc iilookupTableInsertV2(scope: Scope,
                          table_handle: oresource,
                          keys: LookupTableInsertV2Tin,
                          values: LookupTableInsertV2Tout): LookupTableInsertV2 {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/lookup/lookup.h", importcpp:"LookupTableInsertV2(*#, #, #, #)", constructor.}

proc lookupTableInsertV2*(scope: Scope,
                          table_handle: oresource,
                          keys: LookupTableInsertV2Tin,
                          values: LookupTableInsertV2Tout): LookupTableInsertV2 =
  return iilookupTableInsertV2(scope,
                               table_handle,
                               keys,
                               values)

type LookupTableRemoveV2Tin* = oall

type LookupTableRemoveV2*{.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/lookup/lookup.h", importcpp:"LookupTableRemoveV2/*'0*/".} = object
  operation*: Operation[oinvalid]


proc iilookupTableRemoveV2(scope: Scope,
                          table_handle: oresource,
                          keys: LookupTableRemoveV2Tin): LookupTableRemoveV2 {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/lookup/lookup.h", importcpp:"LookupTableRemoveV2(*#, #, #)", constructor.}

proc lookupTableRemoveV2*(scope: Scope,
                          table_handle: oresource,
                          keys: LookupTableRemoveV2Tin): LookupTableRemoveV2 =
  return iilookupTableRemoveV2(scope,
                               table_handle,
                               keys)


type LookupTableSize* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/lookup/lookup.h", importcpp:"LookupTableSize/*'0*/".} = object
  operation*: Operation[oint64]
  output*: oint64

proc iilookupTableSize(scope: Scope,
                      table_handle: ostring): LookupTableSize {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/lookup/lookup.h", importcpp:"LookupTableSize(*#, #)", constructor.}

proc lookupTableSize*(scope: Scope,
                      table_handle: ostring): LookupTableSize =
  return iilookupTableSize(scope,
                           table_handle)

converter lookupTableSizeToOut*(op: LookupTableSize): oint64 {.inline.} = return op.output


type LookupTableSizeV2* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/lookup/lookup.h", importcpp:"LookupTableSizeV2/*'0*/".} = object
  operation*: Operation[oint64]
  output*: oint64

proc iilookupTableSizeV2(scope: Scope,
                        table_handle: oresource): LookupTableSizeV2 {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0//src/tensorflow/ops/lookup/lookup.h", importcpp:"LookupTableSizeV2(*#, #)", constructor.}

proc lookupTableSizeV2*(scope: Scope,
                        table_handle: oresource): LookupTableSizeV2 =
  return iilookupTableSizeV2(scope,
                             table_handle)

converter lookupTableSizeV2ToOut*(op: LookupTableSizeV2): oint64 {.inline.} = return op.output

