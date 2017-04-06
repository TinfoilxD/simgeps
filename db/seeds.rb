# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Practitioner.create([
                        {name: 'Gene Janiszewski', title: 'Golf Chairman', company: 'Paradigm Group, Inc'},
                        {name: 'George Crawford', title: 'CIO', company: 'Catapult Energy Services'},
                        {name: 'Michael Loup', title: 'CTO', company: 'GolfNetTechnologies'},
                        {name: 'Minion1', title: 'Lackey', company: 'Fruits'},
                        {name: 'Minion2', title: 'Lackey', company: 'Fruits'},
                        {name: 'Minion3', title: 'Lackey', company: 'Fruits'},
                    ])

Sponsor.create([
                   {name: 'CyrusOne', prizes: 12},
                   {name: 'IBM', prizes: 12},
                   {name: 'CenterPoint Energy', prizes: 12},
                   {name: 'SIM', prizes: 15},
                   {name: 'Stone Bond', prizes: 12}
               ])















