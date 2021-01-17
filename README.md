# mendelsonAS4-to-docker

Docker for https://mendelson-e-c.com/as4_software to start in container
Run with VNC html with XCFE

To start need:

docker run --rm -v {Your volume}:/opt/AS4 -p{VNC HTML PORT}:6901 -p{HTTP PORT}:8080 mdsn/mendelsonAS4

Connect to VNC - http://localhost:6901/vnc.html
Default password is - gns

To change password - change ENV in Dockerfile VNC_PW

