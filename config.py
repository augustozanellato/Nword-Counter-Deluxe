import os

# Discord bot token
TOKEN = os.environ["DISCORD_TOKEN"]

# Postgres DSN for the bot's database. It's needed for the bot to be able to store data in a SQL database. It looks like this: "postgres://[user]:[password]@[host]:[port]/[database name]" (Some options may not be needed)
POSTGRES = f"postgres://{os.environ['POSTGRES_USER']}:{os.environ['POSTGRES_PASSWORD']}@db/{os.environ['POSTGRES_DB']}"
