FROM python:3.10-slim
WORKDIR /app

# 1. Instal dependensi sistem & JAVA
RUN apt-get update && apt-get install -y \
    build-essential \
    libpq-dev \
    default-jre \
    curl \
    && rm -rf /var/lib/apt/lists/*

ENV JAVA_HOME="/usr/lib/jvm/default-java"
ENV PATH="$JAVA_HOME/bin:$PATH"

# 2. Instal Torch CPU
RUN pip install --no-cache-dir torch --index-url https://download.pytorch.org/whl/cpu

# 3. Instal Library Python (Termasuk PySpark)
COPY requirements.txt .
RUN pip install --no-cache-dir sentencepiece protobuf sentence-transformers kafka-python pyspark==3.5.0
RUN pip install --no-cache-dir -r requirements.txt

# 4. Download Model AI
RUN python3 -c "from sentence_transformers import SentenceTransformer; SentenceTransformer('paraphrase-multilingual-MiniLM-L12-v2')"

# 5. DOWNLOAD JAR MANUAL (Termasuk Driver S3)
RUN mkdir -p /app/jars
RUN curl -o /app/jars/postgresql-42.5.0.jar https://jdbc.postgresql.org/download/postgresql-42.5.0.jar
# Kafka Jars
RUN curl -o /app/jars/spark-sql-kafka-0-10_2.12-3.5.0.jar https://repo1.maven.org/maven2/org/apache/spark/spark-sql-kafka-0-10_2.12/3.5.0/spark-sql-kafka-0-10_2.12-3.5.0.jar
RUN curl -o /app/jars/spark-token-provider-kafka-0-10_2.12-3.5.0.jar https://repo1.maven.org/maven2/org/apache/spark/spark-token-provider-kafka-0-10_2.12/3.5.0/spark-token-provider-kafka-0-10_2.12-3.5.0.jar
RUN curl -o /app/jars/kafka-clients-3.4.1.jar https://repo1.maven.org/maven2/org/apache/kafka/kafka-clients/3.4.1/kafka-clients-3.4.1.jar
RUN curl -o /app/jars/commons-pool2-2.11.1.jar https://repo1.maven.org/maven2/org/apache/commons/commons-pool2/2.11.1/commons-pool2-2.11.1.jar
# AWS/S3 Jars (BARU!)
RUN curl -o /app/jars/hadoop-aws-3.3.4.jar https://repo1.maven.org/maven2/org/apache/hadoop/hadoop-aws/3.3.4/hadoop-aws-3.3.4.jar
RUN curl -o /app/jars/aws-java-sdk-bundle-1.12.262.jar https://repo1.maven.org/maven2/com/amazonaws/aws-java-sdk-bundle/1.12.262/aws-java-sdk-bundle-1.12.262.jar

COPY . .

EXPOSE 8501