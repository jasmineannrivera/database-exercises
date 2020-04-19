USE codeup_test_db;
-- test comment

-- Make all the albums 10 times more popular (sales * 10)
UPDATE albums
SET sales = (sales * 10);

# Move all the albums before 1980 back to the 1800s.
UPDATE albums
SET release_date = (release_date - 100)
WHERE release_date < 1980;

-- Change 'Michael Jackson' to 'Peter Jackson'
UPDATE albums
SET artist = 'Peter Jackson'
WHERE artist = 'Michael Jackson';


SELECT *
FROM albums;