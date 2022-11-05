  orgs = Org.create([{ name: "Acme SRL" }, { name: "Other Inc" }])
  
  template = orgs.first.templates.create(name: "Solicitud de Hipoteca")

  name = template.record_types.create(name: "Dirección de la propiedad", input_type: "text_field")
  name = template.record_types.create(name: "Precio de la propiedad", input_type: "text_field")
  pic =  template.record_types.create(name: "Foto delanteta DNI",   input_type: "file_field")
  pic =  template.record_types.create(name: "Foto trasera DNI",   input_type: "file_field")
  pic =  template.record_types.create(name: "Ultima declaración de la renta",   input_type: "file_field")
  pic =  template.record_types.create(name: "Informe de tasación",   input_type: "file_field")
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?