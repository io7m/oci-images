oci-images
===

![oci-images](./readme.jpg?raw=true)

| Image                      | Description                                                                                                                                |
|----------------------------|--------------------------------------------------------------------------------------------------------------------------------------------|
| [certusine](certusine)     | The [certusine](https://www.io7m.com/software/certusine) ACME client                                                                       |
| [idstore](idstore)         | The [idstore](https://www.io7m.com/software/idstore/) identity server.                                                                     |
| [looseleaf](looseleaf)     | The [looseleaf](https://www.io7m.com/software/looseleaf) key/value store                                                                   |
| [postservice](postservice) | A mail appliance using [postfix](https://www.postfix.org/), [dovecot](https://www.dovecot.org/), and [OpenDKIM](http://www.opendkim.org/). |

## Usage

Install `wget`, `gpg`, and `docker`.

```shell
$ ./make.sh
```

To make an individual image (for example, `postservice`):

```shell
$ ./make-one postservice
```
