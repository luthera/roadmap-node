![planview logo](https://www.planview.com/wp-content/themes/planview-wp-theme/img/Planview_logo_white_CMYK.svg)

# Current State

This is a **prototype** for a roadmap application **completely written in TypeScript**.

The prototype is using the following technologies (SEAN):

- **S**QLServer
- **E**xpressJS
- **A**ngular 6
- **N**odeJs

# Installation

## Prerequisites ##

- node (v6, v8 or v10) and npm
- git
- angular-cli (see https://github.com/angular/angular-cli)
- Docker (optional)

## Install ##

### Cloning the project
```
git clone <bitbucket_link> your-project-name
cd your-project-name
```

### Setting up the database

The easiest way to set up the SQLServer database is to use docker and run:
```
docker run -p 1433:1433 --name mssql planview/mssql:roadmap-1.0
```
This spins up a docker container with a SQLServer instance that has matching settings with the backend. You can also set up SQLServer directly on your system and create the databases with settings like you find them in `backend/properties/development.properties` and `backend/properties/test.properties` manually. Of course, you can also change the settings you find there to match your needs (for example setting a different user or password or database name).


### Installing all node modules
```
npm install
```

Under the hood [lerna](https://github.com/lerna/lerna) is used to install the multiple packages in backend, frontend and shared, but you don't need to be concerned with this too much for now.

# Backend

First `cd backend`, then:

- to spin up a REST-API server `npm start`. Check it out at http://localhost:4242
- To run the tests `npm test`


# Frontend
First `cd frontend`, then:

- to start the Angular app `npm start`. Check it out on http://localhost:4200
- you can develop all modules independently. For example, `cd src/app/user` and run `ng serve`.
This launches a minimal app only displaying the user module (i.e. without login etc).
You can test all modules using `ng test`.

More info available in [frontend docs](./frontend/README.md).

# Live Demo
