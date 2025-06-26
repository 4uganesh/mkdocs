# MkDocs Project

Install the MkDocs

https://www.mkdocs.org/user-guide/installation/#installing-mkdocs

Check python is installed. if not install python and run the below command to install the mkdocs.

pip install mkdocs
mkdocs --version

mkdocs, version 1.2.0


Docker Usage

Build and run the site using Docker:

docker build -t mkdocs-docker .


To Produce the site

docker run --rm -v ${{ github.workspace }}/Mkdocs:/src -v ${{ github.workspace }}/site:/site mkdocs-docker produce

To serve the site

docker run --rm -p 8000:8000 -v $(pwd)/site:/site mkdocs-docker serve
