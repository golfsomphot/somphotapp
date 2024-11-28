import 'package:flutter/material.dart';
import 'package:settings_ui/settings_ui.dart';
import 'package:somphotapp/screen/login.dart';

class Setting extends StatefulWidget {
  const Setting({required this.onLogout});
  final Function onLogout; // รับฟังก์ชันออกจากระบบ

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Setting',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SettingsList(
        sections: [
          SettingsSection(
            tiles: <SettingsTile>[
              SettingsTile.navigation(
                leading: Icon(Icons.language),
                title: Text('Language'),
                value: Text('English'),
              ),
              SettingsTile.switchTile(
                onToggle: (value) {},
                initialValue: true,
                leading: Icon(Icons.format_paint),
                title: Text('Enable custom theme'),
              ),
            ],
          ),
          SettingsSection(
            tiles: <SettingsTile>[
              SettingsTile.switchTile(
                onToggle: (value) {},
                initialValue: true,
                leading: Icon(Icons.format_paint),
                title: Text('Enable custom theme'),
              ),
              SettingsTile.switchTile(
                onToggle: (value) {},
                initialValue: true,
                leading: Icon(Icons.format_paint),
                title: Text('Enable custom theme'),
              ),
              SettingsTile.navigation(
                leading: Icon(Icons.outbond_outlined),
                title: Text('Logout'),
                onPressed: (context) {
                  widget.onLogout();
                },
              ),
            ],
          ),
          SettingsSection(
            tiles: <SettingsTile>[
              SettingsTile.switchTile(
                onToggle: (value) {},
                initialValue: true,
                leading: Icon(Icons.format_paint),
                title: Text('Enable custom theme'),
              ),
              SettingsTile.switchTile(
                onToggle: (value) {},
                initialValue: true,
                leading: Icon(Icons.format_paint),
                title: Text('Enable custom theme'),
              ),
              SettingsTile.navigation(
                leading: Icon(Icons.outbond_outlined),
                title: Text('Logout'),
                onPressed: (context) {
                  widget.onLogout();
                },
              ),
            ],
          ),
          SettingsSection(
            tiles: <SettingsTile>[
              SettingsTile.switchTile(
                onToggle: (value) {},
                initialValue: true,
                leading: Icon(Icons.format_paint),
                title: Text('Enable custom theme'),
              ),
              SettingsTile.switchTile(
                onToggle: (value) {},
                initialValue: true,
                leading: Icon(Icons.format_paint),
                title: Text('Enable custom theme'),
              ),
              SettingsTile.navigation(
                leading: Icon(Icons.outbond_outlined),
                title: Text('Logout'),
                onPressed: (context) {
                  widget.onLogout();
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
