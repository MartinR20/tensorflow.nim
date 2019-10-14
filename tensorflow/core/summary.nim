import
    ../utils/utils, graphdef

type 
  SummaryWriter* {.header:memory,
                   header:writer,
                   importcpp:"std::shared_ptr<tensorflow::EventsWriter>".} = object

    ## A Object used to log your outputs to a Tensorboard readable file.

proc inewSummaryWriter(dir: cppstring): SummaryWriter {.header:memory,
                                                        header:writer,
                                                        importcpp:"std::make_shared<tensorflow::EventsWriter>(#)".}

proc newSummaryWriter*(dir: string): SummaryWriter = inewSummaryWriter(newCPPString(dir))

  ## creates a new SummaryWriter writing to the given directory

proc write_grapdef*(summaryWriter: SummaryWriter, grah: GraphDef) {.header:writer,
                                                                   importcpp:"tensorflow::Event event; auto _writer = #; event.set_graph_def(#.SerializeAsString()); _writer->WriteEvent(event);".}

  ## writes the given GraphDef to the logs.

proc iwrite_scalar(summaryWriter: SummaryWriter, wall_time: float64, step: int64, tag: cppstring, value: float32) {.header:writer,
                                                                                                                    importcpp:"tensorflow::Event event; auto _writer = #; event.set_wall_time(#); event.set_step(#); tensorflow::Summary::Value* summ_val = event.mutable_summary()->add_value(); summ_val->set_tag(#); summ_val->set_simple_value(#); _writer->WriteEvent(event);".}

proc write_scalar*(summaryWriter: SummaryWriter, wall_time: float64, step: int64, tag: string, value: float32) =
  iwrite_scalar(summaryWriter, wall_time, step, newCPPString(tag), value)

  ## Writes a Scalar to the logs.
  ## 
  ## Args:
  ##   summaryWriter: The SummaryWriter it is applied on.
  ##   wall_time: Time it is written at.
  ##   step: The step it was written at.
  ##   tag: The name of the scalar.
  ##   value: The value of the scalar.
