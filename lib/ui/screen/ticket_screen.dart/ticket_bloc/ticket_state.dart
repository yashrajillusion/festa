part of 'ticket_bloc.dart';

enum TicketTabEnum { upcoming, history }

class TicketState extends Equatable {
  final TicketTabEnum ticketTab;

  const TicketState({required this.ticketTab});

  TicketState copyWith({TicketTabEnum? ticketTab}) {
    return TicketState(ticketTab: ticketTab ?? this.ticketTab);
  }

  @override
  List<Object> get props => [ticketTab];
}
