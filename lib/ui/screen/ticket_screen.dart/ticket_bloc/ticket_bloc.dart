import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'ticket_event.dart';
part 'ticket_state.dart';

class TicketBloc extends Bloc<TicketEvent, TicketState> {
  TicketBloc() : super(const TicketState(ticketTab: TicketTabEnum.upcoming)) {
    on<SwitchTicketTab>(_switchTicketTab);
  }

  void _switchTicketTab(SwitchTicketTab event, Emitter<TicketState> emit) {
    emit(
      state.copyWith(ticketTab: event.ticketTab),
    );
  }
}
