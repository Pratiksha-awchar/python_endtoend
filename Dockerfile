FROM python
WORKDIR /src

COPY . .

# Install Flask and other dependencies
RUN pip install flask
# If you have a requirements.txt, use:
# RUN pip install -r requirements.txt

# Set the environment variable for Flask
ENV FLASK_APP=app.py

# Expose the port that Flask will run on
EXPOSE 4848

# Define the command to run your application
CMD ["flask", "run", "--host=0.0.0.0", "--port=4848"]

