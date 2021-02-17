# self_supervised_video

## Docker Build and Usage

Docker file usage and run the following 3 commands.

	docker build -t video_docker .
	docker run -it video_docker  (-it to run in an interactive container)
 	docker run --runtime=nvidia -u $(id -u):$(id -g) -it -v $HOME:/home/ video_docker ( to mount docker with your home directory)
- If this command does not work, you need to install nvidia-docker

## Testing command

	python retrieve_clips.py --help

## Reference Github Repo
https://github.com/BestJuly/IIC
