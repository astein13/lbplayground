# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Flier.delete_all
Flier.create(:title => 'XY Presents: Tom Jones',
  :tagline => 'Beer. Steak. Lobster.',
  :description => 'The 5th Annual Tom Jones.  Steak, Lobster, Beer.',
  :starttime => DateTime.parse("2013, 4, 21, 13"),
  :endtime => DateTime.parse("2013, 4, 21, 17"),
  :imageurl => '/images/seeds/tomjones.jpg'
  )

Flier.create(:title => 'Amherst v. Williams Football!',
  :tagline => 'Wuck Filliams!',
  :description => 'Come join SoCo for Pizza and freebies before watching
                   Amherst route the Ephs.',
  :starttime => DateTime.parse("2013, 9, 21, 13"),
  :endtime => DateTime.parse("2013, 4, 21, 16"),
  :imageurl => '/images/seeds/awf.jpg'
  )

