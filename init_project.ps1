$project = Read-Host -Prompt 'Project name'
docker-compose run web django-admin.py startproject $project .