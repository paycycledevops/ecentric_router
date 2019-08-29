# Ecentric Router
This is a simple app to redirect the callbacks from Ecentric Hosted Payment Pages. Ecentric can only set 1 callback url for you for their testing servers. The problem is that if you multiple development environments you cannot ask them to change the url every you want to test on the different environment. This app can be your single callback url for Ecentric and it will reroute the Ecentric callback to which ever environment you are currently busy working on.

1. Deploy app to Heroku
2. Set environment variable `REDIRECT_TO` to the url you want the Ecentric Callback to go to.
3. Give Ecentric this url.
