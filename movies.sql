drop table if EXISTS users;
drop table if EXISTS genres;
drop table if EXISTS movies;
drop table if EXISTS reviews;

create table users (
    id serial primary key,
    name varchar(50),
    email varchar(150) not null,
    address varchar(200)
);

create TABLE genres (
    id serial primary key,
    name VARCHAR(100) not null,
    description VARCHAR(200)
);

create TABLE movies (
    id serial primary key,
    title VARCHAR(150) not null,
    length INTEGER,
    genre_id INTEGER not null,
    foreign key (genre_id) REFERENCES genres(id) --on delete cascade 
);

create tale reviews (
    id serial primary key,
    stars integer not null,
    message text,
    movie_id INTEGER not null,
    user_id INTEGER,
    foreign key (movie_id) REFERENCES movies(id),
    foreign key (user_id) REFERENCES users(id) on delete set null
);