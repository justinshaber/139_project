require 'bundler/setup' # must be at the top of everything
require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

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