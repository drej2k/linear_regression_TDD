require '../linear_regression.rb'
require 'minitest/autorun'

#  optional pretty output that reads like a specificication
require 'minitest/reporters'
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new()

class TestRegressionLine < Minitest::Test

  def setup
    @reg_1 = RegressionLine.new([25,30,35,40,45,50],[78,70,65,58,48,42])
    @reg_2 = RegressionLine.new([56,42,72,36,63,47,55,49,38,42,68,60], [147,125,160,118,149,128,150,145,115,140,152,155])
  end

  def test_sum_x_squared
  	assert_equal @reg_1.sum_x_squared, 8875
  end

  def test_sum_y
  	assert_equal @reg_1.sum_y, 361
  end

  def test_sum_x
  	assert_equal @reg_1.sum_x, 225
  end

  def test_sum_xy
  	assert_equal @reg_1.sum_xy, 12905
  end

  def test_sum_x_all_squared
  	assert_equal @reg_1.sum_x_all_squared, 50625
  end

  def test_find_a
  	assert_equal @reg_1.find_a, 114.381
  end

  def test_find_b
  	assert_equal @reg_1.find_b, -1.4457
  end

  def test_proper_result_1
  	assert_equal @reg_1.result, [114.381, -1.4457]
  end

  def test_proper_result_2
  	assert_equal @reg_2.result, [80.7777, 1.138]
  end

end
