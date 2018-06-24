Skip to content
 
Search or jump to…

Pull requests
Issues
Marketplace
Explore
 @cjwood032 Sign out
0
0 1,135 cjwood032/oo-student-scraper-v-000
forked from learn-co-students/oo-student-scraper-v-000
 Code  Pull requests 0  Projects 0  Wiki  Insights  Settings
oo-student-scraper-v-000/lib/student.rb
9cf0286  on Jan 21, 2016
@SophieDeBenedetto SophieDeBenedetto added missing attr_accessor to student class, rescue 404 student prof…
@SophieDeBenedetto @jmburges
     
32 lines (24 sloc)  606 Bytes
class Student

  attr_accessor :name, :location, :twitter, :linkedin, :github, :blog, :profile_quote, :bio, :profile_url

  @@all = []

  def initialize(student_hash)
    student_hash.each do |attribute, value|
      self.send("#{attribute}=", value)
    end
    @@all << self
  end

  def self.create_from_collection(students_array)
    students_array.each do |student_hash|
      Student.new(student_hash)
    end
  end

  def add_student_attributes(attributes_hash)
    attributes_hash.each do |attr, value|
      self.send("#{attr}=", value)
    end
    self
  end

  def self.all
    @@all
  end
end

© 2018 GitHub, Inc.
Terms
Privacy
Security
Status
Help
Contact GitHub
API
Training
Shop
Blog
About
Press h to open a hovercard with more details.