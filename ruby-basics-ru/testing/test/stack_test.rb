# frozen_string_literal: true

require_relative 'test_helper'
require_relative '../lib/stack'

class StackTest < Minitest::Test
  # BEGIN
  def test_push
    stack = Stack.new
    stack.push! 'ruby'
    assert { !stack.empty? }
    assert { stack.size == 1 }
  end

  def test_pop
    stack = Stack.new
    stack.push! 'ruby'
    result = stack.pop!
    assert { result == 'ruby' }
    assert { stack.empty? }
    assert { stack.size.zero? }
  end

  def test_clear
    stack = Stack.new
    stack.push! 'ruby'
    stack.clear!
    assert { stack.empty? }
    assert { stack.size.zero? 0 }
  end
  # END
end

test_methods = StackTest.new({}).methods.select { |method| method.start_with? 'test_' }
raise 'StackTest has not tests!' if test_methods.empty?
