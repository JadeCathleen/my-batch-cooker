# MyBatchCooker

**MyBatchCooker** is a French web app that allows people to create their own meal prep menus by choosing from a list the recipes they like. The goal is to compute the shopping list by supermarket department and also compute the prep steps of all the chosen recipes combined, thus saving users a lot of time.

## Installation
*Warning: this project is no longer deployed, so you'll need to launch it locally.*

Add your Cloudinary key on your .env file, otherwise the pictures would be broken in your local server:

#### `.env`
```bash
CLOUDINARY_URL=cloudinary://YOUR_KEY_HERE
```

Then install the required gem versions with below command line:
```bash
bundle install
```

Then create the database seed with below command line:
```bash
rails db:seed
```

Then you can launch rails server with below command line:
```bash
rails server
```

The website is accessible at this url: http://localhost:3000/

## API (V1)

After launching the server locally, you can get the information about all recipes with these 2 links :
 - index : http://localhost:3000/api/v1/recipes
 - show : http://localhost:3000/api/v1/recipes/:id


## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.

## License

Rails app generated with [lewagon/rails-templates](https://github.com/lewagon/rails-templates), created by the [Le Wagon coding bootcamp](https://www.lewagon.com) team.
