# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Category.create(cateName: "class1")
Category.create(cateName: "class2")
Category.create(cateName: "class3")
Notelist.create(noteName: "1-1", noteCate: "class1" , noteCont: "1-1" , date:'2017-02-25')
Notelist.create(noteName: "1-2", noteCate: "class1" , noteCont: "1-2" , date:'2017-02-25')
Notelist.create(noteName: "1-3", noteCate: "class1" , noteCont: "1-3" , date:'2017-02-25')
Notelist.create(noteName: "1-4", noteCate: "class1" , noteCont: "1-4" , date:'2017-02-25')
Notelist.create(noteName: "2-1", noteCate: "class2" , noteCont: "2-1" , date:'2017-02-25')
Notelist.create(noteName: "2-2", noteCate: "class2" , noteCont: "2-2" , date:'2017-02-25')
Notelist.create(noteName: "2-3", noteCate: "class2" , noteCont: "2-3" , date:'2017-02-25')
Notelist.create(noteName: "2-4", noteCate: "class2" , noteCont: "2-4" , date:'2017-02-25')
Notelist.create(noteName: "3-1", noteCate: "class3" , noteCont: "3-1" , date:'2017-02-25')
Notelist.create(noteName: "3-2", noteCate: "class3" , noteCont: "3-2" , date:'2017-02-25')
Notelist.create(noteName: "3-3", noteCate: "class3" , noteCont: "3-3" , date:'2017-02-25')
Notelist.create(noteName: "3-4", noteCate: "class3" , noteCont: "3-4" , date:'2017-02-25')
