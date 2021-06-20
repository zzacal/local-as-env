#! /bin/bash
curl --location --request POST 'localhost:5111/mock' \
--header 'Content-Type: application/json' \
--data-raw '{
    "request": {
        "path": "/1/marketing/loyaltymanagement/account/graphql/",
        "params": {},
        "body": {
            "query": "{member(memberId: \"47dd064a-e890-42a5-970c-3ec4400bd82d\") { email, mileagePlanNumber, legalName { firstName, lastName }, mailingAddress { buildingRoom, cityName, countryCode, postalCode, stateProvince, streetNumber }, billingAddresses {isPrimary, streetNumber, buildingRoom, cityName, cityName, stateProvince, countryCode, postalCode, displayName, id}}}"
        }
    },
    "response": {
        "type": "obj",
        "status": "200",
        "body": {
            "data": {
                "member": {
                    "email": "james.traveler@alaskaair.com",
                    "mileagePlanNumber": "300075941",
                    "legalName": {
                        "firstName": "Nick",
                        "lastName": "Tester"
                    },
                    "mailingAddress": {
                        "buildingRoom": "Apt 111",
                        "cityName": "Seattle",
                        "countryCode": "US",
                        "postalCode": "98119",
                        "stateProvince": "WA",
                        "streetNumber": "123 Fake St"
                    },
                    "billingAddresses": [
                        {
                            "isPrimary": true,
                            "streetNumber": "123 primary billing lane",
                            "buildingRoom": "apt 123",
                            "cityName": "Seattle",
                            "stateProvince": "WA",
                            "countryCode": "US",
                            "postalCode": "98119",
                            "displayName": "",
                            "id": "A2"
                        },
                        {
                            "isPrimary": false,
                            "streetNumber": "123 secondary billing lane",
                            "buildingRoom": "apt 123",
                            "cityName": "Seattle",
                            "stateProvince": "WA",
                            "countryCode": "US",
                            "postalCode": "98119",
                            "displayName": "",
                            "id": "A3"
                        }
                    ]
                }
            }
        }
    }
}' && \
curl --location --request POST 'localhost:5111/mock' \
--header 'Content-Type: application/json' \
--data-raw '{
    "request": {
        "path": "/1/marketing/loyaltyManagement/lounge/",
        "params": {},
        "body": {
            "body": {
                "MileagePlanNumber": "300075941",
                "PartnerName": "INTERNAL-ALASKA_LOUNGE"
            }
        }
    },
    "response": {
        "type": "obj",
        "status": "200",
        "body": {
            "endMembershipDate": "6/30/2021",
            "solarStatus": "00",
            "membershipType": "ANNUAL MEMBER",
            "solarMessage": "SBL-Active Lounge Member",
            "loungeRenewalDt": "5/1/2021",
            "tier": "MVP Gold 75K",
            "bofaCardDesig": "",
            "mileagePlan": "300075941",
            "eligibleToRenew": "true",
            "millionMilerInd": "No",
            "firstName": "NICK",
            "lastName": "TESTER"
        }
    }
}' && \
curl --location --request POST 'localhost:5111/mock' \
--header 'Content-Type: application/json' \
--data-raw '{
    "request": {
        "path": "/account/token",
        "params": {},
        "body": {}
    },
    "response": {
        "type": "obj",
        "status": "200",
        "body": {
            "loggedIn": true,
            "token": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJHdWlkIjoiNDdkZDA2NGEtZTg5MC00MmE1LTk3MGMtM2VjNDQwMGJkODJkIiwiSXNTdXBlclVzZXIiOiJGYWxzZSIsIkNvbnRhY3RJZCI6IjEtVEUwTk42IiwiYmlydGhkYXRlIjoiNC8zMC8xOTg1IiwiZ2l2ZW5fbmFtZSI6Ik5pY2siLCJmYW1pbHlfbmFtZSI6IlRlc3RlciIsIk1pbGVhZ2VQbGFuIjoiMzAwMDc1OTQxIiwibmJmIjoxNTc5ODkyMTY3LCJleHAiOjE5Nzk4OTI0NjcsImlhdCI6MTU3OTg5MjE2NywiaXNzIjoiaHR0cHM6Ly93d3cuYWxhc2thYWlyLmNvbSIsImF1ZCI6Imh0dHBzOi8vd3d3LmFsYXNrYWFpci5jb20ifQ.88OvDnWXZ4hIbOH7z1DjIi3cU8UDI4J6D6MGH2m2Si8",
            "type": "mad type",
            "lifetime": 99999,
            "accountGuid": "47dd064a-e890-42a5-970c-3ec4400bd82d",
            "alaskaLoyaltyNumber": "123456"
        }
    }
}'