📝 README.md
🧩 Flutter Task Board App

A clean and modular Flutter Task Management App  built using BLoC (Cubit) and Freezed, following Clean Architecture principles.  
This app visually organizes tasks into three categories — To Do, In Progress, and Completed.

✨ Features

- 📋 Three Task Columns: To Do, In Progress, and Completed
- 🔄 Move tasks across categories using checkbox toggles
- ➕ Add new tasks via a dialog with title, description, and type
- 🖊️ Edit or view tasks by tapping on a task card
- 🧹 Validation ensures title is required before saving
- 🧠 Optimized with `BlocSelector` so only the affected section rebuilds
- 🧱 Clean architecture (Domain → Data → Presentation layers)
- 📱 Horizontally scrollable layout for a spacious board view
- 🧪 “Load Dummy Data” button to populate sample tasks
- 🔔 Toast messages for alerts and confirmations

🧩 App Architecture

The project follows a **Clean Architecture** pattern:

lib/
 ├── data/
 ├── domain/
 │ ├── entities/
 │ │ └── task.dart
 │ └── repositories/
 │ └── task_repository.dart
 │    └── task_repository_impl.dart // Singleton pattern
 ├── presentation/
 │ ├── cubit/
 │ │ ├── tasks_cubit.dart
 │ │ ├── tasks_state.dart
 │ │ └── task_list_state.dart
 │ ├── widgets/
 │ │ ├── task_card.dart
 │ │ └── task_dialog.dart
 │ └── pages/
 │ └── home_page.dart
 │
 └── main.dart

✅ Each layer is independent:  
- Domain — business models and abstract repositories  
- Data — concrete implementations and local data  
- Presentation — UI + state management (Cubit + Freezed)


 ⚙️ Packages Used

| Package | Usage |
|----------|--------|
| flutter_bloc | State management using Cubit |
| freezed | Immutable models & state unions |
| build_runner | Code generation for Freezed |
| fluttertoast | Simple in-app toast notifications |


🚀 How to Run
Clone this repository

 git clone https://github.com/suleman2802/demo_task.git
cd demo_task
Install dependencies
 flutter pub get
Run code generation (for Freezed)
 flutter pub run build_runner build --delete-conflicting-outputs
Run the app
 flutter Run

🧠 How It Works
On startup, the app initializes the TasksCubit with empty lists.


Press "Load Dummy Data" on the AppBar to populate some sample tasks.


You can:

✅ Toggle a task’s checkbox to move it across categories.
🖊️ Tap a card to open the edit/view dialog.
➕ Press the Add (+) FAB to add a new task.

Title field is required before saving or updating a task.
All state transitions are handled by a single Cubit with three sub-states — one for each category.
UI sections rebuild selectively using BlocSelector.


💾 Singleton Repository Pattern
The TaskRepositoryImpl follows a Singleton pattern to ensure only one instance is used across the app.
This makes it lightweight, testable, and DI-friendly.

💬 Toast Alerts
All user notifications (like success, errors, etc.) are displayed using FlutterToast for non-intrusive UX.

🧑‍💻 Author
Suleman Ahmad
 💼 Flutter Developer | Clean Architecture Enthusiast
 📧 bhattisuleman2002@gmail.com
 🔗 LinkedIn | GitHub


