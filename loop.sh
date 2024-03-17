#!/usr/bin/env sh

while [ : ]; do
    for view in $VIEWS; do
        echo "refreshing $view"
        env PGPASSWORD=$POSTGRES_PASSWORD psql -p $POSTGRES_PORT -U $POSTGRES_USER -h $POSTGRES_HOST $POSTGRES_DATABASE -c "REFRESH MATERIALIZED VIEW CONCURRENTLY $view"
    done

    sleep $INTERVAL
done
