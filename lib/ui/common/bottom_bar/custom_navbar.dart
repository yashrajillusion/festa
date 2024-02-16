import 'dart:ui';
import 'package:festa/infrastructure/commons/constants/color_constant.dart';
import 'package:festa/infrastructure/commons/constants/image_constant.dart';
import 'package:festa/ui/screen/home_screen/home_bloc/home_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    super.key,
    required this.currentInd,
  });

  final int currentInd;

  @override
  Widget build(BuildContext context) {
    final List<Widget> navItems = [
      _buildNavIcon(ImageConstants.home, 0),
      _buildNavIcon(ImageConstants.explore, 1),
      _buildNavIcon(ImageConstants.ticketNav, 2),
      _buildAvatar()
    ];

    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return ClipRRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 50),
            child: Container(
              padding: const EdgeInsets.only(
                top: 12,
                left: 26,
                right: 26,
                bottom: 3,
              ),
              child: Container(
                  height: 46,
                  padding: const EdgeInsets.symmetric(horizontal: 18),
                  decoration: const BoxDecoration(
                    color: ColorConstants.grey900,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      for (int i = 0; i < navItems.length; i++) ...{
                        InkWell(
                          onTap: () {
                            context.read<HomeBloc>().add(UpdateNavBarIndex(i));
                          },
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 10,
                              ),
                              navItems[i],
                              const SizedBox(
                                height: 9,
                              ),
                              _navBottomLine(
                                i,
                              ),
                            ],
                          ),
                        )
                      },
                    ],
                  )),
            ),
          ),
        );
      },
    );
  }

  SvgPicture _buildNavIcon(String assetName, tabInd) {
    return SvgPicture.asset(
      assetName,
      color: currentInd == tabInd ? const Color(0xffFF1759) : null,
    );
  }

  Container _navBottomLine(int tabInd) {
    return Container(
      height: 2,
      width: 26,
      decoration: BoxDecoration(
        gradient: currentInd == tabInd
            ? const LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [Color(0xFFFF1759), Color(0xFFBF0036)],
              )
            : null,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(100),
          topRight: Radius.circular(100),
        ),
      ),
    );
  }

  Widget _buildAvatar() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: SizedBox(
        height: 24,
        child: Image.network(
          "https://s3-alpha-sig.figma.com/img/1f07/f85d/f4e9131dfbb5d832be5dd2fb2b7bc270?Expires=1708905600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=ANi6eZ0GqGrX8u2SeACml6dwc6FwY4G9WUTJtz-qGUlvm3FBJlthAiJZhww405mgwh-Ev5k20eCc49ADZDr6hEKe0zdcY1SE9hjhKKh6rHCVFkVde9dQfZ8uEMAAyftBy0JzkGdM1tylgkqeofbyQXjd3YhJ0e0xRXy9MmBPaq09v1FwB1efdWRMLfG28BZ6zLU7pG2clFttGjbWQdbd2q8sJk0h~udgHAjEebyrct4w~emLb~jQ3lCIpVEuvUx5oGu3IjIPbOCSznFNCb0rrI~VY9tUp3CZfV2zbeJlYANaUyLYE2FIvV5oJ6yhb6xbyI7aYJyTvUX~UQ2TwaAkGg__",
          fit: BoxFit.cover,
          errorBuilder: (context, error, stackTrace) {
            return const CircleAvatar();
          },
        ),
      ),
    );
  }
}
