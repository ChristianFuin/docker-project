FROM python:3.7.3-stretch

WORKDIR /app

## Complete Step 2:
COPY . app.py /app/

## Complete Step 3:
RUN pip install --upgrade pip &&\
    pip install -r requirements.txt --trusted-host pypi.python.org
# hadolint ignore=DL3013

## Complete Step 4:
# Expose port 80

## Complete Step 5:
# Run app.py at container launch