module ApplicationHelper

  def set_agents
    Agent.all
  end

  def set_properties
    Property.all
  end

  def set_categories
    PropertyCategory.all
  end

  def set_types
    PropertyType.all
  end

  def set_cities
    City.all
  end

  def price_option
    [
        ["0-$1,000", '0/1000'],
        ["$1,000-$2,000", '1000/2000'],
        ["$2,000-$3,000", '2000/3000'],
        ["$3,000-$6,000", '3000/6000'],
        ["$6,000-$12,000", '6000/12000'],
        ["$12,000-$24,000", '12000/24000']
    ]
  end
end
