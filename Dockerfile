FROM python:3.7.3-stretch

WORKDIR /app

COPY .  /app/
## Step 1:.
# Create a working directory

## Step 2:
# Copy source code to working directory


## Step 3:
# Install packages from requirements.txt
# hadolint ignore=DL3013
RUN make install

## Step 4:
# Expose port 80
EXPOSE 80

## Step 5:
# Run app.py at container launch
CMD ["python","app.py"]

