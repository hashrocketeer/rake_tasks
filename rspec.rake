task(:spec).clear

desc "Run all specs"
RSpec::Core::RakeTask.new spec: 'db:test:prepare' do |t|
  t.rspec_opts = ['--format progress']
end
