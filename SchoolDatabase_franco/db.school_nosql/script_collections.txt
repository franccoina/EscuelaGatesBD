---   DB CONNECTION

mongodb+srv://franccoina:rtJwgaOt4dlnlVxO@cluster0.5nvxzdi.mongodb.net/

--    Entering to our database with MongoDB

use school;

--    Creating the collections of the database for our high school

db.createCollection("subjects");
db.createCollection("teachers");
db.createCollection("schedules");
db.createCollection("groups");
db.createCollection("students");

--    inserting elements to our collections

--  SUBJECTS

db.subjects.insertMany([
    {
        "title": "arts",
        "hourlyintensity": 2
    },
    {
        "title": "history",
        "hourlyintensity": 2
    },
    {
        "title": "science",
        "hourlyintensity": 2
    },
    {
        "title": "maths",
        "hourlyintensity": 4
    },
    {
        "title": "computer",
        "hourlyintensity": 2
    },
    {
        "title": "physical education",
        "hourlyintensity": 2
    }
]);

--  TEACHERS

db.teachers.insertMany([
    {
        "name": "Joe",
        "last_name": "Cooper",
        "birthdate": new ISODate("2000-09-18T14:10:30Z"),
        "id_number": "123456789",
        "id_type": "cc",
        "office": "101"
    },
    {
        "name": "Jane",
        "last_name": "Simmons",
        "birthdate": new ISODate("1999-01-18T14:10:30Z"),
        "id_number": "123456781",
        "id_type": "cc",
        "office": "102"
    },
    {
        "name": "Jack",
        "last_name": "Allman",
        "birthdate": new ISODate("1998-02-18T14:10:30Z"),
        "id_number": "123456782",
        "id_type": "cc",
        "office": "103"
    },
    {
        "name": "Julie",
        "last_name": "Denvers",
        "birthdate": new ISODate("2001-11-18T14:10:30Z"),
        "id_number": "123456785",
        "id_type": "cc",
        "office": "104"
    },
    {
        "name": "John",
        "last_name": "Rahman",
        "birthdate": new ISODate("2000-05-18T14:10:30Z"),
        "id_number": "123456719",
        "id_type": "cc",
        "office": "105"
    }
]);

--  GROUPS

db.groups.insertMany([
    {
        "title": "A",
        "shift": "daytime",
        "grade_level": "11",
        "classroom": "201"
    },
    {
        "title": "B",
        "shift": "daytime",
        "grade_level": "11",
        "classroom": "202"
    },
    {
        "title": "C",
        "shift": "night time",
        "grade_level": "10",
        "classroom": "202"
    },
    {
        "title": "D",
        "shift": "night time",
        "grade_level": "12",
        "classroom": "203"
    }
]);

--  STUDENTS

db.students.insertMany([
    {
        "name": "Candace",
        "last_name": "Einstein",
        "birthdate": new ISODate("2009-05-18T14:10:30Z") ,
        "id_number": "123456789",
        "id_type": "ti",
        "group": "D",
        "grade_level": "12",
        "shift": "night time"
    },
    {
        "name": "Teresa",
        "last_name": "Lopez",
        "birthdate": new ISODate("2009-03-18T14:10:30Z"),
        "id_number": "123456289",
        "id_type": "ti",
        "group": "D",
        "grade_level": "12",
        "shift": "night time"
    },
    {
        "name": "Amber",
        "last_name": "Johnson",
        "birthdate": new ISODate("2011-07-18T14:10:30Z"),
        "id_number": "113456789",
        "id_type": "ti",
        "group": "C",
        "grade_level": "10",
        "shift": "night time"
    },
    {
        "name": "Patrick",
        "last_name": "Starr",
        "birthdate": new ISODate("2010-05-18T14:10:30Z"),
        "id_number": "123336789",
        "id_type": "ti",
        "group": "B",
        "grade_level": "11",
        "shift": "daytime"
    },
    {
        "name": "Charlie",
        "last_name": "Manson",
        "birthdate": new ISODate("2010-05-18T14:10:30Z"),
        "id_number": "123450089",
        "id_type": "ti",
        "group": "B",
        "grade_level": "11",
        "shift": "daytime"
    },
    {
        "name": "Chris",
        "last_name": "Mantle",
        "birthdate": new ISODate("2010-05-18T14:10:30Z"),
        "id_number": "129856789",
        "id_type": "ti",
        "group": "A",
        "grade_level": "11",
        "shift": "daytime"
    }
]);

--  SCHEDULES

db.schedules.insertMany([
    {
        "subject": "history",
        "group": "A",
        "grade_level": "11",
        "teacher": "123456719",
        "day": "mon",
        "time": "08:00:00",
        "shift": "daytime"
    },
    {
        "subject": "arts",
        "group": "D",
        "grade_level": "12",
        "teacher": "123456785",
        "day": "mon",
        "time": "10:00:00",
        "shift": "night time"
    },
    {
        "subject": "computer",
        "group": "A",
        "grade_level": "11",
        "teacher": "123456782",
        "day": "mon",
        "time": "06:00:00",
        "shift": "daytime"
    },
    {
        "subject": "history",
        "group": "D",
        "grade_level": "12",
        "teacher": "123456719",
        "day": "tue",
        "time": "06:00:00",
        "shift": "night time"
    },
    {
        "subject": "maths",
        "group": "A",
        "grade_level": "11",
        "teacher": "123456781",
        "day": "tue",
        "time": "08:00:00",
        "shift": "daytime"
    },
    {
        "subject": "physical education",
        "group": "A",
        "grade_level": "11",
        "teacher": "123456789",
        "day": "wed",
        "time": "08:00:00",
        "shift": "daytime"
    },
    {
        "subject": "physical education",
        "group": "D",
        "grade_level": "12",
        "teacher": "123456789",
        "day": "thu",
        "time": "18:00:00",
        "shift": "night time"
    },
    {
        "subject": "maths",
        "group": "D",
        "grade_level": "12",
        "teacher": "123456781",
        "day": "tue",
        "time": "20:00:00",
        "shift": "night time"
    }
]);

