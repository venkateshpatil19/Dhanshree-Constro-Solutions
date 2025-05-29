# location_module

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.


- **May 26, 2025**  
  Initialized Flutter project and added base `main.dart` with app shell.

- **May 27, 2025**  
  Created basic login screen (`auth_page.dart`) UI without logic.

- **May 28, 2025**  
  Integrated Supabase initialization into `main.dart`.  
  Implemented `EntryPage` logic to check current user session and route to `AuthPage` or `HomePage` accordingly.  
  Ensured smooth navigation based on login state using Supabase session management.

- **May 29, 2025**
  Created `sign_up_page.dart` with fields for username, email, and password.
  Integrated Supabase sign-up functionality using `auth.signUp()`.
  Inserted user details into `profiles` table after registration.
  Redirected to email verification page on success.
  Implemented error handling and loading state management.

  

