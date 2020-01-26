# `erlang-s2i`

> alpine images for building and running Erlang on OpenShift

- Based on the official [Erlang Docker images](https://github.com/erlang/docker-erlang-example)
  - Alpine base
  - Assumes the application is listening on ports 8080 and/or 8443
- Uses [separate build and runtime images](https://github.com/openshift/source-to-image/blob/master/docs/runtime_image.md)
  - `s2i` does not support Docker build stages, but this concept is close

See the [`s2i` docs](https://github.com/openshift/source-to-image) for more detailed information.

## Getting the images

``` sh
$ docker pull donkeybanana/s2i-erlang-builder
$ docker pull donkeybanana/s2i-erlang-runtime
```

Alternatively, clone this repo and build locally

``` sh
$ make images

# or

$ docker build -t donkeybanana/s2i-erlang-builder builder
$ docker build -t donkeybanana/s2i-erlang-runtime runtime
```

## Local Usage (with `s2i`)

Using https://github.com/erlang/docker-erlang-example as our example application:

``` sh
# Clone the application repository
$ git clone https://github.com/erlang/docker-erlang-example

# Run s2i
$ s2i build docker-erlang-example/dockerwatch \ # local path as build input
            donkeybanana/s2i-erlang-builder \ # builder image
            --runtime-image donkeybanana/s2i-erlang-runtime \ # specify runtime image
            donkeybanana/erlang-dockerwatch # output image
```

