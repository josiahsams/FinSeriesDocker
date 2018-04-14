FROM tensorflow/tensorflow

RUN mkdir /code

RUN mkdir /tf_files

RUN pip install --upgrade pip

RUN pip install --upgrade tensorflow

RUN pip install Flask

RUN pip install flask_cors

ADD https://github.com/josiahsams/PredictStock/raw/nifty_docker/predict.py /code

ADD https://github.com/josiahsams/PredictStock/raw/nifty_docker/model.pb /code

CMD ["/usr/bin/python", "-u", "/code/predict.py" ]
