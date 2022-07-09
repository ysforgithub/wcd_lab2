# the image is base on the python:3.7 image
FROM python:latest 
#create a workfolder in the image to make sure all the works done in the folder
WORKDIR /app
# install pandas for the python script
COPY requirements.txt .
RUN pip install -r /app/requirements.txt
# add python script into the image
ADD py_script.py .
#create container volume mounting to host dir so that the python script can read and write data from host
#VOLUME /app/input
#VOLUME /app/output
#create environment variables for python script
ENV INPUT_DIR='/app/input'
ENV OUTPUT_DIR='/app/output'
# Keep the Docker container running 
#CMD python3 /app/py_script.py
CMD tail -f /dev/null