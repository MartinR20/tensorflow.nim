import ../../core

{.compile:"bigquery/bigquery.cc".}


type BigQueryReader* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/io/bigquery/bigquery.h", importcpp:"BigQueryReader/*'0*/".} = object
  operation*: Operation[ostring]
  output*: ostring

proc iibigQueryReader(scope: Scope,
                     container: cstring,
                     shared_name: cstring,
                     project_id: cstring,
                     dataset_id: cstring,
                     table_id: cstring,
                     columns: ArraySlice[cstring],
                     test_end_point: cstring,
                     timestamp_millis: int64): BigQueryReader {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/io/bigquery/bigquery.h", importcpp:"BigQueryReader(*#, tensorflow::string(#), tensorflow::string(#), tensorflow::string(#), tensorflow::string(#), tensorflow::string(#), #, tensorflow::string(#), #)", constructor.}

proc bigQueryReader*(scope: Scope,
                     container: cstring,
                     shared_name: cstring,
                     project_id: cstring,
                     dataset_id: cstring,
                     table_id: cstring,
                     columns: openArray[cstring],
                     test_end_point: cstring,
                     timestamp_millis: int64 = 0.int): BigQueryReader =
  return iibigQueryReader(scope,
                          container,
                          shared_name,
                          project_id,
                          dataset_id,
                          table_id,
                          newArraySlice(columns),
                          test_end_point,
                          timestamp_millis)

converter bigQueryReaderToOut*(op: BigQueryReader): ostring {.inline.} = return op.output


type GenerateBigQueryReaderPartitions* {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/io/bigquery/bigquery.h", importcpp:"GenerateBigQueryReaderPartitions/*'0*/".} = object
  operation*: Operation[ostring]
  output*: ostring

proc iigenerateBigQueryReaderPartitions(scope: Scope,
                                       project_id: cstring,
                                       dataset_id: cstring,
                                       table_id: cstring,
                                       columns: ArraySlice[cstring],
                                       test_end_point: cstring,
                                       timestamp_millis: int64,
                                       num_partitions: int64): GenerateBigQueryReaderPartitions {.header:"/Users/martin//.nimble/pkgs/tensorflow-0.1.0/tensorflow/ops/io/bigquery/bigquery.h", importcpp:"GenerateBigQueryReaderPartitions(*#, tensorflow::string(#), tensorflow::string(#), tensorflow::string(#), #, tensorflow::string(#), #, #)", constructor.}

proc generateBigQueryReaderPartitions*(scope: Scope,
                                       project_id: cstring,
                                       dataset_id: cstring,
                                       table_id: cstring,
                                       columns: openArray[cstring],
                                       test_end_point: cstring,
                                       timestamp_millis: int64 = 0.int,
                                       num_partitions: int64 = 0.int): GenerateBigQueryReaderPartitions =
  return iigenerateBigQueryReaderPartitions(scope,
                                            project_id,
                                            dataset_id,
                                            table_id,
                                            newArraySlice(columns),
                                            test_end_point,
                                            timestamp_millis,
                                            num_partitions)

converter generateBigQueryReaderPartitionsToOut*(op: GenerateBigQueryReaderPartitions): ostring {.inline.} = return op.output

    # This op should not be used directly by clients. Instead, the
    # bigquery_reader_ops.py file defines a clean interface to the reader.

