ARG DOCKER_TENSOR_TAG=r23.02-tf-2.11.0-onednn-acl_threadpool
FROM armswdev/tensorflow-arm-neoverse:${DOCKER_TENSOR_TAG}

COPY --from=fission/python-env-3.10:1.34.0 /app /app

# From https://github.com/fission/environments/blob/b0c38112f9a222a8101450238e6b2b31a9e857ce/python/Dockerfile#L14
WORKDIR /app
RUN apt-get update -y
RUN apt-get install -y python3-dev libev-dev
RUN pip3 install -r requirements.txt
ENV PYTHONUNBUFFERED 1
ENTRYPOINT ["python3"]
CMD ["-c", "import tensorflow;import server"]
