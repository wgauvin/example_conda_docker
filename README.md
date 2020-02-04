Example Conda Dockerfile
########################

To build Dockerfile use

```
$ docker build -t <name of image> .
```

To change requirements, just update the `requirements.txt` file. You
could also use the `conda install` command within the `Dockerfile`

To run the command interactively

```
$ docker run -it --rm <name of image>
```

You can pass parameters through to Docker command like the following command that would get you into an interactive Python shell.

```
$ docker run -it --rm <name of image> -i
```

You can change the `entrypoint.sh` to execute the Python script that
you want to run. Can copy other files, including Python scripts, as
part of the `Dockerfile` build and from within your `entrypoint.sh` you
could then put the actual command you want to run.
