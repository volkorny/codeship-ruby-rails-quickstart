# Ruby/Rails Quickstart with Codeship Pro
[ ![Codeship Status for whiteotter/ruby-rails-quickstart](https://app.codeship.com/projects/6124df80-b6cd-0135-c039-5e21ca376bff/status?branch=master)](https://app.codeship.com/projects/258703)

#test 2

[Michael Hartl's Rails Tutorial example](https://www.railstutorial.org/) configured for testing on [Codeship Pro](https://codeship.com/features/pro)

## Local Setup
- Boot up app on local machine with [Docker Compose](https://docs.docker.com/compose/gettingstarted/) -- `docker-compose up`
- Hop over to http://localhost:3000/ to confirm that app is up and running via Docker Compose
- Shut down app with `docker-compose down`
- Now run a Codeship Pro build on your local machine with our [CLI tool](https://documentation.codeship.com/pro/builds-and-configuration/cli/). Install, then run `jet steps`
- `jet steps` process will follow instructions of `codeship-steps.yml`, building/pulling Docker images as needed then proceeding to spin up a Docker container for each step, executing its command in isolation. If you wish for work to persist between steps/containers, then consider setting up [Docker volumes](https://documentation.codeship.com/pro/builds-and-configuration/docker-volumes/) on your `codeship-services.yml`.

## SCM Setup
- Initialize as a new git repo -- `rm -rf .git && git init && git add . && git commit -m 'first commit'`
- Create new repository on your SCM of choice (Github, Gitlab, Bitbucket) and push commit

## CI/CD Setup
- Sign up for a [free Codeship Pro account](https://codeship.com/features/pro)
- Once signed in, follow prompts to set up a Codeship Pro project
- Commit a change to your repo and watch as a Codeship Pro build is triggered!
