# frozen_string_literal: true

def convert_mark(mark, exponent) = ((mark**exponent) * (100 / (100**exponent))).round
(0..100).each do |mark|
  puts format('%<mark>3d points -> %<converted_mark>3d points', mark:, converted_mark: convert_mark(mark, 0.5))
end
