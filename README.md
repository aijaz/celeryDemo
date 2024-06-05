# Celery Demo

## About the project
This project illustrates how celery can be used in a basic application when paired with docker.
The application prompts the user to enter a number,
and then it calculates the corresponding fibonacci number. 
Each of these calculations is treated as a task for the celery worker(s) to complete.
There are currently 3 workers available to run on separate docker containers.
This can be changed in the docker_compose.yml file.

## Running the project
* Open your terminal and navigate to the `dockerVersion` directory
* Utilize docker either through Docker or Colima
  * Start colima with 
  * `Start Colima`
* Build and deploy
  * `./build_all.sh && docker-compose up -d`
* Run the application
  * `docker exec -i -t dockerversion-my_app_c-1 python3 app/app.py`
* Once completed run
  * `docker-compose down`
* Finally stop colima with
  * `colima stop`
