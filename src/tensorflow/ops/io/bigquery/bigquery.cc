#include "tensorflow/cc/ops/const_op.h"
#include "bigquery.h"

BigQueryReader::BigQueryReader(tensorflow::Scope& scope, 
           tensorflow::string container, 
           tensorflow::string shared_name, 
           tensorflow::string project_id, 
           tensorflow::string dataset_id, 
           tensorflow::string table_id, 
           tensorflow::gtl::ArraySlice<tensorflow::string> columns, 
           tensorflow::string test_end_point, 
           int64_t timestamp_millis) {
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("BigQueryReader");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "BigQueryReader")
                                   .Attr("container", container)
                                   .Attr("shared_name", shared_name)
                                   .Attr("project_id", project_id)
                                   .Attr("dataset_id", dataset_id)
                                   .Attr("table_id", table_id)
                                   .Attr("columns", columns)
                                   .Attr("test_end_point", test_end_point)
                                   .Attr("timestamp_millis", timestamp_millis)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

GenerateBigQueryReaderPartitions::GenerateBigQueryReaderPartitions(tensorflow::Scope& scope, 
           tensorflow::string project_id, 
           tensorflow::string dataset_id, 
           tensorflow::string table_id, 
           tensorflow::gtl::ArraySlice<tensorflow::string> columns, 
           tensorflow::string test_end_point, 
           int64_t timestamp_millis, 
           int64_t num_partitions) {
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("GenerateBigQueryReaderPartitions");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "GenerateBigQueryReaderPartitions")
                                   .Attr("project_id", project_id)
                                   .Attr("dataset_id", dataset_id)
                                   .Attr("table_id", table_id)
                                   .Attr("columns", columns)
                                   .Attr("test_end_point", test_end_point)
                                   .Attr("timestamp_millis", timestamp_millis)
                                   .Attr("num_partitions", num_partitions)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

