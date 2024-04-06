FROM nikolaik/python-nodejs:python3.10-nodejs14-alpine
VOLUME /var/lib/myData
WORKDIR /usr/src/app
COPY . .
RUN pip install -r pyRequirements.txt
RUN npm install
EXPOSE 8080
ENTRYPOINT ["sh", "start.sh"]
