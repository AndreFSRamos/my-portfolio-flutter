// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../Controller/controller_responsive.dart';
import '../../Core/core.dart';
import '../../Model/content_site.dart';
import '../../Model/dimensions_site.dart';
import 'dart:html' as html;
import '../../Widgets/custom_buttom.dart';
import '../../Widgets/custom_divider.dart';

class FooterPage extends StatelessWidget {
  const FooterPage({super.key, required this.index});
  final GlobalKey index;

  @override
  Widget build(BuildContext context) {
    _templateIcons(String link, String desc, String pathIcon) {
      return InkWell(
        onTap: (() => html.window.open(link, desc)),
        child: Image.asset(pathIcon),
      );
    }

    Future<void> _launchUrl() async {
      if (!await launchUrl(
          Uri.parse("mailto:dev.andreramos@andrefsramos.tech"))) {
        throw 'Could not launch ';
      }
    }

    _listIcon() {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _templateIcons(
            AppStrings.linkFacebook,
            AppStrings.descriptionLinkBFacebook,
            AppStrings.iconFacebook,
          ),
          const SizedBox(width: 10),
          _templateIcons(
            AppStrings.linkGitHub,
            AppStrings.descriptionLinkGitHUb,
            AppStrings.iconGitHub,
          ),
          const SizedBox(width: 10),
          _templateIcons(
            AppStrings.linkIn,
            AppStrings.descriptionIN,
            AppStrings.iconIn,
          ),
          const SizedBox(width: 10),
          _templateIcons(
            AppStrings.linkInsta,
            AppStrings.descriptionLinkInstagram,
            AppStrings.iconInstagram,
          ),
        ],
      );
    }

    _title() {
      return FittedBox(
        child: SelectableText(
          "Contato",
          style: TextStyle(
            color: AppColors.labelColorWhite,
            fontSize: AppDimensions.h6,
          ),
        ),
      );
    }

    _title2() {
      return FittedBox(
        child: SelectableText(
          "Me siga nas redes sociais",
          style: TextStyle(
            color: AppColors.labelColorWhite,
            fontSize: AppDimensions.h6,
          ),
        ),
      );
    }

    _email() {
      return GestureDetector(
        onTap: _launchUrl,
        child: FittedBox(
          child: Row(
            children: [
              Icon(
                Icons.email_rounded,
                size: AppDimensions.h6,
                color: AppColors.labelColorWhite,
              ),
              const SizedBox(width: 10),
              Text(
                AppStrings.myEmail,
                style: TextStyle(
                  color: AppColors.labelColorWhite,
                  fontSize: AppDimensions.labels,
                ),
              ),
            ],
          ),
        ),
      );
    }

    _phone() {
      return FittedBox(
        child: Row(
          children: [
            Icon(
              Icons.phone_enabled_rounded,
              size: AppDimensions.h6,
              color: AppColors.labelColorWhite,
            ),
            const SizedBox(width: 10),
            SelectableText(
              AppStrings.myPhoneNumber,
              style: TextStyle(
                color: AppColors.labelColorWhite,
                fontSize: AppDimensions.labels,
              ),
            ),
          ],
        ),
      );
    }

    _buttonWhats() {
      return FittedBox(
        child: CustomButtom(
          function: () => html.window.open(
              AppStrings.linkBtWhatsapp, AppStrings.descriptionLinkBtWhatsapp),
          label: "WhatsApp",
          background: AppColors.primaryColor,
          colorLabel: AppColors.labelColorWhite,
          sizefont: AppDimensions.h6,
        ),
      );
    }

    _director() {
      return FittedBox(
        child: SelectableText(
          "© 2023 André Felipe da Silva Ramos",
          style: TextStyle(
            color: AppColors.labelColorWhite,
            fontSize: AppDimensions.labels,
          ),
        ),
      );
    }

    _prodFor() {
      return FittedBox(
        child: SelectableText(
          "Desenvolvido por André Ramos ",
          style: TextStyle(
            color: AppColors.labelColorWhite,
            fontSize: AppDimensions.labels,
          ),
        ),
      );
    }

    _logo() {
      return Container(
        height: 80,
        width: 80,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/logo.png"), fit: BoxFit.contain),
        ),
      );
    }

    _name() {
      return FittedBox(
        child: SelectableText(
          "André Ramos",
          style: TextStyle(
            color: AppColors.primaryColor,
            fontSize: AppDimensions.h5,
            fontFamily: AppStrings.robotoBold,
          ),
        ),
      );
    }

    return Container(
      key: index,
      padding: !Responsive.isDesktop(context)
          ? AppDimensions.paddingMobileAndTable
          : AppDimensions.paddingDesktop,
      color: AppColors.backgroundContainerHome,
      width: MediaQuery.of(context).size.width,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30),
          child: SizedBox(
            width: AppDimensions.widthPageMax,
            height: Responsive.isMobile(context) ? 400 : 170,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Responsive.isMobile(context)
                    ? Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FittedBox(
                                child: Column(
                                  children: [_logo(), _name()],
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 30),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const FittedBox(child: CustomDivider()),
                                  const SizedBox(height: 5),
                                  _title(),
                                  const SizedBox(height: 10),
                                  _email(),
                                  const SizedBox(height: 5),
                                  _phone(),
                                  const SizedBox(height: 10),
                                  _buttonWhats(),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(height: 30),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const FittedBox(child: CustomDivider()),
                                  const SizedBox(height: 5),
                                  _title2(),
                                  const SizedBox(height: 10),
                                  _listIcon(),
                                ],
                              ),
                            ],
                          )
                        ],
                      )
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            children: [_logo(), _name()],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const CustomDivider(),
                              const SizedBox(height: 5),
                              _title(),
                              const SizedBox(height: 10),
                              _email(),
                              const SizedBox(height: 5),
                              _phone(),
                              const SizedBox(height: 10),
                              _buttonWhats(),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const FittedBox(child: CustomDivider()),
                              const SizedBox(height: 5),
                              _title2(),
                              const SizedBox(height: 10),
                              _listIcon(),
                            ],
                          )
                        ],
                      ),
                Responsive.isMobile(context)
                    ? Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          _director(),
                          _prodFor(),
                        ],
                      )
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          _director(),
                          _prodFor(),
                        ],
                      ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
