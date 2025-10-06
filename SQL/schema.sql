CREATE TABLE location (
    location_id VARCHAR(10) NOT NULL,
    customer_id VARCHAR(10) NOT NULL,
    count SMALLINT NOT NULL,
    country VARCHAR(13) NOT NULL,
    state VARCHAR(15) NOT NULL,
    city VARCHAR(50) NOT NULL,
    zip_code INT NOT NULL,
    lat_long VARCHAR(25) NOT NULL,
    latitude REAL NOT NULL,
    longitude REAL NOT NULL,
    PRIMARY KEY (customer_id),
    FOREIGN KEY (customer_id) REFERENCES demographics(customer_id)
);

CREATE TABLE local_population (
    id SMALLINT NOT NULL,
    zip_code INT NOT NULL,
    population INT NOT NULL,
    PRIMARY KEY (zip_code),
    FOREIGN KEY (zip_code) REFERENCES location(zip_code)
);

CREATE TABLE demographics (
    customer_id VARCHAR(10) NOT NULL,
    count SMALLINT NOT NULL, 
    gender VARCHAR(6) NOT NULL,
    age SMALLINT NOT NULL,
    under_30 VARCHAR(3) NOT NULL,
    is_senior VARCHAR(3) NOT NULL,
    is_married VARCHAR(3) NOT NULL,
    has_dependents VARCHAR(3) NOT NULL,
    n_dependents SMALLINT NOT NULL,
    PRIMARY KEY (customer_id)
);

CREATE TABLE services (
    service_id VARCHAR(15) NOT NULL,
    customer_id VARCHAR(10) NOT NULL,
    count SMALLINT NOT NULL,
    quarter VARCHAR(2) NOT NULL,
    referred_a_friend VARCHAR(3) NOT NULL,
    n_referred SMALLINT NOT NULL,
    months_tenure SMALLINT NOT NULL,
    offer VARCHAR(10) NOT NULL,
    phone_service VARCHAR(3) NOT NULL,
    avg_monthly_long_dist_charge REAL NOT NULL,
    multiple_lines VARCHAR(3) NOT NULL,
    internet_service VARCHAR(3) NOT NULL,
    internet_type VARCHAR(12) NOT NULL,
    avg_monthly_gb_down SMALLINT NOT NULL,
    online_security VARCHAR(3) NOT NULL,
    online_backup VARCHAR(3) NOT NULL,
    device_protection VARCHAR(3) NOT NULL,
    premium_tech_support VARCHAR(3) NOT NULL,
    streaming_tv VARCHAR(3) NOT NULL,
    streaming_movies VARCHAR(3) NOT NULL,
    streaming_music VARCHAR(3) NOT NULL,
    unlimited_data VARCHAR(3) NOT NULL,
    contract_type VARCHAR(14) NOT NULL,
    paperless_billing VARCHAR(3) NOT NULL,
    payment_method VARCHAR(15) NOT NULL,
    monthly_charge REAL NOT NULL,
    total_charge REAL NOT NULL,
    total_refunds REAL NOT NULL,
    total_extra_data_charges REAL NOT NULL,
    total_long_dist_charges REAL NOT NULL,
    total_revenue REAL NOT NULL,
    PRIMARY KEY (customer_id),
    FOREIGN KEY (customer_id) REFERENCES demographics(customer_id)
);

CREATE TABLE status (
    status_id VARCHAR(10) NOT NULL,
    customer_id VARCHAR(10) NOT NULL,
    count SMALLINT NOT NULL,
    quarter VARCHAR(2) NOT NULL,
    satisfaction_score SMALLINT NOT NULL,
    customer_status VARCHAR(7) NOT NULL,
    churn_label VARCHAR(3) NOT NULL,
    churn_value BOOLEAN NOT NULL,
    churn_score SMALLINT NOT NULL,
    cltv SMALLINT NOT NULL,
    churn_category VARCHAR(64),
    churn_reason VARCHAR(256),
    PRIMARY KEY (customer_id),
    FOREIGN KEY (customer_id) REFERENCES demographics(customer_id)
);