# Car Rental UI - Flutter App

A beautifully designed car rental application built with Flutter. This app follows the principles of **Clean Architecture**, supports both **Light and Dark Mode**, and utilizes **Cubit** for state management along with **GetIt** for dependency injection.

## ✨ Features

- 🚗 Modern and sleek car rental UI
- 🌗 Light and Dark mode compatibility
- 🏗️ Clean Architecture principles
- 🔄 State management using **Cubit** (located in `lib/presentation/blocs`)
- 🔧 **GetIt** service locator for dependency management
- 📂 Well-structured project files for scalability

## 📂 Project Structure

The project follows a modular and scalable architecture:

```
lib/
├── data/           # Data layer (Repositories, APIs, Models, etc.)
├── domain/         # Business logic layer (Use Cases, Entities, etc.)
├── presentation/   # UI layer (Screens, Widgets, Blocs)
│   ├── blocs/      # State management (Cubit)
├── utils/          # Helper functions, constants, and utilities
├── main.dart       # Entry point of the application
```

## 🚀 Getting Started

1. **Clone the repository:**
   ```sh
   git clone https://github.com/yourusername/car_rental_ui.git
   cd car_rental_ui
   ```
2. **Install dependencies:**
   ```sh
   flutter pub get
   ```
3. **Run the app:**
   ```sh
   flutter run
   ```

## 📸 Screenshots

### Light Mode
![Screenshot 2025-02-12 at 3 55 55 PM](https://github.com/user-attachments/assets/197cba82-a794-436e-b9de-39a6fac11c5c)
![Screenshot 2025-02-12 at 3 57 02 PM](https://github.com/user-attachments/assets/c68623dd-0198-4ff2-8c43-46a2fd3a334a)

### Dark Mode
![Screenshot 2025-02-12 at 3 58 48 PM](https://github.com/user-attachments/assets/728f3d39-c967-4031-b56a-0f659e2734ee)
![Screenshot 2025-02-12 at 3 59 37 PM](https://github.com/user-attachments/assets/67b513cf-ea92-4598-879e-634bfbc3434a)
![Screenshot 2025-02-12 at 4 00 18 PM](https://github.com/user-attachments/assets/ac8a47bd-0186-41df-a07d-096e3700db1f)

## 🛠️ Technologies Used

- **Flutter** (Dart)
- **Cubit (Flutter Bloc)** for state management
- **GetIt** for service locator pattern

## 🤝 Contributing

Contributions are welcome! Feel free to fork the repository, open an issue, or submit a pull request.
---

UI Design inspiration from Dribble ([https://dribbble.com/shots/25394736-Car-Rental-Application](https://dribbble.com/shots/25394736-Car-Rental-Application))

