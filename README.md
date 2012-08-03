Rake Tasks
============

This repo is a collection of standard rake tasks I pull down for most projects.

deploy.rake
-----------

These tasks make deploying to Heroku easier:

	rake deploy            # Alias for deploy:staging
	rake deploy:staging    # Push master to staging remote, plus migrate
	rake deploy:production # Push master to production remote, plus migrate

pg\_sync.rake
-------------

These tasks make moving data around Heroku apps easier. If you use Postgres locally, you can use them to even pull down data locally.

	rake pg_sync:production_to_local   # Capture a backup of production and restore to your local database
	rake pg_sync:production_to_staging # Capture a backup of production and restore to your staging database
	rake pg_sync:staging_to_local      # Capture a backup of staging and restore to your local database
