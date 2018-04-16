FROM node

ENV NODE_VERSION stable
ENV NPM_SCRIPT start
ENV GIT_URL https://github.com/josiahsams/PredictStock
ENV APP_PORT 3000

RUN apt-get update && \
    apt-get install -y \
        python \
        python-dev \
        python-pip \
        python-setuptools  \
    && pip install --upgrade pymongo \
    && pip install --upgrade pandas \
    && pip install --upgrade pprint \
    && apt-get clean

RUN pip install googlefinance
RUN pip install googlefinance.client

ENV APP_HOME .
ENV APP_STARTUP ""
# JUST_RUN specifies whether node should be installed and git should be cloned
ENV JUST_RUN N

COPY ./docker-work /code

WORKDIR /code
 
#RUN chown -R app:app /code/*
RUN chmod +x /code/bootstrap.sh

RUN npm install -g n --silent
RUN n stable

ENTRYPOINT ["/code/bootstrap.sh"]
