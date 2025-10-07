import 'package:flutter/material.dart';
import 'button.dart';
import '../properties/color.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
        color: CocoColors.primaryColor,
      ),
      padding: EdgeInsets.fromLTRB(26, 28, 26, 26),
      child: Column(
        spacing: 22,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                spacing: 10,
                children: [
                  Icon(Icons.location_on_outlined, color: Colors.white),
                  DropdownMenu(
                    dropdownMenuEntries: [
                      DropdownMenuEntry(
                        value: 'nagoya',
                        label: 'Nagoya, Japan 🇯🇵',
                      ),
                      DropdownMenuEntry(
                        value: 'tokyo',
                        label: 'Tokyo, Japan 🇯🇵',
                      ),
                      DropdownMenuEntry(
                        value: 'hiroshima',
                        label: 'Hiroshima, Japan 🇯🇵',
                      ),
                    ],
                    menuStyle: MenuStyle(
                      padding: WidgetStatePropertyAll(
                        EdgeInsetsGeometry.symmetric(vertical: 0),
                      ),
                    ),
                    inputDecorationTheme: InputDecorationTheme(
                      border: InputBorder.none,
                      suffixIconColor: Colors.white,
                    ),
                    label: Text(
                      'Location',
                      style: TextStyle(color: Colors.white),
                    ),
                    textStyle: TextStyle(color: Colors.white),
                  ),
                ],
              ),
              CocoButton(icon: Icons.notifications_active_outlined),
            ],
          ),
          Row(
            spacing: 10,
            children: [
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hint: Row(
                      spacing: 5,
                      children: [
                        Icon(
                          Icons.search_rounded,
                          color: CocoColors.secondaryTextColor,
                        ),
                        Text(
                          'Search',
                          style: TextStyle(
                            color: CocoColors.secondaryTextColor,
                          ),
                        ),
                      ],
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide.none,
                    ),
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 12,
                    ),
                    isDense: true,
                  ),
                ),
              ),
              CocoButton(icon: Icons.format_list_bulleted_rounded),
            ],
          ),
        ],
      ),
    );
  }
}
