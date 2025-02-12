INSERT INTO [Customers] ([FirstName], [LastName], [Address_Street], [Address_City], [Address_State], [Address_Zip])
VALUES
('Homer', 'Simpson', '742 Evergreen Terrace', 'Springfield', 'IL', '62704'),
('Marge', 'Simpson', '123 Fake Street', 'Springfield', 'IL', '62704'),
('Bart', 'Simpson', '456 Elm Street', 'Springfield', 'IL', '62704'),
('Lisa', 'Simpson', '789 Maple Street', 'Springfield', 'IL', '62704'),
('Maggie', 'Simpson', '101 Oak Street', 'Springfield', 'IL', '62704'),
('Ned', 'Flanders', '744 Evergreen Terrace', 'Springfield', 'IL', '62704'),
('Maude', 'Flanders', '102 Pine Street', 'Springfield', 'IL', '62704'),
('Milhouse', 'Van Houten', '1204 Evergreen Terrace', 'Springfield', 'IL', '62704'),
('Nelson', 'Muntz', '103 Birch Street', 'Springfield', 'IL', '62704'),
('Ralph', 'Wiggum', '104 Cedar Street', 'Springfield', 'IL', '62704');

INSERT INTO [Employees] ([FirstName], [LastName], [Address_Street], [Address_City], [Address_State], [Address_Zip], [Identity], [ServiceAreas])
VALUES
('Sheldon', 'Cooper', '2311 North Los Robles Avenue', 'Pasadena', 'CA', '91101', '123-45-6789', 'Physics'),
('Leonard', 'Hofstadter', '2311 North Los Robles Avenue', 'Pasadena', 'CA', '91101', '987-65-4321', 'Physics'),
('Penny', 'Hofstadter', '2311 North Los Robles Avenue', 'Pasadena', 'CA', '91101', '456-78-9012', 'Acting'),
('Howard', 'Wolowitz', '315 South Madison Avenue', 'Pasadena', 'CA', '91101', '321-54-9876', 'Engineering'),
('Raj', 'Koothrappali', '120 South Lake Avenue', 'Pasadena', 'CA', '91101', '654-32-1987', 'Astrophysics'),
('Bernadette', 'Rostenkowski', '456 East Colorado Boulevard', 'Pasadena', 'CA', '91101', '789-01-2345', 'Microbiology'),
('Amy', 'Fowler', '789 West Green Street', 'Pasadena', 'CA', '91101', '234-56-7890', 'Neurobiology'),
('Stuart', 'Bloom', '101 North Fair Oaks Avenue', 'Pasadena', 'CA', '91101', '345-67-8901', 'Comic Book Store'),
('Leslie', 'Winkle', '202 South Marengo Avenue', 'Pasadena', 'CA', '91101', '567-89-0123', 'Experimental Physics'),
('Barry', 'Kripke', '303 East Walnut Street', 'Pasadena', 'CA', '91101', '678-90-1234', 'Plasma Physics');

INSERT INTO [ServiceTickets] ([Title], [Description], [StatusValue], [EscalationLevel], [Opened], [Closed], [CustomerID], [CreatedByID], [AssignedToID])
VALUES
('Internet not working', 'Customer reports that the internet is not working.', 0, 1, '2025-02-01', NULL, 1, 1, 1),
('Slow computer', 'Customer reports that the computer is running slow.', 0, 2, '2025-02-02', NULL, 2, 2, 2),
('Email issues', 'Customer reports that they cannot send or receive emails.', 0, 1, '2025-02-03', NULL, 3, 3, 3),
('Printer not working', 'Customer reports that the printer is not working.', 0, 3, '2025-02-04', '2025-02-05', 4, 4, 4),
('Software installation', 'Customer needs help installing new software.', 0, 1, '2025-02-05', NULL, 5, 5, 5),
('Network issues', 'Customer reports that the network is down.', 0, 2, '2025-02-06', NULL, 6, 6, 6),
('Password reset', 'Customer needs a password reset.', 0, 1, '2025-02-07', '2025-02-08', 7, 7, 7),
('Hardware upgrade', 'Customer needs a hardware upgrade.', 0, 2, '2025-02-08', NULL, 8, 8, 8),
('Data recovery', 'Customer needs help recovering lost data.', 0, 3, '2025-02-09', NULL, 9, 9, 9),
('Security issue', 'Customer reports a potential security issue.', 0, 1, '2025-02-10', NULL, 10, 10, 10);