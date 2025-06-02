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

<<<<<<< HEAD

- **May 26, 2025**  
  Initialized Flutter project and added base `main.dart` with app shell.

- **May 27, 2025**  
  Created basic login screen (`auth_page.dart`) UI without logic.

- **May 28, 2025**  
=======
- **Day 1 : May 26, 2025** 
  Initialized Flutter project and added base `main.dart` with app shell.

- **Day 2 : May 27, 2025**  
  Created basic login screen (`auth_page.dart`) UI without logic.

- **Day 3 : May 28, 2025**  
>>>>>>> bd5681e97bdf40c7029ad2c4f30494e7232955e3
  Integrated Supabase initialization into `main.dart`.  
  Implemented `EntryPage` logic to check current user session and route to `AuthPage` or `HomePage` accordingly.  
  Ensured smooth navigation based on login state using Supabase session management.

<<<<<<< HEAD
- **May 29, 2025**
=======
- **Day 4 : May 29, 2025**
>>>>>>> bd5681e97bdf40c7029ad2c4f30494e7232955e3
  Created `sign_up_page.dart` with fields for username, email, and password.
  Integrated Supabase sign-up functionality using `auth.signUp()`.
  Inserted user details into `profiles` table after registration.
  Redirected to email verification page on success.
  Implemented error handling and loading state management.

<<<<<<< HEAD
  
=======
- **Day 5 : May 30, 2025**
  Implemented `verify_email_page.dart` with static UI showing instructions.
  Updated `auth_page.dart` to add login functionality using Supabase.
  Checked `user.emailConfirmedAt` before routing to home page.
  Added loading indicator and error snackbars.
  Enabled navigation to Sign Up page for new users.

- **Day 6 : May 31, 2025**
  Created `home_page.dart` UI layout with deep purple theme.
  Added dashboard layout showing:
     Welcome message
     Total distance traveled (hardcoded)
     Start/Stop tracking buttons (disabled)
     "Submit DPR" button (opens external link)
  Set up reusable UI structure with material design cards and rounded buttons.

- **Day 7 : June 1, 2025**
    Fixing App crash 

- **Day 8 : June 2, 2025**
  Enabled start/stop tracking logic in `home_page.dart`.
  Integrated `LocationServiceController` to fetch real-time location.
  Added initial background tracking logic using `Geolocator`.
  Logged start/stop status locally.

>>>>>>> bd5681e97bdf40c7029ad2c4f30494e7232955e3

