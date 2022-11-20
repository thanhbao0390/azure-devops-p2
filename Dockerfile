FROM python:3.7.3-stretch

# Working Directory
WORKDIR /app

# Copy source code to working directory
COPY . /app/

# Install packages from requirements.txt
# hadolint ignore=DL3013
RUN pip install --upgrade pip &&\
    pip install -r requirements.txt
    
## Step 4:
# Expose port 80
EXPOSE 80

# Run app.py at container launch
CMD ["python", "app.py"]
