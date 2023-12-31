<p align="center">
  <a href="https://goldenmanbel.github.io/project-management-app/" target="_blank"><h1 align="center">API_Vezha</h1></a>
</p>
<p align="center"> 
  <a href="http://nestjs.com/" target="_blank"><img src="https://nestjs.com/img/logo_text.svg" width="120" alt="Nest Logo" /></a>
</p>

## Description

API for Vezha(clone trello)
<br />
Vezha - project manager app!

<p>
  <h2 align="center">Documentation for endpoints API</h2>
  <h3>Doc <a href="http://localhost:4000/doc" target="blank">localhost:4000/doc</a> - detailed documentation</h3>
  <h3>Home <a href="http://localhost:4000/" target="blank">localhost:4000</a> - home page, check if the server is running</h3>

  <ul>
    <li><h3><u>localhost:4000/login</u> - authorization</h3> 
      <ul>
        <li><font color="4040ff">POST</font> <u>login</u> - get token</li> 
      </ul>
    </li>
    <li><h3><u>localhost:4000/users</u> - requires authorization(header: authorization Bearer token)</h3> 
      <ul>
        <li><font color="4040ff">POST</font> <u>users</u> - add user</li> 
        <li><font color="green">GET</font> <u>users</u> - get all users</li>
        <li><font color="green">GET</font> <u>users/:id</u> - get user by id</li>
        <li><font color="yellow">PUT</font> <u>users/:id</u> - update user by id</li>
        <li><font color="red">DELETE</font> <u>users/:id</u> - delete user by id</li>
      </ul>
    </li>
    <li><h3><u>localhost:4000/boards</u> - requires authorization(header: authorization Bearer token)</h3> 
      <ul>
        <li><font color="4040ff">POST</font> <u>boards</u> - add board</li> 
        <li><font color="green">GET</font> <u>boards</u> - get all boards</li>
        <li><font color="green">GET</font> <u>boards/:id</u> - get board by id</li>
        <li><font color="yellow">PUT</font> <u>boards/:id</u> - update board by id</li>
        <li><font color="red">DELETE</font> <u>boards/:id</u> - delete board by id</li>
      </ul>
    </li>
    <li><h3><u>localhost:4000/boards/:boardId/tasks</u> - requires authorization(header: authorization Bearer token)</h3> 
      <ul>
        <li><font color="4040ff">POST</font> <u>tasks</u> - add task</li> 
        <li><font color="green">GET</font> <u>tasks</u> - get all tasks</li>
        <li><font color="green">GET</font> <u>tasks/:id</u> - get task by id</li>
        <li><font color="yellow">PUT</font> <u>tasks/:id</u> - update task by id</li>
        <li><font color="red">DELETE</font> <u>tasks/:id</u> - delete task by id</li>
      </ul>
    </li>
    <li><h3><u>localhost:4000/boards/:boardId/columns</u> - requires authorization(header: authorization Bearer token)</h3> 
      <ul>
        <li><font color="4040ff">POST</font> <u>columns</u> - add column</li> 
        <li><font color="green">GET</font> <u>columns</u> - get all columns</li>
        <li><font color="green">GET</font> <u>columns/:id</u> - get column by id</li>
        <li><font color="yellow">PUT</font> <u>columns/:id</u> - update column by id</li>
        <li><font color="red">DELETE</font> <u>columns/:id</u> - delete column by id</li>
      </ul>
    </li>
    <li><h3><u>localhost:4000/file</u> - key: file, value: upload file</h3> 
      <ul>
        <li><font color="4040ff">POST</font> <u>file</u> - add file(requires authorization(header: authorization Bearer token))</li> 
        <li><font color="green">GET</font> <u>file/:fileName</u> - get file by name</li>
      </ul>
    </li>
</ul>
</p>

## Prerequisites

- Git - [Download & Install Git](https://git-scm.com/downloads).
- Node.js - [Download & Install Node.js](https://nodejs.org/en/download/) and the npm package manager.

## Downloading

```bash
git clone https://github.com/GoldenManBel/API_Vezha.git
```

## Installing NPM modules

```bash
npm ci
```

## Running application in docker

```bash
docker compose up --build
```

```bash
# e2e tests
npm run test:auth

```
or

```bash
docker exec -i -t app sh
```
```bash
# e2e tests
npm run test:auth
```

## Running application local and bd in docker

```bash
docker build -t postgres database. 
```
```bash
docker run -dp 5432:5432 --rm -e POSTGRES_HOST_AUTH_METHOD=trust postgres
```
```bash
# watch mode
npm run start:dev 
```
```bash
# e2e tests
npm run test:auth
```

## Migrations generate

```bash
npm run migration:generate
```

## Auto-fix and format

```bash
npm run lint
```
