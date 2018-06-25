require 'nokogiri'
require 'open-uri'

namespace :assignment3 do
  desc '課題3を実行'
  task exec: :environment do

    url = 'https://baseball-data.com/player/s/'
    charset = nil

    html = open(url) do |page|
      charset = page.charset
      page.read
    end
    contents = Nokogiri::HTML.parse(html, nil, charset)

    contents.css('body > #container > #main > table > tbody > tr').each do |mass|
      data = mass.css('td')
      player_data = {
          no: data[0].content.to_i,
          name: data[1].content,
          position: data[2].content,
          birthday: data[3].content,
          age: data[4].content,
          year: data[5].content,
          body_height: data[6].content,
          body_weight: data[7].content,
          blood_type: data[8].content,
          pitching_and_batting: data[9].content,
          birthplace: data[10].content,
          annual_income: data[11].content
      }
      player = Player.find_or_create_by(no: player_data[:no])
      player.name = player_data[:name]
      player.position = Position.find_or_create_by(name: player_data[:position])
      player.birthday = Birthday.find_or_create_by(date: player_data[:birthday])
      player.age = Age.find_or_create_by(age: player_data[:age])
      player.year = Year.find_or_create_by(year: player_data[:year])
      player.body_height = BodyHeight.find_or_create_by(height: player_data[:body_height])
      player.body_weight = BodyWeight.find_or_create_by(weight: player_data[:body_weight])
      player.blood_type = BloodType.find_or_create_by(type: player_data[:blood_type])
      player.pitching_and_batting = PitchingAndBatting.find_or_create_by(dexterity: player_data[:pitching_and_batting])
      player.birthplace = Birthplace.find_or_create_by(name: player_data[:birthplace])
      player.annual_income = AnnualIncome.find_or_create_by(amount: player_data[:annual_income])
      player.save
    end
    puts 'Completed'
  end
end



