#!/bin/bash

# URL of the AKHQ jar file
AKHQ_JAR_URL="https://github.com/tchiotludo/akhq/releases/download/0.24.0/akhq-0.24.0-all.jar"

# File name of the AKHQ jar
AKHQ_JAR_FILE="akhq-0.24.0-all.jar"

# Download the AKHQ jar file
echo "Downloading AKHQ jar file..."
wget -q --show-progress "$AKHQ_JAR_URL" -O "$AKHQ_JAR_FILE"

# Check if the download was successful
if [ $? -ne 0 ]; then
    echo "Failed to download AKHQ jar file. Exiting..."
    exit 1
fi

# Start the Java process with AKHQ jar
echo "Starting AKHQ..."
java -Dmicronaut.config.files=./application.yml -jar "$AKHQ_JAR_FILE"
