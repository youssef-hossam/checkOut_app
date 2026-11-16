<h1 align="center">💳 Checkout — Stripe Payment Gateway</h1>

<p align="center">
  <img src="https://img.shields.io/badge/Flutter-02569B?style=flat-square&logo=flutter&logoColor=white" alt="Flutter"/>
  <img src="https://img.shields.io/badge/Stripe-635BFF?style=flat-square&logo=stripe&logoColor=white" alt="Stripe"/>
  <img src="https://img.shields.io/badge/Clean%20Architecture-FF6B2C?style=flat-square" alt="Clean Architecture"/>
</p>

<p align="center"><img src="app_screenshots/hero.webp" alt="Checkout app" width="100%"/></p>


This Flutter project implements a payment gateway using Stripe, allowing users to make payments and save their card details for future transactions. The application provides a seamless and secure payment experience with various features to enhance user convenience.

## Features

- **Test Mode**: Supports a test mode for development and testing purposes.
- **Multiple Payment Options**: Users can pay using:
  - **Link**: A quick and secure payment method.
  - **VISA**: Direct payment using VISA cards.
  - **Amazon Pay**: Integration with Amazon Pay for convenience.
- **Card Information Management**: Users can save their card details (VISA) for future payments, including:
  - Card number
  - Expiration date (MM/YY)
  - CVC
- **Billing Address**: Users can provide their billing address, including country/region and ZIP code.
- **Email Integration**: Optional email collection for creating a Link account and saving payment information.
- **Discounts and Subtotal**: Calculates the order subtotal and applies any discounts before completing the payment.

## 📱 Screens

| Cart summary | Payment sheet | Saved cards |
|:-:|:-:|:-:|
| <img src="app_screenshots/cart_summary.webp" width="230"/> | <img src="app_screenshots/payment_interface.webp" width="230"/> | <img src="app_screenshots/saved_payment_cards.webp" width="230"/> |

## 🚀 Run it

```bash
flutter pub get
flutter run
```

> Runs in Stripe **test mode** — add your own Stripe test keys before running.

## Usage

1. **Add Items to Cart**: Users can add items to their cart, and the application will calculate the subtotal.
2. **Apply Discounts**: Any applicable discounts will be applied to the order.
3. **Select Payment Method**: Users can choose their preferred payment method (Link, VISA, Amazon Pay).
4. **Enter Card Details**: For card payments, users need to enter their card details.
5. **Save Card for Future Use**: Users have the option to save their card details for future payments.
6. **Complete Payment**: Once all details are entered, users can complete the payment.

## Configuration

To set up the application, you need to configure the Stripe API keys and other necessary settings in the configuration files. Ensure that the test mode is enabled during development.

## Dependencies

- Stripe API
- Flutter Stripe for payment processing

## Contributing

Contributions are welcome! Please fork the repository and submit a pull request with your changes.

## License

This project is licensed under the MIT License. See the LICENSE file for details.

## Acknowledgments

- Stripe for providing the payment gateway API.
- Flutter community for the support and resources.

---

This README provides an overview of the application's features and usage. For more detailed instructions, refer to the documentation in the repository.


---

<p align="center">Made with ❤️ by <a href="https://github.com/youssef-hossam">Youssef Hadwa</a></p>
