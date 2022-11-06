  orgs = Org.create([{ name: "Acme SRL" }, { name: "Other Inc" }])
  org = orgs.first

  org.admins.create! email: "admin1@mail.com", password: "adminadmin", password_confirmation: "adminadmin"
  
  template = org.templates.create(name: "Solicitud de Hipoteca")

  name = template.record_types.create(name: "Dirección de la propiedad", input_type: "text_field")
  name = template.record_types.create(name: "Precio de la propiedad", input_type: "text_field")
  pic =  template.record_types.create(name: "Foto delanteta DNI",   input_type: "file_field")
  pic =  template.record_types.create(name: "Foto trasera DNI",   input_type: "file_field")
  pic =  template.record_types.create(name: "Ultima declaración de la renta",   input_type: "file_field")
  pic =  template.record_types.create(name: "Informe de tasación",   input_type: "file_field")
