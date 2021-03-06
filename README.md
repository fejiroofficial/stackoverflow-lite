# stackoverflow-lite

[![Build Status](https://travis-ci.com/fejiroofficial/stackoverflow-lite.svg?branch=develop)](https://travis-ci.com/fejiroofficial/stackoverflow-lite)
[![Coverage Status](https://coveralls.io/repos/github/fejiroofficial/stackoverflow-lite/badge.svg?branch=develop)](https://coveralls.io/github/fejiroofficial/stackoverflow-lite?branch=develop)
[![Maintainability](https://api.codeclimate.com/v1/badges/5f56a62af1ec8ef51d6c/maintainability)](https://codeclimate.com/github/fejiroofficial/stackoverflow-lite/maintainability)

Andela developer challenge: Stack Overflow-lite is a platform where people can ask questions and provide answers. UI template [`here`](https://fejiroofficial.github.io/stackOverflow-lite)

## Features

* [x] Users can create an account and log in.
* [X] Users can view a list of recently asked questions on the platform.
* [X] Users can view a question with all the answers posted for it and add an answer. 
* [X] Users post a question. 


## Technologies Used

* [NodeJS](https://nodejs.org/en/)
* [ExpressJs](https://expressjs.com/)


## Installation

Install [`node`](https://nodejs.org/en/download/), version 8 or greater

Clone the repo:
```sh
git clone https://github.com/fejroofficial/stackOverflow-lite.git
```

Start server:
```sh
npm start
```


## API Routes

|   HTTP VERB   | ENDPOINT                         | FUCTIONALITY                          |
| ------------- | ---------------------------------| --------------------------------------|
| POST          | api/v1/auth/:id/signin           | Register a user                       |
| POST          | api/v1/questions/:id/login       | Add an answer                         |
| GET           | api/v1/questions                 | Fetch all questions                   |
| GET           | api/v1/questions/:id             | Fetch a specific question             |
| POST          | api/v1/questions                 | Add a question                        |
| POST          | api/v1/questions/:id/answers     | Add an answer                         |
| DELETE        | api/v1/questions/:id             | Delete a question                     |
| PUT           | api/v1/questions/:id/answers/:id | Add an answer                         |




Api is hosted [`here`](https://stack-over-flow-lite.herokuapp.com/api/v1)


## UI Templates

UI is hosted [`here`](https://fejiroofficial.github.io/stackOverflow-lite)

