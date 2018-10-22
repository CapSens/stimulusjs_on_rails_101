if Rails.env.development?
  admin = AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')
  user1 = User.create!(email: 'user-1@example.com', password: 'password', password_confirmation: 'password')
  user2 = User.create!(email: 'user-2@example.com', password: 'password', password_confirmation: 'password')

  user1.comments.create(content: "Hello world!", visible_from: 3.days.ago, visible_until: 2.days.from_now, reported: false)
  user2.comments.create(content: "Hello world!", visible_from: 10.days.ago, visible_until: 2.days.ago, reported: false)
end
