#!/bin/bash

# MySQL host
DB_HOST="localhost"

# Check if MySQL is running
if ! mysqladmin ping -h "$DB_HOST" --silent; then
    echo "Error: MySQL is not running on $DB_HOST."
    exit 1
fi

# Run the SQL script without username and password
mysql -h $DB_HOST --skip-password < create_db.sql

echo "✅ Database and table created successfully!"

