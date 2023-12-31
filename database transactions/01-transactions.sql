--with transactions we can control execution of specific statements which should be executed all together or none at all if any of the queries /  statements failed. a transaction should start for current session.
--to start transaction we use keyword START TRANSACTION (mysql) and BEGIN (postgresql)
--when we start transaction we store results internally in memory but we dont immediatly write it to database. only if all the statements / queries are successfull then we can decide these changes should be commited and written to the database.
--with rollback we can revert the changes made since start of transaction. ROLLBACK terminates (stop) the transaction.
--COMMIT adds the changes to database. COMMIT terminates (stop) the transaction.
--if we start new transaction when other transaction is still running then changes will be commited automatically. because some statements cause implicit commit. (START TRANSACTION (mysql), BEGIN (postgresql), CREATE TABLE, DROP TABlE etc.)
--SAVEPOINT. we might have a situation where we want to set certain SAVEPOINTS. (savepoints we can rollback to.) we can add SAVEPOINT after corresponding statement / query that we want to rollback to.
--to rollback to specific savepoint we can add ROLLBACK TO keyword and mention savepoint identifire. (rollback to specific savepoint does not terminate the transaction.)