# Using C# and MySQL with Docker

**NOTE:** I made this repository on a Windows machine

**NOTE 2:** You wouldn't want to keep the environment files and appsettings.json files with source control

**NOTE 3:** You could (and probably should) put the docker-compose and all the rest of the files in the same directory as the solution file

## Prerequisites
- dotnet
- docker

## C# + Docker

### Creating the project

```
dotnet new sln --name <Name of C# solution>
dotnet new webapi -o <Name of C# solution>.Api
```

What I also did was I went into the launchSettings.json under the Properties folder of the Web Api and I changed the "applicationUrls" setting under "profiles" to use the ports 5001 and 5000 for HTTPS and HTTP respectively. The default ports seem a little random and I don't like them.

### Update toolset for Entity Framework
```
dotnet tool install --global dotnet-ef
```


### Installing packages

```
dotnet add package Pomelo.EntityFrameworkCore.MySql
dotnet add package Microsoft.EntityFrameworkCore.Design
```

### Generate models if you have database first

```
dotnet ef dbcontext scaffold <Connection string from localhost> "Pomelo.EntityFrameworkCore.MySql"
```

It's important that this command is run properly. The connection string is different to the one in the appsettings.json of the Api project, since that is for the Api to access the database in the docker container.

Also make sure to move the generated .cs files to the Models folder.
