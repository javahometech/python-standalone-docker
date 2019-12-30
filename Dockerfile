FROM alpine:3.11

# Install python3
RUN apk add python3
# Install flask
RUN pip install flask
# Install redis
RUN pip install redis
# Copy your code to docker image
WORKDIR /app
COPY app.py .
# Oper 5000 port 
EXPOSE 5000

# Start python app at docker runtime

CMD python app.py