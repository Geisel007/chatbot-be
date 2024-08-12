# chatbot-be

# Chatbot Backend
This backend is designed to manage the responses for a chatbot application. It interacts with a SQL Server database to handle requests and provide the necessary responses.

## Features
- Express.js for server-side routing.
- SQL Server database integration using mssql library.
- Includes stored procedures to handle data operations.
- API endpoints for retrieving and inserting chatbot responses.
- Middleware for request validation using express-validator.

## Getting Started
### Prerequisites
- Node.js
- SQL Server
- npm
### Installation
Clone the repository:

```javascript
git clone https://github.com/Geisel007/chatbot-be.git
```
### Install dependencies
```javascript
cd chatbot-be
npm install
```
### Database Setup
Navigate to the scripts folder:
```javascript
cd database
```
Run GenerateDatabase.sql to create the necessary database structure.
Run InsertData.sql to populate the database with initial data.
### Running the Server
Ensure your SQL Server is running and configured correctly.
Start the server:
```javascript
npm start
```
### API Endpoints
- GET /api/response:
Retrieves a chatbot response based on the question_pattern provided.
Example:
```javascript
http://localhost:3000/api/response?question_pattern=hello
```
- POST /api/response:
Inserts a new chatbot response into the database.
Example:
```javascript
http://localhost:3000/api/response 
{
    "question_pattern": "how are you?",
    "response_text": "I am a bot, feeling binary!"
}
```
### Folder Structure
controllers/ - Contains logic for handling requests.

routes/ - Defines API routes.

database/ - SQL scripts for database setup and data insertion.

constants/ - Configuration files, e.g., database connection.

validations/ - For validating incoming data
