FROM ubuntu:22.04

RUN <layer> commands (<apt install git -y) 
RUN <layer> commands (<apt install apache2 -y)
		**!! reduce number of <layers> to reduce size of your image!!**
WORKDIR /tmp

COPY . . (to copy from my local "." to WORKDIR "." (/tmp) in the image

ENV app=team key=value  -to add env variables

EXPOSE 80 (what port the application listens to)

*ADD (now widely used ADD=wget)

    !you can only have 1 ENTRYPOINT (or CMD) in your file!
CMD [list of commands to be exec when STARTING container from the image]
    -CAN overwritten during the launch time
or
ENTRYPOINT [list of commands to be exec when STARTING container from the image]
	   -CAN'T be overwritten during the launch of container
