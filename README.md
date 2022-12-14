# Ci2 - CRIS
Repository for the weab app CI2-CRIS

## Check ongoing work in the Project Board
https://github.com/orgs/ci2-ipt/projects/2

## How to run app in containers
Note: Requires docker version >= 20.10.21 and docker-compose version >= 1.29.2. These are automatically installed as part of the script `0_install_requirements.sh`
- Run script `0_install_requirements.sh` located in `3_tools` to install docker & docker-compose
- Make sure docker & docker-compose is running
- Run script `1_run_local_docker.sh` located in `2_tools`. After that, you need to wait for the container installation to finish (yarn packages, migrations, etc.). You can view this live by following the rails container logs using the script `5_rails_container_follow_logs.sh`. The installation will take some time the first time, but after that it should be pretty quick
- Visit `http://localhost:3000` in your browser
- To check the containers, use `docker container ps`
- To restart the rails server, run the script `4_restart_rails_container.sh`
- To enter the rails container terminal, run the script `3_rails_container_terminal.sh`
- To stop the containers, run the script `2_stop_local_containers.sh`
- To constantly view the logs of the rails container, run the script `5_rails_container_follow_logs.sh`. To exit, press `Ctrl + C`

## Development Notes
- You need to restart the rails server everytime you make config changes to ther server
- If any of the scripts fail, just try to run it again 2-3 times
- It is recommended to continuously monitor the rails container logs to be aware of any errors

## Branch name conventions:

- For features: feature/CI2-CRIS-##/XXXX
- For bugs & fixes: fix/CI2-##/XXXX

      Where:
      - ## => Ticket Number / ID
      - XXXX => Brief 3 to 6 word description of the ticket/issue based on its title
      
      Examples:
      - feature/CI2-CRIS-##/add-user-model
      - fix/CI2-CRIS-##/index-title-has-wrong-color

# Sketch of ideas

![20221205_211943](https://user-images.githubusercontent.com/113514374/205775943-9ee4056a-c98f-4c66-a47c-de1ce866f71a.jpg)

### Readme alegadamente (e hipoteticamente) plagiado do projeto do SearchEngine_SIGQ 
