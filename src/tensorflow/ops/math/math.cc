#include "tensorflow/cc/ops/const_op.h"
#include "../../ops/math/math.h"

Abs::Abs(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _x = ::tensorflow::ops::AsNodeOut(scope, x);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("Abs");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "Abs")
                                   .Input(_x)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

Acos::Acos(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _x = ::tensorflow::ops::AsNodeOut(scope, x);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("Acos");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "Acos")
                                   .Input(_x)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

Acosh::Acosh(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _x = ::tensorflow::ops::AsNodeOut(scope, x);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("Acosh");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "Acosh")
                                   .Input(_x)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

Add::Add(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::Input y, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _x = ::tensorflow::ops::AsNodeOut(scope, x);
      if (!scope.ok())
          return;
      auto _y = ::tensorflow::ops::AsNodeOut(scope, y);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("Add");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "Add")
                                   .Input(_x)
                                   .Input(_y)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

AddN::AddN(tensorflow::Scope& scope, 
           tensorflow::InputList inputs, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _inputs = ::tensorflow::ops::AsNodeOutList(scope, inputs);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("AddN");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "AddN")
                                   .Input(_inputs)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

AddV2::AddV2(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::Input y, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _x = ::tensorflow::ops::AsNodeOut(scope, x);
      if (!scope.ok())
          return;
      auto _y = ::tensorflow::ops::AsNodeOut(scope, y);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("AddV2");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "AddV2")
                                   .Input(_x)
                                   .Input(_y)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

Angle::Angle(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::DataType Tout) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("Angle");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "Angle")
                                   .Input(_input)
                                   .Attr("Tout", Tout)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

ApproximateEqual::ApproximateEqual(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::Input y, 
           float tolerance) {
      if (!scope.ok())
          return;
      auto _x = ::tensorflow::ops::AsNodeOut(scope, x);
      if (!scope.ok())
          return;
      auto _y = ::tensorflow::ops::AsNodeOut(scope, y);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ApproximateEqual");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ApproximateEqual")
                                   .Input(_x)
                                   .Input(_y)
                                   .Attr("tolerance", tolerance)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

ArgMax::ArgMax(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input dimension, 
           tensorflow::DataType output_type) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      if (!scope.ok())
          return;
      auto _dimension = ::tensorflow::ops::AsNodeOut(scope, dimension);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ArgMax");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ArgMax")
                                   .Input(_input)
                                   .Input(_dimension)
                                   .Attr("output_type", output_type)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

ArgMin::ArgMin(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input dimension, 
           tensorflow::DataType output_type) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      if (!scope.ok())
          return;
      auto _dimension = ::tensorflow::ops::AsNodeOut(scope, dimension);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ArgMin");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ArgMin")
                                   .Input(_input)
                                   .Input(_dimension)
                                   .Attr("output_type", output_type)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

Asin::Asin(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _x = ::tensorflow::ops::AsNodeOut(scope, x);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("Asin");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "Asin")
                                   .Input(_x)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

Asinh::Asinh(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _x = ::tensorflow::ops::AsNodeOut(scope, x);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("Asinh");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "Asinh")
                                   .Input(_x)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

AssignAdd::AssignAdd(tensorflow::Scope& scope, 
           tensorflow::Input ref, 
           tensorflow::Input value, 
           tensorflow::DataType T, 
           bool use_locking) {
      if (!scope.ok())
          return;
      auto _ref = ::tensorflow::ops::AsNodeOut(scope, ref);
      if (!scope.ok())
          return;
      auto _value = ::tensorflow::ops::AsNodeOut(scope, value);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("AssignAdd");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "AssignAdd")
                                   .Input(_ref)
                                   .Input(_value)
                                   .Attr("T", T)
                                   .Attr("use_locking", use_locking)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

Atan::Atan(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _x = ::tensorflow::ops::AsNodeOut(scope, x);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("Atan");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "Atan")
                                   .Input(_x)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

Atan2::Atan2(tensorflow::Scope& scope, 
           tensorflow::Input y, 
           tensorflow::Input x, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _y = ::tensorflow::ops::AsNodeOut(scope, y);
      if (!scope.ok())
          return;
      auto _x = ::tensorflow::ops::AsNodeOut(scope, x);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("Atan2");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "Atan2")
                                   .Input(_y)
                                   .Input(_x)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

Atanh::Atanh(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _x = ::tensorflow::ops::AsNodeOut(scope, x);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("Atanh");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "Atanh")
                                   .Input(_x)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

BatchCholesky::BatchCholesky(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("BatchCholesky");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "BatchCholesky")
                                   .Input(_input)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

BatchCholeskyGrad::BatchCholeskyGrad(tensorflow::Scope& scope, 
           tensorflow::Input l, 
           tensorflow::Input grad, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _l = ::tensorflow::ops::AsNodeOut(scope, l);
      if (!scope.ok())
          return;
      auto _grad = ::tensorflow::ops::AsNodeOut(scope, grad);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("BatchCholeskyGrad");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "BatchCholeskyGrad")
                                   .Input(_l)
                                   .Input(_grad)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

BatchFFT::BatchFFT(tensorflow::Scope& scope, 
           tensorflow::Input input) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("BatchFFT");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "BatchFFT")
                                   .Input(_input)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

BatchFFT2D::BatchFFT2D(tensorflow::Scope& scope, 
           tensorflow::Input input) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("BatchFFT2D");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "BatchFFT2D")
                                   .Input(_input)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

BatchFFT3D::BatchFFT3D(tensorflow::Scope& scope, 
           tensorflow::Input input) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("BatchFFT3D");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "BatchFFT3D")
                                   .Input(_input)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

BatchIFFT::BatchIFFT(tensorflow::Scope& scope, 
           tensorflow::Input input) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("BatchIFFT");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "BatchIFFT")
                                   .Input(_input)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

BatchIFFT2D::BatchIFFT2D(tensorflow::Scope& scope, 
           tensorflow::Input input) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("BatchIFFT2D");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "BatchIFFT2D")
                                   .Input(_input)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

BatchIFFT3D::BatchIFFT3D(tensorflow::Scope& scope, 
           tensorflow::Input input) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("BatchIFFT3D");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "BatchIFFT3D")
                                   .Input(_input)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

BatchMatMul::BatchMatMul(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::Input y, 
           tensorflow::DataType T, 
           bool adj_x, 
           bool adj_y) {
      if (!scope.ok())
          return;
      auto _x = ::tensorflow::ops::AsNodeOut(scope, x);
      if (!scope.ok())
          return;
      auto _y = ::tensorflow::ops::AsNodeOut(scope, y);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("BatchMatMul");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "BatchMatMul")
                                   .Input(_x)
                                   .Input(_y)
                                   .Attr("T", T)
                                   .Attr("adj_x", adj_x)
                                   .Attr("adj_y", adj_y)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

BatchMatrixBandPart::BatchMatrixBandPart(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input num_lower, 
           tensorflow::Input num_upper, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      if (!scope.ok())
          return;
      auto _num_lower = ::tensorflow::ops::AsNodeOut(scope, num_lower);
      if (!scope.ok())
          return;
      auto _num_upper = ::tensorflow::ops::AsNodeOut(scope, num_upper);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("BatchMatrixBandPart");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "BatchMatrixBandPart")
                                   .Input(_input)
                                   .Input(_num_lower)
                                   .Input(_num_upper)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

BatchMatrixDeterminant::BatchMatrixDeterminant(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("BatchMatrixDeterminant");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "BatchMatrixDeterminant")
                                   .Input(_input)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

BatchMatrixDiag::BatchMatrixDiag(tensorflow::Scope& scope, 
           tensorflow::Input diagonal, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _diagonal = ::tensorflow::ops::AsNodeOut(scope, diagonal);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("BatchMatrixDiag");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "BatchMatrixDiag")
                                   .Input(_diagonal)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

BatchMatrixDiagPart::BatchMatrixDiagPart(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("BatchMatrixDiagPart");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "BatchMatrixDiagPart")
                                   .Input(_input)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

BatchMatrixInverse::BatchMatrixInverse(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           bool adjoint, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("BatchMatrixInverse");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "BatchMatrixInverse")
                                   .Input(_input)
                                   .Attr("adjoint", adjoint)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

BatchMatrixSetDiag::BatchMatrixSetDiag(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input diagonal, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      if (!scope.ok())
          return;
      auto _diagonal = ::tensorflow::ops::AsNodeOut(scope, diagonal);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("BatchMatrixSetDiag");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "BatchMatrixSetDiag")
                                   .Input(_input)
                                   .Input(_diagonal)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

BatchMatrixSolve::BatchMatrixSolve(tensorflow::Scope& scope, 
           tensorflow::Input matrix, 
           tensorflow::Input rhs, 
           bool adjoint, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _matrix = ::tensorflow::ops::AsNodeOut(scope, matrix);
      if (!scope.ok())
          return;
      auto _rhs = ::tensorflow::ops::AsNodeOut(scope, rhs);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("BatchMatrixSolve");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "BatchMatrixSolve")
                                   .Input(_matrix)
                                   .Input(_rhs)
                                   .Attr("adjoint", adjoint)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

BatchMatrixSolveLs::BatchMatrixSolveLs(tensorflow::Scope& scope, 
           tensorflow::Input matrix, 
           tensorflow::Input rhs, 
           tensorflow::Input l2_regularizer, 
           tensorflow::DataType T, 
           bool fast) {
      if (!scope.ok())
          return;
      auto _matrix = ::tensorflow::ops::AsNodeOut(scope, matrix);
      if (!scope.ok())
          return;
      auto _rhs = ::tensorflow::ops::AsNodeOut(scope, rhs);
      if (!scope.ok())
          return;
      auto _l2_regularizer = ::tensorflow::ops::AsNodeOut(scope, l2_regularizer);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("BatchMatrixSolveLs");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "BatchMatrixSolveLs")
                                   .Input(_matrix)
                                   .Input(_rhs)
                                   .Input(_l2_regularizer)
                                   .Attr("T", T)
                                   .Attr("fast", fast)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

BatchMatrixTriangularSolve::BatchMatrixTriangularSolve(tensorflow::Scope& scope, 
           tensorflow::Input matrix, 
           tensorflow::Input rhs, 
           bool lower, 
           bool adjoint, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _matrix = ::tensorflow::ops::AsNodeOut(scope, matrix);
      if (!scope.ok())
          return;
      auto _rhs = ::tensorflow::ops::AsNodeOut(scope, rhs);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("BatchMatrixTriangularSolve");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "BatchMatrixTriangularSolve")
                                   .Input(_matrix)
                                   .Input(_rhs)
                                   .Attr("lower", lower)
                                   .Attr("adjoint", adjoint)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

BatchSelfAdjointEig::BatchSelfAdjointEig(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("BatchSelfAdjointEig");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "BatchSelfAdjointEig")
                                   .Input(_input)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

BatchSvd::BatchSvd(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           bool compute_uv, 
           bool full_matrices, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("BatchSvd");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "BatchSvd")
                                   .Input(_input)
                                   .Attr("compute_uv", compute_uv)
                                   .Attr("full_matrices", full_matrices)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

BesselI0e::BesselI0e(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _x = ::tensorflow::ops::AsNodeOut(scope, x);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("BesselI0e");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "BesselI0e")
                                   .Input(_x)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

BesselI1e::BesselI1e(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _x = ::tensorflow::ops::AsNodeOut(scope, x);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("BesselI1e");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "BesselI1e")
                                   .Input(_x)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

Betainc::Betainc(tensorflow::Scope& scope, 
           tensorflow::Input a, 
           tensorflow::Input b, 
           tensorflow::Input x, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _a = ::tensorflow::ops::AsNodeOut(scope, a);
      if (!scope.ok())
          return;
      auto _b = ::tensorflow::ops::AsNodeOut(scope, b);
      if (!scope.ok())
          return;
      auto _x = ::tensorflow::ops::AsNodeOut(scope, x);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("Betainc");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "Betainc")
                                   .Input(_a)
                                   .Input(_b)
                                   .Input(_x)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

Ceil::Ceil(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _x = ::tensorflow::ops::AsNodeOut(scope, x);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("Ceil");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "Ceil")
                                   .Input(_x)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

CheckNumerics::CheckNumerics(tensorflow::Scope& scope, 
           tensorflow::Input tensor, 
           tensorflow::string message, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _tensor = ::tensorflow::ops::AsNodeOut(scope, tensor);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("CheckNumerics");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "CheckNumerics")
                                   .Input(_tensor)
                                   .Attr("message", message)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

Cholesky::Cholesky(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("Cholesky");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "Cholesky")
                                   .Input(_input)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

CholeskyGrad::CholeskyGrad(tensorflow::Scope& scope, 
           tensorflow::Input l, 
           tensorflow::Input grad, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _l = ::tensorflow::ops::AsNodeOut(scope, l);
      if (!scope.ok())
          return;
      auto _grad = ::tensorflow::ops::AsNodeOut(scope, grad);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("CholeskyGrad");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "CholeskyGrad")
                                   .Input(_l)
                                   .Input(_grad)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

Complex::Complex(tensorflow::Scope& scope, 
           tensorflow::Input real, 
           tensorflow::Input imag, 
           tensorflow::DataType Tout) {
      if (!scope.ok())
          return;
      auto _real = ::tensorflow::ops::AsNodeOut(scope, real);
      if (!scope.ok())
          return;
      auto _imag = ::tensorflow::ops::AsNodeOut(scope, imag);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("Complex");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "Complex")
                                   .Input(_real)
                                   .Input(_imag)
                                   .Attr("Tout", Tout)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

ComplexAbs::ComplexAbs(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::DataType Tout) {
      if (!scope.ok())
          return;
      auto _x = ::tensorflow::ops::AsNodeOut(scope, x);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ComplexAbs");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ComplexAbs")
                                   .Input(_x)
                                   .Attr("Tout", Tout)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

Conj::Conj(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("Conj");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "Conj")
                                   .Input(_input)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

ConjugateTranspose::ConjugateTranspose(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::Input perm, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _x = ::tensorflow::ops::AsNodeOut(scope, x);
      if (!scope.ok())
          return;
      auto _perm = ::tensorflow::ops::AsNodeOut(scope, perm);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ConjugateTranspose");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ConjugateTranspose")
                                   .Input(_x)
                                   .Input(_perm)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

Cos::Cos(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _x = ::tensorflow::ops::AsNodeOut(scope, x);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("Cos");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "Cos")
                                   .Input(_x)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

Cosh::Cosh(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _x = ::tensorflow::ops::AsNodeOut(scope, x);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("Cosh");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "Cosh")
                                   .Input(_x)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

CountUpTo::CountUpTo(tensorflow::Scope& scope, 
           tensorflow::Input ref, 
           int64_t limit, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _ref = ::tensorflow::ops::AsNodeOut(scope, ref);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("CountUpTo");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "CountUpTo")
                                   .Input(_ref)
                                   .Attr("limit", limit)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

Cross::Cross(tensorflow::Scope& scope, 
           tensorflow::Input a, 
           tensorflow::Input b, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _a = ::tensorflow::ops::AsNodeOut(scope, a);
      if (!scope.ok())
          return;
      auto _b = ::tensorflow::ops::AsNodeOut(scope, b);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("Cross");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "Cross")
                                   .Input(_a)
                                   .Input(_b)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

Cumprod::Cumprod(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::Input axis, 
           bool exclusive, 
           bool reverse, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _x = ::tensorflow::ops::AsNodeOut(scope, x);
      if (!scope.ok())
          return;
      auto _axis = ::tensorflow::ops::AsNodeOut(scope, axis);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("Cumprod");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "Cumprod")
                                   .Input(_x)
                                   .Input(_axis)
                                   .Attr("exclusive", exclusive)
                                   .Attr("reverse", reverse)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

Cumsum::Cumsum(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::Input axis, 
           bool exclusive, 
           bool reverse, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _x = ::tensorflow::ops::AsNodeOut(scope, x);
      if (!scope.ok())
          return;
      auto _axis = ::tensorflow::ops::AsNodeOut(scope, axis);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("Cumsum");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "Cumsum")
                                   .Input(_x)
                                   .Input(_axis)
                                   .Attr("exclusive", exclusive)
                                   .Attr("reverse", reverse)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

Dequantize::Dequantize(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input min_range, 
           tensorflow::Input max_range, 
           tensorflow::string mode) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      if (!scope.ok())
          return;
      auto _min_range = ::tensorflow::ops::AsNodeOut(scope, min_range);
      if (!scope.ok())
          return;
      auto _max_range = ::tensorflow::ops::AsNodeOut(scope, max_range);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("Dequantize");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "Dequantize")
                                   .Input(_input)
                                   .Input(_min_range)
                                   .Input(_max_range)
                                   .Attr("mode", mode)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

Diag::Diag(tensorflow::Scope& scope, 
           tensorflow::Input diagonal, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _diagonal = ::tensorflow::ops::AsNodeOut(scope, diagonal);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("Diag");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "Diag")
                                   .Input(_diagonal)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

DiagPart::DiagPart(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("DiagPart");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "DiagPart")
                                   .Input(_input)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

Digamma::Digamma(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _x = ::tensorflow::ops::AsNodeOut(scope, x);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("Digamma");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "Digamma")
                                   .Input(_x)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

Div::Div(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::Input y, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _x = ::tensorflow::ops::AsNodeOut(scope, x);
      if (!scope.ok())
          return;
      auto _y = ::tensorflow::ops::AsNodeOut(scope, y);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("Div");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "Div")
                                   .Input(_x)
                                   .Input(_y)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

DivNoNan::DivNoNan(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::Input y, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _x = ::tensorflow::ops::AsNodeOut(scope, x);
      if (!scope.ok())
          return;
      auto _y = ::tensorflow::ops::AsNodeOut(scope, y);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("DivNoNan");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "DivNoNan")
                                   .Input(_x)
                                   .Input(_y)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

Equal::Equal(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::Input y) {
      if (!scope.ok())
          return;
      auto _x = ::tensorflow::ops::AsNodeOut(scope, x);
      if (!scope.ok())
          return;
      auto _y = ::tensorflow::ops::AsNodeOut(scope, y);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("Equal");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "Equal")
                                   .Input(_x)
                                   .Input(_y)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

Erf::Erf(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _x = ::tensorflow::ops::AsNodeOut(scope, x);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("Erf");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "Erf")
                                   .Input(_x)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

Erfc::Erfc(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _x = ::tensorflow::ops::AsNodeOut(scope, x);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("Erfc");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "Erfc")
                                   .Input(_x)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

Exp::Exp(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _x = ::tensorflow::ops::AsNodeOut(scope, x);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("Exp");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "Exp")
                                   .Input(_x)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

Expm1::Expm1(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _x = ::tensorflow::ops::AsNodeOut(scope, x);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("Expm1");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "Expm1")
                                   .Input(_x)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

FFT::FFT(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::DataType Tcomplex) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("FFT");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "FFT")
                                   .Input(_input)
                                   .Attr("Tcomplex", Tcomplex)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

FFT2D::FFT2D(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::DataType Tcomplex) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("FFT2D");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "FFT2D")
                                   .Input(_input)
                                   .Attr("Tcomplex", Tcomplex)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

FFT3D::FFT3D(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::DataType Tcomplex) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("FFT3D");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "FFT3D")
                                   .Input(_input)
                                   .Attr("Tcomplex", Tcomplex)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

Floor::Floor(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _x = ::tensorflow::ops::AsNodeOut(scope, x);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("Floor");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "Floor")
                                   .Input(_x)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

FloorDiv::FloorDiv(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::Input y, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _x = ::tensorflow::ops::AsNodeOut(scope, x);
      if (!scope.ok())
          return;
      auto _y = ::tensorflow::ops::AsNodeOut(scope, y);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("FloorDiv");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "FloorDiv")
                                   .Input(_x)
                                   .Input(_y)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

FloorMod::FloorMod(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::Input y, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _x = ::tensorflow::ops::AsNodeOut(scope, x);
      if (!scope.ok())
          return;
      auto _y = ::tensorflow::ops::AsNodeOut(scope, y);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("FloorMod");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "FloorMod")
                                   .Input(_x)
                                   .Input(_y)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

Greater::Greater(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::Input y) {
      if (!scope.ok())
          return;
      auto _x = ::tensorflow::ops::AsNodeOut(scope, x);
      if (!scope.ok())
          return;
      auto _y = ::tensorflow::ops::AsNodeOut(scope, y);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("Greater");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "Greater")
                                   .Input(_x)
                                   .Input(_y)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

GreaterEqual::GreaterEqual(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::Input y) {
      if (!scope.ok())
          return;
      auto _x = ::tensorflow::ops::AsNodeOut(scope, x);
      if (!scope.ok())
          return;
      auto _y = ::tensorflow::ops::AsNodeOut(scope, y);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("GreaterEqual");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "GreaterEqual")
                                   .Input(_x)
                                   .Input(_y)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

IFFT::IFFT(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::DataType Tcomplex) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("IFFT");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "IFFT")
                                   .Input(_input)
                                   .Attr("Tcomplex", Tcomplex)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

IFFT2D::IFFT2D(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::DataType Tcomplex) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("IFFT2D");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "IFFT2D")
                                   .Input(_input)
                                   .Attr("Tcomplex", Tcomplex)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

IFFT3D::IFFT3D(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::DataType Tcomplex) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("IFFT3D");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "IFFT3D")
                                   .Input(_input)
                                   .Attr("Tcomplex", Tcomplex)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

IRFFT::IRFFT(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input fft_length) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      if (!scope.ok())
          return;
      auto _fft_length = ::tensorflow::ops::AsNodeOut(scope, fft_length);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("IRFFT");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "IRFFT")
                                   .Input(_input)
                                   .Input(_fft_length)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

IRFFT2D::IRFFT2D(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input fft_length) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      if (!scope.ok())
          return;
      auto _fft_length = ::tensorflow::ops::AsNodeOut(scope, fft_length);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("IRFFT2D");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "IRFFT2D")
                                   .Input(_input)
                                   .Input(_fft_length)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

IRFFT3D::IRFFT3D(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input fft_length) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      if (!scope.ok())
          return;
      auto _fft_length = ::tensorflow::ops::AsNodeOut(scope, fft_length);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("IRFFT3D");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "IRFFT3D")
                                   .Input(_input)
                                   .Input(_fft_length)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

Igamma::Igamma(tensorflow::Scope& scope, 
           tensorflow::Input a, 
           tensorflow::Input x, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _a = ::tensorflow::ops::AsNodeOut(scope, a);
      if (!scope.ok())
          return;
      auto _x = ::tensorflow::ops::AsNodeOut(scope, x);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("Igamma");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "Igamma")
                                   .Input(_a)
                                   .Input(_x)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

IgammaGradA::IgammaGradA(tensorflow::Scope& scope, 
           tensorflow::Input a, 
           tensorflow::Input x, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _a = ::tensorflow::ops::AsNodeOut(scope, a);
      if (!scope.ok())
          return;
      auto _x = ::tensorflow::ops::AsNodeOut(scope, x);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("IgammaGradA");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "IgammaGradA")
                                   .Input(_a)
                                   .Input(_x)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

Igammac::Igammac(tensorflow::Scope& scope, 
           tensorflow::Input a, 
           tensorflow::Input x, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _a = ::tensorflow::ops::AsNodeOut(scope, a);
      if (!scope.ok())
          return;
      auto _x = ::tensorflow::ops::AsNodeOut(scope, x);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("Igammac");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "Igammac")
                                   .Input(_a)
                                   .Input(_x)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

Imag::Imag(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::DataType Tout) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("Imag");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "Imag")
                                   .Input(_input)
                                   .Attr("Tout", Tout)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

InTopK::InTopK(tensorflow::Scope& scope, 
           tensorflow::Input predictions, 
           tensorflow::Input targets, 
           int64_t k) {
      if (!scope.ok())
          return;
      auto _predictions = ::tensorflow::ops::AsNodeOut(scope, predictions);
      if (!scope.ok())
          return;
      auto _targets = ::tensorflow::ops::AsNodeOut(scope, targets);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("InTopK");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "InTopK")
                                   .Input(_predictions)
                                   .Input(_targets)
                                   .Attr("k", k)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

InTopKV2::InTopKV2(tensorflow::Scope& scope, 
           tensorflow::Input predictions, 
           tensorflow::Input targets, 
           tensorflow::Input k) {
      if (!scope.ok())
          return;
      auto _predictions = ::tensorflow::ops::AsNodeOut(scope, predictions);
      if (!scope.ok())
          return;
      auto _targets = ::tensorflow::ops::AsNodeOut(scope, targets);
      if (!scope.ok())
          return;
      auto _k = ::tensorflow::ops::AsNodeOut(scope, k);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("InTopKV2");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "InTopKV2")
                                   .Input(_predictions)
                                   .Input(_targets)
                                   .Input(_k)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

InplaceAdd::InplaceAdd(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::Input i, 
           tensorflow::Input v, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _x = ::tensorflow::ops::AsNodeOut(scope, x);
      if (!scope.ok())
          return;
      auto _i = ::tensorflow::ops::AsNodeOut(scope, i);
      if (!scope.ok())
          return;
      auto _v = ::tensorflow::ops::AsNodeOut(scope, v);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("InplaceAdd");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "InplaceAdd")
                                   .Input(_x)
                                   .Input(_i)
                                   .Input(_v)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

InplaceSub::InplaceSub(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::Input i, 
           tensorflow::Input v, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _x = ::tensorflow::ops::AsNodeOut(scope, x);
      if (!scope.ok())
          return;
      auto _i = ::tensorflow::ops::AsNodeOut(scope, i);
      if (!scope.ok())
          return;
      auto _v = ::tensorflow::ops::AsNodeOut(scope, v);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("InplaceSub");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "InplaceSub")
                                   .Input(_x)
                                   .Input(_i)
                                   .Input(_v)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

Inv::Inv(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _x = ::tensorflow::ops::AsNodeOut(scope, x);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("Inv");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "Inv")
                                   .Input(_x)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

InvGrad::InvGrad(tensorflow::Scope& scope, 
           tensorflow::Input y, 
           tensorflow::Input dy, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _y = ::tensorflow::ops::AsNodeOut(scope, y);
      if (!scope.ok())
          return;
      auto _dy = ::tensorflow::ops::AsNodeOut(scope, dy);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("InvGrad");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "InvGrad")
                                   .Input(_y)
                                   .Input(_dy)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

IsFinite::IsFinite(tensorflow::Scope& scope, 
           tensorflow::Input x) {
      if (!scope.ok())
          return;
      auto _x = ::tensorflow::ops::AsNodeOut(scope, x);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("IsFinite");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "IsFinite")
                                   .Input(_x)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

IsInf::IsInf(tensorflow::Scope& scope, 
           tensorflow::Input x) {
      if (!scope.ok())
          return;
      auto _x = ::tensorflow::ops::AsNodeOut(scope, x);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("IsInf");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "IsInf")
                                   .Input(_x)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

IsNan::IsNan(tensorflow::Scope& scope, 
           tensorflow::Input x) {
      if (!scope.ok())
          return;
      auto _x = ::tensorflow::ops::AsNodeOut(scope, x);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("IsNan");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "IsNan")
                                   .Input(_x)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

Less::Less(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::Input y) {
      if (!scope.ok())
          return;
      auto _x = ::tensorflow::ops::AsNodeOut(scope, x);
      if (!scope.ok())
          return;
      auto _y = ::tensorflow::ops::AsNodeOut(scope, y);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("Less");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "Less")
                                   .Input(_x)
                                   .Input(_y)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

LessEqual::LessEqual(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::Input y) {
      if (!scope.ok())
          return;
      auto _x = ::tensorflow::ops::AsNodeOut(scope, x);
      if (!scope.ok())
          return;
      auto _y = ::tensorflow::ops::AsNodeOut(scope, y);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("LessEqual");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "LessEqual")
                                   .Input(_x)
                                   .Input(_y)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

Lgamma::Lgamma(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _x = ::tensorflow::ops::AsNodeOut(scope, x);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("Lgamma");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "Lgamma")
                                   .Input(_x)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

LinSpace::LinSpace(tensorflow::Scope& scope, 
           tensorflow::Input start, 
           tensorflow::Input stop, 
           tensorflow::Input num, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _start = ::tensorflow::ops::AsNodeOut(scope, start);
      if (!scope.ok())
          return;
      auto _stop = ::tensorflow::ops::AsNodeOut(scope, stop);
      if (!scope.ok())
          return;
      auto _num = ::tensorflow::ops::AsNodeOut(scope, num);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("LinSpace");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "LinSpace")
                                   .Input(_start)
                                   .Input(_stop)
                                   .Input(_num)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

Log::Log(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _x = ::tensorflow::ops::AsNodeOut(scope, x);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("Log");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "Log")
                                   .Input(_x)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

Log1p::Log1p(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _x = ::tensorflow::ops::AsNodeOut(scope, x);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("Log1p");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "Log1p")
                                   .Input(_x)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

LogMatrixDeterminant::LogMatrixDeterminant(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("LogMatrixDeterminant");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "LogMatrixDeterminant")
                                   .Input(_input)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

LogicalAnd::LogicalAnd(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::Input y) {
      if (!scope.ok())
          return;
      auto _x = ::tensorflow::ops::AsNodeOut(scope, x);
      if (!scope.ok())
          return;
      auto _y = ::tensorflow::ops::AsNodeOut(scope, y);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("LogicalAnd");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "LogicalAnd")
                                   .Input(_x)
                                   .Input(_y)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

LogicalNot::LogicalNot(tensorflow::Scope& scope, 
           tensorflow::Input x) {
      if (!scope.ok())
          return;
      auto _x = ::tensorflow::ops::AsNodeOut(scope, x);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("LogicalNot");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "LogicalNot")
                                   .Input(_x)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

LogicalOr::LogicalOr(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::Input y) {
      if (!scope.ok())
          return;
      auto _x = ::tensorflow::ops::AsNodeOut(scope, x);
      if (!scope.ok())
          return;
      auto _y = ::tensorflow::ops::AsNodeOut(scope, y);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("LogicalOr");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "LogicalOr")
                                   .Input(_x)
                                   .Input(_y)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

LowerBound::LowerBound(tensorflow::Scope& scope, 
           tensorflow::Input sorted_inputs, 
           tensorflow::Input values, 
           tensorflow::DataType out_type) {
      if (!scope.ok())
          return;
      auto _sorted_inputs = ::tensorflow::ops::AsNodeOut(scope, sorted_inputs);
      if (!scope.ok())
          return;
      auto _values = ::tensorflow::ops::AsNodeOut(scope, values);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("LowerBound");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "LowerBound")
                                   .Input(_sorted_inputs)
                                   .Input(_values)
                                   .Attr("out_type", out_type)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

Lu::Lu(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::DataType T, 
           tensorflow::DataType output_idx_type) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("Lu");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "Lu")
                                   .Input(_input)
                                   .Attr("T", T)
                                   .Attr("output_idx_type", output_idx_type)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

MatMul::MatMul(tensorflow::Scope& scope, 
           tensorflow::Input a, 
           tensorflow::Input b, 
           bool transpose_a, 
           bool transpose_b, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _a = ::tensorflow::ops::AsNodeOut(scope, a);
      if (!scope.ok())
          return;
      auto _b = ::tensorflow::ops::AsNodeOut(scope, b);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("MatMul");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "MatMul")
                                   .Input(_a)
                                   .Input(_b)
                                   .Attr("transpose_a", transpose_a)
                                   .Attr("transpose_b", transpose_b)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

MatrixBandPart::MatrixBandPart(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input num_lower, 
           tensorflow::Input num_upper, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      if (!scope.ok())
          return;
      auto _num_lower = ::tensorflow::ops::AsNodeOut(scope, num_lower);
      if (!scope.ok())
          return;
      auto _num_upper = ::tensorflow::ops::AsNodeOut(scope, num_upper);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("MatrixBandPart");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "MatrixBandPart")
                                   .Input(_input)
                                   .Input(_num_lower)
                                   .Input(_num_upper)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

MatrixDeterminant::MatrixDeterminant(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("MatrixDeterminant");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "MatrixDeterminant")
                                   .Input(_input)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

MatrixDiag::MatrixDiag(tensorflow::Scope& scope, 
           tensorflow::Input diagonal, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _diagonal = ::tensorflow::ops::AsNodeOut(scope, diagonal);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("MatrixDiag");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "MatrixDiag")
                                   .Input(_diagonal)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

MatrixDiagPart::MatrixDiagPart(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("MatrixDiagPart");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "MatrixDiagPart")
                                   .Input(_input)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

MatrixExponential::MatrixExponential(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("MatrixExponential");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "MatrixExponential")
                                   .Input(_input)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

MatrixInverse::MatrixInverse(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           bool adjoint, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("MatrixInverse");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "MatrixInverse")
                                   .Input(_input)
                                   .Attr("adjoint", adjoint)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

MatrixLogarithm::MatrixLogarithm(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("MatrixLogarithm");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "MatrixLogarithm")
                                   .Input(_input)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

MatrixSetDiag::MatrixSetDiag(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input diagonal, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      if (!scope.ok())
          return;
      auto _diagonal = ::tensorflow::ops::AsNodeOut(scope, diagonal);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("MatrixSetDiag");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "MatrixSetDiag")
                                   .Input(_input)
                                   .Input(_diagonal)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

MatrixSolve::MatrixSolve(tensorflow::Scope& scope, 
           tensorflow::Input matrix, 
           tensorflow::Input rhs, 
           bool adjoint, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _matrix = ::tensorflow::ops::AsNodeOut(scope, matrix);
      if (!scope.ok())
          return;
      auto _rhs = ::tensorflow::ops::AsNodeOut(scope, rhs);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("MatrixSolve");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "MatrixSolve")
                                   .Input(_matrix)
                                   .Input(_rhs)
                                   .Attr("adjoint", adjoint)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

MatrixSolveLs::MatrixSolveLs(tensorflow::Scope& scope, 
           tensorflow::Input matrix, 
           tensorflow::Input rhs, 
           tensorflow::Input l2_regularizer, 
           tensorflow::DataType T, 
           bool fast) {
      if (!scope.ok())
          return;
      auto _matrix = ::tensorflow::ops::AsNodeOut(scope, matrix);
      if (!scope.ok())
          return;
      auto _rhs = ::tensorflow::ops::AsNodeOut(scope, rhs);
      if (!scope.ok())
          return;
      auto _l2_regularizer = ::tensorflow::ops::AsNodeOut(scope, l2_regularizer);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("MatrixSolveLs");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "MatrixSolveLs")
                                   .Input(_matrix)
                                   .Input(_rhs)
                                   .Input(_l2_regularizer)
                                   .Attr("T", T)
                                   .Attr("fast", fast)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

MatrixSquareRoot::MatrixSquareRoot(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("MatrixSquareRoot");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "MatrixSquareRoot")
                                   .Input(_input)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

MatrixTriangularSolve::MatrixTriangularSolve(tensorflow::Scope& scope, 
           tensorflow::Input matrix, 
           tensorflow::Input rhs, 
           bool lower, 
           bool adjoint, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _matrix = ::tensorflow::ops::AsNodeOut(scope, matrix);
      if (!scope.ok())
          return;
      auto _rhs = ::tensorflow::ops::AsNodeOut(scope, rhs);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("MatrixTriangularSolve");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "MatrixTriangularSolve")
                                   .Input(_matrix)
                                   .Input(_rhs)
                                   .Attr("lower", lower)
                                   .Attr("adjoint", adjoint)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

Max::Max(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input reduction_indices, 
           bool keep_dims, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      if (!scope.ok())
          return;
      auto _reduction_indices = ::tensorflow::ops::AsNodeOut(scope, reduction_indices);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("Max");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "Max")
                                   .Input(_input)
                                   .Input(_reduction_indices)
                                   .Attr("keep_dims", keep_dims)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

Maximum::Maximum(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::Input y, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _x = ::tensorflow::ops::AsNodeOut(scope, x);
      if (!scope.ok())
          return;
      auto _y = ::tensorflow::ops::AsNodeOut(scope, y);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("Maximum");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "Maximum")
                                   .Input(_x)
                                   .Input(_y)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

Mean::Mean(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input reduction_indices, 
           bool keep_dims, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      if (!scope.ok())
          return;
      auto _reduction_indices = ::tensorflow::ops::AsNodeOut(scope, reduction_indices);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("Mean");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "Mean")
                                   .Input(_input)
                                   .Input(_reduction_indices)
                                   .Attr("keep_dims", keep_dims)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

Mfcc::Mfcc(tensorflow::Scope& scope, 
           tensorflow::Input spectrogram, 
           tensorflow::Input sample_rate, 
           float upper_frequency_limit, 
           float lower_frequency_limit, 
           int64_t filterbank_channel_count, 
           int64_t dct_coefficient_count) {
      if (!scope.ok())
          return;
      auto _spectrogram = ::tensorflow::ops::AsNodeOut(scope, spectrogram);
      if (!scope.ok())
          return;
      auto _sample_rate = ::tensorflow::ops::AsNodeOut(scope, sample_rate);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("Mfcc");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "Mfcc")
                                   .Input(_spectrogram)
                                   .Input(_sample_rate)
                                   .Attr("upper_frequency_limit", upper_frequency_limit)
                                   .Attr("lower_frequency_limit", lower_frequency_limit)
                                   .Attr("filterbank_channel_count", filterbank_channel_count)
                                   .Attr("dct_coefficient_count", dct_coefficient_count)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

Min::Min(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input reduction_indices, 
           bool keep_dims, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      if (!scope.ok())
          return;
      auto _reduction_indices = ::tensorflow::ops::AsNodeOut(scope, reduction_indices);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("Min");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "Min")
                                   .Input(_input)
                                   .Input(_reduction_indices)
                                   .Attr("keep_dims", keep_dims)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

Minimum::Minimum(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::Input y, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _x = ::tensorflow::ops::AsNodeOut(scope, x);
      if (!scope.ok())
          return;
      auto _y = ::tensorflow::ops::AsNodeOut(scope, y);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("Minimum");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "Minimum")
                                   .Input(_x)
                                   .Input(_y)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

Mod::Mod(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::Input y, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _x = ::tensorflow::ops::AsNodeOut(scope, x);
      if (!scope.ok())
          return;
      auto _y = ::tensorflow::ops::AsNodeOut(scope, y);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("Mod");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "Mod")
                                   .Input(_x)
                                   .Input(_y)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

Mul::Mul(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::Input y, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _x = ::tensorflow::ops::AsNodeOut(scope, x);
      if (!scope.ok())
          return;
      auto _y = ::tensorflow::ops::AsNodeOut(scope, y);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("Mul");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "Mul")
                                   .Input(_x)
                                   .Input(_y)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

Neg::Neg(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _x = ::tensorflow::ops::AsNodeOut(scope, x);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("Neg");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "Neg")
                                   .Input(_x)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

NotEqual::NotEqual(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::Input y) {
      if (!scope.ok())
          return;
      auto _x = ::tensorflow::ops::AsNodeOut(scope, x);
      if (!scope.ok())
          return;
      auto _y = ::tensorflow::ops::AsNodeOut(scope, y);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("NotEqual");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "NotEqual")
                                   .Input(_x)
                                   .Input(_y)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

PadV2::PadV2(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input paddings, 
           tensorflow::Input constant_values, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      if (!scope.ok())
          return;
      auto _paddings = ::tensorflow::ops::AsNodeOut(scope, paddings);
      if (!scope.ok())
          return;
      auto _constant_values = ::tensorflow::ops::AsNodeOut(scope, constant_values);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("PadV2");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "PadV2")
                                   .Input(_input)
                                   .Input(_paddings)
                                   .Input(_constant_values)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

Polygamma::Polygamma(tensorflow::Scope& scope, 
           tensorflow::Input a, 
           tensorflow::Input x, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _a = ::tensorflow::ops::AsNodeOut(scope, a);
      if (!scope.ok())
          return;
      auto _x = ::tensorflow::ops::AsNodeOut(scope, x);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("Polygamma");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "Polygamma")
                                   .Input(_a)
                                   .Input(_x)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

Pow::Pow(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::Input y, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _x = ::tensorflow::ops::AsNodeOut(scope, x);
      if (!scope.ok())
          return;
      auto _y = ::tensorflow::ops::AsNodeOut(scope, y);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("Pow");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "Pow")
                                   .Input(_x)
                                   .Input(_y)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

Prod::Prod(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input reduction_indices, 
           bool keep_dims, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      if (!scope.ok())
          return;
      auto _reduction_indices = ::tensorflow::ops::AsNodeOut(scope, reduction_indices);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("Prod");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "Prod")
                                   .Input(_input)
                                   .Input(_reduction_indices)
                                   .Attr("keep_dims", keep_dims)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

Qr::Qr(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           bool full_matrices, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("Qr");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "Qr")
                                   .Input(_input)
                                   .Attr("full_matrices", full_matrices)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

QuantizeV2::QuantizeV2(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input min_range, 
           tensorflow::Input max_range, 
           tensorflow::DataType T, 
           tensorflow::string mode, 
           tensorflow::string round_mode) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      if (!scope.ok())
          return;
      auto _min_range = ::tensorflow::ops::AsNodeOut(scope, min_range);
      if (!scope.ok())
          return;
      auto _max_range = ::tensorflow::ops::AsNodeOut(scope, max_range);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("QuantizeV2");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "QuantizeV2")
                                   .Input(_input)
                                   .Input(_min_range)
                                   .Input(_max_range)
                                   .Attr("T", T)
                                   .Attr("mode", mode)
                                   .Attr("round_mode", round_mode)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

QuantizedAdd::QuantizedAdd(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::Input y, 
           tensorflow::Input min_x, 
           tensorflow::Input max_x, 
           tensorflow::Input min_y, 
           tensorflow::Input max_y, 
           tensorflow::DataType Toutput) {
      if (!scope.ok())
          return;
      auto _x = ::tensorflow::ops::AsNodeOut(scope, x);
      if (!scope.ok())
          return;
      auto _y = ::tensorflow::ops::AsNodeOut(scope, y);
      if (!scope.ok())
          return;
      auto _min_x = ::tensorflow::ops::AsNodeOut(scope, min_x);
      if (!scope.ok())
          return;
      auto _max_x = ::tensorflow::ops::AsNodeOut(scope, max_x);
      if (!scope.ok())
          return;
      auto _min_y = ::tensorflow::ops::AsNodeOut(scope, min_y);
      if (!scope.ok())
          return;
      auto _max_y = ::tensorflow::ops::AsNodeOut(scope, max_y);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("QuantizedAdd");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "QuantizedAdd")
                                   .Input(_x)
                                   .Input(_y)
                                   .Input(_min_x)
                                   .Input(_max_x)
                                   .Input(_min_y)
                                   .Input(_max_y)
                                   .Attr("Toutput", Toutput)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

QuantizedInstanceNorm::QuantizedInstanceNorm(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::Input x_min, 
           tensorflow::Input x_max, 
           tensorflow::DataType T, 
           bool output_range_given, 
           float given_y_min, 
           float given_y_max, 
           float variance_epsilon, 
           float min_separation) {
      if (!scope.ok())
          return;
      auto _x = ::tensorflow::ops::AsNodeOut(scope, x);
      if (!scope.ok())
          return;
      auto _x_min = ::tensorflow::ops::AsNodeOut(scope, x_min);
      if (!scope.ok())
          return;
      auto _x_max = ::tensorflow::ops::AsNodeOut(scope, x_max);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("QuantizedInstanceNorm");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "QuantizedInstanceNorm")
                                   .Input(_x)
                                   .Input(_x_min)
                                   .Input(_x_max)
                                   .Attr("T", T)
                                   .Attr("output_range_given", output_range_given)
                                   .Attr("given_y_min", given_y_min)
                                   .Attr("given_y_max", given_y_max)
                                   .Attr("variance_epsilon", variance_epsilon)
                                   .Attr("min_separation", min_separation)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

QuantizedMatMul::QuantizedMatMul(tensorflow::Scope& scope, 
           tensorflow::Input a, 
           tensorflow::Input b, 
           tensorflow::Input min_a, 
           tensorflow::Input max_a, 
           tensorflow::Input min_b, 
           tensorflow::Input max_b, 
           tensorflow::DataType Tactivation, 
           bool transpose_b, 
           tensorflow::DataType Toutput, 
           bool transpose_a) {
      if (!scope.ok())
          return;
      auto _a = ::tensorflow::ops::AsNodeOut(scope, a);
      if (!scope.ok())
          return;
      auto _b = ::tensorflow::ops::AsNodeOut(scope, b);
      if (!scope.ok())
          return;
      auto _min_a = ::tensorflow::ops::AsNodeOut(scope, min_a);
      if (!scope.ok())
          return;
      auto _max_a = ::tensorflow::ops::AsNodeOut(scope, max_a);
      if (!scope.ok())
          return;
      auto _min_b = ::tensorflow::ops::AsNodeOut(scope, min_b);
      if (!scope.ok())
          return;
      auto _max_b = ::tensorflow::ops::AsNodeOut(scope, max_b);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("QuantizedMatMul");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "QuantizedMatMul")
                                   .Input(_a)
                                   .Input(_b)
                                   .Input(_min_a)
                                   .Input(_max_a)
                                   .Input(_min_b)
                                   .Input(_max_b)
                                   .Attr("Tactivation", Tactivation)
                                   .Attr("transpose_b", transpose_b)
                                   .Attr("Toutput", Toutput)
                                   .Attr("transpose_a", transpose_a)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

QuantizedMul::QuantizedMul(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::Input y, 
           tensorflow::Input min_x, 
           tensorflow::Input max_x, 
           tensorflow::Input min_y, 
           tensorflow::Input max_y, 
           tensorflow::DataType Toutput) {
      if (!scope.ok())
          return;
      auto _x = ::tensorflow::ops::AsNodeOut(scope, x);
      if (!scope.ok())
          return;
      auto _y = ::tensorflow::ops::AsNodeOut(scope, y);
      if (!scope.ok())
          return;
      auto _min_x = ::tensorflow::ops::AsNodeOut(scope, min_x);
      if (!scope.ok())
          return;
      auto _max_x = ::tensorflow::ops::AsNodeOut(scope, max_x);
      if (!scope.ok())
          return;
      auto _min_y = ::tensorflow::ops::AsNodeOut(scope, min_y);
      if (!scope.ok())
          return;
      auto _max_y = ::tensorflow::ops::AsNodeOut(scope, max_y);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("QuantizedMul");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "QuantizedMul")
                                   .Input(_x)
                                   .Input(_y)
                                   .Input(_min_x)
                                   .Input(_max_x)
                                   .Input(_min_y)
                                   .Input(_max_y)
                                   .Attr("Toutput", Toutput)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

RFFT::RFFT(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input fft_length) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      if (!scope.ok())
          return;
      auto _fft_length = ::tensorflow::ops::AsNodeOut(scope, fft_length);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("RFFT");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "RFFT")
                                   .Input(_input)
                                   .Input(_fft_length)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

RFFT2D::RFFT2D(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input fft_length) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      if (!scope.ok())
          return;
      auto _fft_length = ::tensorflow::ops::AsNodeOut(scope, fft_length);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("RFFT2D");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "RFFT2D")
                                   .Input(_input)
                                   .Input(_fft_length)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

RFFT3D::RFFT3D(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input fft_length) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      if (!scope.ok())
          return;
      auto _fft_length = ::tensorflow::ops::AsNodeOut(scope, fft_length);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("RFFT3D");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "RFFT3D")
                                   .Input(_input)
                                   .Input(_fft_length)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

Real::Real(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::DataType Tout) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("Real");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "Real")
                                   .Input(_input)
                                   .Attr("Tout", Tout)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

Reciprocal::Reciprocal(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _x = ::tensorflow::ops::AsNodeOut(scope, x);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("Reciprocal");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "Reciprocal")
                                   .Input(_x)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

ReciprocalGrad::ReciprocalGrad(tensorflow::Scope& scope, 
           tensorflow::Input y, 
           tensorflow::Input dy, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _y = ::tensorflow::ops::AsNodeOut(scope, y);
      if (!scope.ok())
          return;
      auto _dy = ::tensorflow::ops::AsNodeOut(scope, dy);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ReciprocalGrad");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ReciprocalGrad")
                                   .Input(_y)
                                   .Input(_dy)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

RefIdentity::RefIdentity(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("RefIdentity");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "RefIdentity")
                                   .Input(_input)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

RequantizationRange::RequantizationRange(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input input_min, 
           tensorflow::Input input_max) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      if (!scope.ok())
          return;
      auto _input_min = ::tensorflow::ops::AsNodeOut(scope, input_min);
      if (!scope.ok())
          return;
      auto _input_max = ::tensorflow::ops::AsNodeOut(scope, input_max);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("RequantizationRange");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "RequantizationRange")
                                   .Input(_input)
                                   .Input(_input_min)
                                   .Input(_input_max)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

Requantize::Requantize(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input input_min, 
           tensorflow::Input input_max, 
           tensorflow::Input requested_output_min, 
           tensorflow::Input requested_output_max, 
           tensorflow::DataType out_type) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      if (!scope.ok())
          return;
      auto _input_min = ::tensorflow::ops::AsNodeOut(scope, input_min);
      if (!scope.ok())
          return;
      auto _input_max = ::tensorflow::ops::AsNodeOut(scope, input_max);
      if (!scope.ok())
          return;
      auto _requested_output_min = ::tensorflow::ops::AsNodeOut(scope, requested_output_min);
      if (!scope.ok())
          return;
      auto _requested_output_max = ::tensorflow::ops::AsNodeOut(scope, requested_output_max);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("Requantize");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "Requantize")
                                   .Input(_input)
                                   .Input(_input_min)
                                   .Input(_input_max)
                                   .Input(_requested_output_min)
                                   .Input(_requested_output_max)
                                   .Attr("out_type", out_type)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

ResourceCountUpTo::ResourceCountUpTo(tensorflow::Scope& scope, 
           tensorflow::Input resource, 
           int64_t limit, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _resource = ::tensorflow::ops::AsNodeOut(scope, resource);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ResourceCountUpTo");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ResourceCountUpTo")
                                   .Input(_resource)
                                   .Attr("limit", limit)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

ResourceScatterAdd::ResourceScatterAdd(tensorflow::Scope& scope, 
           tensorflow::Input resource, 
           tensorflow::Input indices, 
           tensorflow::Input updates) {
      if (!scope.ok())
          return;
      auto _resource = ::tensorflow::ops::AsNodeOut(scope, resource);
      if (!scope.ok())
          return;
      auto _indices = ::tensorflow::ops::AsNodeOut(scope, indices);
      if (!scope.ok())
          return;
      auto _updates = ::tensorflow::ops::AsNodeOut(scope, updates);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ResourceScatterAdd");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ResourceScatterAdd")
                                   .Input(_resource)
                                   .Input(_indices)
                                   .Input(_updates)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
}

ResourceScatterDiv::ResourceScatterDiv(tensorflow::Scope& scope, 
           tensorflow::Input resource, 
           tensorflow::Input indices, 
           tensorflow::Input updates) {
      if (!scope.ok())
          return;
      auto _resource = ::tensorflow::ops::AsNodeOut(scope, resource);
      if (!scope.ok())
          return;
      auto _indices = ::tensorflow::ops::AsNodeOut(scope, indices);
      if (!scope.ok())
          return;
      auto _updates = ::tensorflow::ops::AsNodeOut(scope, updates);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ResourceScatterDiv");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ResourceScatterDiv")
                                   .Input(_resource)
                                   .Input(_indices)
                                   .Input(_updates)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
}

ResourceScatterMul::ResourceScatterMul(tensorflow::Scope& scope, 
           tensorflow::Input resource, 
           tensorflow::Input indices, 
           tensorflow::Input updates) {
      if (!scope.ok())
          return;
      auto _resource = ::tensorflow::ops::AsNodeOut(scope, resource);
      if (!scope.ok())
          return;
      auto _indices = ::tensorflow::ops::AsNodeOut(scope, indices);
      if (!scope.ok())
          return;
      auto _updates = ::tensorflow::ops::AsNodeOut(scope, updates);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ResourceScatterMul");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ResourceScatterMul")
                                   .Input(_resource)
                                   .Input(_indices)
                                   .Input(_updates)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
}

ResourceScatterNdAdd::ResourceScatterNdAdd(tensorflow::Scope& scope, 
           tensorflow::Input ref, 
           tensorflow::Input indices, 
           tensorflow::Input updates, 
           bool use_locking) {
      if (!scope.ok())
          return;
      auto _ref = ::tensorflow::ops::AsNodeOut(scope, ref);
      if (!scope.ok())
          return;
      auto _indices = ::tensorflow::ops::AsNodeOut(scope, indices);
      if (!scope.ok())
          return;
      auto _updates = ::tensorflow::ops::AsNodeOut(scope, updates);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ResourceScatterNdAdd");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ResourceScatterNdAdd")
                                   .Input(_ref)
                                   .Input(_indices)
                                   .Input(_updates)
                                   .Attr("use_locking", use_locking)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
}

ResourceScatterSub::ResourceScatterSub(tensorflow::Scope& scope, 
           tensorflow::Input resource, 
           tensorflow::Input indices, 
           tensorflow::Input updates) {
      if (!scope.ok())
          return;
      auto _resource = ::tensorflow::ops::AsNodeOut(scope, resource);
      if (!scope.ok())
          return;
      auto _indices = ::tensorflow::ops::AsNodeOut(scope, indices);
      if (!scope.ok())
          return;
      auto _updates = ::tensorflow::ops::AsNodeOut(scope, updates);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ResourceScatterSub");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ResourceScatterSub")
                                   .Input(_resource)
                                   .Input(_indices)
                                   .Input(_updates)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
}

Rint::Rint(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _x = ::tensorflow::ops::AsNodeOut(scope, x);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("Rint");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "Rint")
                                   .Input(_x)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

Round::Round(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _x = ::tensorflow::ops::AsNodeOut(scope, x);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("Round");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "Round")
                                   .Input(_x)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

Rsqrt::Rsqrt(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _x = ::tensorflow::ops::AsNodeOut(scope, x);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("Rsqrt");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "Rsqrt")
                                   .Input(_x)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

RsqrtGrad::RsqrtGrad(tensorflow::Scope& scope, 
           tensorflow::Input y, 
           tensorflow::Input dy, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _y = ::tensorflow::ops::AsNodeOut(scope, y);
      if (!scope.ok())
          return;
      auto _dy = ::tensorflow::ops::AsNodeOut(scope, dy);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("RsqrtGrad");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "RsqrtGrad")
                                   .Input(_y)
                                   .Input(_dy)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

ScatterAdd::ScatterAdd(tensorflow::Scope& scope, 
           tensorflow::Input ref, 
           tensorflow::Input indices, 
           tensorflow::Input updates, 
           tensorflow::DataType T, 
           bool use_locking) {
      if (!scope.ok())
          return;
      auto _ref = ::tensorflow::ops::AsNodeOut(scope, ref);
      if (!scope.ok())
          return;
      auto _indices = ::tensorflow::ops::AsNodeOut(scope, indices);
      if (!scope.ok())
          return;
      auto _updates = ::tensorflow::ops::AsNodeOut(scope, updates);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ScatterAdd");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ScatterAdd")
                                   .Input(_ref)
                                   .Input(_indices)
                                   .Input(_updates)
                                   .Attr("T", T)
                                   .Attr("use_locking", use_locking)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

ScatterDiv::ScatterDiv(tensorflow::Scope& scope, 
           tensorflow::Input ref, 
           tensorflow::Input indices, 
           tensorflow::Input updates, 
           tensorflow::DataType T, 
           bool use_locking) {
      if (!scope.ok())
          return;
      auto _ref = ::tensorflow::ops::AsNodeOut(scope, ref);
      if (!scope.ok())
          return;
      auto _indices = ::tensorflow::ops::AsNodeOut(scope, indices);
      if (!scope.ok())
          return;
      auto _updates = ::tensorflow::ops::AsNodeOut(scope, updates);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ScatterDiv");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ScatterDiv")
                                   .Input(_ref)
                                   .Input(_indices)
                                   .Input(_updates)
                                   .Attr("T", T)
                                   .Attr("use_locking", use_locking)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

ScatterMax::ScatterMax(tensorflow::Scope& scope, 
           tensorflow::Input ref, 
           tensorflow::Input indices, 
           tensorflow::Input updates, 
           tensorflow::DataType T, 
           bool use_locking) {
      if (!scope.ok())
          return;
      auto _ref = ::tensorflow::ops::AsNodeOut(scope, ref);
      if (!scope.ok())
          return;
      auto _indices = ::tensorflow::ops::AsNodeOut(scope, indices);
      if (!scope.ok())
          return;
      auto _updates = ::tensorflow::ops::AsNodeOut(scope, updates);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ScatterMax");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ScatterMax")
                                   .Input(_ref)
                                   .Input(_indices)
                                   .Input(_updates)
                                   .Attr("T", T)
                                   .Attr("use_locking", use_locking)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

ScatterMin::ScatterMin(tensorflow::Scope& scope, 
           tensorflow::Input ref, 
           tensorflow::Input indices, 
           tensorflow::Input updates, 
           tensorflow::DataType T, 
           bool use_locking) {
      if (!scope.ok())
          return;
      auto _ref = ::tensorflow::ops::AsNodeOut(scope, ref);
      if (!scope.ok())
          return;
      auto _indices = ::tensorflow::ops::AsNodeOut(scope, indices);
      if (!scope.ok())
          return;
      auto _updates = ::tensorflow::ops::AsNodeOut(scope, updates);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ScatterMin");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ScatterMin")
                                   .Input(_ref)
                                   .Input(_indices)
                                   .Input(_updates)
                                   .Attr("T", T)
                                   .Attr("use_locking", use_locking)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

ScatterMul::ScatterMul(tensorflow::Scope& scope, 
           tensorflow::Input ref, 
           tensorflow::Input indices, 
           tensorflow::Input updates, 
           tensorflow::DataType T, 
           bool use_locking) {
      if (!scope.ok())
          return;
      auto _ref = ::tensorflow::ops::AsNodeOut(scope, ref);
      if (!scope.ok())
          return;
      auto _indices = ::tensorflow::ops::AsNodeOut(scope, indices);
      if (!scope.ok())
          return;
      auto _updates = ::tensorflow::ops::AsNodeOut(scope, updates);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ScatterMul");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ScatterMul")
                                   .Input(_ref)
                                   .Input(_indices)
                                   .Input(_updates)
                                   .Attr("T", T)
                                   .Attr("use_locking", use_locking)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

ScatterNdAdd::ScatterNdAdd(tensorflow::Scope& scope, 
           tensorflow::Input ref, 
           tensorflow::Input indices, 
           tensorflow::Input updates, 
           tensorflow::DataType T, 
           bool use_locking) {
      if (!scope.ok())
          return;
      auto _ref = ::tensorflow::ops::AsNodeOut(scope, ref);
      if (!scope.ok())
          return;
      auto _indices = ::tensorflow::ops::AsNodeOut(scope, indices);
      if (!scope.ok())
          return;
      auto _updates = ::tensorflow::ops::AsNodeOut(scope, updates);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ScatterNdAdd");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ScatterNdAdd")
                                   .Input(_ref)
                                   .Input(_indices)
                                   .Input(_updates)
                                   .Attr("T", T)
                                   .Attr("use_locking", use_locking)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

ScatterNdNonAliasingAdd::ScatterNdNonAliasingAdd(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input indices, 
           tensorflow::Input updates, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      if (!scope.ok())
          return;
      auto _indices = ::tensorflow::ops::AsNodeOut(scope, indices);
      if (!scope.ok())
          return;
      auto _updates = ::tensorflow::ops::AsNodeOut(scope, updates);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ScatterNdNonAliasingAdd");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ScatterNdNonAliasingAdd")
                                   .Input(_input)
                                   .Input(_indices)
                                   .Input(_updates)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

ScatterSub::ScatterSub(tensorflow::Scope& scope, 
           tensorflow::Input ref, 
           tensorflow::Input indices, 
           tensorflow::Input updates, 
           tensorflow::DataType T, 
           bool use_locking) {
      if (!scope.ok())
          return;
      auto _ref = ::tensorflow::ops::AsNodeOut(scope, ref);
      if (!scope.ok())
          return;
      auto _indices = ::tensorflow::ops::AsNodeOut(scope, indices);
      if (!scope.ok())
          return;
      auto _updates = ::tensorflow::ops::AsNodeOut(scope, updates);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("ScatterSub");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "ScatterSub")
                                   .Input(_ref)
                                   .Input(_indices)
                                   .Input(_updates)
                                   .Attr("T", T)
                                   .Attr("use_locking", use_locking)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

SegmentMax::SegmentMax(tensorflow::Scope& scope, 
           tensorflow::Input data, 
           tensorflow::Input segment_ids, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _data = ::tensorflow::ops::AsNodeOut(scope, data);
      if (!scope.ok())
          return;
      auto _segment_ids = ::tensorflow::ops::AsNodeOut(scope, segment_ids);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("SegmentMax");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "SegmentMax")
                                   .Input(_data)
                                   .Input(_segment_ids)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

SegmentMean::SegmentMean(tensorflow::Scope& scope, 
           tensorflow::Input data, 
           tensorflow::Input segment_ids, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _data = ::tensorflow::ops::AsNodeOut(scope, data);
      if (!scope.ok())
          return;
      auto _segment_ids = ::tensorflow::ops::AsNodeOut(scope, segment_ids);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("SegmentMean");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "SegmentMean")
                                   .Input(_data)
                                   .Input(_segment_ids)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

SegmentMin::SegmentMin(tensorflow::Scope& scope, 
           tensorflow::Input data, 
           tensorflow::Input segment_ids, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _data = ::tensorflow::ops::AsNodeOut(scope, data);
      if (!scope.ok())
          return;
      auto _segment_ids = ::tensorflow::ops::AsNodeOut(scope, segment_ids);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("SegmentMin");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "SegmentMin")
                                   .Input(_data)
                                   .Input(_segment_ids)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

SegmentProd::SegmentProd(tensorflow::Scope& scope, 
           tensorflow::Input data, 
           tensorflow::Input segment_ids, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _data = ::tensorflow::ops::AsNodeOut(scope, data);
      if (!scope.ok())
          return;
      auto _segment_ids = ::tensorflow::ops::AsNodeOut(scope, segment_ids);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("SegmentProd");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "SegmentProd")
                                   .Input(_data)
                                   .Input(_segment_ids)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

SegmentSum::SegmentSum(tensorflow::Scope& scope, 
           tensorflow::Input data, 
           tensorflow::Input segment_ids, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _data = ::tensorflow::ops::AsNodeOut(scope, data);
      if (!scope.ok())
          return;
      auto _segment_ids = ::tensorflow::ops::AsNodeOut(scope, segment_ids);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("SegmentSum");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "SegmentSum")
                                   .Input(_data)
                                   .Input(_segment_ids)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

SelfAdjointEig::SelfAdjointEig(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("SelfAdjointEig");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "SelfAdjointEig")
                                   .Input(_input)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

Sign::Sign(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _x = ::tensorflow::ops::AsNodeOut(scope, x);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("Sign");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "Sign")
                                   .Input(_x)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

Sin::Sin(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _x = ::tensorflow::ops::AsNodeOut(scope, x);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("Sin");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "Sin")
                                   .Input(_x)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

Sinh::Sinh(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _x = ::tensorflow::ops::AsNodeOut(scope, x);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("Sinh");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "Sinh")
                                   .Input(_x)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

Softsign::Softsign(tensorflow::Scope& scope, 
           tensorflow::Input features, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _features = ::tensorflow::ops::AsNodeOut(scope, features);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("Softsign");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "Softsign")
                                   .Input(_features)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

SparseAdd::SparseAdd(tensorflow::Scope& scope, 
           tensorflow::Input a_indices, 
           tensorflow::Input a_values, 
           tensorflow::Input a_shape, 
           tensorflow::Input b_indices, 
           tensorflow::Input b_values, 
           tensorflow::Input b_shape, 
           tensorflow::Input thresh) {
      if (!scope.ok())
          return;
      auto _a_indices = ::tensorflow::ops::AsNodeOut(scope, a_indices);
      if (!scope.ok())
          return;
      auto _a_values = ::tensorflow::ops::AsNodeOut(scope, a_values);
      if (!scope.ok())
          return;
      auto _a_shape = ::tensorflow::ops::AsNodeOut(scope, a_shape);
      if (!scope.ok())
          return;
      auto _b_indices = ::tensorflow::ops::AsNodeOut(scope, b_indices);
      if (!scope.ok())
          return;
      auto _b_values = ::tensorflow::ops::AsNodeOut(scope, b_values);
      if (!scope.ok())
          return;
      auto _b_shape = ::tensorflow::ops::AsNodeOut(scope, b_shape);
      if (!scope.ok())
          return;
      auto _thresh = ::tensorflow::ops::AsNodeOut(scope, thresh);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("SparseAdd");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "SparseAdd")
                                   .Input(_a_indices)
                                   .Input(_a_values)
                                   .Input(_a_shape)
                                   .Input(_b_indices)
                                   .Input(_b_values)
                                   .Input(_b_shape)
                                   .Input(_thresh)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

SparseDenseCwiseMul::SparseDenseCwiseMul(tensorflow::Scope& scope, 
           tensorflow::Input sp_indices, 
           tensorflow::Input sp_values, 
           tensorflow::Input sp_shape, 
           tensorflow::Input dense, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _sp_indices = ::tensorflow::ops::AsNodeOut(scope, sp_indices);
      if (!scope.ok())
          return;
      auto _sp_values = ::tensorflow::ops::AsNodeOut(scope, sp_values);
      if (!scope.ok())
          return;
      auto _sp_shape = ::tensorflow::ops::AsNodeOut(scope, sp_shape);
      if (!scope.ok())
          return;
      auto _dense = ::tensorflow::ops::AsNodeOut(scope, dense);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("SparseDenseCwiseMul");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "SparseDenseCwiseMul")
                                   .Input(_sp_indices)
                                   .Input(_sp_values)
                                   .Input(_sp_shape)
                                   .Input(_dense)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

SparseMatMul::SparseMatMul(tensorflow::Scope& scope, 
           tensorflow::Input a, 
           tensorflow::Input b, 
           bool transpose_a, 
           bool transpose_b, 
           bool a_is_sparse, 
           bool b_is_sparse) {
      if (!scope.ok())
          return;
      auto _a = ::tensorflow::ops::AsNodeOut(scope, a);
      if (!scope.ok())
          return;
      auto _b = ::tensorflow::ops::AsNodeOut(scope, b);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("SparseMatMul");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "SparseMatMul")
                                   .Input(_a)
                                   .Input(_b)
                                   .Attr("transpose_a", transpose_a)
                                   .Attr("transpose_b", transpose_b)
                                   .Attr("a_is_sparse", a_is_sparse)
                                   .Attr("b_is_sparse", b_is_sparse)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

SparseReduceMaxSparse::SparseReduceMaxSparse(tensorflow::Scope& scope, 
           tensorflow::Input input_indices, 
           tensorflow::Input input_values, 
           tensorflow::Input input_shape, 
           tensorflow::Input reduction_axes, 
           bool keep_dims) {
      if (!scope.ok())
          return;
      auto _input_indices = ::tensorflow::ops::AsNodeOut(scope, input_indices);
      if (!scope.ok())
          return;
      auto _input_values = ::tensorflow::ops::AsNodeOut(scope, input_values);
      if (!scope.ok())
          return;
      auto _input_shape = ::tensorflow::ops::AsNodeOut(scope, input_shape);
      if (!scope.ok())
          return;
      auto _reduction_axes = ::tensorflow::ops::AsNodeOut(scope, reduction_axes);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("SparseReduceMaxSparse");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "SparseReduceMaxSparse")
                                   .Input(_input_indices)
                                   .Input(_input_values)
                                   .Input(_input_shape)
                                   .Input(_reduction_axes)
                                   .Attr("keep_dims", keep_dims)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

SparseReduceSum::SparseReduceSum(tensorflow::Scope& scope, 
           tensorflow::Input input_indices, 
           tensorflow::Input input_values, 
           tensorflow::Input input_shape, 
           tensorflow::Input reduction_axes, 
           bool keep_dims, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _input_indices = ::tensorflow::ops::AsNodeOut(scope, input_indices);
      if (!scope.ok())
          return;
      auto _input_values = ::tensorflow::ops::AsNodeOut(scope, input_values);
      if (!scope.ok())
          return;
      auto _input_shape = ::tensorflow::ops::AsNodeOut(scope, input_shape);
      if (!scope.ok())
          return;
      auto _reduction_axes = ::tensorflow::ops::AsNodeOut(scope, reduction_axes);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("SparseReduceSum");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "SparseReduceSum")
                                   .Input(_input_indices)
                                   .Input(_input_values)
                                   .Input(_input_shape)
                                   .Input(_reduction_axes)
                                   .Attr("keep_dims", keep_dims)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

SparseReduceSumSparse::SparseReduceSumSparse(tensorflow::Scope& scope, 
           tensorflow::Input input_indices, 
           tensorflow::Input input_values, 
           tensorflow::Input input_shape, 
           tensorflow::Input reduction_axes, 
           bool keep_dims) {
      if (!scope.ok())
          return;
      auto _input_indices = ::tensorflow::ops::AsNodeOut(scope, input_indices);
      if (!scope.ok())
          return;
      auto _input_values = ::tensorflow::ops::AsNodeOut(scope, input_values);
      if (!scope.ok())
          return;
      auto _input_shape = ::tensorflow::ops::AsNodeOut(scope, input_shape);
      if (!scope.ok())
          return;
      auto _reduction_axes = ::tensorflow::ops::AsNodeOut(scope, reduction_axes);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("SparseReduceSumSparse");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "SparseReduceSumSparse")
                                   .Input(_input_indices)
                                   .Input(_input_values)
                                   .Input(_input_shape)
                                   .Input(_reduction_axes)
                                   .Attr("keep_dims", keep_dims)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

SparseSegmentMean::SparseSegmentMean(tensorflow::Scope& scope, 
           tensorflow::Input data, 
           tensorflow::Input indices, 
           tensorflow::Input segment_ids, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _data = ::tensorflow::ops::AsNodeOut(scope, data);
      if (!scope.ok())
          return;
      auto _indices = ::tensorflow::ops::AsNodeOut(scope, indices);
      if (!scope.ok())
          return;
      auto _segment_ids = ::tensorflow::ops::AsNodeOut(scope, segment_ids);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("SparseSegmentMean");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "SparseSegmentMean")
                                   .Input(_data)
                                   .Input(_indices)
                                   .Input(_segment_ids)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

SparseSegmentMeanGrad::SparseSegmentMeanGrad(tensorflow::Scope& scope, 
           tensorflow::Input grad, 
           tensorflow::Input indices, 
           tensorflow::Input segment_ids, 
           tensorflow::Input output_dim0, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _grad = ::tensorflow::ops::AsNodeOut(scope, grad);
      if (!scope.ok())
          return;
      auto _indices = ::tensorflow::ops::AsNodeOut(scope, indices);
      if (!scope.ok())
          return;
      auto _segment_ids = ::tensorflow::ops::AsNodeOut(scope, segment_ids);
      if (!scope.ok())
          return;
      auto _output_dim0 = ::tensorflow::ops::AsNodeOut(scope, output_dim0);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("SparseSegmentMeanGrad");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "SparseSegmentMeanGrad")
                                   .Input(_grad)
                                   .Input(_indices)
                                   .Input(_segment_ids)
                                   .Input(_output_dim0)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

SparseSegmentMeanWithNumSegments::SparseSegmentMeanWithNumSegments(tensorflow::Scope& scope, 
           tensorflow::Input data, 
           tensorflow::Input indices, 
           tensorflow::Input segment_ids, 
           tensorflow::Input num_segments, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _data = ::tensorflow::ops::AsNodeOut(scope, data);
      if (!scope.ok())
          return;
      auto _indices = ::tensorflow::ops::AsNodeOut(scope, indices);
      if (!scope.ok())
          return;
      auto _segment_ids = ::tensorflow::ops::AsNodeOut(scope, segment_ids);
      if (!scope.ok())
          return;
      auto _num_segments = ::tensorflow::ops::AsNodeOut(scope, num_segments);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("SparseSegmentMeanWithNumSegments");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "SparseSegmentMeanWithNumSegments")
                                   .Input(_data)
                                   .Input(_indices)
                                   .Input(_segment_ids)
                                   .Input(_num_segments)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

SparseSegmentSqrtN::SparseSegmentSqrtN(tensorflow::Scope& scope, 
           tensorflow::Input data, 
           tensorflow::Input indices, 
           tensorflow::Input segment_ids, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _data = ::tensorflow::ops::AsNodeOut(scope, data);
      if (!scope.ok())
          return;
      auto _indices = ::tensorflow::ops::AsNodeOut(scope, indices);
      if (!scope.ok())
          return;
      auto _segment_ids = ::tensorflow::ops::AsNodeOut(scope, segment_ids);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("SparseSegmentSqrtN");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "SparseSegmentSqrtN")
                                   .Input(_data)
                                   .Input(_indices)
                                   .Input(_segment_ids)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

SparseSegmentSqrtNGrad::SparseSegmentSqrtNGrad(tensorflow::Scope& scope, 
           tensorflow::Input grad, 
           tensorflow::Input indices, 
           tensorflow::Input segment_ids, 
           tensorflow::Input output_dim0, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _grad = ::tensorflow::ops::AsNodeOut(scope, grad);
      if (!scope.ok())
          return;
      auto _indices = ::tensorflow::ops::AsNodeOut(scope, indices);
      if (!scope.ok())
          return;
      auto _segment_ids = ::tensorflow::ops::AsNodeOut(scope, segment_ids);
      if (!scope.ok())
          return;
      auto _output_dim0 = ::tensorflow::ops::AsNodeOut(scope, output_dim0);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("SparseSegmentSqrtNGrad");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "SparseSegmentSqrtNGrad")
                                   .Input(_grad)
                                   .Input(_indices)
                                   .Input(_segment_ids)
                                   .Input(_output_dim0)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

SparseSegmentSqrtNWithNumSegments::SparseSegmentSqrtNWithNumSegments(tensorflow::Scope& scope, 
           tensorflow::Input data, 
           tensorflow::Input indices, 
           tensorflow::Input segment_ids, 
           tensorflow::Input num_segments, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _data = ::tensorflow::ops::AsNodeOut(scope, data);
      if (!scope.ok())
          return;
      auto _indices = ::tensorflow::ops::AsNodeOut(scope, indices);
      if (!scope.ok())
          return;
      auto _segment_ids = ::tensorflow::ops::AsNodeOut(scope, segment_ids);
      if (!scope.ok())
          return;
      auto _num_segments = ::tensorflow::ops::AsNodeOut(scope, num_segments);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("SparseSegmentSqrtNWithNumSegments");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "SparseSegmentSqrtNWithNumSegments")
                                   .Input(_data)
                                   .Input(_indices)
                                   .Input(_segment_ids)
                                   .Input(_num_segments)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

SparseSegmentSum::SparseSegmentSum(tensorflow::Scope& scope, 
           tensorflow::Input data, 
           tensorflow::Input indices, 
           tensorflow::Input segment_ids, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _data = ::tensorflow::ops::AsNodeOut(scope, data);
      if (!scope.ok())
          return;
      auto _indices = ::tensorflow::ops::AsNodeOut(scope, indices);
      if (!scope.ok())
          return;
      auto _segment_ids = ::tensorflow::ops::AsNodeOut(scope, segment_ids);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("SparseSegmentSum");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "SparseSegmentSum")
                                   .Input(_data)
                                   .Input(_indices)
                                   .Input(_segment_ids)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

SparseSegmentSumWithNumSegments::SparseSegmentSumWithNumSegments(tensorflow::Scope& scope, 
           tensorflow::Input data, 
           tensorflow::Input indices, 
           tensorflow::Input segment_ids, 
           tensorflow::Input num_segments, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _data = ::tensorflow::ops::AsNodeOut(scope, data);
      if (!scope.ok())
          return;
      auto _indices = ::tensorflow::ops::AsNodeOut(scope, indices);
      if (!scope.ok())
          return;
      auto _segment_ids = ::tensorflow::ops::AsNodeOut(scope, segment_ids);
      if (!scope.ok())
          return;
      auto _num_segments = ::tensorflow::ops::AsNodeOut(scope, num_segments);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("SparseSegmentSumWithNumSegments");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "SparseSegmentSumWithNumSegments")
                                   .Input(_data)
                                   .Input(_indices)
                                   .Input(_segment_ids)
                                   .Input(_num_segments)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

SparseTensorDenseAdd::SparseTensorDenseAdd(tensorflow::Scope& scope, 
           tensorflow::Input a_indices, 
           tensorflow::Input a_values, 
           tensorflow::Input a_shape, 
           tensorflow::Input b, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _a_indices = ::tensorflow::ops::AsNodeOut(scope, a_indices);
      if (!scope.ok())
          return;
      auto _a_values = ::tensorflow::ops::AsNodeOut(scope, a_values);
      if (!scope.ok())
          return;
      auto _a_shape = ::tensorflow::ops::AsNodeOut(scope, a_shape);
      if (!scope.ok())
          return;
      auto _b = ::tensorflow::ops::AsNodeOut(scope, b);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("SparseTensorDenseAdd");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "SparseTensorDenseAdd")
                                   .Input(_a_indices)
                                   .Input(_a_values)
                                   .Input(_a_shape)
                                   .Input(_b)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

SparseTensorDenseMatMul::SparseTensorDenseMatMul(tensorflow::Scope& scope, 
           tensorflow::Input a_indices, 
           tensorflow::Input a_values, 
           tensorflow::Input a_shape, 
           tensorflow::Input b, 
           tensorflow::DataType T, 
           bool adjoint_b, 
           bool adjoint_a) {
      if (!scope.ok())
          return;
      auto _a_indices = ::tensorflow::ops::AsNodeOut(scope, a_indices);
      if (!scope.ok())
          return;
      auto _a_values = ::tensorflow::ops::AsNodeOut(scope, a_values);
      if (!scope.ok())
          return;
      auto _a_shape = ::tensorflow::ops::AsNodeOut(scope, a_shape);
      if (!scope.ok())
          return;
      auto _b = ::tensorflow::ops::AsNodeOut(scope, b);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("SparseTensorDenseMatMul");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "SparseTensorDenseMatMul")
                                   .Input(_a_indices)
                                   .Input(_a_values)
                                   .Input(_a_shape)
                                   .Input(_b)
                                   .Attr("T", T)
                                   .Attr("adjoint_b", adjoint_b)
                                   .Attr("adjoint_a", adjoint_a)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

Sqrt::Sqrt(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _x = ::tensorflow::ops::AsNodeOut(scope, x);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("Sqrt");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "Sqrt")
                                   .Input(_x)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

SqrtGrad::SqrtGrad(tensorflow::Scope& scope, 
           tensorflow::Input y, 
           tensorflow::Input dy, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _y = ::tensorflow::ops::AsNodeOut(scope, y);
      if (!scope.ok())
          return;
      auto _dy = ::tensorflow::ops::AsNodeOut(scope, dy);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("SqrtGrad");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "SqrtGrad")
                                   .Input(_y)
                                   .Input(_dy)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

Square::Square(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _x = ::tensorflow::ops::AsNodeOut(scope, x);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("Square");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "Square")
                                   .Input(_x)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

SquaredDifference::SquaredDifference(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::Input y, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _x = ::tensorflow::ops::AsNodeOut(scope, x);
      if (!scope.ok())
          return;
      auto _y = ::tensorflow::ops::AsNodeOut(scope, y);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("SquaredDifference");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "SquaredDifference")
                                   .Input(_x)
                                   .Input(_y)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

Sub::Sub(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::Input y, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _x = ::tensorflow::ops::AsNodeOut(scope, x);
      if (!scope.ok())
          return;
      auto _y = ::tensorflow::ops::AsNodeOut(scope, y);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("Sub");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "Sub")
                                   .Input(_x)
                                   .Input(_y)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

Sum::Sum(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input reduction_indices, 
           bool keep_dims, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      if (!scope.ok())
          return;
      auto _reduction_indices = ::tensorflow::ops::AsNodeOut(scope, reduction_indices);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("Sum");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "Sum")
                                   .Input(_input)
                                   .Input(_reduction_indices)
                                   .Attr("keep_dims", keep_dims)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

Svd::Svd(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           bool compute_uv, 
           bool full_matrices, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("Svd");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "Svd")
                                   .Input(_input)
                                   .Attr("compute_uv", compute_uv)
                                   .Attr("full_matrices", full_matrices)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

SymbolicGradient::SymbolicGradient(tensorflow::Scope& scope, 
           tensorflow::InputList input, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Tin, 
           tensorflow::gtl::ArraySlice<tensorflow::DataType> Tout, 
           tensorflow::NameAttrList f) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOutList(scope, input);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("SymbolicGradient");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "SymbolicGradient")
                                   .Input(_input)
                                   .Attr("Tin", Tin)
                                   .Attr("Tout", Tout)
                                   .Attr("f", f)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      for (tensorflow::int32 i = 0; i < ret->num_outputs(); ++i)
          this->output.push_back(tensorflow::Output(ret, i));
}

Tan::Tan(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _x = ::tensorflow::ops::AsNodeOut(scope, x);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("Tan");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "Tan")
                                   .Input(_x)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

Tanh::Tanh(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _x = ::tensorflow::ops::AsNodeOut(scope, x);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("Tanh");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "Tanh")
                                   .Input(_x)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

TanhGrad::TanhGrad(tensorflow::Scope& scope, 
           tensorflow::Input y, 
           tensorflow::Input dy, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _y = ::tensorflow::ops::AsNodeOut(scope, y);
      if (!scope.ok())
          return;
      auto _dy = ::tensorflow::ops::AsNodeOut(scope, dy);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("TanhGrad");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "TanhGrad")
                                   .Input(_y)
                                   .Input(_dy)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

TensorScatterSub::TensorScatterSub(tensorflow::Scope& scope, 
           tensorflow::Input tensor, 
           tensorflow::Input indices, 
           tensorflow::Input updates, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _tensor = ::tensorflow::ops::AsNodeOut(scope, tensor);
      if (!scope.ok())
          return;
      auto _indices = ::tensorflow::ops::AsNodeOut(scope, indices);
      if (!scope.ok())
          return;
      auto _updates = ::tensorflow::ops::AsNodeOut(scope, updates);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("TensorScatterSub");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "TensorScatterSub")
                                   .Input(_tensor)
                                   .Input(_indices)
                                   .Input(_updates)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

TopK::TopK(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           int64_t k, 
           bool sorted, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("TopK");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "TopK")
                                   .Input(_input)
                                   .Attr("k", k)
                                   .Attr("sorted", sorted)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

TopKV2::TopKV2(tensorflow::Scope& scope, 
           tensorflow::Input input, 
           tensorflow::Input k, 
           bool sorted, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _input = ::tensorflow::ops::AsNodeOut(scope, input);
      if (!scope.ok())
          return;
      auto _k = ::tensorflow::ops::AsNodeOut(scope, k);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("TopKV2");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "TopKV2")
                                   .Input(_input)
                                   .Input(_k)
                                   .Attr("sorted", sorted)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

UnsortedSegmentMax::UnsortedSegmentMax(tensorflow::Scope& scope, 
           tensorflow::Input data, 
           tensorflow::Input segment_ids, 
           tensorflow::Input num_segments, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _data = ::tensorflow::ops::AsNodeOut(scope, data);
      if (!scope.ok())
          return;
      auto _segment_ids = ::tensorflow::ops::AsNodeOut(scope, segment_ids);
      if (!scope.ok())
          return;
      auto _num_segments = ::tensorflow::ops::AsNodeOut(scope, num_segments);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("UnsortedSegmentMax");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "UnsortedSegmentMax")
                                   .Input(_data)
                                   .Input(_segment_ids)
                                   .Input(_num_segments)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

UnsortedSegmentMin::UnsortedSegmentMin(tensorflow::Scope& scope, 
           tensorflow::Input data, 
           tensorflow::Input segment_ids, 
           tensorflow::Input num_segments, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _data = ::tensorflow::ops::AsNodeOut(scope, data);
      if (!scope.ok())
          return;
      auto _segment_ids = ::tensorflow::ops::AsNodeOut(scope, segment_ids);
      if (!scope.ok())
          return;
      auto _num_segments = ::tensorflow::ops::AsNodeOut(scope, num_segments);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("UnsortedSegmentMin");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "UnsortedSegmentMin")
                                   .Input(_data)
                                   .Input(_segment_ids)
                                   .Input(_num_segments)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

UnsortedSegmentProd::UnsortedSegmentProd(tensorflow::Scope& scope, 
           tensorflow::Input data, 
           tensorflow::Input segment_ids, 
           tensorflow::Input num_segments, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _data = ::tensorflow::ops::AsNodeOut(scope, data);
      if (!scope.ok())
          return;
      auto _segment_ids = ::tensorflow::ops::AsNodeOut(scope, segment_ids);
      if (!scope.ok())
          return;
      auto _num_segments = ::tensorflow::ops::AsNodeOut(scope, num_segments);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("UnsortedSegmentProd");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "UnsortedSegmentProd")
                                   .Input(_data)
                                   .Input(_segment_ids)
                                   .Input(_num_segments)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

UnsortedSegmentSum::UnsortedSegmentSum(tensorflow::Scope& scope, 
           tensorflow::Input data, 
           tensorflow::Input segment_ids, 
           tensorflow::Input num_segments, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _data = ::tensorflow::ops::AsNodeOut(scope, data);
      if (!scope.ok())
          return;
      auto _segment_ids = ::tensorflow::ops::AsNodeOut(scope, segment_ids);
      if (!scope.ok())
          return;
      auto _num_segments = ::tensorflow::ops::AsNodeOut(scope, num_segments);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("UnsortedSegmentSum");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "UnsortedSegmentSum")
                                   .Input(_data)
                                   .Input(_segment_ids)
                                   .Input(_num_segments)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

UpperBound::UpperBound(tensorflow::Scope& scope, 
           tensorflow::Input sorted_inputs, 
           tensorflow::Input values, 
           tensorflow::DataType out_type) {
      if (!scope.ok())
          return;
      auto _sorted_inputs = ::tensorflow::ops::AsNodeOut(scope, sorted_inputs);
      if (!scope.ok())
          return;
      auto _values = ::tensorflow::ops::AsNodeOut(scope, values);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("UpperBound");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "UpperBound")
                                   .Input(_sorted_inputs)
                                   .Input(_values)
                                   .Attr("out_type", out_type)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

Xdivy::Xdivy(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::Input y, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _x = ::tensorflow::ops::AsNodeOut(scope, x);
      if (!scope.ok())
          return;
      auto _y = ::tensorflow::ops::AsNodeOut(scope, y);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("Xdivy");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "Xdivy")
                                   .Input(_x)
                                   .Input(_y)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

Xlogy::Xlogy(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::Input y, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _x = ::tensorflow::ops::AsNodeOut(scope, x);
      if (!scope.ok())
          return;
      auto _y = ::tensorflow::ops::AsNodeOut(scope, y);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("Xlogy");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "Xlogy")
                                   .Input(_x)
                                   .Input(_y)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

Zeta::Zeta(tensorflow::Scope& scope, 
           tensorflow::Input x, 
           tensorflow::Input q, 
           tensorflow::DataType T) {
      if (!scope.ok())
          return;
      auto _x = ::tensorflow::ops::AsNodeOut(scope, x);
      if (!scope.ok())
          return;
      auto _q = ::tensorflow::ops::AsNodeOut(scope, q);
      ::tensorflow::Node *ret;
      const auto unique_name = scope.GetUniqueNameForOp("Zeta");
      auto builder = ::tensorflow::NodeBuilder(unique_name, "Zeta")
                                   .Input(_x)
                                   .Input(_q)
                                   .Attr("T", T)
      ;
      scope.UpdateBuilder(&builder);
      scope.UpdateStatus(builder.Finalize(scope.graph(), &ret));
      if (!scope.ok()) return;
      scope.UpdateStatus(scope.DoShapeInference(ret));
      this->operation = ::tensorflow::Operation(ret);
      this->output = tensorflow::Output(ret, 0);
}

