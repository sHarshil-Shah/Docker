FROM centos

ARG gitUsername
ARG gitPass

RUN dnf install git -y

RUN git clone https://$gitUsername:$gitPass@github.com/sHarshil-Shah/Code-Review-System.git

RUN dnf install python3-pip -y

RUN pip3 install -r Code-Review-System/ML/pickel/req.txt

RUN python3 Code-Review-System/ML/pickel/flaskAPI.py
