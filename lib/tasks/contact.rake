namespace :contact do
  desc "TODO"
  task update_name: :environment do
    Contact.all.each do |contact|
      unless contact.first_name && contact.last_name
        contact.update(first_name: Faker::Name.first_name,
                    last_name: Faker::Name.last_name)
      end
    end
  end

  task update_all_email: :environment do
    Contact.all.each do |contact|
      contact.update(email: Faker::Internet.email)
    end
  end
end
