--   QUERIES

-- 1. Ver listado de estudiantes de un grupo en especifico

db.students.find({group: {$eq: "D"},grade_level : {$eq: "12"}})

db.students.find({$and: [{group:{$eq:"D"}},{grade_level:{$eq:"12"}}]})

-- 2. Ver listado de estudiantes que vean una asignatura x

db.schedules.aggregate([
{
$match: { subject: "maths" }
},
{
$lookup: {
    from: "students",
    localField: "group",
    foreignField: "group",
    as: "details_of_students_in_subject"
}
}
]).pretty();

-- 3. Ver listado de profesores que le dictan clase a un estudiante x

db.students.aggregate([
{
$match: { id_number: "129856789" }
},
{
$lookup: {
    from: "schedules",
    let: { group: "$group", grade_level: "$grade_level", shift: "$shift" },
    pipeline: [
    {
        $match: {
        $expr: {
            $and: [
            { $eq: ["$group", "$$group"] },
            { $eq: ["$grade_level", "$$grade_level"] },
            { $eq: ["$shift", "$$shift"] }
            ]
        }
        }
    }
    ],
    as: "schedules"
}
},
{
$unwind: "$schedules"
},
{
$lookup: {
    from: "teachers",
    localField: "schedules.teacher",
    foreignField: "id_number",
    as: "teachers_info"
}
},
{
$group: {
    _id: "$_id", 
    id_number: { $first: "$id_number" }, 
    schedules: { $push: "$schedules" }, 
    teacher_info: { $first: "$teacher_info" } 
}
}
]).pretty();

-- 4. Ver los grupos ordenados de forma descendente por la cantidad de estudiantes que tiene inscritos

db.students.aggregate([
{
    $group: {
    _id: {
        group: "$group",
        grade_level: "$grade_level",
        shift: "$shift"
    },
    amountOfStudents: { $sum: 1 }
    }
},
{
    $sort: { amountOfStudents: -1 }
}
])

-- OPCIONAL: Crear indices
db.teachers.createIndex({id_number:1});
var result = db.teachers.find({ id_number: "123456789" }).explain("executionStats")
printjson(result)