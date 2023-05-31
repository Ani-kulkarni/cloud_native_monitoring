#Install the required Python package
FROM python:3.9-slim-buster

# Set working directory in container
WORKDIR /app

#copy requirement file to working directory
COPY requirements.txt .

#Install required python packages
RUN pip3 install --no-cache-dir -r requirements.txt

#copy app code to working directory
COPY . .

#set env variable for the flask (app)
ENV FLASK_RUN_HOST=0.0.0.0

#Expose the port on which the app will run
EXPOSE 5000

#Start the flask app when container is run
CMD ["flask", "run"]
