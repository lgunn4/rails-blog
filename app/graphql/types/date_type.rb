class Types::DateType < Types::BaseScalar
    def self.coerce_input(value, _context)
      Date.parse(value)
    end
  
    def self.coerce_result(value, _context)
      value.to_s
    end
  end