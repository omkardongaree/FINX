import 'package:flutter/material.dart';
import 'add_manual_account_page.dart';
import 'connected_accounts_page.dart';
import 'create_saving_goal_page.dart';
import 'welcome_page.dart';
import 'login_page.dart';
import 'create_acc_page.dart';
import 'forget_pass_page.dart';
import 'add_accounts_page.dart';
import 'home_page.dart';
import 'account_page.dart';
import 'transactions_page.dart';// Import AccountsPage file // Your SpendingPlanPage file
import 'income_bill_page.dart';
import 'bill_payment_page.dart';
import 'notification_page.dart';
import 'setting_page.dart';
import 'investment_page.dart';
import 'chatbot_page.dart';
import 'profile_setting_page.dart';
import 'security_setting_page.dart';
import 'notification_setting_page.dart';
import 'financial_pref_page.dart';
import 'app_setting_page.dart';
import 'privacy_setting_page.dart';
import 'help_support_page.dart';
import 'about_page.dart';
import 'add_bank_page.dart';
import 'help_support_page.dart';
import 'live_chat_page.dart';
import 'email_support_page.dart';
import 'phone_support_page.dart';
import 'account_issues_page.dart';
import 'security_concerns_page.dart';
import 'payment_problems_page.dart';
import 'send_feedback_page.dart';
import 'privacy_policy_page.dart';
import 'terms_of_service.dart';
import 'notification_preferences.dart';
import 'change_password_page.dart';
import 'two_factor_authentication.dart';
import 'two_step_auth_page.dart';
import 'family_page.dart';
import 'recent_transaction.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Navigation Demo',
      initialRoute: '/login',
      routes: {
        '/login': (context) => LoginPage(),
        '/create-account': (context) => CreateAccountPage(),
        '/forgot-password': (context) => ForgotPasswordPage(),
        '/add_accounts_page':(context) => AddAccountsPage(),
        '/add_manual_account_page':(context) => AddManualAccountPage(),
        '/connected_accounts_page':(context) => ConnectedAccountsPage (),
        '/home_page':(context) => HomePage (),
        '/account_page': (context) => AccountsPage(),
        '/transactions_page': (context) => TransactionsPage(),

        '/income_bill_page': (context) => IncomeAfterBillPage(),

        '/create_saving_goal_page': (context) => CreateGoalPage(),
        '/bill_payment_page': (context) => BillPaymentPage (),
        '/notification_page': (context) => NotificationPage (),
        '/setting_page': (context) => SettingsPage (),
        '/investment_page': (context) => InvestmentPage (),
        '/chatbot_page': (context) => ChatbotPage (),
        '/profile_setting_page': (context) => ProfileSettingsPage (),
        '/security_setting_page':(context) => SecuritySettingsPage (),
        '/notification_setting_page':(context) => NotificationSettingsPage (),
        '/financial_pref_page':(context) => FinancialPreferencesPage (),
        '/app_setting_page':(context) => AppSettingsPage(),
        '/privacy_setting_page':(context) => PrivacySettingsPage(),
        '/help_support_page':(context) => HelpSupportPage(),
        '/about_page':(context) => AboutPage(),
        '/add_bank_page':(context) => ChooseBankPage(),
        '/live_chat_page': (context) => LiveChatPage(),
        '/email_support_page': (context) => EmailSupportPage(),
        '/phone_support_page': (context) => PhoneSupportPage(),
        '/account_issues_page': (context) => AccountIssuesPage(),
        '/security_concerns_page': (context) => SecurityConcernsPage(),
        '/payment_problems_page': (context) => PaymentProblemsPage(),
        '/send_feedback_page': (context) => SendFeedbackPage(),
        '/privacy_policy_page': (context) => PrivacyPolicyPage(),
        '/terms_of_service': (context) => TermsOfServicePage(),
        '/notification_preferences': (context) => NotificationPreferencesPage(),
        '/change_password_page': (context) => ChangePasswordPage(),
        '/two_factor_authentication': (context) => TwoFactorAuthenticationPage(),
        '/two_step_auth_page': (context) => TwoStepAuthPage(),
        '/family_page': (context) => FamilyPage(),
        '/recent_transaction': (context) => RecentTransactionsPage(),





      },
    );
  }
}