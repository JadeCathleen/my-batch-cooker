# 🥘 MyBatchCooker

> A French web app designed to help plan weekly meals and organize batch-cooking sessions.
> MyBatchCooker lets you **select recipes**, **generate a categorized shopping list**, and **view combined preparation steps** to save time in the kitchen.

## 🚀 Features

* Select your preferred recipes
* Automatic **shopping list grouped by grocery aisle**
* Combined **preparation steps** for faster batch cooking
* Simple REST API (e.g., `/api/v1/recipes`)
* Built with **Ruby on Rails**

## 💻 Local Demo

⚠️ This project is **no longer deployed**, so you must run it locally.

### 🔧 Requirements

Make sure you have the following installed:

- Ruby 3.4.7
- Rails
- Bundler
- Node.js / Yarn
- A Cloudinary account (for image uploads)

## 🛠️ Installation

1. **Clone the repository**
  ```sh
  git clone https://github.com/JadeCathleen/my-batch-cooker.git
  cd my-batch-cooker
  ```
2. **Install dependencies**
  ```sh
  bundle install
  yarn install
  ```
3. **Set up Cloudinary**
Create a `.env` file at the root of the project and add:
```env
CLOUDINARY_URL=cloudinary://YOUR_CLOUDINARY_KEY
```
(If you don’t have a key yet, you can create an account on https://cloudinary.com/)
4. **Set up the database**
  ```sh
  rails db:prepare db:seed
  ```
This will create the database (if missing) and run migrations.
5. **Start the server**
  ```sh
  rails server
  ```
6. **Open the app**
Visit http://localhost:3000 in your browser.


## 📡 API (Version 1)
Once the server is running, you can access the API endpoints:
| Endpoint              | Description             |
| --------------------- | ----------------------- |
| `/api/v1/recipes`     | Returns all recipes     |
| `/api/v1/recipes/:id` | Returns a single recipe |

## 🤝 Contributing

Contributions are welcome!
1. Fork the repository
2. Create a feature branch (`git checkout -b feature/my-new-feature`)
3. Commit your changes (`git commit -m "Add my new feature"`)
4. Push to your branch (`git push origin feature/my-new-feature`)
5. Open a Pull Request

Please update tests as needed when adding or modifying functionality.

## License

Rails app generated with [lewagon/rails-templates](https://github.com/lewagon/rails-templates), created by the [Le Wagon coding bootcamp](https://www.lewagon.com) team.
