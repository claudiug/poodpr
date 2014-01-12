require 'test/unit'
require_relative 'addcust'

class TestAddCustomer < Test::Unit::Testcase
  def test_add
    c = Customer.new('demo', 'demo1')
    file = File.open('file') do |f|
        assert_equal('demo demo1', f.gets)
    end
  ensure
    File.delete(file) if File.exist?('file')
  end
end