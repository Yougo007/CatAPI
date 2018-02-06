# Cat API

Fetch cat data from thecatapi.com and store it.

### Requirements
* Rails version
`>= 5.1.4`

* Ruby version
`>= 2.4.1`

## Getting Started


Bundle gem dependencies

```bash
$ bundle install
```

Database creation and initialization

```bash
$ bundle exec rake db:create
$ bundle exec rake db:migrate
```

Start the server

```bash
$ rails server
```

## API Endpoints

GET cats from thecatapi.com and store it
`On Postman or a web browser`

```bash
http://localhost:3000/cat
```

GET an history of all stored cat API responses
```bash
http://localhost:3000/history
```


License
----

MIT
