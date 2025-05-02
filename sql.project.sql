create database virtualweddingportal;
use virtualweddingportal; 
create table users(
user_id int primary key,
name varchar(100),
email varchar(100),
phone_number varchar (100),
address text,
role enum('host','guest','vendor','admin'),
password varchar(255));
INSERT INTO users (user_id, name, email, phone_number, address, role, password) VALUES
(1, 'Alice Johnson', 'alice.johnson@example.com', '1234567890', '123 Maple Street, NY', 'guest', 'pass123'),
(2, 'Bob Smith', 'bob.smith@example.com', '2345678901', '456 Oak Avenue, CA', 'host', 'secret456'),
(3, 'Carol White', 'carol.white@example.com', '3456789012', '789 Pine Blvd, TX', 'vendor', 'adminpass'),
(4, 'David Lee', 'david.lee@example.com', '4567890123', '321 Birch Rd, FL', 'admin', 'david@321'),
(5, 'Eve Green', 'eve.green@example.com', '5678901234', '147 Cedar Lane, WA', 'guest', 'eve2024'),
(6, 'Frank Moore', 'frank.moore@example.com', '6789012345', '258 Elm St, IL', 'host', 'frankly'),
(7, 'Grace Kim', 'grace.kim@example.com', '7890123456', '369 Spruce Ct, GA', 'vendor', 'gracepw'),
(8, 'Hank Miller', 'hank.miller@example.com', '8901234567', '147 Aspen Way, NJ', 'admin', 'hank@pw'),
(9, 'Ivy Baker', 'ivy.baker@example.com', '9012345678', '321 Palm Ave, AZ', 'guest', 'ivypass'),
(10, 'Jack Wilson', 'jack.wilson@example.com', '1123456789', '951 Cherry Ln, OH', 'host', 'jackjack'),
(11, 'Kara Fox', 'kara.fox@example.com', '2234567890', '753 Maple St, OR', 'vendor', 'foxpass'),
(12, 'Leo Brown', 'leo.brown@example.com', '3345678901', '852 Oakwood Blvd, NV', 'guest', 'leo2025'),
(13, 'Mia Davis', 'mia.davis@example.com', '4456789012', '159 Birchwood Rd, CO', 'host', 'mia321'),
(14, 'Noah Scott', 'noah.scott@example.com', '5567890123', '357 Cedar Park, MN', 'admin', 'noah_pw'),
(15, 'Olivia Hall', 'olivia.hall@example.com', '6678901234', '456 Elm Grove, MI', 'guest', 'oliviah'),
(16, 'Paul Allen', 'paul.allen@example.com', '7789012345', '951 Spruce Dr, MA', 'host', 'paulpass'),
(17, 'Quinn Adams', 'quinn.adams@example.com', '8890123456', '147 Ash Lane, IN', 'vendor', 'quinn123'),
(18, 'Rachel Young', 'rachel.young@example.com', '9901234567', '258 Cypress St, MO', 'admin', 'rachelpass'),
(19, 'Sam Clark', 'sam.clark@example.com', '1012345678', '321 Willow Ave, NC', 'guest', 'samc123'),
(20, 'Tina Lewis', 'tina.lewis@example.com', '2123456789', '753 Dogwood Dr, PA', 'host', 'tinapass'),
(21, 'Uma Grant', 'uma.grant@example.com', '3234567890', '654 Maple Row, KY', 'vendor', 'umapw'),
(22, 'Victor King', 'victor.king@example.com', '4345678901', '951 Oak Circle, WI', 'admin', 'victork'),
(23, 'Wendy Ray', 'wendy.ray@example.com', '5456789012', '159 Pinehill Rd, OK', 'guest', 'wendy123'),
(24, 'Xander Cruz', 'xander.cruz@example.com', '6567890123', '456 Birchview Ln, TN', 'host', 'xanderc'),
(25, 'Yara Bell', 'yara.bell@example.com', '7678901234', '357 Elmwood Dr, LA', 'vendor', 'yarapass'),
(26, 'Zane West', 'zane.west@example.com', '8789012345', '258 Sprucemont Ct, VA', 'admin', 'zane_pw'),
(27, 'Amy Fields', 'amy.fields@example.com', '9890123456', '147 Ashbrook Ave, SC', 'guest', 'amyf@321'),
(28, 'Brian Knox', 'brian.knox@example.com', '1901234567', '951 Dogwood Pl, AL', 'host', 'brian2025'),
(29, 'Clara Reed', 'clara.reed@example.com', '2012345678', '753 Maple Run, UT', 'vendor', 'clarapw'),
(30, 'Derek Shaw', 'derek.shaw@example.com', '3123456789', '852 Oakridge Blvd, AR', 'admin', 'derek#1');
-- event table
create table events(
event_id int primary key,
host_id int,
event_type varchar(50),
event_title varchar(100),
event_date date,
event_time time,
venue varchar(200),
foreign key (host_id) references users(user_id));
alter table events
add constraint fk_events
foreign key (host_id) references users(user_id) on delete cascade;
INSERT INTO events (event_id, host_id, event_type, event_title, event_date, event_time, venue) VALUES
(1, 1, 'Conference', 'Tech Innovations 2025', '2025-05-10', '09:00:00', 'Tech Park Auditorium'),
(2, 2, 'Workshop', 'AI for Beginners', '2025-05-12', '14:00:00', 'Room 204, Science Block'),
(3, 3, 'Seminar', 'Future of Web Development', '2025-05-14', '11:00:00', 'Hall A, Knowledge Center'),
(4, 4, 'Meetup', 'Startup Founders Hangout', '2025-05-16', '18:00:00', 'Cafe Brew, Downtown'),
(5, 5, 'Webinar', 'Cybersecurity Basics', '2025-05-18', '16:30:00', 'Online'),
(6, 6, 'Conference', 'Medical Tech Summit', '2025-05-20', '10:00:00', 'City Convention Hall'),
(7, 7, 'Workshop', '3D Printing 101', '2025-05-22', '13:00:00', 'Innovation Lab, B Block'),
(8, 8, 'Seminar', 'Ethics in AI', '2025-05-24', '15:30:00', 'Main Hall, East Wing'),
(9, 9, 'Meetup', 'Designers Unite', '2025-05-26', '17:00:00', 'ArtHub Studio'),
(10, 10, 'Webinar', 'Digital Marketing 2025', '2025-05-28', '19:00:00', 'Online'),
(11, 1, 'Conference', 'Green Energy Now', '2025-06-01', '10:30:00', 'Energy Hall'),
(12, 2, 'Workshop', 'Python for Data Science', '2025-06-03', '12:00:00', 'Lab 1, Comp Sci Dept'),
(13, 3, 'Seminar', 'Sustainable Design', '2025-06-05', '11:00:00', 'Architecture Hall'),
(14, 4, 'Meetup', 'Gaming Devs Roundtable', '2025-06-07', '18:30:00', 'Level Up Arcade'),
(15, 5, 'Webinar', 'Remote Team Management', '2025-06-09', '17:00:00', 'Online'),
(16, 6, 'Conference', 'Blockchain and Beyond', '2025-06-11', '09:30:00', 'FinTech Hall'),
(17, 7, 'Workshop', 'Photography Basics', '2025-06-13', '14:30:00', 'Studio 5'),
(18, 8, 'Seminar', 'Mental Health in Workplaces', '2025-06-15', '10:45:00', 'Health Center'),
(19, 9, 'Meetup', 'Writers Connect', '2025-06-17', '16:00:00', 'City Library Lounge'),
(20, 10, 'Webinar', 'Cloud Computing Trends', '2025-06-19', '20:00:00', 'Online'),
(21, 1, 'Conference', 'E-Learning Future', '2025-06-21', '10:00:00', 'EdTech Forum'),
(22, 2, 'Workshop', 'Game Design Fundamentals', '2025-06-23', '15:00:00', 'Lab 6'),
(23, 3, 'Seminar', 'Human-Centered Design', '2025-06-25', '13:30:00', 'Room 112'),
(24, 4, 'Meetup', 'Investors Meetup', '2025-06-27', '17:30:00', 'Sky Lounge'),
(25, 5, 'Webinar', 'Freelancing Mastery', '2025-06-29', '18:00:00', 'Online'),
(26, 6, 'Conference', 'EduTech 2025', '2025-07-01', '11:00:00', 'Education Center'),
(27, 7, 'Workshop', 'UI/UX Design', '2025-07-03', '14:00:00', 'Design Lab'),
(28, 8, 'Seminar', 'Public Speaking Essentials', '2025-07-05', '10:00:00', 'Auditorium B'),
(29, 9, 'Meetup', 'Young Entrepreneurs Meet', '2025-07-07', '19:00:00', 'Startup Hub'),
(30, 10, 'Webinar', 'Career Growth in Tech', '2025-07-09', '21:00:00', 'Online');

-- create invitation
create table invitation(
invitation_id int primary key,
event_id  int,
guest_id int,
rsvp_status enum('accepetd','declined','pending'),
message text,
foreign key (event_id) references events(event_id),
foreign key(guest_id) references users(user_id));
alter table invitation
add constraint fk_invitation
foreign key (event_id) references events(event_id) on delete cascade;
alter table invitation
add constraint fk_invitation
foreign key(guest_id) references users(user_id) on delete cascade;
INSERT INTO invitation (invitation_id, event_id, guest_id, rsvp_status, message) VALUES
(1, 1, 2, 'accepted', 'Looking forward to it!'),
(2, 1, 3, 'pending', 'Will confirm soon.'),
(3, 2, 1, 'declined', 'Sorry, I am unavailable.'),
(4, 2, 4, 'accepted', 'Excited to attend.'),
(5, 3, 5, 'pending', 'Might be traveling.'),
(6, 4, 6, 'accepted', 'Count me in.'),
(7, 5, 7, 'declined', 'Busy on that day.'),
(8, 6, 8, 'accepted', 'Absolutely attending!'),
(9, 7, 9, 'pending', 'Still deciding.'),
(10, 8, 10, 'accepted', 'Will be there.'),
(11, 9, 1, 'declined', 'Have a conflict.'),
(12, 10, 2, 'accepted', 'Sounds interesting.'),
(13, 11, 3, 'accepted', 'Already registered.'),
(14, 12, 4, 'pending', 'Need to check calendar.'),
(15, 13, 5, 'declined', 'Traveling out of town.'),
(16, 14, 6, 'accepted', 'Definitely joining.'),
(17, 15, 7, 'pending', 'Will let you know.'),
(18, 16, 8, 'accepted', 'Count me in!'),
(19, 17, 9, 'declined', 'Another engagement.'),
(20, 18, 10, 'accepted', 'Looking forward.'),
(21, 19, 1, 'pending', 'Still unsure.'),
(22, 20, 2, 'declined', 'Busy with work.'),
(23, 21, 3, 'accepted', 'Registered already.'),
(24, 22, 4, 'accepted', 'Yes, I''ll attend.'),
(25, 23, 5, 'declined', 'Not this time.'),
(26, 24, 6, 'accepted', 'Excited for this.'),
(27, 25, 7, 'pending', 'TBD.'),
(28, 26, 8, 'accepted', 'All set.'),
(29, 27, 9, 'declined', 'Won''t make it.'),
(30, 28, 10, 'accepted', 'Will be joining.');

-- vendor table
create table vendor(
vendor_id int primary key,
name varchar(100),
service_type varchar(50),
contact_info varchar(100),
availability boolean,
rating decimal(2,1));
INSERT INTO vendor (vendor_id, name, service_type, contact_info, availability, rating) VALUES
(1, 'TechPro Audio', 'Sound System', 'techpro@example.com', TRUE, 4.5),
(2, 'FloraDecor', 'Decoration', 'flora@example.com', TRUE, 4.8),
(3, 'Catering King', 'Catering', 'kingcater@example.com', FALSE, 4.2),
(4, 'BrightLights Co.', 'Lighting', 'lights@example.com', TRUE, 4.7),
(5, 'SnapPix Photography', 'Photography', 'snap@example.com', TRUE, 4.9),
(6, 'Elite Events', 'Event Management', 'elite@example.com', FALSE, 4.3),
(7, 'Security Plus', 'Security', 'secure@example.com', TRUE, 4.1),
(8, 'Green Venue', 'Venue Rental', 'venue@example.com', TRUE, 4.6),
(9, 'LiveSound Experts', 'Sound System', 'live@example.com', TRUE, 4.4),
(10, 'Glow FX', 'Lighting', 'glow@example.com', TRUE, 4.0),
(11, 'Tasty Treats', 'Catering', 'treats@example.com', FALSE, 4.5),
(12, 'Pic Perfect', 'Photography', 'pic@example.com', TRUE, 4.8),
(13, 'Décor Dreams', 'Decoration', 'dreams@example.com', TRUE, 4.6),
(14, 'EventFlow', 'Event Management', 'flow@example.com', TRUE, 4.3),
(15, 'Shield Secure', 'Security', 'shield@example.com', TRUE, 4.2),
(16, 'Spark Venue', 'Venue Rental', 'spark@example.com', FALSE, 4.4),
(17, 'Echo Audio', 'Sound System', 'echo@example.com', TRUE, 4.5),
(18, 'LightCraft', 'Lighting', 'craft@example.com', FALSE, 4.7),
(19, 'Royal Caterers', 'Catering', 'royal@example.com', TRUE, 4.9),
(20, 'FlashFrame', 'Photography', 'flash@example.com', TRUE, 4.6),
(21, 'DreamEvents', 'Event Management', 'dream@example.com', TRUE, 4.7),
(22, 'SecureForce', 'Security', 'force@example.com', TRUE, 4.3),
(23, 'Venue Luxe', 'Venue Rental', 'luxe@example.com', TRUE, 4.2),
(24, 'Bass Boomers', 'Sound System', 'bass@example.com', TRUE, 4.6),
(25, 'LightWizards', 'Lighting', 'wizard@example.com', FALSE, 4.4),
(26, 'Delish Bites', 'Catering', 'delish@example.com', TRUE, 4.5),
(27, 'ZoomShot', 'Photography', 'zoom@example.com', TRUE, 4.7),
(28, 'PartyPlanners', 'Event Management', 'party@example.com', TRUE, 4.6),
(29, 'Guardian Watch', 'Security', 'guardian@example.com', TRUE, 4.0),
(30, 'UrbanVenue', 'Venue Rental', 'urban@example.com', TRUE, 4.1);

-- bookings
create table bookings(
booking_id int primary key,
event_id int,
vendor_id int,
booking_date date,
cost decimal(10,2),
status enum('pending','confirmed','cancelled'),
foreign key (event_id) references events (event_id),
foreign key (event_id) references invitation (event_id),
foreign key (vendor_id) references vendor (vendor_id));
alter table bookings
add constraint fk_bookings
foreign key (event_id) references events (event_id) on delete cascade;
alter table bookings
add constraint fk_booking1
foreign key (event_id) references invitation (event_id) on delete cascade;
alter table bookings
add constraint fk_booking2
foreign key (vendor_id) references vendor (vendor_id) on delete cascade;
INSERT INTO bookings (booking_id, event_id, vendor_id, user_id, booking_date, cost, status) VALUES
(1, 1, 5, 1, '2025-01-10', 5000.00, 'confirmed'),
(2, 2, 3, 2, '2025-01-12', 4500.50, 'pending'),
(3, 3, 8, 3, '2025-01-15', 7000.00, 'cancelled'),
(4, 4, 10, 4, '2025-01-17', 5200.00, 'confirmed'),
(5, 5, 2, 5, '2025-01-18', 6100.75, 'pending'),
(6, 6, 15, 6, '2025-01-19', 3000.00, 'confirmed'),
(7, 7, 1, 7, '2025-01-20', 8000.00, 'pending'),
(8, 8, 4, 8, '2025-01-21', 5100.25, 'confirmed'),
(9, 9, 12, 9, '2025-01-22', 4000.00, 'cancelled'),
(10, 10, 7, 10, '2025-01-23', 7500.00, 'confirmed'),
(11, 11, 20, 11, '2025-01-24', 6200.40, 'pending'),
(12, 12, 6, 12, '2025-01-25', 5300.00, 'confirmed'),
(13, 13, 9, 13, '2025-01-26', 4800.50, 'cancelled'),
(14, 14, 14, 14, '2025-01-27', 6000.00, 'confirmed'),
(15, 15, 11, 15, '2025-01-28', 7100.00, 'pending'),
(16, 16, 13, 16, '2025-01-29', 3900.00, 'confirmed'),
(17, 17, 16, 17, '2025-01-30', 8200.00, 'cancelled'),
(18, 18, 18, 18, '2025-01-31', 5500.00, 'confirmed'),
(19, 19, 19, 19, '2025-02-01', 6100.00, 'pending'),
(20, 20, 17, 20, '2025-02-02', 4300.00, 'confirmed'),
(21, 21, 21, 21, '2025-02-03', 4700.00, 'confirmed'),
(22, 22, 22, 22, '2025-02-04', 5000.00, 'pending'),
(23, 23, 23, 23, '2025-02-05', 4600.00, 'confirmed'),
(24, 24, 24, 24, '2025-02-06', 7800.00, 'cancelled'),
(25, 25, 25, 25, '2025-02-07', 5400.00, 'confirmed'),
(26, 26, 26, 26, '2025-02-08', 6300.00, 'pending'),
(27, 27, 27, 27, '2025-02-09', 7200.00, 'confirmed'),
(28, 28, 28, 28, '2025-02-10', 5800.00, 'confirmed'),
(29, 29, 29, 29, '2025-02-11', 6900.00, 'pending'),
(30, 30, 30, 30, '2025-02-12', 5500.00, 'confirmed');
-- schedule table
create table schedule(
schedule_id int primary key,
event_id int,
title varchar(100),
descrption text,
start_time datetime,
end_time datetime,
virtual_link varchar(255),
foreign key (event_id) references events (event_id));
alter table schedule
add constraint fk_schedule
foreign key (event_id) references events (event_id) on delete cascade;
INSERT INTO schedule (schedule_id, event_id, title, description, start_time, end_time, virtual_link) VALUES
(1, 1, 'Opening Ceremony', 'Official opening of the event.', '2025-02-01 09:00:00', '2025-02-01 09:30:00', 'https://meet.example.com/open1'),
(2, 2, 'Workshop: AI in Healthcare', 'Exploring AI applications in the healthcare industry.', '2025-02-02 10:00:00', '2025-02-02 12:00:00', 'https://meet.example.com/ai-healthcare'),
(3, 3, 'Networking Breakfast', 'Casual networking session with coffee and snacks.', '2025-02-03 08:00:00', '2025-02-03 09:00:00', 'https://meet.example.com/networkingbreakfast'),
(4, 4, 'Panel Discussion: Sustainability', 'A panel of experts discussing sustainability practices.', '2025-02-04 11:00:00', '2025-02-04 12:30:00', 'https://meet.example.com/sustainability'),
(5, 5, 'Fireside Chat', 'Casual chat with a renowned entrepreneur.', '2025-02-05 15:00:00', '2025-02-05 16:00:00', 'https://meet.example.com/firesidechat'),
(6, 6, 'Product Launch', 'Launching the latest product in the market.', '2025-02-06 14:00:00', '2025-02-06 15:30:00', 'https://meet.example.com/productlaunch'),
(7, 7, 'Closing Ceremony', 'Wrapping up the event with closing remarks.', '2025-02-07 16:00:00', '2025-02-07 17:00:00', 'https://meet.example.com/closingceremony'),
(8, 8, 'Interactive Workshop', 'Hands-on session on coding practices.', '2025-02-08 10:00:00', '2025-02-08 12:00:00', 'https://meet.example.com/workshop1'),
(9, 9, 'Tech Expo', 'Exhibit showcasing the latest tech products.', '2025-02-09 13:00:00', '2025-02-09 15:00:00', 'https://meet.example.com/techexpo'),
(10, 10, 'Investor Pitch', 'Startups pitch to investors.', '2025-02-10 09:30:00', '2025-02-10 11:00:00', 'https://meet.example.com/investorpitch'),
(11, 11, 'Cybersecurity Talk', 'Talk on cybersecurity trends and strategies.', '2025-02-11 11:30:00', '2025-02-11 13:00:00', 'https://meet.example.com/cybersecurity'),
(12, 12, 'Hackathon Kickoff', 'Official start of the 48-hour hackathon.', '2025-02-12 10:00:00', '2025-02-12 10:30:00', 'https://meet.example.com/hackathonkickoff'),
(13, 13, 'Blockchain for Beginners', 'Introduction to blockchain technology.', '2025-02-13 14:00:00', '2025-02-13 15:30:00', 'https://meet.example.com/blockchain'),
(14, 14, 'Artificial Intelligence Panel', 'Experts discuss the future of AI in business.', '2025-02-14 16:00:00', '2025-02-14 17:30:00', 'https://meet.example.com/aipanels'),
(15, 15, 'Innovation Showcase', 'Presenting the latest innovations in tech.', '2025-02-15 12:00:00', '2025-02-15 13:30:00', 'https://meet.example.com/innovationshowcase'),
(16, 16, 'Morning Yoga', 'Morning yoga session to kickstart the day.', '2025-02-16 08:00:00', '2025-02-16 09:00:00', 'https://meet.example.com/morningyoga'),
(17, 17, 'AI and Ethics Talk', 'Debating ethical issues in AI development.', '2025-02-17 11:00:00', '2025-02-17 12:30:00', 'https://meet.example.com/aiethics'),
(18, 18, 'Networking Lunch', 'Lunch for connecting with fellow attendees.', '2025-02-18 12:00:00', '2025-02-18 13:30:00', 'https://meet.example.com/networkinglunch'),
(19, 19, 'Data Privacy Workshop', 'Workshop on protecting user data.', '2025-02-19 10:00:00', '2025-02-19 12:00:00', 'https://meet.example.com/dataprivacy'),
(20, 20, 'Investor Meetup', 'A casual meetup with potential investors.', '2025-02-20 14:00:00', '2025-02-20 15:00:00', 'https://meet.example.com/investormetup'),
(21, 21, 'Global Business Trends', 'A talk about global market trends.', '2025-02-21 09:30:00', '2025-02-21 11:00:00', 'https://meet.example.com/globaltrends'),
(22, 22, 'Creative Design Showcase', 'Showcasing creative designs and innovations.', '2025-02-22 13:00:00', '2025-02-22 15:00:00', 'https://meet.example.com/creativedesign'),
(23, 23, 'Leadership Panel', 'A panel discussion on leadership strategies.', '2025-02-23 10:00:00', '2025-02-23 11:30:00', 'https://meet.example.com/leadershippanel'),
(24, 24, 'Sustainability Workshop', 'Workshop on sustainable practices in business.', '2025-02-24 14:00:00', '2025-02-24 15:30:00', 'https://meet.example.com/sustainabilityworkshop'),
(25, 25, 'Tech Talk: Cloud Computing', 'An introduction to cloud technologies.', '2025-02-25 11:00:00', '2025-02-25 12:30:00', 'https://meet.example.com/cloudtalk'),
(26, 26, 'Game Development Workshop', 'Workshop on building games using Unity.', '2025-02-26 10:00:00', '2025-02-26 12:00:00', 'https://meet.example.com/gamedevworkshop'),
(27, 27, 'Product Development Panel', 'Panel of experts discussing product design and development.', '2025-02-27 13:30:00', '2025-02-27 15:00:00', 'https://meet.example.com/productdev'),
(28, 28, 'Mobile App Development', 'Discussing best practices in mobile app development.', '2025-02-28 09:00:00', '2025-02-28 10:30:00', 'https://meet.example.com/mobileappdev'),
(29, 29, 'Smart Cities Discussion', 'Discussion on building smarter cities with technology.', '2025-02-28 11:00:00', '2025-02-28 12:30:00', 'https://meet.example.com/smartcities'),
(30, 30, 'Virtual Roundtable', 'Interactive roundtable discussion on digital marketing.', '2025-02-28 14:00:00', '2025-02-28 15:00:00', 'https://meet.example.com/roundtable');

-- media gallery table
create table mediagallery(
media_id int,
event_id int,
uploaded_by int,
media_type enum('photo','video'),
file_url varchar(255),
upload_date date,
foreign key (event_id)  references events (event_id),
foreign key (uploaded_by) references users (user_id));
alter table mediagallery
add constraint fk_mediagallery
foreign key (event_id) references events (event_id) on delete cascade;
alter table mediagallery
add constraint fk_mediagallery
foreign key (upoaded_by) references users (user_id) on delete cascade;
INSERT INTO mediagallery (media_id, event_id, uploaded_by, media_type, file_url, upload_date) VALUES
(1, 1, 1, 'photo', 'https://example.com/photo1.jpg', '2025-02-01'),
(2, 2, 2, 'video', 'https://example.com/video1.mp4', '2025-02-02'),
(3, 3, 3, 'photo', 'https://example.com/photo2.jpg', '2025-02-03'),
(4, 4, 4, 'video', 'https://example.com/video2.mp4', '2025-02-04'),
(5, 5, 5, 'photo', 'https://example.com/photo3.jpg', '2025-02-05'),
(6, 6, 6, 'video', 'https://example.com/video3.mp4', '2025-02-06'),
(7, 7, 7, 'photo', 'https://example.com/photo4.jpg', '2025-02-07'),
(8, 8, 8, 'video', 'https://example.com/video4.mp4', '2025-02-08'),
(9, 9, 9, 'photo', 'https://example.com/photo5.jpg', '2025-02-09'),
(10, 10, 10, 'video', 'https://example.com/video5.mp4', '2025-02-10'),
(11, 11, 11, 'photo', 'https://example.com/photo6.jpg', '2025-02-11'),
(12, 12, 12, 'video', 'https://example.com/video6.mp4', '2025-02-12'),
(13, 13, 13, 'photo', 'https://example.com/photo7.jpg', '2025-02-13'),
(14, 14, 14, 'video', 'https://example.com/video7.mp4', '2025-02-14'),
(15, 15, 15, 'photo', 'https://example.com/photo8.jpg', '2025-02-15'),
(16, 16, 16, 'video', 'https://example.com/video8.mp4', '2025-02-16'),
(17, 17, 17, 'photo', 'https://example.com/photo9.jpg', '2025-02-17'),
(18, 18, 18, 'video', 'https://example.com/video9.mp4', '2025-02-18'),
(19, 19, 19, 'photo', 'https://example.com/photo10.jpg', '2025-02-19'),
(20, 20, 20, 'video', 'https://example.com/video10.mp4', '2025-02-20'),
(21, 21, 21, 'photo', 'https://example.com/photo11.jpg', '2025-02-21'),
(22, 22, 22, 'video', 'https://example.com/video11.mp4', '2025-02-22'),
(23, 23, 23, 'photo', 'https://example.com/photo12.jpg', '2025-02-23'),
(24, 24, 24, 'video', 'https://example.com/video12.mp4', '2025-02-24'),
(25, 25, 25, 'photo', 'https://example.com/photo13.jpg', '2025-02-25'),
(26, 26, 26, 'video', 'https://example.com/video13.mp4', '2025-02-26'),
(27, 27, 27, 'photo', 'https://example.com/photo14.jpg', '2025-02-27'),
(28, 28, 28, 'video', 'https://example.com/video14.mp4', '2025-02-28'),
(29, 29, 29, 'photo', 'https://example.com/photo15.jpg', '2025-02-28'),
(30, 30, 30, 'video', 'https://example.com/video15.mp4', '2025-02-28');

-- message table
create table message(
message_id int primary key,
sender_id int,
receiver_id int,
content text,
timestamp datetime,
foreign key (sender_id) references users (user_id),
foreign key (receiver_id) references users (user_id));
alter table message
add constraint fk_message
foreign key (sender_id)references users (user_id) on delete cascade;
alter table message
add constraint fk_message
foreign key (receiver_id) references users (user_id) on delete cascade; 
INSERT INTO message (message_id, sender_id, receiver_id, content, timestamp) VALUES
(1, 1, 2, 'Hello, how are you?', '2025-04-01 08:00:00'),
(2, 2, 1, 'I\'m doing well, thanks! How about you?', '2025-04-01 08:05:00'),
(3, 3, 1, 'Can we schedule a meeting for tomorrow?', '2025-04-01 09:15:00'),
(4, 1, 3, 'Sure, what time works for you?', '2025-04-01 09:30:00'),
(5, 2, 3, 'Let\'s catch up over lunch today.', '2025-04-01 10:00:00'),
(6, 3, 2, 'Sounds good! Let\'s meet at 1 PM.', '2025-04-01 10:15:00'),
(7, 4, 1, 'Meeting postponed to next week.', '2025-04-01 11:00:00'),
(8, 1, 4, 'Thanks for the update. I\'ll reschedule.', '2025-04-01 11:10:00'),
(9, 5, 6, 'Please review the attached proposal.', '2025-04-02 08:00:00'),
(10, 6, 5, 'I\'ve gone through it, looks good!', '2025-04-02 08:30:00'),
(11, 7, 8, 'Can you send me the project details again?', '2025-04-02 09:00:00'),
(12, 8, 7, 'Sure, I\'ll send it over by noon.', '2025-04-02 09:15:00'),
(13, 9, 10, 'Don\'t forget the meeting at 2 PM today.', '2025-04-02 10:00:00'),
(14, 10, 9, 'Got it, I\'ll be there on time.', '2025-04-02 10:10:00'),
(15, 11, 12, 'I need some clarification on the report.', '2025-04-02 11:00:00'),
(16, 12, 11, 'I\'ll explain everything in the meeting this afternoon.', '2025-04-02 11:20:00'),
(17, 13, 14, 'Happy to collaborate on the new project.', '2025-04-02 13:00:00'),
(18, 14, 13, 'Looking forward to working with you!', '2025-04-02 13:10:00'),
(19, 15, 16, 'Can you send me the latest numbers?', '2025-04-03 08:00:00'),
(20, 16, 15, 'I\'ll get those to you shortly.', '2025-04-03 08:15:00'),
(21, 17, 18, 'Did you receive the files I sent?','2025-04-03 09:00:00'),
(22, 18, 17, 'Yes, I\'ve received them. Thanks!', '2025-04-03 09:10:00'),
(23, 19, 20, 'Let\'s discuss the contract during the call.', '2025-04-03 10:00:00'),
(24, 20, 19, 'Agreed, I\'ll schedule the call for 3 PM.', '2025-04-03 10:15:00'),
(25, 21, 22, 'Can you send me your availability for next week?', '2025-04-03 11:00:00'),
(26, 22, 21, 'Sure, I\'ll send it in a few minutes.', '2025-04-03 11:30:00'),
(27, 23, 24, 'I\'ll need a few more days to finish the task.', '2025-04-03 12:00:00'),
(28, 24, 23, 'No problem, take your time.', '2025-04-03 12:30:00'),
(29, 25, 26, 'Can we reschedule the call for tomorrow?', '2025-04-04 09:00:00'),
(30, 26, 25, 'Yes, I\'ll adjust my calendar.', '2025-04-04 09:30:00');
desc  users;

 -- alter table column
ALTER TABLE invitation0
MODIFY COLUMN rsvp_status ENUM('accepted', 'declined', 'pending');
-- alter table column name
DESCRIBE schedule;
ALTER TABLE schedule
CHANGE COLUMN descrption description TEXT;
CREATE VIEW view_event_bookings AS
SELECT 
    b.booking_id,
    u.name AS guest_name,
    u.email AS guest_email,
    b.booking_date,
    b.status
FROM bookings b
JOIN users u ON b.user_id = u.user_id
JOIN events e ON b.event_id = e.event_id
WHERE b.status = 'confirmed';  
select* from view_event_bookings; 
-- Only confirmed bookings
ALTER TABLE bookings
ADD COLUMN user_id INT;
CREATE VIEW upcoming_events AS
SELECT title, start_time, end_time, virtual_link
FROM schedule
WHERE start_time > NOW();
CREATE VIEW user_messages AS
SELECT m.message_id, u1.name AS sender, u2.name AS receiver, m.content, m.timestamp
FROM message m
JOIN users u1 ON m.sender_id = u1.user_id
JOIN users u2 ON m.receiver_id = u2.user_id;
CREATE VIEW vendor_with_no_bookings AS
SELECT v.vendor_id, v.name
FROM vendor v
LEFT JOIN bookings b ON v.vendor_id = b.vendor_id
WHERE b.booking_id IS NULL;
DELIMITER //

CREATE PROCEDURE AssignVendor(IN eventId INT)
BEGIN
    DECLARE availableVendor INT;
    
    SELECT vendor_id INTO availableVendor
    FROM vendors
    WHERE vendor_id NOT IN (
        SELECT vendor_id FROM bookings WHERE event_id = eventId
    )
    LIMIT 1;

    IF availableVendor IS NOT NULL THEN
        INSERT INTO bookings (event_id, vendor_id, booking_date, cost, status)
        VALUES (eventId, availableVendor, CURDATE(), 5000, 'pending');
    END IF;
END //

DELIMITER ;
DELIMITER //

CREATE PROCEDURE SendMessage(
    IN sender INT,
    IN receiver INT,
    IN msg TEXT
)
BEGIN
    INSERT INTO message (sender_id, receiver_id, content, timestamp)
    VALUES (sender, receiver, msg, NOW());
END //

DELIMITER ;
DELIMITER //

CREATE PROCEDURE AutoConfirmBookings()
BEGIN
    UPDATE bookings
    SET status = 'confirmed'
    WHERE status = 'pending'
    AND event_id IN (
        SELECT event_id FROM events
        WHERE event_date BETWEEN CURDATE() AND DATE_ADD(CURDATE(), INTERVAL 7 DAY)
    );
END //

DELIMITER ;
DELIMITER //

CREATE PROCEDURE UploadMedia(
    IN evtId INT,
    IN uploaderId INT,
    IN type ENUM('photo','video'),
    IN url VARCHAR(255)
)
BEGIN
    IF url LIKE 'https://%' THEN
        INSERT INTO mediagallery (event_id, uploaded_by, media_type, file_url, upload_date)
        VALUES (evtId, uploaderId, type, url, CURDATE());
    ELSE
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Invalid URL format';
    END IF;
END //

DELIMITER ;
DELIMITER //

CREATE PROCEDURE update_booking_status_on_event_cancel(event_id INT)
BEGIN
    IF EXISTS (SELECT 1 FROM schedule WHERE event_id = event_id AND status = 'cancelled') THEN
        UPDATE bookings 
        SET status = 'cancelled' 
        WHERE event_id = event_id AND status != 'cancelled';
    END IF;
END //

DELIMITER ;
DELIMITER //

CREATE PROCEDURE avg_booking_cost(event_id INT)
BEGIN
    SELECT AVG(cost) AS avg_cost 
    FROM bookings 
    WHERE event_id = event_id AND status = 'confirmed';
END //

DELIMITER ;
DELIMITER //

CREATE PROCEDURE delete_expired_bookings()
BEGIN
    DELETE FROM bookings
    WHERE booking_date < CURDATE() - INTERVAL 6 MONTH;
END //

DELIMITER ;
DELIMITER //

CREATE PROCEDURE event_booking_revenue()
BEGIN
    SELECT e.title, COUNT(b.booking_id) AS total_bookings, SUM(b.cost) AS total_revenue
    FROM events e
    LEFT JOIN bookings b ON e.event_id = b.event_id
    GROUP BY e.event_id;
END //

DELIMITER ;












 


