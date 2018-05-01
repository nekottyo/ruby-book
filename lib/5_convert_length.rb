
UNITS = {
  m: 1.0,
  ft: 3.28,
  in: 39.37
}.each_value(&:freeze).freeze

def convert_length(length, from: :m, to: :m)
  (length / UNITS[from] * UNITS[to]).round(2)
end
