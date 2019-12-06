# Nestjs + Mysql-SampleAPI
This is a simple API developped in Nestjs (A progressive Node.js framework to build efficient,reliable and sclable server-side applications).

This API is linked to a MYSQL database. All HTTP methods (SELECT, POST, PUT, DELETE) are implemented and work's correctly.
To configure your database you must modify the ormconfig.json file :

```json
{
    "type": "mysql",
    "host": "localhost",
    "port": 3306,
    "username": "YOUR_USERNAME",
    "password": "YOUR_PASSWORD",
    "database": "meme",
    "entities": ["dist/**/*.entity{.ts,.js}"],
    "synchronize": true
  }
```
