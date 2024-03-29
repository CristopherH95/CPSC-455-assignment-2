CREATE TABLE bank_users ( 
    user_id TEXT PRIMARY KEY, 
    pass TEXT NOT NULL, 
    first_name TEXT NOT NULL, 
    last_name TEXT NOT NULL, 
    street TEXT NOT NULL, 
    city TEXT NOT NULL, 
    country_state TEXT NOT NULL, 
    country TEXT NOT NULL 
);
CREATE TABLE bank_account_types ( account_type TEXT PRIMARY KEY );
INSERT INTO bank_account_types (account_type) VALUES ('Checking'), ('Savings');
CREATE TABLE bank_user_accounts ( 
    account_id INTEGER PRIMARY KEY NOT NULL, 
    bank_user_id TEXT NOT NULL, 
    account_type TEXT NOT NULL, 
    balance INTEGER, 
        FOREIGN KEY(bank_user_id) REFERENCES bank_users(user_id), 
        FOREIGN KEY(account_type) REFERENCES bank_account_types(account_type) 
);