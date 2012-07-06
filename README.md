Heroku Tasks
============

This gem is a collecion of rake tasks to make working with [Heroku] easier.

NOTE: this gem assumes you're using the cedar stack.

Deployment
----------

Tasks for making deployment easier:

    rake deploy            # Alias for deploy:staging
    rake deploy:staging    # Push master to staging remote, plus migrate
    rake deploy:production # Push master to production remote, plus migrate

Syncing Data
------------

If you use PostGres locally, you can use the [PG Backups Addon](https://addons.heroku.com/pgbackups) to sync your local database or even staging. Here are some tasks to help with that:

    rake pg_sync:production_to_local   # Capture a backup of production and restore to your local database
    rake pg_sync:production_to_staging # Capture a backup of production and restore to your staging database
    rake pg_sync:staging_to_local      # Capture a backup of staging and restore to your local database
