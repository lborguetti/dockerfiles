CentOS image with Squid Proxy.
--

## Packages Description

Packages installed

    ```
    squid
    ```

## Building Image

    ```
    git clone https://github.com/lborguetti/docker.lab.git
    cd docker.lab/centos.with.squid3
    docker build -t squid3 .
    ```

## Image Options Description

Set environment variable **SQUID_OPTS** for changing starting squid.

Squid running with user: **squid**


## Using


Ex1: Bind your squid.conf in container

    ```
    docker run -d --net=host --volume ~/squid.conf:/etc/squid/squid.conf --name squid squid3
    ```

Ex2: Persist squid cache ir your host

    ```
    docker run -d --net=host --volume ~/squid.conf:/etc/squid/squid.conf --volume squid_cache:/var/spool/squid --name squid squid3
    ```

Ex3: Running squid in debugging mode

    ```
    docker run -d -e "SQUID_OPTS=-X" --net=host --volume ~/squid.conf:/etc/squid/squid.conf --volume squid_cache:/var/spool/squid --name squid squid3
    ```
