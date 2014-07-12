# Copy this file to settings.py and edit it

# The host and port of the server, if connecting to Twitch you probably
# don't need to change these
HOST = "irc.twitch.tv"
PORT = 6667
USE_SSL = False

# Details for logging in with the user you want to use for the bot
# More information on how to get the OAuth token in README.md
USER = "your_user_name"
OAUTH_TOKEN = "oauth:*************"

# Where do you want to store the database
DATABASE_PATH = "bot.sqlite"

# What channels to join? Usually if your twitch username is foobar you want
# to add #foobar
CHANNEL_LIST = [
    "#your_user_name"
]

# If you want to log everything the bot does to a file, put the filename here
LOG_FILE = None

# What prefix do you want for all commands? E.g. with "!" you run !addquote,
# you could also set this to "foobar" and the command would be "foobaraddquote"
COMMAND_PREFIX = "!"