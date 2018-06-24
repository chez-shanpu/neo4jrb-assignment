namespace :assignment2 do
  desc '課題2を実行'
  task exec: :environment do
    # JSONファイルのオープン、変数hashへの格納
    File.open('./school.json') do |file|
      hash = JSON.load(file)

      univ = nil
      hash.each do |line|
        if line['大学']
          univ = University.find_or_create_by(name: line['大学'])
        elsif univ && line['学部'] # 大学が存在するときのみ学部が存在
          departments = []
          line['学部'].each do |dep_name|
            dep = Department.find_or_create_by(name: dep_name)
            departments << dep
          end
          univ.departments = departments
          univ.save
          # 一つの大学に対して学部群は一つのみ
          univ = nil
        end
      end
    end
  end
end
