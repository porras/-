# encoding: utf-8

require 'minitest/unit'
require 'minitest/autorun'

module Checkmark✓
  module Toplevel
    def ✓(&block)
      Class.new(MiniTest::Unit::TestCase).class_eval do
        instance_eval(&block)
      end
    end
  end
  
  module Checks✓
    def ✓(&block)
      define_method "test_: #{rand.inspect}" do
        assert instance_eval(&block)
      end
    end
    
    def ✗(&block)
      define_method "test_: #{rand.inspect}" do
        assert !instance_eval(&block)
      end
    end
    
    def ☐(&block)
      define_method "test_: #{rand.inspect}" do
        skip "☐ pending"
      end
    end
  end
end

include Checkmark✓::Toplevel
MiniTest::Unit::TestCase.extend Checkmark✓::Checks✓