# Friend Time

[![Discord Bots](https://discordbots.org/api/widget/status/471091072546766849.svg?noavatar=true)](https://discordbots.org/bot/471091072546766849)[![Discord Bots](https://discordbots.org/api/widget/servers/471091072546766849.svg?noavatar=true)](https://discordbots.org/bot/471091072546766849)

## [Add to your Discord Server!](https://discordapp.com/oauth2/authorize?client_id=471091072546766849&scope=bot&permissions=3072)

[Join Support Server](https://discord.gg/QMc9Qdk) | [Donate with PayPal!](https://www.paypal.com/cgi-bin/webscr?cmd=_donations&business=EW389DYYSS4FC)

**Discord bot** - Automatically convert times to your friends time zones!

![Example usage](https://i.imgur.com/SsuqDwR.png)

If you have a discord server with users across multiple countries and timezones then this is the bot for you! With Friend Time you can easily coordinate times between users. Friend Time will automatically convert any times mentioned in chat to the times of other users.

## Commands

* `-ft help` \- Show the help menu.
* `-ft map` \- View a map of available timezones.
* `-ft set <timezone>` \- Set yourself to a timezone.
* `-ft invite` \- Invite Friend Time to your server.
* `-ft support` \- Get help or report an issue.
* `-ft donate` \- Donate to keep Friend Time running!

## Finding Your Timezone

[Keval Bhatt](https://github.com/kevalbhatt) has created a handy map timezone picker:

<http://kevalbhatt.github.io/timezone-picker/>

Simply click your location on the map, and use the name displayed in the dropdown box as your timezone.

You can then take your timezone name and run the **set** command like so:
`-ft set America/New_York`

![Setting your timezone](https://i.imgur.com/1SYDJHc.png)

Friend Time will then know your timezone and use this to automatically convert any times you mention in chat, as well as convert other users times to your timezone.

## Running Locally

If you'd like to run your own copy of Friend Time for development or personal reasons, see the [following guide](docs/running-locally.md).

## References

* [discord.js](https://discord.js.org/) - A powerful JavaScript library for interacting with the Discord API.
* [Moment Timezone](https://momentjs.com/timezone/) - Parse and display dates in any timezone.
