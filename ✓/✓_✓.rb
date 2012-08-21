# encoding: utf-8

require '✓'

✓ do
  ✓ { 1 + 1 == 2 }
  ✓ { 'wadus'.upcase == 'WADUS' }
  
  ✗ { "something".nil? }
  
  ☐ { something_not_implemented_still }
end
