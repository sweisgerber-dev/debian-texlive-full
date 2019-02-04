# Usage

## Build

```
./build.sh
```

or

```
docker build -t debian-texlive-full:latest .
```

## Run

```
docker run -ti \
    --hostname debian-texlive-full \
    --volume /PATH/ON/HOST:/workspace \
    -e LOCAL_USER_ID=`id -u $USER` \
    -e LOCAL_GROUP_ID=`id -g $USER` \
    debian-texlive-full:latest
```