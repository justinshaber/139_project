require 'bundler/setup' # must be at the top of everything
require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

require_relative '../lib/project'
=begin
  OR use ONE of the following. Do not load the same files multiple times.
  require 'project' => prepends and searches each path found in $LOAD_PATH
  require './lib/project' => searches the current working directory `./`
=end

class ProjectTest < Minitest::Test
  def setup
    @fido = Dog.new("Fido")
  end

  def test_name # test_whatever_the_method_is
    expected = "Fido"
    assert_equal(expected, @fido.name)
  end
end

class TextTest < Minitest::Test
  def setup
    @file = File.open('lib/sample.txt')
  end

  def teardown
    @file.close
  end

  def test_file_size
    @file_text = @file.read
    range = (50..100)
		assert_includes(range, @file_text.split.size)
  end
end