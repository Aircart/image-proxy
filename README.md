# image-proxy

This container is nginx configured to as a caching and resize/crop image proxy.

## How to run

```
docker run -p 80:80 --name images image-proxy
```

## Image Processing

Basic syntax:
```
http://host:port/(resize|crop)/[x]x[y]/[url]
```

For example:
```
http://images.aircartapp.com/resize/100x100/http://i1.ytimg.com/vi/SMQK9_N0pks/maxresdefault.jpg
```
