require_relative('../db/sql_runner')

class Shoe

  attr_reader(:id, :first_name, :last_name, :address, :style, :size, :quantity)

  def initialize(options)
    @id = options['id'].to_i
    @first_name = options['first_name']
    @last_name = options['last_name']
    @address = options['address']
    @style = options['style']
    @size = options['size']
    @quantity = options['quantity'].to_i
  end

  def pretty_name
    pretty_name = @first_name + " " + @last_name
  end

  def save()
    sql = "INSERT INTO shoes(first_name, last_name, address, style, size, quantity) VALUES ('#{@first_name}', '#{@last_name}', '#{@address}', '#{@style}', '#{@size}', #{@quantity}) RETURNING *"
    shoe = SqlRunner.run(sql).first
    result = Shoe.new(shoe)
    return result
  end

  def self.all()
    sql = "SELECT * FROM shoes"
    shoes = SqlRunner.run(sql)
    result = shoes.map{ |shoe| Shoe.new(shoe) }
    return result
  end

end