require 'bundler/setup' # must be at the top of everything
require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

require_relative '../lib/project'

class ProjectTest < Minitest::Test
  def setup
    @fido = Dog.new("Fido")
  end

  def test_name # test_whatever_the_method_is
    expected = "Fido"
    assert_equal(expected, @fido.name)
  end
end