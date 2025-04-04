USE wave_friend;

CREATE TABLE messages (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    bond_id INTEGER NOT NULL,
    sender_id INTEGER NOT NULL,
    text VARCHAR(40) NOT NULL,
    sent_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    is_read BOOLEAN NOT NULL DEFAULT FALSE,
    FOREIGN KEY (bond_id) REFERENCES bonds(id) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (sender_id) REFERENCES users(id) ON DELETE CASCADE ON UPDATE CASCADE
);