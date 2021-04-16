I would first lob these files into new directory, and then navigate
to this new directory in your terminal

Once in the same directory as the dockerfile, build the docker 
image and tag it so it can be pushed easily (ie. in the format - username/image_name)  
`docker build -t <username>/<appname> .`

Login to you personal dockerhub account. 
his will then return a prompt for your password, which you can then enter then
hit return  
`docker login --username <username>`

Once logged in, you can push the image
this might take a while if your upload speed is slow!   
`docker push <username>/<appname>`