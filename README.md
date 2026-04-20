# Facebook Clone UI 📱

A high-fidelity social media interface built with **Flutter**. This project focuses on advanced UI components, modular widget architecture, and robust form validation.

## ✨ Key Features

- **Form Validation:** Uses Regular Expressions to validate email formats and password complexity.
- **Dynamic Story System:** A custom implementation of horizontal `ListViews` with unique "Create" and "View" story cards.
- **Tab-Based Navigation:** A 6-tab interface utilizing `TabController` for smooth swiping and navigation.
- **Modular Architecture:** Decoupled data models (`StoryData`) and reusable UI widgets (`ViewStoryWidget`).
- **Named Routing:** Centralized navigation management for clean code transitions.

## 🛠️ Technology Stack

- **Framework:** Flutter
- **Language:** Dart
- **Design:** Material Design 3
- **Layouts:** Stack, Positioned, SingleChildScrollView, GridView

## 📂 Project Structure

| Directory/File | Responsibility |
| :--- | :--- |
| `lib/models/` | Data blueprints like `StoryData`. |
| `lib/widgets/` | Reusable UI components (Story cards, Post items). |
| `lib/screens/` | Full-page layouts (Login, Home). |
| `main.dart` | App initialization and Named Routes config. |

## 🎬 App Demo

<p align="center">
  <img src="assets\app_demo" alt="Facebook Clone Demo" width="300">
</p>

## 🚀 Installation

1. **Clone the repo:**
   ```bash
   git clone [https://github.com/Jana-Abdelwahed/facebook_clone.git](https://github.com/Jana-Abdelwahed/facebook_clone.git)
