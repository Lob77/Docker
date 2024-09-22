DROP TABLE if exists user_info cascade;

CREATE TABLE user_info(
    user_id VARCHAR(20),
    password VARCHAR(20),
    user_name VARCHAR(50),
    created_dated TIMESTAMP WITH TIME ZONE default now(),
    updated_dated TIMESTAMP WITH TIME ZONE,

    constraint user_info_pk primary key (user_id)
);