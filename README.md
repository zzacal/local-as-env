# local-as-env

## Startup the dependencies
Start this local env by:
1. have docker desktop running
1. run `docker-compose up`

## Get buffy and point its dependencies to your local
1. clone buffy
1. go through the readme and follow start up instructions
1. **add or update the following in .env. (Don't forget to backup your envs before updating) `APIM_BASE_URL=http://localhost:5111/` && `ACCOUNT_JWT_SECRET=somesecret`**
1. at the root of buffy's repo. `npm i && npm start`

## Get willow and point its dependencies to your local
1. clone willow
1. go through the readme and follow startup instructions
1. **add or update the followuing in .env.local `TOKEN_HOST=http://localhost:5111` && `REACT_APP_LOUNGE_SERVICE_BASE_URL=http://localhost:5000`**
1. at the root of willow's repo `npm i && npm start`

## Update the responses from the dependencies
You might want buffy to return a different type of user than what's in the sample startup script. You need to tell your local mock server what kind of user it should return.
To help speed this up, use the postman collection in the `postman/` folder.
You can also use curl. Hint: inspect the `sample-startup.sh` script to get you going faster.
