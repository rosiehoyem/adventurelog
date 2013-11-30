# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

adventure1 = Adventure.create(title: 'National Lampoons Vacation', description: 'Family trip to Europe!')
adventure1.save
entries1 = adventure1.entries.create([{event: 'Big Ben!', date: '05.09.1987', location: 'London, England', socialmedia_provider: 'Facebook'}, 
	{event: 'Shopping in Rome', date: '05.11.1987', location: 'Rome, Italy', socialmedia_provider: 'Instagram'},
	{event: 'Dinner in Paris', date: '05.13.1987', location: 'Paris, France', socialmedia_provider: 'Instagram'}])

adventure2 = Adventure.create(title: 'Hoyem Rome Holiday', description: 'Anniversary Trip to Italy')
adventure2.save
entries2 = adventure2.entries.create([{event: 'Tour of Roman Forum', date: '10.12.2014', location: 'Rome, Italy', socialmedia_provider: 'Facebook'}, 
	{event: 'Pantheon', date: '10.13.2014', location: 'Rome, Italy', socialmedia_provider: 'Instagram'},
	{event: 'Mount Vesuvious', date: '10.14.2014', location: 'Pompeii, Italy', socialmedia_provider: 'Instagram'}])

adventure3 = Adventure.create(title: 'Ruby on Rails Roadtrip', description: 'Roadtrip to Rails Conf')
adventure3.save
entries3 = adventure3.entries.create([{event: 'Rails Meetup', date: '12.27.2013', location: 'Chicago, IL', socialmedia_provider: 'Facebook'}, 
	{event: 'Eco Hack', date: '01.14.2014', location: 'San Francisco, CA', socialmedia_provider: 'Instagram'},
	{event: 'SxSW', date: '03.13.2014', location: 'Austin, TX', socialmedia_provider: 'Instagram'}])

