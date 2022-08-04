FROM arm64v8/python:latest

## Step 1:
# Create a working directory
WORKDIR /app

## Step 2:
# Copy source code to working directory
COPY requirements.txt app.py ./

## Step 3:
# Install packages from requirements.txt
# hadolint ignore=DL3013
# RUN pip3 install --upgrade pip3 &&\
#     pip3 install   --no-cache-dir  -r requirements.txt 
# pip install pip install --no-cache-dir -r requirements.txt

RUN pip3 install -r requirements.txt

## Step 4:
# Expose port 80

EXPOSE 80
## Step 5:
# Run app.py at container launch
CMD ["python", "app.py"]