ARG DOCKER_TENSOR_TAG=r23.02-tf-2.11.0-onednn-acl_threadpool
FROM armswdev/tensorflow-arm-neoverse:${DOCKER_TENSOR_TAG}

COPY --from=fission/python-builder-3.10:1.34.0 /usr/local/bin/build /usr/local/bin/build
COPY --from=fission/python-builder-3.10:1.34.0 /builder /builder

# From https://github.com/fission/environments/blob/b0c38112f9a222a8101450238e6b2b31a9e857ce/python/builder/Dockerfile#L12
RUN apt install -y python3-dev build-base gcc bash
EXPOSE 8001
