docker container stop Breadcrumbs_api_core_development
docker container rm Breadcrumbs_api_core_development
docker-compose up

rails db:migrate
rails db:seed