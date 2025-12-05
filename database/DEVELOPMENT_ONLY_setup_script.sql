USE hotel_db;

DROP TABLE IF EXISTS reservations;

CREATE TABLE reservations (
      id BIGINT NOT NULL AUTO_INCREMENT,
      checkInDate DATE NOT NULL ,
      checkOutDate DATE NOT NULL ,
      guestName NVARCHAR(255) NOT NULL ,
      guestEmail NVARCHAR(255) NOT NULL ,
      roomNumber INT NOT NULL ,

      PRIMARY KEY (id)
);

-- Test Dataset

INSERT INTO reservations (checkInDate, checkOutDate, guestName, guestEmail, roomNumber)
VALUES
    ('2025-12-01','2025-12-3','Henry Miller','henry.miller@email.com',12),
    ('2025-11-15','2025-11-20','Alice Johnson','alice.johnson@email.com',7),
    ('2025-10-01','2025-10-05','John Smith','john.smith@email.com',5),
    ('2025-09-12','2025-09-18','Maria Garcia','maria.garcia@email.com',3),
    ('2025-08-22','2025-08-27','David Lee','david.lee@email.com',8),
    ('2025-07-05','2025-07-10','Emma Brown','emma.brown@email.com',2),
    ('2025-06-14','2025-06-19','Michael Davis','michael.davis@email.com',6),
    ('2025-05-03','2025-05-08','Olivia Wilson','olivia.wilson@email.com',4),
    ('2025-04-20','2025-04-25','James Taylor','james.taylor@email.com',9),
    ('2025-03-11','2025-03-15','Sophia Martinez','sophia.martinez@email.com',1),
    ('2025-02-07','2025-02-12','William Anderson','william.anderson@email.com',10),
    ('2025-01-25','2025-01-30','Isabella Thomas','isabella.thomas@email.com',11),
    ('2024-12-18','2024-12-23','Liam Jackson','liam.jackson@email.com',2),
    ('2024-11-09','2024-11-14','Mia White','mia.white@email.com',5),
    ('2024-10-30','2024-11-04','Noah Harris','noah.harris@email.com',7),
    ('2024-09-16','2024-09-21','Ava Martin','ava.martin@email.com',3),
    ('2024-08-05','2024-08-10','Ethan Thompson','ethan.thompson@email.com',6),
    ('2024-07-22','2024-07-27','Charlotte Garcia','charlotte.garcia@email.com',4),
    ('2024-06-12','2024-06-17','Logan Robinson','logan.robinson@email.com',8),
    ('2024-05-01','2024-05-06','Amelia Clark','amelia.clark@email.com',9);