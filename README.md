# Mentor_official

Mentor_official is a standalone application designed for the education sector. It facilitates communication between mentors and students, providing guidance and support. The application includes features such as mailing system and OTP verification for login.

## Table of Contents

- [Contributing](#contributing)
- [Prerequisites](#prerequisites)
- [Installation](#installation)
- [Usage](#usage)
- [Features](#features)


## Contributing

- [@Jeet-Codes](https://github.com/Jeet-Codes)


## Prerequisites

Before running the project, ensure you have the following installed:

- **Java 17**: Make sure you have Java 17 (or later) installed on your machine.
- **Database**: Set up a database (e.g., MySQL, PostgreSQL) and configure the application to connect to it.

## Installation

1. **Clone the repository:**

    ```bash
    git clone https://github.com/Jeet-codes/Mentor_official.git
    ```

2. **Navigate to the project directory:**

    ```bash
    cd Mentor_official
    ```

3. **Build the project:**

    ```bash
    javac -source 17 -target 17 -cp .:path/to/your/jar/files:lib/* src/com/mentor/Main.java
    ```

    Replace `path/to/your/jar/files` with the actual path to any required JAR files or libraries.

## Usage

1. **Run the application:**

    ```bash
    java -cp .:path/to/your/jar/files:lib/* com.mentor.Main
    ```

    Again, replace `path/to/your/jar/files` with the appropriate path.

2. **Access the application:**

    Open a web browser and navigate to `http://localhost:8080` (or the configured port).

## Features

- **Mailing System**: Send messages and announcements to students.
- **OTP Verification**: Secure login using one-time passwords.




