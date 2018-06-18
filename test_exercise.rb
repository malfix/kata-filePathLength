require_relative "exercise"
require "test/unit"

class TestExercise < Test::Unit::TestCase
  test 'length zero' do
    assert_equal(0, Exercise.new().max_length(""))
  end

  test 'one level' do
    assert_equal(20, Exercise.new().max_length("dir\n\tsubdir1\n\tsubdir2\n\t\tfile.ext"))
  end

  test 'more levels' do
    assert_equal(32, Exercise.new().max_length("dir\n\tsubdir1\n\t\tfile1.ext\n\t\tsubsubdir1\n\tsubdir2\n\t\tsubsubdir2\n\t\t\tfile2.ext"))
  end
end
