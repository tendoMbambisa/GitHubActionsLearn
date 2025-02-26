#!/bin/bash

# MySQL credentials (update these based on your setup)
DB_USER="root"
DB_PASS="yourpassword"
DB_HOST="localhost"

# Run the SQL script
mysql -h $DB_HOST -u $DB_USER -p$DB_PASS < create_db.sql

echo "Database and table created successfully!"
