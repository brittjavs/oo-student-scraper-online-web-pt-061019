class Student

  attr_accessor :name, :location, :twitter, :linkedin, :github, :blog, :profile_quote, :bio, :profile_url 

  @@all = []

  def initialize(student_hash)
    student_hash.each do |info_key, value|
      self.send("#{info_key}=", value)
    @@all << self
  end
  end

  def self.create_from_collection(students_array)
    students_array.each do |student|
      Student.new(student)
  end
  end

  def add_student_attributes(attributes_hash)
    attributes_hash.each do |attribute_name, attribute_value|
      self.send("#{attribute_name}=", attribute_value)
    end
  end

  def self.all
    @@all
  end
end

