# Rails 5 Devise Omniauth Omniauth-Facebook Bootstrap

This base project aims to make using `devise`, `omniauth`, `omniauth-facebook`, and `bootstrap` as simple as possible. All that is required is creating a Facebook app, adding your app_id and app_secret to the .env file, editing the .gitignore file to include .env so you don't share your app credentials with the world if pushing to a public repository, and voila.

### Due to recent changes within Facebook's Developer Portal it is required that you setup HTTPS support for local development in order to test the login with facebook locally. Once I determine a good resource for information to get this implemented for others I'll provide the information. For now you're unfortunately on your own simply due to the variances of local development environments. 
