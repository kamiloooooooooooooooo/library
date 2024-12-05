
# Library Management System

>A web-based Library Management System to manage library operations such as book cataloging, user management, and borrowing records. Built using PHP and Composer for dependency management.

## Frameworks/Libraries:
- Uses frameworks like Slim (a PHP micro-framework) and Pimple (for dependency injection).
- Includes JWT (JSON Web Token) for authentication.

## Key Directories/Files:
- ```bashpublic/index.php```: Likely the entry point for the API.
- ```bashsrc/```: Contains application-specific logic.
- ```bashvendor/```: Contains third-party dependencies (Composer-based).

>The application is built using the Slim framework with support for JWT-based authentication. The endpoints include functionalities for managing users, authors, books, and their relationships.

## API Endpoints:
1. User Management:
- ```basPOST /user/register```: Register a new user.
- ```basPOST /user/auth```: Authenticate user and issue a JWT token.

2. Author Management:
- ```basPOST /authors```: Add a new author.
- ```basGET /authors/get```: Retrieve all authors.
- ```basPUT /authors/update/{id}```: Update an author's information.
- ```basDELETE /authors/delete/{id}```: Delete an author.

3. Book Management:
- ```basPOST /books```: Add a new book.
- ```basGET /books/get```: Retrieve all books.
- ```basPUT /books/update/{id}```: Update a book's details.
- ```basDELETE /books/delete/{id}```: Delete a book.

4. Book-Author Relationships:
- ```basPOST /books_authors```: Create book-author relationships.
- ```basGET /books_authors/get```: Retrieve all book-author relationships.
- ```basDELETE /books_authors/delete/{id}```: Delete a book-author relationship.

5. Utility:
- Tokens are validated, and a new token is issued for every successful request.

## Features
- **User Management**: Register, login, and manage user profiles.
- **Book Cataloging**: Add, edit, and search books.
- **Borrowing System**: Manage book borrowing and return records.
- **Responsive Design**: Accessible from various devices.

## Project Structure
```
LIBRARY_1/
├── .git/                  # Version control system folder
├── library.sql            # Database schema and initial data
├── public/                # Publicly accessible files
│   ├── .htaccess          # Apache configuration
│   └── index.php          # Application entry point
├── src/                   # Source code and dependencies
│   ├── composer.json      # Composer configuration
│   ├── composer.lock      # Composer lock file
│   └── vendor/            # Composer-managed dependencies
```

## Prerequisites
- **PHP**: Version 7.4 or higher.
- **Composer**: Dependency manager for PHP.
- **MySQL**: For the database.

## Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/username/repository.git
   cd repository
   ```

2. Install dependencies using Composer:
   ```bash
   composer install
   ```

3. Import the database:
   - Use a MySQL client to import `library.sql` into your database.

4. Configure the environment:
   - Update database credentials and other configurations in the appropriate file (e.g., `.env` or `config.php`).

5. Start the server:
   - If using PHP's built-in server:
     ```bash
     php -S localhost:8000 -t public
     ```

6. Access the application:
   - Open your browser and go to `http://localhost:8000`.

## Usage
1. Navigate to the application URL.
2. Register or log in as a user.
3. Use the dashboard to manage books, users, and borrowing records.

## Contributing
Contributions are welcome! Please fork the repository and create a pull request with your improvements.

## License
This project is licensed under the MIT License. See the `LICENSE` file for details.

## Contact
For questions or feedback, please contact [Blanca Camille Daz] at [blancacamilledaz32@gmail.com].
