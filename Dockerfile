FROM node:19.0.0-buster as base

RUN apt-get update \
    && apt-get --assume-yes install \
        libpangocairo-1.0-0 \
        python3 \
        python3-dev \
        python3-pil \
        python3-pip \
    && rm -rf /var/lib/apt/lists/ /var/cache/apt/

# These invalidate the cache every single time but
# there really isn't any other obvious way to do this.
COPY . /app
WORKDIR /app


RUN pip3 install --upgrade pip 
RUN pip3 install setuptools 
RUN pip3 install shuup markupsafe==2.0.1

RUN python3 -m shuup_workbench migrate
RUN python3 -m shuup_workbench shuup_init

CMD ["python3", "-m", "shuup_workbench", "runserver", "0.0.0.0:8000"]
