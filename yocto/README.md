Build Dockerfile
=================
$ docker build . -t <imagename>
For example)
  $ docker build . -t petter/yoctoautobuild

Run image
================
('-v' option will share a specified location with the container)
$ docker run -v /path/to/poky:/home/yoctobuilder/git/poky <imagename>:latest

By default the build will be stored in /tmp/build_`date +%s`
and core-image-minimal will be built.

Since Yocto builds tends to become quite large you need to either change
default size of your containers. Or use '-v' to share a build area as well.

For example)
  $ docker run -v /path/to/poky:/home/yoctobuilder/git/poky \
  -v /home/username/:/home/yoctobuilder/yocto_builds \
  petter/yoctoautobuild:latest /home/yoctobuilder/yocto_builds

To change build target add yet another arg to above command.

For example)
  $ docker run -v /path/to/poky:/home/yoctobuilder/git/poky \
  -v /home/username/:/home/yoctobuilder/yocto_builds \
  petter/yoctoautobuild:latest /home/yoctobuilder/yocto_builds core-image-sato

The two last arguments in above line is $1 and $2 arg to the ./run.sh script.


DEVMODE
================
It's also possible to use this Dockerfile in order to end up in a development mode.
In order to activate DEVMODE to spawn an interactive shell, type 'bash' as $1 arg.

NOTE: If you want to add the common "-it" parameters to the docker-run cmd, you must
add it manually as in the below example.

For example)
  $ docker run -v /path/to/poky:/home/yoctobuilder/git/poky \
  -v /home/username/:/home/yoctobuilder/yocto_builds \
  -it petter/yoctoautobuild:latest bash


