require_relative "exercise"
require "test/unit"

class TestExercise < Test::Unit::TestCase
  test 'length zero' do
    assert_equal(0, Exercise.new().max_length(""))
  end

  test 'example base' do
    assert_equal(20, Exercise.new().max_length("dir\n\tsubdir1\n\tsubdir2\n\t\tfile.ext"))
  end
end
