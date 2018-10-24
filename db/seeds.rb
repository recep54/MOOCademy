require 'faker'
I18n.reload!
# Create 10 cours with 2 to 8 lessons each
10.times do
  cour = Cour.create!(title: Faker::Community.characters, description: Faker::FamilyGuy.quote)
  i = rand(6) + 2
  i.times do
    lesson = Lesson.create!(title: Faker::Book.title, body: Faker::Community.quotes, cour_id: cour.id)
  end
end