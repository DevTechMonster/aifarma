// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../authentication/provider/auth_providers.dart';
import '../../shared/utils/extensions.dart';
import '../../shared/components/app_dialog.dart';

class SettingsScreen extends HookConsumerWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notificationsEnabled = useState(true);
    final darkModeEnabled = useState(false);
    final selectedLanguage = useState('English');

    void showLanguageDialog() {
      AppDialog.show(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('Select Language'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                title: const Text('English'),
                leading: Radio<String>(
                  value: 'English',
                  groupValue: selectedLanguage.value,
                  onChanged: (value) {
                    selectedLanguage.value = value!;
                    context.navigator.pop();
                  },
                ),
                onTap: () {
                  selectedLanguage.value = 'English';
                  context.navigator.pop();
                },
              ),
              ListTile(
                title: const Text('Español'),
                leading: Radio<String>(
                  value: 'Español',
                  groupValue: selectedLanguage.value,
                  onChanged: (value) {
                    selectedLanguage.value = value!;
                    context.navigator.pop();
                  },
                ),
                onTap: () {
                  selectedLanguage.value = 'Español';
                  context.navigator.pop();
                },
              ),
              ListTile(
                title: const Text('Français'),
                leading: Radio<String>(
                  value: 'Français',
                  groupValue: selectedLanguage.value,
                  onChanged: (value) {
                    selectedLanguage.value = value!;
                    context.navigator.pop();
                  },
                ),
                onTap: () {
                  selectedLanguage.value = 'Français';
                  context.navigator.pop();
                },
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
        leading: IconButton(
          onPressed: () => context.go('/home'),
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          const Text(
            'Preferences',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),
          Card(
            child: Column(
              children: [
                SwitchListTile(
                  title: const Text('Notifications'),
                  subtitle: const Text('Receive push notifications'),
                  value: notificationsEnabled.value,
                  onChanged: (value) {
                    notificationsEnabled.value = value;
                  },
                ),
                const Divider(),
                SwitchListTile(
                  title: const Text('Dark Mode'),
                  subtitle: const Text('Enable dark theme'),
                  value: darkModeEnabled.value,
                  onChanged: (value) {
                    darkModeEnabled.value = value;
                    context.scaffoldMessenger.showSnackBar(
                      const SnackBar(content: Text('Dark mode feature coming soon!')),
                    );
                  },
                ),
                const Divider(),
                ListTile(
                  title: const Text('Language'),
                  subtitle: Text(selectedLanguage.value),
                  trailing: const Icon(Icons.arrow_forward_ios),
                  onTap: showLanguageDialog,
                ),
              ],
            ),
          ),
          const SizedBox(height: 24),
          const Text(
            'Account',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),
          Card(
            child: Column(
              children: [
                ListTile(
                  title: const Text('Privacy Policy'),
                  trailing: const Icon(Icons.arrow_forward_ios),
                  onTap: () {
                    context.scaffoldMessenger.showSnackBar(
                      const SnackBar(content: Text('Privacy policy feature coming soon!')),
                    );
                  },
                ),
                const Divider(),
                ListTile(
                  title: const Text('Terms of Service'),
                  trailing: const Icon(Icons.arrow_forward_ios),
                  onTap: () {
                    context.scaffoldMessenger.showSnackBar(
                      const SnackBar(content: Text('Terms of service feature coming soon!')),
                    );
                  },
                ),
                const Divider(),
                ListTile(
                  title: const Text('About'),
                  trailing: const Icon(Icons.arrow_forward_ios),
                  onTap: () {
                    AppDialog.showAbout(
                      context: context,
                      applicationName: 'AiFarma',
                      applicationVersion: '1.0.0',
                      applicationLegalese: '© 2024 AiFarma. All rights reserved.',
                    );
                  },
                ),
              ],
            ),
          ),
          const SizedBox(height: 24),
          Card(
            child: ListTile(
              title: const Text(
                'Logout',
                style: TextStyle(color: Colors.red),
              ),
              leading: const Icon(Icons.logout, color: Colors.red),
              onTap: () async {
                final shouldLogout = await AppDialog.showConfirmation(
                  context: context,
                  title: 'Logout',
                  message: 'Are you sure you want to logout?',
                );

                if (shouldLogout ?? false) {
                  await ref.read(authProvider.notifier).logout();
                  if (context.mounted) {
                    context.go('/login');
                  }
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}