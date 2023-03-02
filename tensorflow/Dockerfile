ARG DOCKER_TENSOR_TAG=2.11.0
FROM tensorflow/tensorflow:${DOCKER_TENSOR_TAG}

COPY --from=fission/python-env-3.10:1.34.0 /app /app

# From https://github.com/fission/environments/blob/b0c38112f9a222a8101450238e6b2b31a9e857ce/python/Dockerfile#L14
WORKDIR /app
ENV PYTHONUNBUFFERED 1
ENTRYPOINT ["python3"]
CMD ["server.py"]