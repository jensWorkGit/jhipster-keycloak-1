# Keycloak configuration
## Docker image
  * `KEYCLOACK_USER=admin`
  * `KEYCLOACK_PASSWORD=admin`
## Example
```
docker run \
-p 8080:8080 -p 8443:8443 -p 9990:9990 \
-v ./realm.json:/opt/jboss/keycloak/realm.json \
-e KEYCLOAK_USER=admin -e KEYCLOAK_PASSWORD=admin \
danielpetisme/keycloak
```
## Defaut Configuration
### Realm
  * `Jhipster`
### Clients
#### Web App  
  * Client Id: `web_app`
  * Client Secret: `web_app`
  * Access Type: `Public Client`
  * Root Url: `http://localhost:8080/`
  * Redirect Uris: `http://localhost:8080/*`
  * Web Origins: `http://localhost:8080/*`

#### Internal
  * Client Id: `internal`
  * Client Secret: `internal`
  * Access Type: `Bearer Only`

### Roles
  * `ROLE_USER`
  * `ROLE_ADMIN`
### Groups
  * `Users` has role `ROLE_USER`
  * `Admins` has role `ROLE_ADMIN`

### Users
  * Login: `user`
  * Password: `user`
  * Groups: `Users`


  * Login: `admin`
  * Password: `admin`
  * Groups: `Admins`
