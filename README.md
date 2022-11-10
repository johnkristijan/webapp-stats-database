# Webapp stats database #
This repo shows an example setup guide how to establish and manage a postgreSQL database, to be used with webapp-stats-backend.

## prerequisites ##
- a dedicated server or cloud server with docker and ssh access
- open/forward port 5432 and obtain the ip or domain of the server
- psql client installed on your development computer

## database setup ##
SSH into your server, this example shows how to setup a postgreSQL database on ubuntu 20+ with docker

- Create the psql docker container
```
docker run --name postgresql -e POSTGRES_USER=myusername -e POSTGRES_PASSWORD=mypassword -p 5432:5432 -d postgres
```
_you may need to add sudo in front of docker command_

Now, if you have opened port 5432 on your server you should be able to access your psql server from the command line using this command:
```
psql -h xxx.xxx.xxx.xxx -p 5432 -d postgres -U myusername
```
_when prompted for the password, use the same as you provided in the docker run command_

You should see `postgres=#` in your cli, after that type `\q` and hit `ENTER` to exit the psql server.

You are now ready to create the database tables.

## table setup ##
After the database has been created (see previous section),
you should proceed to create the following two tables:
- apps
- stats

You should connect to the psql server instance and follow the instructions in the `QUERIES.sql` file to create these two tables.
This file also contains SQL queries to empty the database tables and how to delete/drop them.
