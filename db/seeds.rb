# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

u1 = User.create({ name: 'Admin', email: 'admin@admin.com', password: 'password', password_confirmation: 'password', role: :admin })
u2 = User.create({ name: 'Manager', email: 'manager@manager.com', password: 'password', password_confirmation: 'password', role: :manager })
u3 = User.create({ name: 'Agent 1', email: 'agent1@agent1.com', password: 'password', password_confirmation: 'password', role: :agent })
u4 = User.create({ name: 'Agent 2', email: 'agent2@agent2.com', password: 'password', password_confirmation: 'password', role: :agent })

p1 = Purchase.create({ description: 'Aquisição 1', status: :requested, notes: 'Essa compra é referente a alguma aquisição', user_id: 3, updated_by: 'Admin' })
p2 = Purchase.create({ description: 'Aquisição 2', status: :approved, notes: 'Compra aprovada', user_id: 3, updated_by: 'Admin' })
p3 = Purchase.create({ description: 'Aquisição 3', status: :cancelled, notes: 'Compra cancelada', user_id: 4, updated_by: 'Admin' })
p4 = Purchase.create({ description: 'Aquisição 4', status: :requested, user_id: 4 })
p5 = Purchase.create({ description: 'Aquisição 5', status: :open })
p6 = Purchase.create({ description: 'Aquisição 6', status: :open })
p7 = Purchase.create({ description: 'Aquisição 7', status: :open })


