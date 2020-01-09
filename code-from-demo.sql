-- * means all columns
select * from albums;

-- text searching
select * from albums where genre='country'; -- exact match
select * from albums where genre ilike 'Country'; -- case insensitive match
select * from albums where genre like '%azz'; -- anything ending with 'azz'
select * from albums where title ilike '%b%'; -- anything with title that has a 'b'

select * from albums where genre ilike 'jazz'; -- fuzzy match
select title from albums where genre ilike 'jazz'; -- fuzzy match, returning 1 column

select * from albums limit 2; -- limit the number of results
select title from albums limit 2; -- only the title column, limit the results
select title from albums order by artist limit 2; -- "order by" must come before limit

select * from albums order by artist; -- how do I do case insensitive ordering?
-- select * from albums order by artist collate nocase; -- why no worky?

insert into albums
		(title, artist, genre)
	values
		('bitches brew', 'miles davis', 'jazz'),
		('live from folsom prison', 'johnny cash', 'country'),	
		('charlie brown christmas', 'vince guaraldi', 'jazz')
	;

-- To select a specific column:
select title from albums;

-- To select multiple specific columns:
select genre, title from albums;
