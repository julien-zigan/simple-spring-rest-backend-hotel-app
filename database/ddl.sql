USE hotel_db;

CREATE TABLE reservations (
      id BIGINT NOT NULL AUTO_INCREMENT,
      checkInDate DATE NOT NULL ,
      checkOutDate DATE NOT NULL ,
      guestName NVARCHAR(255) NOT NULL ,
      guestEmail NVARCHAR(255) NOT NULL ,
      roomNumber INT NOT NULL ,

      PRIMARY KEY (id)
);
