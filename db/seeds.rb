# rails db:seed to run the seeds

User.create(email: 'test@gmail.com', password: 'password', password_confirmation: 'password')

5.times do |i|
  Post.create(
    title: "Hello #{i}",
    body: "Lorem ipsum dolor sit amet, consectetur adip. #{i}",
    user_id: User.first.id
  )
end
