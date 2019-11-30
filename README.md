## Nginx Redirector
A simple nginx server which redirects all of the requests to your domain.

## Why?
This was useful for me in order to create a custom url for a google photos album.

## Usage
With the nginx [configuration](/nginx.conf) you will also find a [Dockerfile](/Dockerfile).
The docker file expects to recieve the following environment arguments.

* `PORT` - The port on which the nginx will listen, This was useful for me because the container was hosted on [heroku](https://heroku.com), which gives a random port to its dyno's.
* `REDIRECT_LINK` - The link to which the server should redirect, Please notice that you need to escape `/` with `\`. For example `http:\/\/mysite.com\/`.

## Personal usage
I created this server in order to have a custom link for my google photos album. Currently the container is hosted on the free plan dyno on [heroku](https://heroku.com) with a custom domain that I bought on [godaddy](https://godaddy.com).