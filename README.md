# Run docker-compose (Development)

1. First drop all images < none >

```
docker image prune --filter="dangling=true"
```

2. And run docker-compose

```
docker-compose -f docker-compose.dev.yml up --build -d
```

<br>

> Runs app in the development mode.<br />
> Open [http://localhost:3001](http://localhost:3001) to view it in the browser.

<br>

The page will auto reload if you make edit in js file. (Support Live Reloading)<br />
You will also see any logs / errors in the Docker Desktop console.

<br><br>

# Run docker-compose (Production)

https://gist.github.com/rendyproklamanta/e9c1942862b904634329156d55da3b42

<br>

# Auto deploy to server using (gitlab-ci.yml)

https://gist.github.com/rendyproklamanta/ca50656d4474125258d811f8d7c4f4e6

<br>
<br>
<hr>
<br>

NOTE :

- delete all container, images, volumes (clear all):

```
docker system prune -a
```

- delete all volumes :

```
docker system prune --volumes
```
