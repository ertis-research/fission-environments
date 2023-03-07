# Fission environments

Additional environments and builders for [Fission](https://fission.io)

- `tensorflow`: Includes `tensorflow-env` and `tensorflow-builder`
- `tensorflow-arm`: Includes `tensorflow-arm-env` and `tensorflow-arm-builder`

# Usage

Pick the desired image and version from our
[packages page](https://github.com/ertis-research/fission-environments/packages)

```sh
# For tensorflow linux/amd64
fission env create --name 'my-env' \
  --image ghcr.io/ertis-research/tensorflow-builder:master \
  --builder ghcr.io/ertis-research/tensorflow-builder:master
```
