# Kolony Keeper Frontend

Kolony Keeper Frontend is a cross-platform service status tracker application designed for businesses. Built with Flutter, it can be deployed on Android, iOS, Windows, macOS, and Linux platforms. This frontend app allows users to track the status of various services, receive notifications, and perform administrative tasks.

# Backend Repo

    https://github.com/Rookie-Roosters/kolony-keeper-backend

## Installation

    # Clone the repository:
    git clone https://github.com/Rookie-Roosters/kolony-keeper-frontend.git

    # Navigate to the project directory:
    cd kolony-keeper-frontend

    # Install the required dependencies:
    flutter pub get

    # Running the application
    flutter packages pub run build_runner watch --delete-conflicting-outputs

## Configuration

Create a `.env` file in the project root directory with the following contents:

    `KOLONY_KEEPER_API_URL=<Your_API_URL>`

Replace `<Your_API_URL>` with the URL of your backend API.
