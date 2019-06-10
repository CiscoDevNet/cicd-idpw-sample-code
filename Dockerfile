FROM python:3-alpine

RUN pip3 install bottle

EXPOSE 8000

COPY main.py /main.py

# ENV version

LABEL cisco.info.name="cicd-idpw0" \
      cisco.info.version=0 \
      cisco.info.description="Basic WebApp for IOx" \
      cisco.info.author-link="" \
      cisco.info.author-name="" \
      cisco.type=docker \
      cisco.cpuarch=x86_64 \
      cisco.resources.profile=custom \
      cisco.resources.cpu=100 \
      cisco.resources.memory=100 \
      cisco.resources.disk=10 \
      cisco.resources.network.0.interface-name=eth0 \
      cisco.resources.network.0.ports.tcp=[8000]

CMD python3 /main.py