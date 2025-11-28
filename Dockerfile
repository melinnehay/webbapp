FROM python:3.11-slim

# Set working directory
WORKDIR /app

# copy any files
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

#expose port flask on runs on
EXPOSE 80

#Run the application
CMD ["python", "app.py"]
