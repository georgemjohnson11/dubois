# Dubois

Use this for a Django project with Shuup. 

1. Clone to your local environment
2. Install and test Shuup with workbench
3. Attach your addons and custom business logic
4. Push to your project repository

## Installation for local development 

1. Create and activate fresh Python virtualenv (i.e. `python3 -m venv .venv`) followed by `source .venv/bin/activate`
2. Run `pip3 install -r requirements.txt`.
3. Optionally copy .env.template to .env and setup environment variables for your project.
   You can also modify Django settings directly to the settings file or setup local settings file.
4. Initialize database by running `python3 -m shuup_workbench migrate`
5. Initialize installation by running `python3 -m shuup_workbench shuup_init`
6. Create superuser to access admin `python3 -m shuup_workbench createsuperuser`
7. Populate Data: `python3 -m shuup_workbench shuup_populate_mock --with-superuser=admin`
7. Run server `python3 -m shuup_workbench runserver 0:8888`
8. Navigate to `127.0.0.1:8888/sa` and login as a super admin or `127.0.0.1:8888`
9. Complete Shuup onborading wizard and you should be all set
10. Now for your own project you can just update ``git remote`` with your
    own git repository and start pushing new commits. For example
    ``git remote set-url origin git@github.com:username/shuup-project-template.git``     


## Installation via Docker

Docker

Download and install Docker.

  + Linux: check your package manager / distribution instructions.
  + Mac: [Instructions](https://docs.docker.com/docker-for-mac/install/)
  + Windows: [Instructions](https://docs.docker.com/docker-for-windows/install/) (Windows 10) / [Instructions](https://docs.docker.com/toolbox/toolbox_install_windows/) (Windows 7/8)

Get this up and running after installing Docker
`docker-compose up`    
Then to make a suuper user
`docker-compose exec dubois python3 -m shuup_workbench createsuperuser`     
