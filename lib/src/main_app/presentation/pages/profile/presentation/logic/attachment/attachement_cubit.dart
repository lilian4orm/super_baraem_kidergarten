import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:super_baraem_kidergarten/src/core/enums/genaric_enums.dart';
import 'package:super_baraem_kidergarten/src/core/network/data_state.dart';

part 'attachement_cubit.freezed.dart';
part 'attachement_state.dart';

class AttachementCubit extends Cubit<AttachementState> {
  AttachementCubit() : super(const AttachementState.initial());
}
