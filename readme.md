# Centos with Libreoffice and many Fonts

Example docker-compose.yml

```yaml
version: "3"
services:
  centos:
    image: vuthaihoc/centos_office:c7o5
    ports:
     - "8081:9999"
    volumes:
     - ./docs/:/docs/
    entrypoint: "java"
    command: "-jar /jodconverter/jodconverter_rest.jar --server.port=9999 --jodconverter.local.port-numbers=3000,3001"
```

## Tags

- c7o5 : Centos 7 and Libreoffice 5