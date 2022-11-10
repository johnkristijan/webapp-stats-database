-- create apps table
CREATE TABLE IF NOT EXISTS apps (
    id serial PRIMARY KEY,
    app_id VARCHAR(40) UNIQUE NOT NULL,
    app_name VARCHAR(64) NOT NULL,
    app_contact VARCHAR(64) NULL
);

-- delete all data in apps table
TRUNCATE apps;
DELETE FROM apps;

-- delete apps table
DROP TABLE apps;

-- create stats table
CREATE TABLE IF NOT EXISTS stats (
    id serial PRIMARY KEY,
    app_id VARCHAR(40) NOT NULL,
    from_path VARCHAR(255) NULL,
    to_path VARCHAR(255) NULL,
    screen_width VARCHAR(16) NULL,
    screen_height VARCHAR(16) NULL,
    username VARCHAR(64) NULL,
    timestamp TIMESTAMP WITH TIME ZONE NULL,
    ip_address VARCHAR(64) NULL
);

-- delete all data in stats table
TRUNCATE stats;
DELETE FROM stats;

-- delete stats table
DROP TABLE stats;
