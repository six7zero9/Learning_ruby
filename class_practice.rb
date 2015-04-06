class Profile
  def initialize(name,age,gender,email)
    @name = name
    @age = age
    @gender = gender
    @email = email
  end

  attr_reader :name,:age,:gender,:email
  attr_writer :name,:age,:gender,:email

  def info
    puts "Name: " + @name
    puts "Age: " + @age.to_s
    puts "Gender:" + @gender
    puts "E-mail Address: " + @email
  end

  def to_s
    p @name + ", " + @age.to_s + ", " + @gender + ", " + @email
  end

end

new_profile = Profile.new("Michael Paul Jackson",32,"Male","mj0019@uah.edu")
# p new_profile
# puts new_profile.name
# puts new_profile.age
# puts new_profile.gender
# puts new_profile.email
new_profile.info
new_profile.to_s
