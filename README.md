oci-images
===

![oci-images](./readme.jpg?raw=true)

| Image | Description |
|-------|-------------|
|[artemis](artemis)|The [Apache Artemis](https://activemq.apache.org/components/artemis/) message broker.|
|[certusine](certusine)|The [certusine](https://www.io7m.com/software/certusine) ACME client.|
|[chione](chione)|The [chione](https://github.com/io7m/chione) Artemis build.|
|[looseleaf](looseleaf)|The [looseleaf](https://www.io7m.com/software/looseleaf) key/value store.|
|[mesquida](mesquida)|The [mesquida](https://github.com/io7m/mesquida) live stream announcement system.|
|[postservice](postservice)|A mail appliance using [postfix](https://www.postfix.org/), [dovecot](https://www.dovecot.org/), and [OpenDKIM](http://www.opendkim.org/).|
|[rtsp-server](rtsp-server)|An [rtsp-simple-server](https://github.com/aler9/rtsp-simple-server) image with Alpine Linux included.|

## Usage

Install `wget`, `gpg`, and `docker`.

```shell
$ ./make.sh
```

To make an individual image (for example, `postservice`):

```shell
$ ./make-one postservice
```
