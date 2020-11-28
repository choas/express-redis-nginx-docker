# Express Redis Nginx Docker app

This is a __CONTAINER BRANCH__ where I create standalone containers.

## Getting Started

Requirements: [Docker Community Edition](https://www.docker.com/community-edition)

Create docker images with: `./build_images.sh`.

To start the app run: `docker-compose up`.

It will then be started on port 3000.

This example is based on the [HugoDF/express-redis-docker](https://github.com/HugoDF/express-redis-docker) example.

## Endpoints

### Hello World

```sh
curl http://localhost:3000
```

### Storing Data

```sh
curl "http://localhost:3000/store/my-key?some=value&some-other=other-value"
```

### Fetching Data

```sh
curl http://localhost:3000/my-key
```

### More Key Values

```sh
while true ; do \
  export k=`date +%s` ; \
  export v=`date +%T` ; \
  echo $k ; \
  curl "http://localhost:3000/store/$k?time=$v" ; \
done
```

## More

See also blog post [docker-compose and Nginx](https://www.larsgregori.de/2020/11/24/docker-compose-and-nginx/)

## License

This project is licensed under the [MIT](LICENSE/MIT.txt) license.
