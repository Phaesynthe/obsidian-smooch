# obsidian-smooch [![CircleCI](https://circleci.com/gh/mwj8410/Plinth/tree/development.svg?style=svg)](https://circleci.com/gh/mwj8410/Plinth/tree/development) ![Dependencies](https://david-dm.org/mwj8410/Plinth.svg)

### Local Run
`npm install` or `yarn install`

Next, you need local services up and running:
```
docker run -p3306:3306 -e MYSQL_ROOT_PASSWORD=password mysql
```

Then, after that is complete:
```
npm run build
npm start
```

Then navigate a web browser to `http://localhost:24601/`.

The incomplete set of unit tests can be run with `npm test`.

### Prototype Features ###
-[ ] A player can log in
-[ ] A player can navigate their ship in a system
-[ ] A player can navigate their ship between systems
-[ ] A player has a ship
-[ ] A player has a crew
-[ ] A player's crew has named individuals with traits
-[ ] A player can assign crew and named crew to roles and tasks
-[ ] A player can set tasks

What we are not trying to do at this time
* Device notifications - although possible, it is not desirable to alter the backend methodology to suire a single need. This feature would be something better tackled in a native application or native-like application (thinking react native here).

## Design Thinking
The timer based approach. Since we are not seeking to alert the user when a timer has finished, we can simply have a process that periodically checks the timers then triggers the appropraite handler in the API when the timer has completed.

## Look At
-- I like these sounds http://s-alert-demo.meteorapp.com/

