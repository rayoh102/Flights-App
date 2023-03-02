-- Add all your SQL setup statements here.

-- You can assume that the following base table has been created and loaded
-- with data loaded when we test your submission.  However, when testing
-- your code, you will still need to create and populate your own instance
-- on Azure.
--
-- Do not alter the Flights table's contents or schema.

--FLIGHTS (fid int,
--         month_id int,        -- 1-12
--         day_of_month int,    -- 1-31
--         day_of_week_id int,  -- 1-7, 1 = Monday, 2 = Tuesday, etc
--         carrier_id varchar(7),
--         flight_num int,
--         origin_city varchar(34),
--         origin_state varchar(47),
--         dest_city varchar(34),
--         dest_state varchar(46),
--         departure_delay int, -- in mins
--         taxi_out int,        -- in mins
--         arrival_delay int,   -- in mins
--         canceled int,        -- 1 means canceled
--         actual_time int,     -- in mins
--         distance int,        -- in miles
--         capacity int,
--         price int            -- in $
--         )

CREATE TABLE Users_rayoh101 (
	username varchar(20) PRIMARY KEY,
	saltedp varbinary(20),
	hashedp varbinary(20),
	balance int
);

CREATE TABLE Reservations_rayoh101 (
	rid int PRIMARY KEY,
	username varchar(20),
	paid bit,
	price int,
	fid1 int,
	fid2 int,

	FOREIGN KEY (username) REFERENCES Users_rayoh101 (username),
	FOREIGN KEY (fid1) REFERENCES Flights (fid),
	FOREIGN KEY (fid2) REFERENCES Flights (fid)
);

