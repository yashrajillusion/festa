part of 'ticket_bloc.dart';

@immutable
abstract class TicketEvent extends Equatable {
  const TicketEvent();

  @override
  List<Object?> get props => [];
}

class SwitchTicketTab extends TicketEvent {
  final TicketTabEnum ticketTab;

  const SwitchTicketTab(this.ticketTab);

  @override
  List<Object?> get props => [ticketTab];
}
