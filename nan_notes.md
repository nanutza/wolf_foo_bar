A great way to use API keys without committing them into your code is to use environment variables. These are variables set in the shell of the system you're using to serve your Rails app that can be referenced in the code. On Heroku, you will set an environment variable differently than on a standard Linux server.

First, in your Rails app, you would insert the value of an environment variable like this: ENV["MY_GOOGLE_KEY"]

Stick that wherever you're needing to put your API key in the Rails app, then set the environment variable with your API key in this Heroku command: heroku config:set MY_GOOGLE_KEY=some_long_example_api_key_09823098270098

Now in your Rails app when you use ENV["MY_API_KEY"] it will insert in place the value some_long_example_api_key_09823098270098 when your app is running on Heroku.

If you're trying to reference the environment variable within a .js.erb file you would need to write it as <%= ENV["goggle_key"] %>
