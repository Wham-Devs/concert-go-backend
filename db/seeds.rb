user1 = User.where(email: 'test1@example.com').first_or_create(password: 'password', password_confirmation: 'password')

user2 = User.where(email: 'test2@example.com').first_or_create(password: 'password', password_confirmation: 'password')


event1 = [
    {
        city:'San Diego', 
        state:'CA',
        venue:'Petco Park',
        artist:'Coldplay',
        date:'25/07/2023',
        show_time:'8:30 PM',
        genre:'Alternative pop rock',
        images:'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQqFpdKYpSJUxOkuwSovhIghmg-zEDb8pYPjQ&usqp=CAU',
        user_id:1
    },
    {
        city:'San Diego', 
        state:'CA',
        venue:'Pechanga Arena',
        artist:'Tame Impala',
        date:'16/6/2023',
        show_time:'7:30 PM',
        genre:'Alternative/Indie',
        images:'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSCWCkQ4NpdlEkdy6E-6J9C_Dq6HgCZu2a2NA&usqp=CAU',
        user_id:1
    }
]


event2 = [
    {
        city:'San Diego', 
        state:'CA',
        venue:'Snapdragon Stadium',
        artist:'Bad Bunny',
        date:'25/09/2023',
        show_time:'8:00 PM',
        genre:'Urban Latino',
        images:'https://www.tubewp.com/wp-content/uploads/2022/12/bad-bunny-wallpapers-7.jpg',
        user_id:2  
    },
    {
        city:'San Diego', 
        state:'CA',
        venue:'Viejas Arena',
        artist:'Chris Brown',
        date:'25/011/2023',
        show_time:'8:00 PM',
        genre:'Hip-hop/R&B',
        images:'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS3UgtiU4VoH1JvEbboZ2VW0yvguogUP_R0Rw&usqp=CAU',
        user_id:2  
    },
]

event1.each do |event|
    user1.events.create(event)
    puts "creating: #{event}"
end 

event2.each do |event| 
    user2.events.create(event)
    puts "creating: #{event}"
end