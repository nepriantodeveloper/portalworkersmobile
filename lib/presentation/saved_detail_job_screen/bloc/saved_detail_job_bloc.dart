import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/listclock1_item_model.dart';
import '../models/listdescription1_item_model.dart';
import 'package:stock_workers/presentation/saved_detail_job_screen/models/saved_detail_job_model.dart';
part 'saved_detail_job_event.dart';
part 'saved_detail_job_state.dart';

class SavedDetailJobBloc
    extends Bloc<SavedDetailJobEvent, SavedDetailJobState> {
  SavedDetailJobBloc(SavedDetailJobState initialState) : super(initialState) {
    on<SavedDetailJobInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SavedDetailJobInitialEvent event,
    Emitter<SavedDetailJobState> emit,
  ) async {
    emit(state.copyWith(
        savedDetailJobModelObj: state.savedDetailJobModelObj?.copyWith(
            listclock1ItemList: fillListclock1ItemList(),
            listdescription1ItemList: fillListdescription1ItemList())));
  }

  List<Listclock1ItemModel> fillListclock1ItemList() {
    return List.generate(3, (index) => Listclock1ItemModel());
  }

  List<Listdescription1ItemModel> fillListdescription1ItemList() {
    return List.generate(3, (index) => Listdescription1ItemModel());
  }
}
