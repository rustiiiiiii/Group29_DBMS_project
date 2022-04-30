CREATE USER anurag@localhost IDENTIFIED BY 'Secure1Pass!';
1.
GRANT INSERT, UPDATE, DELETE
Views And Grants
 ON visible_contact_list TO anurag@localhost;
-- grants for all users
2.
GRANT
SELECT (First_Name,Last_Name, About,Profile_picture,hide_details,`online status`), UPDATE(First_Name,Last_Name, About,Profile_picture)
ON user_data
TO anurag@localhost;
-- grants for all users
3.
GRANT INSERT,DELETE ON members
TO anurag@localhost;
-- grants for group admin -- grants for all users
4.
CREATE VIEW view_message AS SELECT message
FROM message
-- SELECT First_Name FROM DetailsView; -- SELECT * FROM view_message;
5.

CREATE VIEW Details_View AS SELECT First_Name
FROM user_data WHERE hide_details = 0;
-- or profile photo can be hidden