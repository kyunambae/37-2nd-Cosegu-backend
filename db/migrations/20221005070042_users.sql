-- migrate:up
CREATE TABLE users (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    kakao_id VARCHAR(200) NOT NULL UNIQUE,
    profile_image VARCHAR(2000) NOT NULL,
    birth DATE NOT NULL,
    gender VARCHAR(5) NOT NULL,
    age INT NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NULL ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (id)
);

-- migrate:down
DROP TABLE users;
