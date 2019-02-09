FROM python:3.6
RUN mkdir /opt/deep_roo
ADD deep_roo /opt/deep_roo/bin
WORKDIR /opt/deep_roo/bin
RUN pip install -r requirements.txt
