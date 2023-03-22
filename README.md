# RAILS FOREST ADMIN - DEMO

![HOME](https://img.freepik.com/free-vector/retro-80s-background-with-neon-triangle-mountain_1017-31139.jpg?w=1000)

* [Requirements](#Requirements)
* [Configuration](#Configuration)
* [Serving Rails](#Serving-Rails)


# Requirements

- ruby >= 3

# Configuration

### gemfile
```
bundle install
```

### .env file
```
cp .env.example .env
```
set your database connection (DB section)
By default it's a postgres db

### migrate & seed
```
rails db:migrate && rails db:seed
```

## Serving Rails
```
rails server
```
