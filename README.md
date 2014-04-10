# Boris

Boris is the official Imulus Slack bot. He automates crucial business activities such as adding mustaches to pictures, flipping tables over, and loading up [Celery Man](http://www.youtube.com/watch?v=XWX4GUYGQXQ). He is built on top of [Hubot](https://github.com/github/hubot), written in [CoffeeScript](http://coffeescript.org/), backed by [node.js](http://nodejs.org/), and deployed on [Heroku](http://www.heroku.com/).

## The Rules™

With great power comes great responsibility. Boris is a subtle man, let's keep him that way. Use `robot.hear` sparingly.

## Getting Started

You'll want to take a look at the official [Hubot](https://github.com/github/hubot) and [hubot-scripts](https://github.com/github/hubot-scripts) repositories to get a sense of how things work. Their documentation is a bit confusing, though, so this document should strive to serve as a good reference for everything Boris specific.

### System Requirements

Make sure you have [node.js](http://nodejs.org/) and [npm](http://npmjs.org/) (npm comes with node v0.6.5+) installed.

### Local Installation

    $ git clone git@github.com:imulus/boris.git && cd boris && npm install

### Writing Scripts

New scripts should be written in CoffeeScript and added to the `./scripts` folder. There is also a collection of community scripts installed via npm called [hubot-scripts](https://github.com/github/hubot-scripts). If you'd like to include any of these scripts, add them to `hubot-scripts.json` and they'll automatically be loaded in.

### Testing

To test your scripts, run the following:

    $ bin/hubot

Then, you can interact with hubot by typing `hubot help`

## Deployment

Boris lives in a cedar house on Heroku. To deploy, follow these steps:

1. Install the Heroku gem:

        $ gem install heroku

2. Setup your Heroku keys:

        $ heroku keys:clear && rm ~/.heroku/credentials && heroku list

3. Set Heroku as a remote:

        $ git remote add heroku git@heroku.com:boris.git

4. Push the master branch to Heroku:

        $ git push heroku master

## Debugging

Boris can be a fickle man. You'll want to get comfortable with `heroku logs` and `heroku restart` if you're having issues.