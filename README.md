# AI Powered E-commerce App - Flutter

An AI-based mobile application built with Flutter that provides personalized clothing recommendations by analyzing the user's profile picture. The app uses AI to predict gender and age and suggests clothing items accordingly, enhancing the shopping experience. This project integrates machine learning with Flutter to provide real-time, intelligent recommendations.

> The app connects to a backend AI model to analyze images, predict user characteristics, and recommend products. You can find the backend [API repository here](https://github.com/MASalmanss/Images-and-Combinations).

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

Login Screen (Light)       |  Login Screen (Dark)      | Signup Screen (Light)      | Signup Screen (Dark)
:-------------------------:|:-------------------------:|:-------------------------:|:-------------------------:
![](https://github.com/user-attachments/assets/93c05576-e0b5-4684-a4a1-14d46b442e8d)|![](https://github.com/user-attachments/assets/75cc1aee-ac8d-42d5-8d27-bb68cc90cbb9)|![](https://github.com/user-attachments/assets/2ff0d168-aab9-4830-bdf1-6e828a1de008)|![](https://github.com/user-attachments/assets/6771334d-5f58-47b6-b1c3-ac45d5b069d9)|

 Home Screen (Light)       |  Home Screen (Dark)       |  Cart Screen (Light)      | Cart Screen (Dark)
:-------------------------:|:-------------------------:|:-------------------------:|:-------------------------:
![](https://github.com/user-attachments/assets/9829d991-719c-45f0-b50d-b1d69f26ecbb)|![](https://github.com/user-attachments/assets/05d7abb0-2d2c-4b0a-9c66-afada24c1bc7)|![](https://github.com/user-attachments/assets/94e4f873-253b-4ece-84d6-a0f1fd14cc5e)|![](https://github.com/user-attachments/assets/b7a084d6-f5d8-4e55-a590-65d83455098f)


Category Screen (Light)    |  Category Screen (Dark)   | Product Screen (Light)    | Product Screen (Dark) 
:-------------------------:|:-------------------------:|:-------------------------:|:-------------------------:
![](https://github.com/user-attachments/assets/66d6b83f-b9b2-43b8-ac4b-576e083f1dbd)|![](https://github.com/user-attachments/assets/e04efaee-aedc-4a73-9037-aa465281e796)|![](https://github.com/user-attachments/assets/66668a47-9b1a-4db7-ba75-001673c84273)|![](https://github.com/user-attachments/assets/ac6507d6-1d1e-41dd-8661-ec4f77a8870c)


 Product List Screen (Light)|Product List Screen (Dark) |Image Upload Screen (Light)| Image Upload Screen (Dark)
 :-------------------------:|:-------------------------:|:-------------------------:|:-------------------------:
![](https://github.com/user-attachments/assets/09c89dc0-f1c2-4432-9f3e-87494566ddae)|![](https://github.com/user-attachments/assets/c04abfda-6bf0-40fc-8e43-877971d38650)|![](https://github.com/user-attachments/assets/9b35e68f-48c3-4054-8797-dfae7a2bbe58)|![](https://github.com/user-attachments/assets/b3458632-5e95-460d-9bc4-28ad89fcaa4d)|



## Requirements

- Flutter SDK
- Dart 2.0 or above
- Android Studio or Xcode for iOS
- [Back-end API.](https://github.com/MASalmanss/Images-and-Combinations)

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

To explore the app, simply run it in your local environment using Flutter's run command. The app will provide you with an e-commerce experience. The app communicates with a backend AI model to process the image and provide predictions for gender and age. You can find the backend API repository [here](https://github.com/MASalmanss/Images-and-Combinations).

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
