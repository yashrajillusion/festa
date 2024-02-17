import 'package:festa/ui/screen/ticket_screen.dart/ticket_bloc/ticket_bloc.dart';
import 'package:festa/ui/screen/ticket_screen.dart/widget/ticket_details.dart';
import 'package:festa/ui/screen/ticket_screen.dart/widget/ticket_history.dart';
import 'package:flutter/material.dart';
import 'package:festa/ui/common/button_widget/primary_button.dart';
import 'package:festa/ui/common/text_widget/festa_text.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: BlocConsumer<TicketBloc, TicketState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Column(
            children: [
              const Center(
                child: FestaText(
                  title: "Your tickets",
                  fontSize: 34,
                  fontWeight: FontWeight.w600,
                  titleTextAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 22),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomButton(
                    onClick: () {
                      context
                          .read<TicketBloc>()
                          .add(const SwitchTicketTab(TicketTabEnum.upcoming));
                    },
                    isPrimary: state.ticketTab == TicketTabEnum.upcoming,
                    title: "Upcoming",
                  ),
                  const SizedBox(width: 4),
                  CustomButton(
                    onClick: () {
                      context
                          .read<TicketBloc>()
                          .add(const SwitchTicketTab(TicketTabEnum.history));
                    },
                    isPrimary: state.ticketTab == TicketTabEnum.history,
                    title: "History",
                  ),
                ],
              ),
              const SizedBox(height: 20),
              state.ticketTab == TicketTabEnum.upcoming
                  ? const TicketDetails()
                  : const TicketHistory(),
            ],
          );
        },
      ),
    );
  }
}
