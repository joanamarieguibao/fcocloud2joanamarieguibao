CREATE DATABASE IF NOT EXISTS biniverse_db;
USE biniverse_db;

CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    fullname VARCHAR(150) NOT NULL,
    email VARCHAR(150) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    role ENUM('Admin', 'Editor') DEFAULT 'Editor',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE members (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    role VARCHAR(255) NOT NULL,
    description TEXT,
    image VARCHAR(255),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE events (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(200) NOT NULL,
    event_date DATE,
    location VARCHAR(255),
    description TEXT,
    image VARCHAR(255),
    link VARCHAR(500),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE news (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    category VARCHAR(100),
    news_date DATE,
    description TEXT,
    image VARCHAR(255),
    link VARCHAR(500),
    featured TINYINT(1) DEFAULT 0,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE merchandise (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(200) NOT NULL,
    description TEXT,
    price DECIMAL(10,2) DEFAULT 0.00,
    image VARCHAR(255),
    status ENUM('Available', 'Sold Out', 'Coming Soon') DEFAULT 'Available',
    link VARCHAR(500),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE endorsements (
    id INT AUTO_INCREMENT PRIMARY KEY,
    brand VARCHAR(200) NOT NULL,
    title VARCHAR(255),
    description TEXT,
    image VARCHAR(255),
    link VARCHAR(500),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE blooms_activities (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    activity_date DATE,
    location VARCHAR(255),
    description TEXT,
    image VARCHAR(255),
    link VARCHAR(500),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO users (fullname, email, password, role)
VALUES
(
    'Admin User',
    'admin@biniverse.com',
    '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEaXQhY6xYz9K9wYQ7f0Z7X9Z7e',
    'Admin'
);

INSERT INTO members (name, role, description, image)
VALUES
(
    'Aiah',
    'Eldest / Visual / Main Rapper / Sub-Vocalist',
    'Aiah is known for her visual presence, rap skills, and versatile contributions to BINI.',
    'images/members/aiah.jpg'
),
(
    'Colet',
    'Main Vocalist / Lead Dancer',
    'Colet is recognized for her strong vocals and energetic dance performances.',
    'images/members/colet.jpg'
),
(
    'Maloi',
    'Main Vocalist',
    'Maloi is known for her powerful vocals and expressive performances.',
    'images/members/maloi.jpg'
),
(
    'Gwen',
    'Lead Vocalist / Lead Rapper',
    'Gwen contributes both vocals and rap to BINI performances.',
    'images/members/gwen.jpg'
),
(
    'Stacey',
    'Main Rapper / Lead Dancer / Sub-Vocalist',
    'Stacey is known for her rap, dancing, and stage presence.',
    'images/members/stacey.jpg'
),
(
    'Mikha',
    'Visual / Main Rapper / Lead Dancer',
    'Mikha is recognized for her visual presence, rap skills, and dancing.',
    'images/members/mikha.jpg'
),
(
    'Jhoanna',
    'Leader / Lead Vocalist',
    'Jhoanna serves as BINI’s leader and contributes as a lead vocalist.',
    'images/members/jhoanna.jpg'
),
(
    'Sheena',
    'Youngest / Main Dancer',
    'Sheena is known for her dancing skills and energetic performances.',
    'images/members/sheena.jpg'
);

INSERT INTO events
(title, event_date, location, description, image, link)
VALUES
(
    'Signals EP Release',
    '2026-04-09',
    'Worldwide',
    'BINI released their Signals EP.',
    'images/events/signals.jpg',
    '#'
),
(
    'Coachella',
    '2026-04-10',
    'Indio, California',
    'BINI performed at Coachella as part of their international activities.',
    'images/events/coachella.jpg',
    '#'
),
(
    'Coachella',
    '2026-04-17',
    'Indio, California',
    'BINI returned for another Coachella performance.',
    'images/events/coachella.jpg',
    '#'
),
(
    'Signals World Tour',
    '2026-06-20',
    'Manila, Philippines',
    'BINI kicked off the Signals World Tour with shows in the Philippines.',
    'images/events/world-tour.jpg',
    '#'
);

INSERT INTO news
(title, category, news_date, description, image, link, featured)
VALUES
(
    'BINI Takes Over Osaka Stage of Summer Sonic Festival',
    'NEWS',
    '2026-08-14',
    'BINI performed at Summer Sonic Festival in Osaka, Japan.',
    'images/news/summer-sonic-osaka.jpg',
    'https://www.gmanetwork.com/news/lifestyle/content/998568/bini-takes-over-osaka-stage-of-summer-sonic-festival-2026/story/',
    1
),
(
    'BINI Performs at Summer Sonic Tokyo',
    'NEWS',
    '2026-08-16',
    'BINI brought their music and performances to Summer Sonic Tokyo.',
    'images/news/summer-sonic-tokyo.jpg',
    'https://www.gmanetwork.com/news/lifestyle/content/998732/bini-sparkles-at-summer-sonic-tokyo/story/',
    0
);

INSERT INTO merchandise
(name, description, price, image, status, link)
VALUES
(
    'BINI Official Merchandise',
    'Official BINI merchandise for Blooms.',
    0.00,
    'images/merch/merch-1.jpg',
    'Available',
    '#'
),
(
    'BINI Fan Collection',
    'Selected BINI fan merchandise and collectibles.',
    0.00,
    'images/merch/merch-2.jpg',
    'Coming Soon',
    '#'
);

INSERT INTO endorsements
(brand, title, description, image, link)
VALUES
(
    'Jollibee',
    'JolliBINI',
    'A collaboration featuring BINI as part of Jollibee promotions and collectible campaigns.',
    'images/endorsements/jollibee.jpg',
    '#'
),
(
    'Coke Studio',
    'Coke Studio',
    'A music collaboration showcasing BINI''s unique artistry and influence among young Filipino audiences through music and self-expression.',
    'images/endorsements/coke-studio.jpg',
    '#'
),
(
    'Modess',
    'Modess',
    'A campaign featuring BINI as part of Modess youth-oriented promotions.',
    'images/endorsements/modess.jpg',
    '#'
),
(
    'Enervon',
    'Enervon',
    'A personal-care and wellness campaign featuring BINI in brand promotions.',
    'images/endorsements/enervon.jpg',
    '#'
);

INSERT INTO blooms_activities
(title, activity_date, location, description, image, link)
VALUES
(
    'BLOOMS Community Activities',
    '2026-01-01',
    'Philippines',
    'Fan-led activities, celebrations, and community projects organized by BLOOMS.',
    'images/blooms/blooms-ph.jpg',
    '#'
),
(
    'Team Bloom International Activities',
    '2026-04-10',
    'International',
    'International BLOOMS organized fan projects and support activities for BINI.',
    'images/blooms/blooms-international.jpg',
    '#'
);