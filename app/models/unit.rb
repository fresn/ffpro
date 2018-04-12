class Unit
  attr_reader :name, :value

  def self.get_units_under_kind kind_name = nil
    res = if kind_name.nil?
            UnitBackend.all
          else
            UnitBackend.where(kind: kind_name)
          end
    list = Array.new
    if res.none?
      raise Exception.new("kind #{kind_name} not found")
    else
      res.each do |item|
        list << item.name
      end
      list
    end
  end

  def initialize(unit_name, value)
    res = UnitBackend.where(name: unit_name)
    if res.none?
      raise Exception.new(unit_name + " not found")
    else
      @name = res[0].name
      @value = value
      @kind = res[0].kind
      @to_default_rate = res[0].ToDefaultRate
    end
  end

  def to_default
    @value * @to_default_rate
  end

  def to_(name)
    res = UnitBackend.where(name: name)
    if res.none?
      raise Exception.new(unit_name + " not found")
    else
      target_to_default_rate = res[0].ToDefaultRate
    end
    to_default_rate = @to_default_rate
    (@value * to_default_rate / target_to_default_rate).to_f
  end

  def list_conventable
    conventable_list = Array.new
    conventable_items = UnitBackend.where(kind: @kind)
    conventable_items.each do |item|
      conventable_list << item.name
    end
    conventable_list
  end
end
