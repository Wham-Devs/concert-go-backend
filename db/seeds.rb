user1 = User.where(email: 'test1@example.com').first_or_create(password: 'password', password_confirmation: 'password')

user2 = User.where(email: 'test2@example.com').first_or_create(password: 'password', password_confirmation: 'password')

event1 = [
  {
    city: 'San Diego',
    state: 'CA',
    venue: 'Petco Park',
    artist: 'Coldplay',
    date: '25/07/2023',
    show_time: '8:30 PM',
    genre: 'Alternative pop rock',
    images: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQqFpdKYpSJUxOkuwSovhIghmg-zEDb8pYPjQ&usqp=CAU',
    user_id: 1
  },
  {
    city: 'San Diego',
    state: 'CA',
    venue: 'Pechanga Arena',
    artist: 'Tame Impala',
    date: '16/6/2023',
    show_time: '7:30 PM',
    genre: 'Alternative/Indie',
    images: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSCWCkQ4NpdlEkdy6E-6J9C_Dq6HgCZu2a2NA&usqp=CAU',
    user_id: 1

  },
  {
    city: 'Dallas',
    state: 'TX',
    venue: 'Amplified Live',
    artist: 'ASAP Rocky',
    date: '22/8/2023',
    show_time: '9:30 PM',
    genre: 'Hip Hop/ Trap',
    images: 'https://hips.hearstapps.com/hmg-prod/images/aap-rocky-from-the-film-monster-poses-for-a-portrait-in-the-youtube-x-getty-images-portrait-studio-at-2018-sundance-film-festival-on-january-22-2018-in-park-city-utah-photo-by-robby-klein_getty-images.jpg?crop=1xw:0.75xh;center,top&resize=1200:*',
    user_id: 1

  },
  {
    city: 'Los Angeles',
    state: 'CA',
    venue: 'Crypto.com Arena',
    artist: 'The Weeknd',
    date: '4/9/2023',
    show_time: '8:30 PM',
    genre: 'RnB/ Pop',
    images: 'https://www.billboard.com/wp-content/uploads/2022/06/the-weeknd-press-credit-brian-ziff-2022-billboard-1-1548.jpg?w=942&h=623&crop=1',
    user_id: 1

  },
  {
    city: 'San Francisco',
    state: 'CA',
    venue: 'The Chapel',
    artist: 'ODESZA',
    date: '16/11/2023',
    show_time: '9:00 PM',
    genre: 'Electronic',
    images: 'https://images.seattletimes.com/wp-content/uploads/2022/07/07292022_odesza_231154.jpg?d=780x520',
    user_id: 1

  },
  {
    city: 'New York',
    state: 'NY',
    venue: 'Madison Garden',
    artist: 'Beyonce',
    date: '10/6/2023',
    show_time: '7:30 PM',
    genre: 'RnB/ Pop',
    images: 'https://img.buzzfeed.com/buzzfeed-static/static/2022-07/28/15/asset/7cb262059fb8/sub-buzz-6121-1659022200-7.jpg?downsize=700%3A%2A&output-quality=auto&output-format=auto',
    user_id: 1

  },
  {
    city: 'Miami',
    state: 'FL',
    venue: 'Pechanga Arena',
    artist: 'Diplo',
    date: '16/11/2023',
    show_time: '3:00 PM',
    genre: 'Electronic',
    images: 'https://people.com/thmb/GRHLuo32r8zFSZ8RcTlNcz-WvH0=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc():focal(999x0:1001x2)/gettyimages-1152939198-1-0848088188154de8b3e03b281e520158.jpg',
    user_id: 1

  },
  {
    city: 'San Diego',
    state: 'CA',
    venue: 'Winstons OB',
    artist: 'Tame Impala',
    date: '13/6/2023',
    show_time: '7:30 PM',
    genre: 'Reggae',
    images: 'https://www.billboard.com/wp-content/uploads/media/slightly-stoopid-press-2015-billboard-650.jpg?w=650',
    user_id: 1

  }
]

event2 = [
  {
    city: 'San Diego',
    state: 'CA',
    venue: 'Snapdragon Stadium',
    artist: 'Bad Bunny',
    date: '25/09/2023',
    show_time: '8:00 PM',
    genre: 'Urban Latino',
    images: 'https://www.tubewp.com/wp-content/uploads/2022/12/bad-bunny-wallpapers-7.jpg',
    user_id: 2
  },
  {
    city: 'San Diego',
    state: 'CA',
    venue: 'Viejas Arena',
    artist: 'Chris Brown',
    date: '25/011/2023',
    show_time: '8:00 PM',
    genre: 'Hip-hop/R&B',
    images: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS3UgtiU4VoH1JvEbboZ2VW0yvguogUP_R0Rw&usqp=CAU',
    user_id: 2
  }
]

event1.each do |event|
  user1.events.create(event)
  puts "creating: #{event}"
end

event2.each do |event|
  user2.events.create(event)
  puts "creating: #{event}"
end
