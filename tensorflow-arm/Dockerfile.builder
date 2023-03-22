FROM python:3.10-buster
RUN pip3 install tensorflow==2.11.0


COPY --from=fission/python-builder-3.10:1.34.0 /usr/local/bin/build /usr/local/bin/build
COPY --from=fission/python-builder-3.10:1.34.0 /builder /builder

# From https://github.com/fission/environments/blob/b0c38112f9a222a8101450238e6b2b31a9e857ce/python/builder/Dockerfile#L12
RUN sudo apt update -y && sudo apt install -y python3-dev gcc bash
RUN sudo ln -sf `which bash` `which sh`
EXPOSE 8001
