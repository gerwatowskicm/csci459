* **Title**: Why is it important to support CRUD?

* **Status**: Accepted

* **Context**: The purpose of the assignment is to use and display database information. By using CRUD operations, the user can create, read, update, and delete entries in the database.

* **Decision**: Having CRUD operations is important because the information should be easily manipulated. The application would not be of much use if it did not accomplish these tasks. Static data is not useful in a database.

* **Consequences**: The user can utilize the functionality of the database on the front end to perform actions.

* **How and why is it necessary to support all of CRUD?**
The acronym CRUD stands for create, read, update and delete. These are the four basic functions of persistent storage. It is necessary to use CRUD for many reasons. When a stored procedure is first executed, the execution plan is stored in SQL Server’s procedure cache and reused for all applications of the stored procedure. When a SQL statement is executed in SQL Server, the relational engine searches the procedure cache to ensure an existing execution plan for that particular SQL statement is available and uses the current plan to decrease the need for optimization, parsing and recompiling steps for the SQL statement. Furthermore, using CRUD operations helps to prevent SQL injection attacks.

* **Is your application RESTful? Explain why this is important and what it means to your
application.**
A RESTful application uses GET requests to look up and retrieve information. It also uses PUT, POST, and DELETE requests for mutation, creation, and deletion. My application is RESTful because it follows all of these guidelines. I use GET requests for retrieval and POST for creation. RESTful applications achieve reliability, quick performance, and scalability, as components that can be managed, updated, and reused without affecting the system as a whole, even during operation of the system.

* **Explain whether (and why) your database is ACID or BASE compliant? In particular,
does your application need these guarantees?**
My database is ACID because it is Atomic, Consistent, Isolated, and Durable. All of the operations in a transaction succeed or every operation is rolled back. On the completion of a transaction, the database is structurally sound. Transactions do not contend with one another. Contentious access to data is moderated by the database so that transactions appear to run sequentially. The results of applying a transaction are permanent, even in the presence of failures. My database is relatively simple, so being ACID is not very difficult.

* **If your application follows the MVC architectural pattern, how does it do so?**
My application does follow the MVC architectural pattern. The model defines what data the app should contain. If the state of this data changes, then the model will notify the view. The view defines how the app's data should be displayed. The controller contains logic that updates the model and/or view in response to input from the users of the app.
