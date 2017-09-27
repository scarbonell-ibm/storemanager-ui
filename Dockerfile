FROM registry.ng.bluemix.net/ibmnode:latest
COPY ./ jke-banking
WORKDIR jke-banking
RUN npm install -d --production
EXPOSE 3000 80 443 22
ENV PORT 80
ENV DOCKER true
CMD ["npm", "start"]