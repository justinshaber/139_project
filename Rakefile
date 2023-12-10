require 'bundler/gem_tasks' # I bet this needs a gemspec????
require 'rake/testtask'

desc 'Say hello'
task :hello do
  puts "Hello there. This is the 'hello' task."
end

desc 'Run tests'
task :default => :test

Rake::TestTask.new(:test) do |t|
  t.libs << "test"
  t.libs << "lib"
  t.test_files = FileList['test/**/*_test.rb']
end

# command line syntax - rake create\['file_name'\]
# The rake file issues commands from the directory of the Rakefile, not the current location of the user.
desc 'Create main, test, and pedac files'
task :create, [:file_name] do |t, arr|
  sh "touch ./#{arr[:file_name]}.rb ./#{arr[:file_name]}_test.rb ./#{arr[:file_name]}_pedac.txt"
end