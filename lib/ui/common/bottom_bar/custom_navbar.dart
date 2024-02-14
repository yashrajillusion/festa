import 'dart:ui';

import 'package:festa/infrastructure/commons/constants/color_constant.dart';
import 'package:festa/infrastructure/commons/constants/image_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    super.key,
    required this.currentInd,
  });

  final int currentInd;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 50),
        child: Container(
          padding: EdgeInsets.only(
            top: 12,
            left: 26,
            right: 26,
            bottom: 3,
          ),
          child: Container(
              height: 46,
              padding: EdgeInsets.symmetric(horizontal: 18),
              decoration: BoxDecoration(
                color: ColorConstants.grey900,
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      SvgPicture.asset(ImageConstants.home,
                          color: currentInd == 0 ? Color(0xffFF1759) : null),
                      SizedBox(
                        height: 9,
                      ),
                      Container(
                        height: 2,
                        width: 26,
                        decoration: BoxDecoration(
                          gradient: currentInd == 0
                              ? LinearGradient(
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                  colors: [
                                    Color(0xFFFF1759),
                                    Color(0xFFBF0036)
                                  ],
                                )
                              : null,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(100),
                            topRight: Radius.circular(100),
                          ),
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      SvgPicture.asset(ImageConstants.explore,
                          color: currentInd == 1 ? Color(0xffFF1759) : null),
                      SizedBox(
                        height: 9,
                      ),
                      Container(
                        height: 2,
                        width: 26,
                        decoration: BoxDecoration(
                          gradient: currentInd == 1
                              ? LinearGradient(
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                  colors: [
                                    Color(0xFFFF1759),
                                    Color(0xFFBF0036)
                                  ],
                                )
                              : null,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(100),
                            topRight: Radius.circular(100),
                          ),
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      SvgPicture.asset(
                        ImageConstants.ticketNav,
                        color: currentInd == 2 ? Color(0xffFF1759) : null,
                      ),
                      SizedBox(
                        height: 9,
                      ),
                      Container(
                        height: 2,
                        width: 26,
                        decoration: BoxDecoration(
                          gradient: currentInd == 2
                              ? LinearGradient(
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                  colors: [
                                    Color(0xFFFF1759),
                                    Color(0xFFBF0036)
                                  ],
                                )
                              : null,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(100),
                            topRight: Radius.circular(100),
                          ),
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: SizedBox(
                          height: 24,
                          child: Image.network(
                            "https://s3-alpha-sig.figma.com/img/1f07/f85d/f4e9131dfbb5d832be5dd2fb2b7bc270?Expires=1708905600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=ANi6eZ0GqGrX8u2SeACml6dwc6FwY4G9WUTJtz-qGUlvm3FBJlthAiJZhww405mgwh-Ev5k20eCc49ADZDr6hEKe0zdcY1SE9hjhKKh6rHCVFkVde9dQfZ8uEMAAyftBy0JzkGdM1tylgkqeofbyQXjd3YhJ0e0xRXy9MmBPaq09v1FwB1efdWRMLfG28BZ6zLU7pG2clFttGjbWQdbd2q8sJk0h~udgHAjEebyrct4w~emLb~jQ3lCIpVEuvUx5oGu3IjIPbOCSznFNCb0rrI~VY9tUp3CZfV2zbeJlYANaUyLYE2FIvV5oJ6yhb6xbyI7aYJyTvUX~UQ2TwaAkGg__",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 9,
                      ),
                      Container(
                        height: 2,
                        width: 26,
                        decoration: BoxDecoration(
                          gradient: currentInd == 3
                              ? LinearGradient(
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                  colors: [
                                    Color(0xFFFF1759),
                                    Color(0xFFBF0036)
                                  ],
                                )
                              : null,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(100),
                            topRight: Radius.circular(100),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
