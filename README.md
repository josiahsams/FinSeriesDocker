# FinSeriesDocker

Steps to run:

1. Clone this repo.

- git clone https://github.com/josiahsams/FinSeriesDocker.git
- cd FinSeriesDocker

2. build the docker image
- docker-compose build

3. Start all the services,

- docker-compose up

4. Web Application is running in port 3000

http://localhost:3000

*Note:*

A pretrained model is placed in the root directory of this repository. 
To get the new model, play around with the `ipython notebook` found in https://github.com/josiahsams/PredictStock/blob/nifty_docker/TensorFlowMachineLearningWithFinancialDataUsingGPU.ipynb. 
The dataset are available in the `./data` directory.

During initialization phase, pushed the `*.csv` files data into a `mongodb` for easy querying by the nodejs application.


