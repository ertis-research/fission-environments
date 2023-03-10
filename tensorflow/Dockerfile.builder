ARG DOCKER_TENSOR_TAG=2.11.0
FROM tensorflow/tensorflow:${DOCKER_TENSOR_TAG}

COPY --from=fission/python-builder-3.10:1.34.0 /usr/local/bin/build /usr/local/bin/build
COPY --from=fission/python-builder-3.10:1.34.0 /builder /builder

# From https://github.com/fission/environments/blob/b0c38112f9a222a8101450238e6b2b31a9e857ce/python/builder/Dockerfile#L12
RUN apt update -y
RUN apt install -y python3-dev gcc bash
RUN ln -sf `which bash` `which sh`
EXPOSE 8001
