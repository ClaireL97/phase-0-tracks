Classroom = {
    staff_desk: {
        desk_owner: 'Teacher',
        supplies: [
            "Paper",
            "Sticky-Notes",
            "Pens", 
            "Attendence Sheet",
            "Computer"
        ]
    },

    desk_1: {
        desk_owner: 'Female Student',
       	supplies: [
            "Jell-Pens",
            "Compact Mirror",
            "Colored Pencils",
            "Markers",
            "Notebook",
            "Normal Pens and Pencils"
        ]
    },
    desk_2: {
        desk_owner: 'Male Student',
        supplies: [
        	"Pens and Pencils",
        	"Markers",
        	"Notebooks",
        	"Snacks"
        ]
    }
}

#Mirror's are not allowed in desks so taking mirror away from female desks.
 Classroom[:desk_1][:supplies].delete ("Compact Mirror")
 #Printed the desk one now that compact mirro was removed
 p Classroom[:desk_1]

 #The male student desk is missing colored pencils and needs them for art projects.
Classroom[:desk_2][:supplies].push ("Colored Pencils")
p Classroom[:desk_2] 