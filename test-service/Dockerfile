FROM python:3.8.0-alpine3.10
# Python docker images: https://github.com/docker-library/docs/tree/master/python/
USER root
WORKDIR /app

# Install python dependencies
COPY ./requirements.txt /app
RUN python3 --version
RUN pip3 install --upgrade pip
RUN pip3 install --no-cache-dir -r /app/requirements.txt
RUN pip3 list --format=columns

# Copy the src
COPY src/ /app/src/
RUN ls -la /app

USER 1001

EXPOSE 8080
ENTRYPOINT ["python3", "/app/src/app.py"]