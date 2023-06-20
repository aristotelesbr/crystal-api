# Crystal API

## Installation

```
$ shards install
```

## List tasks

You can see the list of tasks like this:

```
$ crystal sam.cr help

Name                 Description
------------------ | ---------------------------------------------
help               | Prints description for all tasks
test               |
generate:makefile  | Generates makefile extension. Now command cou
                   | ld be executed via `make sam your:command arg
                   | ument`
generate:migration | Generates migration template. Usage - generat
                   | e:migration <migration_name>
generate:model     | Generates model and migrations template. Usag
                   | e - generate:model <ModelName>
db:migrate         | Will call all pending migrations
db:step            | Invoke next migration. Usage: db:step [<count
                   | >]
db:rollback        | Rollback migration. Usage: db:rollback [v=<mi
                   | gration_exclusive_version> | <count_to_rollba
                   | ck>]
db:drop            | Drops database
db:create          | Creates database
db:seed            | Populate database with default entities.
db:setup           | Runs db:create, db:migrate and db:seed
db:version         | Prints version of the last run migration
db:schema:load     | Loads database structure from the structure.s
```

## Database config

Change your database settings in `config/database.yml` and run:

```bash
$ crystal sam.cr db:create
```

After that you can run migrations:

```bash
$ crystal sam.cr db:migrate
```

