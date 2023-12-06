# A simple Haskell website use scotty

## Install && Run
`cabal build` and `cabal run`  and the website is running at `localhost:8081`

Query `http://localhost:8081/haskell/car/list` you will get:

```
[{
	"brand": "Ford",
	"id": 1,
	"name": "Ford F-series",
	"price": 1000000,
	"quantity": 1
}, {
	"brand": "Tesla",
	"id": 2,
	"name": "Model Y",
	"price": 2000000,
	"quantity": 1
}, {
	"brand": "Honda",
	"id": 3,
	"name": "CR-V",
	"price": 3000000,
	"quantity": 1
}, {
	"brand": "Toyota",
	"id": 4,
	"name": "Camry",
	"price": 5000000,
	"quantity": 1
}, {
	"brand": "Toyota",
	"id": 5,
	"name": "RAV4",
	"price": 4000000,
	"quantity": 1
}, {
	"brand": "Nissan",
	"id": 6,
	"name": "Rogue",
	"price": 7000000,
	"quantity": 1
}, {
	"brand": "Toyota",
	"id": 7,
	"name": "Corolla",
	"price": 2000000,
	"quantity": 1
}, {
	"brand": "GMC",
	"id": 8,
	"name": "CMC Series",
	"price": 1000000,
	"quantity": 1
}, {
	"brand": "Chevrolet",
	"id": 9,
	"name": "Sliverado",
	"price": 9000000,
	"quantity": 1
}]

```

## About code

- backend
  - domain : place car domain function e.g : queryCarList, addCarList...
  - infra : place your infra e.g: mysql, redis...
  - main.hs : entry point