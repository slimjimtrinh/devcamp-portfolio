User.create!(
  email: "test@test.com",
  password: "123456test",
  password_confirmation: "123456test",
  name: "Admin User",
  roles: "site_admin"
  )
  
puts "1 Admin User created"

User.create!(
  email: "test2@test.com",
  password: "123456test",
  password_confirmation: "123456test",
  name: "Regular User",
  )
  
puts "1 Regular User created"


3.times do |topic|
  Topic.create!(
    title: "Topic #{topic}"
    )
end

puts "3 Topics created"

4.times do |blog|
  Blog.create!(
    title: "My Blog Post #{blog}",
    body: "Put text here",
  topic_id: Topic.last.id
    )
end

puts "4 blog posts created"

1.times do |skill|
  Skill.create!(
    title: "Rails",
    percent_utalized: 50
    )
  Skill.create!(
    title: "High School",
    percent_utalized: 80
    )
  Skill.create!(
  title: "C+",
  percent_utalized: 50
  )
  end
  
  puts "3 skills created"
  
  8.times do |portfolio_item|
    Portfolio.create!(
      title: "Portfolio title: #{portfolio_item}",
      subtitle: "Change Subtitle", 
      body: "Add text here",
      main_image: "http://via.placeholder.com/600x400", 
      thumb_image: "http://via.placeholder.com/350x200"
      )
    end
  
  ##1.times do |portfolio_item|
##    Portfolio.create!(
##      title: "Portfolio title: #{portfolio_item}",
##      subtitle: "Angular", 
##      body: "nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui
##      officia deserunt mollit anim id est laborum.",
##      main_image: "http://via.placeholder.com/600x400", 
##      thumb_image: "http://via.placeholder.com/350x200"
##      )
##    end
  
  puts "8 portfolio items created"
  
  3.times do |techonology|
    Portfolio.last.techonologies.create!(
      name: "Techonology #{techonology}",
      )
  end
  
  puts "3 technologies created"