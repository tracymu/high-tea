namespace :iteration1 do
  desc "populate total column"
  task :populate_total => :environment do
    Visit.all.each do |v|
      v.save
    end
  end
end