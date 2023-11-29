# Now we have to make IMAGE from this Dockerfile
FROM node

# RUN is used to execute commands
# RUN apt-get update 

# RUN apt-get install -y curl

# RUN curl -sL https://deb.nodesource.com/setup_16.x | bash-

# RUN apt-get upgrade -y

# RUN apt-get install -y nodejs


# Copy the files from local to docker image
COPY package.json package.json
COPY package-lock.json package-lock.json
COPY index.js index.js

RUN npm install


ENTRYPOINT [ "node","index.js" ]
