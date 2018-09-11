# Intro
The repo contains the Dockerfile and the docker-compose.yml to run the Runtime node.
The Dockerfile has code to build an image and bake the license and register the node with CloudHub

# Setup
- Replace the following in the Dockerfile with your own and uncomment the line: 
-- RUN /opt/mule/bin/amc_setup -H # 7c07bc1b-549a-40aa-bc82-02d33af98795---109087 tel5
- Add your own license to the root project: license.lic 
- Download the following runtime from MuleSoft: mule-ee-distribution-standalone-4.1.2.zip

- Run the following command and build the image
--docker build -f Dockerfile -t tel2.telecallmart.com:5000/denrl/mule:413

- Start the server:
--docker-compose up -d
