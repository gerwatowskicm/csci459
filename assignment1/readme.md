# Assignment 1

The point of this assignment is to build a simple containerized environment with a webserver and a database.

## Files

### `run_container.sh`

This file contains the command-line commands to build the Docker images and run the containers. The individual commands may be copied and pasted into a command line or the file will run as a Bash shell script on a Linux of MacOS system.

## Directories

### adr

This directory contains the Architectural Design Records

### mysql

This directory contains the files necessary to build the Docker container for the mysql database.

### webserver

This directory contains the files necessary to build the container for the web server and display the data.

#### action

This directory, inside of the web server directory, connect to the database and performs the CRUD operations.
