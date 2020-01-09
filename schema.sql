-- schema.sql is the blueprint of your database

create table albums (
    -- id integer,

    -- postgres automagically generates the id for you!
    id serial primary key, 
    -- ensures the id is unique over time
        -- IDs should never get reused in your app. EVER.


    title text,
    artist text,
    genre text
);