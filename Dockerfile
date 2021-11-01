FROM ubuntu:latest

RUN echo "Hello World!" >> test.txt
COPY textfil.py /textfile.py
#RUN python3 textfile.py
RUN apt-get update && apt-get -y --no-install-recommends install python3

ENTRYPOINT [ "sh", "python3 /textfile.py" ]