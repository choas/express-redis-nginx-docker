# Express Redis Nginx Docker app

This example is based on the [HugoDF/express-redis-docker](https://github.com/HugoDF/express-redis-docker) example.

## Getting Started

Requirements: [Docker Community Edition](https://www.docker.com/community-edition)

To start the app run: `docker-compose up`.

It will then be started on port 3000.

## Endpoints

### Hello World

```sh
curl http://localhost:3000
```

### Storing Data

```sh
curl http://localhost:3000/store/my-key\?some\=value\&some-other\=other-value
```

### Fetching Data

```sh
curl http://localhost:3000/my-key
```

## More

See also blog post [docker-compose and Nginx](https://www.larsgregori.de/2020/11/24/docker-compose-and-nginx/)

## License

This project is licensed under the [MIT](LICENSE/MIT.txt) license.
