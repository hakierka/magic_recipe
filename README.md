# ✨ Magic Recipe: Serverpod Academy Final Project! ✨

## From the Desk of a Serverpod Developer Advocate

Hello, fellow devs! I'm Amy, a passionate Developer Advocate of Serverpod. I'm thrilled to share **Magic Recipe**, the culmination of my journey through the comprehensive [Serverpod Academy](https://academy.serverpod.dev/)! This project demonstrates how Serverpod empowers you to build robust, scalable, and type-safe applications with incredible ease.

---

## 🍲 About Magic Recipe

**Magic Recipe** is an innovative application built to explore and solidify core Serverpod concepts while showcasing a practical use case: **AI-powered recipe generation from ingredients you provide!**

Beyond its core function, this project also demonstrates how to:
* **Generate recipes from a list of ingredients** using the Google Gemini API.
* Implement robust **user creation and management**.
* Provide a foundational **admin dashboard** for managing application data and users.
* Define and manage complex data models (`Recipe`, `User`).
* Handle efficient database interactions with PostgreSQL.
* Serve a responsive web frontend built with Flutter.
* Utilize caching for performance optimization.
* And much more, demonstrating a truly full-stack Dart experience!

This project specifically focuses on the powerful backend logic and its seamless, type-safe integration with a Flutter web client.

---

## 🚀 Why Serverpod?

Serverpod isn't just another backend framework; it's a complete app development framework for Dart that truly accelerates your workflow. From automatic API generation and database ORM to built-in authentication and real-time communication, Serverpod handles the heavy lifting, allowing you to focus on building amazing features.

* **Type-Safe Communication:** Say goodbye to runtime errors between client and server!
* **Blazing Fast Performance:** Built for speed with Dart.
* **Scalability Out-of-the-Box:** Designed for the cloud with Redis caching and PostgreSQL.
* **Rapid Development:** Get your ideas to market faster.

Learn more about this incredible framework at [serverpod.dev](https://serverpod.dev/).

---

## 🛠️ Technologies & Tools Used

This project leverages a powerful and modern stack:

* **Serverpod:** The backend framework written in Dart, providing API, ORM, database management, and more.
* **Flutter:** The UI toolkit used to build the beautiful and responsive web frontend.
* **Dart:** The versatile programming language used across both frontend and backend.
* **Google Gemini API:** For intelligent, AI-driven recipe generation.
* **PostgreSQL:** The robust relational database storing all our recipe and user data.
* **Redis:** Utilized for high-performance caching and session management within the Serverpod cluster.
* **Docker:** For containerizing PostgreSQL and Redis, ensuring consistent development environments.
* **SQL Tools:** Essential for direct database inspection and management during development.
* **VS Code:** My preferred IDE for a seamless full-stack development experience.
* **Git & GitHub:** For version control and collaborative development.

---

## 🏁 Getting Started

To get your own **Magic Recipe** project up and running locally, follow these simplified steps. For a detailed, step-by-step guide, including how to set up your Gemini API key, I highly recommend going through the [Serverpod Academy](https://academy.serverpod.dev/) itself!

1.  **Clone the repository:**
    ```bash
    git clone [https://github.com/hakierka/magic_recipe.git](https://github.com/hakierka/magic_recipe.git)
    cd magic_recipe
    ```
2.  **Start Docker services:**
    Ensure Docker Desktop is running.
    ```bash
    docker compose up -d
    ```
3.  **Run the Serverpod server:**
    Navigate to the server directory and run the Serverpod server.
    ```bash
    cd magic_recipe_server
    serverpod generate # (if you've changed definitions)
    serverpod run
    ```
4.  **Build and run the Flutter web client:**
    From the `magic_recipe` root, build and serve the Flutter app.
    ```bash
    cd .. # Back to magic_recipe root
    chmod +x ./scripts/build_flutter_web # Make the build script executable
    ./scripts/build_flutter_web         # Build and copy web assets
    flutter run -d chrome --web-port 8080 # (Or your preferred Flutter run method)
    ```
    *(Note: Your Flutter app needs to connect to the Serverpod running on its specified port, typically 8080 or 8081 for the Serverpod server's web API)*.

---

## 🧑‍💻 Explore & Connect

Feel free to explore the code, experiment with Serverpod's features, and see how easy it is to build full-stack applications with Dart.

If you have any questions about Serverpod, feel free to reach out! You can find me on GitHub at [hakierka](https://github.com/hakierka) or connect through the official [Serverpod channels](https://serverpod.dev).

Happy coding!
