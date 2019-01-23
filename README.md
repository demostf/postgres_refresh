# POSTGRES_REFRESH

Periodically refresh materialized postgresql views

## Usage

This docker image can be configured using the following environment variables.

| Variable           | Default  | Comment                                  |
| ------------------ | -------- | ---------------------------------------- |
| $POSTGRES_HOST     | -        | database host                            |
| $POSTGRES_PORT     | 5432     | database port                            |
| $POSTGRES_USER     | postgres | database user                            |
| $POSTGRES_PASSWORD | -        | database password                        |
| $POSTGRES_DATABASE | postgres | database name containing the views       |
| $VIEWS             | -        | space separated list of views to refresh |
| $INTERVAL          | 3600     | Time between refreshes in seconds        |
