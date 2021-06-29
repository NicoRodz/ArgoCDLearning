
if [ "$FLASK_ENV" = "development" ] || [ "$FLASK_ENV" = "staging" ]
then
    echo DEVELOPMENT ENV
fi

exec gunicorn "app:create_app()" \
    -w 2 \
    --bind 0.0.0.0:8000 \
    --access-logfile - \
    --error-logfile - \
    --reload \
    --timeout 120