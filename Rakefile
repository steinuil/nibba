task :spec do
  Dir['spec/*_spec.rb'].each do |f|
    require_relative f
  end
end

task :test => :spec
