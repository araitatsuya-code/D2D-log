# User.create!(name:  "テストさん",
#   email: "test@test.com",
#   password:              "111111",
#   password_confirmation: "111111",
#   admin: false,
#   activated: true,
#   activated_at: Time.zone.now)


50.times do |n|
  gimei = Gimei.new
  email = "test-#{n+1}@d2d.com"
  name  = gimei.name.kanji
  password = "password"
  User.create!(
    name: name,
    email: email,
    password:              password,
    password_confirmation: password,
    admin: false,
    activated: true,
    activated_at: Time.zone.now
  )
end

# 99.times do |n|
# name  = Faker::Name.name
# email = "example-#{n+1}@d2d.org"
# password = "password"
# User.create!(name:  name,
#     email: email,
#     password:              password,
#     password_confirmation: password,
#     activated: true,
#     activated_at: Time.zone.now)
# end

# users = User.order(:created_at).take(6)
# 50.times do
#   content = Faker::Lorem.sentence(5)
#   users.each { |user| user.microposts.create!(content: content) }
# end

# # リレーションシップ
# users = User.all
# user  = users.first
# following = users[2..50]
# followers = users[3..40]
# following.each { |followed| user.follow(followed) }
# followers.each { |follower| follower.follow(user) }