# Use an official Python runtime as a parent image
FROM python:3.8

# Set the working directory in the container
WORKDIR /webapp

# Copy the current directory contents into the container at /app
COPY ./requirements.txt /webapp/requirements.txt

# Install any needed dependencies specified in requirements.txt
RUN pip install -r requirements.txt

COPY webapp/* /webapp

ENTRYPOINT [ "python" ]

CMD [ "app.py" ]
