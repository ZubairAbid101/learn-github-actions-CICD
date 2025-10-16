FROM python:3.12-slim

# Set working directory
WORKDIR /app

# Copy dependency file first
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application
COPY . .

# Expose the app port
EXPOSE 5000

# Run the application
CMD ["python", "app.py"]
