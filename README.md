# Boris

## The Rules&trade;

1. Always work on the `develop` branch or a topic/feature branch derived from `develop`.
2. Merge topic branches into `develop` before merging into `master`
3. `master` is always deployable. Be sure to review your code before merging into `master`.
4. When you push `master` to GitHub, also push it to Heroku.
5. Don't talk about Fight Club.

## Installation

1. Clone

        $ git clone git@github.com:imulus/boris.git

2. Install Dependencies

        $ npm install -d

3. Add Campfire variables to your environment

        $ export HUBOT_CAMPFIRE_TOKEN="a5f31260a9e1bd3559e651ce2a8c12f4a52de65a"
        $ export HUBOT_CAMPFIRE_ACCOUNT="imulus"
        $ export HUBOT_CAMPFIRE_ROOMS="444159"

3. Squeal like a pig

        $ node server.js

## Deployment

1. Install the Heroku gem if you haven't already

        $ gem install heroku

2. Set up your Heroku keys if you haven't already

        $ heroku keys:clear && rm ~/.heroku/credentials && heroku list

3. Set Heroku as a remote (only need to do this once per clone)

        $ git remote add heroku git@heroku.com:boris.git

4. Deploy by pushing the master branch to Heroku

        $ git push heroku master

5. Grab a beer

        $ boris get me a beer
