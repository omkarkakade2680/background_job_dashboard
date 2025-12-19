# Background Job Dashboard + react

Rails 8 + React + PostgreSQL + esbuild setup.

## Prerequisites

- Ruby 3.3.4 (rbenv recommended)
- Rails 8.1.1
- PostgreSQL 15
- Node >= 18
- Yarn
- Foreman (`gem install foreman`)

Check versions:

```bash
ruby -v
rails -v
node -v
yarn -v
foreman -v
psql --version


Setup

Clone the repository:

git clone https://github.com/omkar/background_job_dashboard.git
cd background_job_dashboard


Install dependencies:

bundle install
yarn install


Set up the database:

rails db:create
rails db:migrate


Running the App

Start Rails + React dev server:

./bin/dev