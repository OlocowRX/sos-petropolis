require 'faker'

puts ""
puts 'Creating users...'
5.times do
  user = User.new
  user.name = Faker::Name.name
  user.email = Faker::Internet.email
  user.password = Faker::Internet.password(min_length: 6, max_length: 6)
  user.save

  puts ''
  puts "#{'-' * 10} User #{'-' * 10}"
  puts ''

  puts "Name: #{user.name}"
  puts "Email: #{user.email}"
  puts "Password: | #{user.password} |"

  puts ''
  puts "#{'-' * 10} User #{'-' * 10}"
  puts ''

  3.times do |index|
    campaign = Campaign.new(name: Faker::Company.name, info: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent vel nisl rutrum, eleifend magna in, sodales tortor.')
    campaign.user = user

    puts "#{'-' * 10} #{index + 1} #{'-' * 10}"
    puts "Campaign name: #{campaign.name}"
    puts "Info: #{campaign.info}"
    puts "User assigned: #{campaign.user.email}"

    campaign.save
  end
end
puts ''
puts 'Finished !!!'
