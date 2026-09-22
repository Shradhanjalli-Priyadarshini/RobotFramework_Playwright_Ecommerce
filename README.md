# Robot Framework + Playwright Ecommerce Automation Framework

## Overview

This project is an Ecommerce UI automation framework built using **Robot Framework** with **Browser Library**, which uses **Playwright** for browser automation.

The framework follows a reusable keyword-driven approach and covers common Ecommerce workflows such as login, product selection, cart validation, and checkout.

The project is also integrated with **GitHub Actions** to execute automated tests in CI using headless browser execution.

## Tech Stack

* **Robot Framework:** 7.5
* **Browser Library:** 20.5.0
* **Playwright:** Used internally by Browser Library
* **Python:** 3.12+ compatible
* **Browser:** Chromium
* **CI/CD:** GitHub Actions
* **Version Control:** Git & GitHub

## Project Structure

```text
RobotFramework_Playwright_Ecommerce/
│
├── .github/
│   └── workflows/
│       └── robot-tests.yml
│
├── resources/
│   ├── variables.robot
│   └── keywords.robot
│
├── tests/
│   ├── login.robot
│   ├── product.robot
│   ├── cart.robot
│   └── checkout.robot
│
├── .gitignore
├── requirements.txt
└── README.md
```

## Framework Design

### `resources/variables.robot`

Contains reusable configuration and test data such as:

* Application URL
* Browser
* Headless configuration
* Valid credentials
* Invalid credentials

### `resources/keywords.robot`

Contains reusable business-level keywords such as:

* Open Login Page
* Login With Valid Credentials
* Login With Invalid Credentials
* Verify Products Page Is Displayed
* Select Product
* Verify Product Is Added To Cart
* Open Cart
* Verify Product In Cart
* Proceed To Checkout
* Enter Checkout Information
* Continue To Overview
* Place Order

This keeps test cases readable and reduces duplication.

### `tests/`

Contains the actual test scenarios.

| Test File        | Coverage                              |
| ---------------- | ------------------------------------- |
| `login.robot`    | Valid and invalid login               |
| `product.robot`  | Product selection and cart validation |
| `cart.robot`     | Cart verification                     |
| `checkout.robot` | End-to-end checkout flow              |

## Test Coverage

The current framework contains **5 automated test cases** covering:

* Valid login
* Invalid login
* Product selection
* Cart validation
* End-to-end checkout

Tests are organized using Robot Framework tags such as:

```text
smoke
login
regression
product
cart
checkout
```

Example:

```bash
python -m robot --include smoke tests
```

## Running Tests Locally

Activate the virtual environment:

```bash
test_env\Scripts\activate
```

Run the complete test suite:

```bash
python -m robot tests
```

Run tests with generated reports:

```bash
python -m robot --outputdir results tests
```

Run only smoke tests:

```bash
python -m robot --include smoke tests
```

Run only checkout tests:

```bash
python -m robot --include checkout tests
```

## GitHub Actions CI

The project uses GitHub Actions to automatically execute the Robot Framework tests when code is pushed to the `main` branch or when a pull request is created.

The CI pipeline performs the following steps:

1. Checks out the source code.
2. Sets up Python.
3. Installs project dependencies.
4. Initializes Browser Library.
5. Executes Robot Framework tests.
6. Runs the browser in headless mode.

The CI execution uses:

```bash
python -m robot --variable HEADLESS:True --outputdir results tests
```

The headless configuration is used because GitHub Actions runs on an Ubuntu environment without a graphical display.

## Test Reports

Robot Framework generates execution reports including:

* `log.html`
* `report.html`
* `output.xml`

These generated files are excluded from Git using `.gitignore`.

## Key Concepts Demonstrated

This project demonstrates practical experience with:

* Robot Framework syntax
* Keyword-driven testing
* Browser Library
* Playwright-based browser automation
* Reusable custom keywords
* Test setup and teardown
* Variables and configuration
* Test tagging
* Positive and negative testing
* End-to-end Ecommerce automation
* Git and GitHub
* CI/CD with GitHub Actions
* Headless browser execution

## Future Enhancements

Possible future improvements include:

* API testing integration
* Data-driven testing
* Environment-specific configuration
* Parallel test execution
* Allure reporting
* Screenshot and trace collection on failure
* Additional Ecommerce scenarios
* Improved CI reporting

## Author

**Shradhanjalli Priyadarshini**

QA Automation Engineer
