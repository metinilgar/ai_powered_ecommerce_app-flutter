# AI Powered E-commerce App - Flutter

An AI-based mobile application built with Flutter that provides personalized clothing recommendations by analyzing the user's profile picture. The app uses AI to predict gender and age and suggests clothing items accordingly, enhancing the shopping experience. This project integrates machine learning with Flutter to provide real-time, intelligent recommendations.

> The app connects to a backend AI model to analyze images, predict user characteristics, and recommend products. You can find the backend [API repository here]("").

## Features

- **User Authentication:** Sign up and log in.
- **Picture Analysis:** AI-driven analysis of the user's picture to predict gender and age.
- **Clothing Suggestions:** Personalized clothing recommendations based on the predicted age and gender.
- **Home Feed:** Displays recommended clothing items along with promotions and popular products.
- **Product Details:** View detailed information about products including sizes, colors, and prices.
- **Product Catalog:** View a list of products, search for items, and filter by categories.
- **Shopping Cart:** Add products to the shopping cart and manage items before checkout.
- **Responsive UI:** Adaptive layouts for different screen sizes.
- **State Management:** Utilizes Riverpod for efficient state management.
- **AI Model Integration:** Communicates with a backend API to process image data and provide predictions.

> This project is ideal for developers looking to explore AI-powered apps in Flutter, machine learning integration, and e-commerce app development.

## Dependencies
- [**Flutter Riverpod:**](https://riverpod.dev/) For state management.
- [**Dio:**](https://pub.dev/packages/dio) For handling HTTP requests.
- [**Shared Preferences:**](https://pub.dev/packages/shared_preferences) For storing simple data
- [**Image Picker:**](https://pub.dev/packages/image_picker) For select images from the image library and take new pictures with the camera

## Screenshots

Welcome Page (Light)       |  Welcome Page (Dark)      | Login Page (Light)        | Login Page (Dark) 
:-------------------------:|:-------------------------:|:-------------------------:|:-------------------------:
![]()|![]()|![]()|![]()

Signup Page (Light)        |  Signup Page (Dark)       | Home Page (Light)         | Home Page (Dark) 
:-------------------------:|:-------------------------:|:-------------------------:|:-------------------------:
![]()|![]()|![]()|![]()

Home Page Drawer (Light)   |  Home Page Drawer (Dark)  | Post Creation Page (Light)| Post Creation Page (Dark)  
:-------------------------:|:-------------------------:|:-------------------------:|:-------------------------:
![]()|![]()|![]()|![]()

Profile Page (Light)       |  Profile Page (Dark)      | Edit Profile Page (Light) | Edit Profile Page (Dark)  
:-------------------------:|:-------------------------:|:-------------------------:|:-------------------------:
![]()|![]()|![]()|![]()

## Requirements

- Flutter SDK
- Dart 2.0 or above
- Android Studio or Xcode for iOS
- [Back-end API.]()

## Installation

1. Clone the repository:
    ```bash
    git clone https://github.com/metinilgar/ai_powered_ecommerce_app-flutter.git
    ```
2. Navigate to the project directory:
    ```bash
    cd ai_powered_ecommerce_app-flutter
    ```
3. Install dependencies:
    ```bash
    flutter pub get
    ```
4. Run the app on an emulator or physical device:
    ```bash
    flutter run
    ```

## Usage

To explore the app, simply run it in your local environment using Flutter's run command. The app will provide you with an e-commerce experience. The app communicates with a backend AI model to process the image and provide predictions for gender and age. You can find the backend API repository here.

## Contribution
Contributions are welcome! If you have any ideas for improvements or find any bugs, please feel free to submit an issue or create a pull request.

To contribute:

1. Fork the repository.
2. Create a new branch:
    ```bash
    git checkout -b feature-branch
    ```
3. Commit your changes:
    ```bash
    git commit -m "Add new feature"
    ```
4. Push to the branch:
    ```bash
    git push origin feature-branch
    ```
5. Open a pull request.

## License

This project is licensed under the MIT License. See the [LICENSE](https://github.com/metinilgar/x-clone-flutter/blob/main/LICENSE) file for more details.

## Contact

If you have any questions or suggestions, feel free to reach out to me on [LinkedIn](https://www.linkedin.com/in/metinilgarmutlu/) or visit my [GitHub](https://github.com/metinilgar) profile for more projects.
