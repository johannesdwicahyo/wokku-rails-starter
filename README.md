# wokku-rails-starter

Bare-bones Rails 8 app on SQLite, configured to one-click-deploy on [Wokku](https://wokku.cloud).

## Deploy

[![Deploy to Wokku](https://wokku.cloud/deploy-button.svg)](https://wokku.cloud/templates/rails)

Click → pick a tier → live at `https://<your-app>.wokku.cloud` in ~90 seconds.

## Local development

```bash
bundle install
bin/rails db:prepare
bin/rails server
# open http://localhost:3000
```

## What's inside

- Rails 8 minimal (`--minimal` skips Action Cable, Mailer, JBuilder, etc.).
- SQLite for storage (file-based, no separate addon). Swap to Postgres later by adding the `pg` gem and a Postgres addon in Wokku.
- `RAILS_LOG_TO_STDOUT=true` and `RAILS_SERVE_STATIC_FILES=true` set via `app.json` so logs and assets work behind Dokku's nginx.

Runtime: Ruby 3.4.3 (pinned in `Gemfile`).

You will be prompted to set `SECRET_KEY_BASE` after deploy — run `wokku config:set SECRET_KEY_BASE=$(openssl rand -hex 64)` from the dashboard.
