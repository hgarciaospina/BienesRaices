# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Agent.create!(
    email: 'm@d.com', password: '12345678', name: 'Administrador', phone: '00932232', admin: true,
    about: 'Editar en mi perfil', address: 'editar en mi perfil', company: 'Academiadeprogramacion.com'
)

["Alquiler", "Venta"].each do |c|
  PropertyCategory.create name: c
end

["Casa", "Apartamento", "Oficina"].each do |t|
  PropertyType.create name: t
end

["Edita esta ciudad", "Edita esta tambien"].each do |c|
  City.create name: c
end