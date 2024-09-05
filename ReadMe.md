# Robot Framework Automation Project

This project contains automated test cases for web applications using **Robot Framework**. The project uses Selenium for browser automation, and is designed to support **data-driven testing** with the **`DataDriver`** library, allowing tests to be run with multiple sets of input data.

## Table of Contents
- [Project Overview](#project-overview)
- [Prerequisites](#prerequisites)
- [Installation](#installation)
- [Project Structure](#project-structure)
- [Running the Tests](#running-the-tests)
  - [Running All Tests](#running-all-tests)
  - [Running Specific Test](#running-specific-test)
- [Data-Driven Testing](#data-driven-testing)
- [Contributing](#contributing)
- [License](#license)

## Project Overview
This project aims to automate the login functionality for a web application. It uses the **SeleniumLibrary** for browser interactions and **DataDriver** for data-driven test execution. The login test reads multiple sets of credentials from an Excel file and validates the application's behavior for both valid and invalid logins.

## Prerequisites

Make sure you have the following software installed before proceeding:

1. **Python 3.x**: [Download Python](https://www.python.org/downloads/)
2. **pip**: Python package installer (usually installed with Python)
3. **Google Chrome**: The project uses Chrome for browser automation. [Download Chrome](https://www.google.com/chrome/)
4. **Chromedriver**: Make sure to have the version of ChromeDriver that matches your Chrome version. You can download it [here](https://sites.google.com/a/chromium.org/chromedriver/downloads).

## Installation

Follow these steps to set up the project locally:

1. **Clone the Repository**:
   ```bash
   git clone https://github.com/your-repo/robotframework-automation.git
   cd robotframework-automation
   ```

2. **Create and Activate a Virtual Environment** (Optional but recommended):
   ```bash
   python -m venv venv
   source venv/bin/activate  # On Windows, use venv\Scripts\activate
   ```

3. **Install Dependencies**:
   Use `pip` to install all necessary packages:

   ```bash
   pip install robotframework
   pip install robotframework-seleniumlibrary
   pip install robotframework-datadriver
   pip install robotframework-excellibrary
   ```

4. **Install Chromedriver**:
   Download the appropriate version of ChromeDriver for your installed version of Chrome and make sure it's added to your system `PATH`.

   - On macOS/Linux:
     ```bash
     sudo mv chromedriver /usr/local/bin/
     ```
   - On Windows, ensure `chromedriver.exe` is in a directory listed in your `PATH`.

## Project Structure

```
robotframework-automation/
├── Resources/
│   └── DataDrivenTest_resource.robot    # Contains reusable keywords
├── TestCases/
│   └── LoginTest.robot                  # Main test suite using DataDriver
├── TestData/
│   └── LoginData.xlsx                   # Excel file containing test data for data-driven tests
├── README.md                            # This file
├── requirements.txt                     # List of dependencies
```

### Explanation of Key Files:
- **`LoginTest.robot`**: This is the main test suite that performs login tests using different sets of data.
- **`LoginData.xlsx`**: Contains the test data (usernames and passwords) that the test suite uses for data-driven testing.
- **`DataDrivenTest_resource.robot`**: A resource file containing reusable keywords such as opening a browser, interacting with form elements, etc.

## Running the Tests

### Running All Tests
You can run all the tests defined in the project using the following command:

```bash
robot TestCases/LoginTest.robot
```

This will execute the login tests with all the data from the `LoginData.xlsx` file.

### Running Specific Test
If you want to run a specific test case from the suite, you can use the `--test` option:

```bash
robot --test "LoginTestWithExcel" TestCases/LoginTest.robot
```

## Data-Driven Testing

This project uses the **DataDriver** library to execute data-driven tests. Data is fetched from the `LoginData.xlsx` file, where each row represents a different set of inputs (e.g., username and password). The `DataDriver` library automatically iterates over each row and runs the same test with different inputs.

### Sample Excel Structure:
| username       | password    |
| -------------- | ----------- |
| validuser1     | validpass1  |
| invaliduser    | invalidpass |
| validuser2     | validpass2  |

For each row in the Excel file, the login test is executed, and the result is recorded.

## Contributing
1. Fork the repository.
2. Create a feature branch (`git checkout -b feature/new-feature`).
3. Commit your changes (`git commit -m 'Add some feature'`).
4. Push to the branch (`git push origin feature/new-feature`).
5. Open a pull request.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

### Running Strategies:

- **Parallel Execution**: If you have a large set of data and want to run tests in parallel, you can use `pabot` to parallelize Robot Framework test execution. Install `pabot` with:

  ```bash
  pip install robotframework-pabot
  ```

  Then run your tests in parallel with:

  ```bash
  pabot TestCases/LoginTest.robot
  ```

### Future Enhancements

- Integrate with a CI/CD pipeline (e.g., GitHub Actions, Jenkins) for automated testing.
- Add more detailed reporting (e.g., using `robotframework-robocop` or `robotframework-extendedselenium2library` for advanced logging).

