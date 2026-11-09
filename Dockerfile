#Base Image
FROM node:18-alpine
#workdirectory
WORKDIR /app
#Copy all the packages
COPY package*.json ./

#Insatll Dependecies
RUN npm install

#Copy all the files
COPY . .

#Exposing the PORT
EXPOSE 3000

#Start Application
CMD ["npm","start"]
