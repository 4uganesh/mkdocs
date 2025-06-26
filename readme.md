# MkDocs Project

## Installation

To install MkDocs, follow the instructions provided in the [MkDocs Installation Guide](https://www.mkdocs.org/user-guide/installation/#installing-mkdocs).

### Prerequisites
Ensure Python is installed on your system. If Python is not installed, download and install it from the [official Python website](https://www.python.org/downloads/).

### Install MkDocs
Run the following command to install MkDocs:

```bash
pip install mkdocs
```

Verify the installation by checking the version:

```bash
mkdocs --version
```

Example output:
```
mkdocs, version 1.2.0
```

---

## Using Docker

### Build and Run the Site
To build and run the MkDocs site using Docker, execute the following command:

```bash
docker build -t mkdocs-docker .
```

### Producing the Site
To generate the static site files, use the following command:

```bash
docker run --rm -v $(pwd)/Mkdocs:/src -v $(pwd)/site:/site mkdocs-docker produce
```

### Serving the Site
To serve the site locally, run:

```bash
docker run --rm -p 8000:8000 -v $(pwd)/site:/site mkdocs-docker serve
```

Access the site at `http://localhost:8000`.

---

## Additional Resources

For more information, visit the [MkDocs Documentation](https://www.mkdocs.org/).
