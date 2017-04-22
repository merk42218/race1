if (u1 = User.find_by_email('admin@localhost')).nil?
  u1 = User.create!(password: 'qwerty', password_confirmation: 'qwerty',
    email: 'admin@localhost')
  u1.activate!
end
if (u2 = User.find_by_email('user@localhost')).nil?
  u2 = User.create!(password: 'qwerty', password_confirmation: 'qwerty',
    email: 'user@localhost')
  u2.activate!
end
r1, r2 = Role.create_main_roles
ru1 = RoleUser.create(role: r1, user: u1)
ru2 = RoleUser.create(role: r2, user: u2)

CalendarOfTheChampionship.create!(gp_name: ' Гран-при Австралии ', number: '1', race_date: Date.new(2017,3,24), country:' Австралия' , location: 'Мельбурн')
CalendarOfTheChampionship.create!( gp_name: 'Гран-при Китая', number: '2', race_date: Date.new(2017,4,14), country:'Китай' , location: 'Шанхай')
CalendarOfTheChampionship.create!( gp_name: 'Гран-при Бахрейна ', number: '3', race_date: Date.new(2017,4,7), country:'Бахрейн' , location: 'Сахир')
CalendarOfTheChampionship.create!( gp_name: 'Гран-при России', number: '4', race_date: Date.new(2017,4,28), country:'Россия' , location: 'Сочи')
CalendarOfTheChampionship.create!( gp_name: 'Гран-при Испании', number: '5', race_date: Date.new(2017,5,12), country:'Испания' , location: 'Монмело')
CalendarOfTheChampionship.create!( gp_name: 'Гран-при Монако ', number: '6', race_date: Date.new(2017,5,25), country:'Монако' , location: 'Монте-Карло')

r1 = Racer.create!(surname:  'Феттель', firstname: 'Себастьян', bday: Date.new(1989,7,1), country: 'Германия (Ferrari 1)', number_of_wins: 68) #Ferrari
r2 = Racer.create!(surname:  'Риккардо', firstname: 'Даниэль', bday: Date.new(1987,7,3), country: 'Австралия (Red Bull 2)', number_of_wins: 22) #Red Bull
r3 = Racer.create!(surname:  'Ферстаппен', firstname: 'Макс', bday: Date.new(1997,9,30), country: 'Нидерланды (Red Bull 3)', number_of_wins: 25) #Red Bull
r4 = Racer.create!(surname:  'Перес', firstname: 'Серхио', bday: Date.new(1990,1,26), country: 'Мексика (Force India 4)', number_of_wins: 14) #Force India
r5 =Racer.create!( surname:  'Масса', firstname: 'Фелипе', bday: Date.new(1981,4,25), country: 'Бразилия (Williams 5)', number_of_wins: 16) #Williams
r6 =Racer.create!( surname:  'Стролл', firstname: 'Лэнс', bday: Date.new(1998,10,29), country: 'Канада (Williams 6)', number_of_wins: 0) #Williams
r7 =Racer.create!( surname:  'Хэмилтон', firstname: 'Льюис', bday: Date.new(1985,1,7), country: 'Великобритания (Mercedes 7)', number_of_wins: 61) #	Mercedes
r8 =Racer.create!( surname:  'Боттас', firstname: 'Валттери', bday: Date.new(1986,4,17), country: ' Финляндия-Германия (Mercedes 8)', number_of_wins: 38)#
r9 = Racer.create!( surname:  'Райкконен', firstname: 'Кими', bday: Date.new(1979,10,17), country: 'Финляндия (Ferrari 9)', number_of_wins: 34)# Ferrari
r10 =Racer.create!( surname:  'Окон', firstname: 'Эстебан', bday: Date.new(1996,9,17), country: 'Франция (Force India 10)', number_of_wins: 3)# Force India

Team.create!(  team_name: 'Ferrari', racer1: r1, racer2: r9, motor_manufacturer: 'Ferrari 062 1,6 V6T', car_number1: '1-111', car_number2: '1-222', team_country: 'Италия')
Team.create!(  team_name: 'Red Bull', racer1: r2, racer2: r3, motor_manufacturer: 'TAG Heuer (Renault R.E.17) 1,6 V6T', car_number1: '2-111', car_number2: '2-222', team_country: 'Великобритания')
Team.create!(  team_name: 'Force India', racer1: r4, racer2: r10, motor_manufacturer: 'Mercedes M08 EQ Power+ 1.6 V6t', car_number1: '3-111', car_number2:'3-222', team_country: 'Великобритания')
Team.create!(  team_name: 'Williams', racer1: r5, racer2: r6, motor_manufacturer: 'Mercedes M08 EQ Power+ 1,6 V6T', car_number1: '4-111', car_number2: '5-222', team_country: 'Великобритания')
Team.create!(  team_name: 'Mercedes', racer1: r7, racer2: r8, motor_manufacturer: 'Mercedes M08 EQ Power+ 1,6 V6T', car_number1: '5-111', car_number2: '5-222', team_country: 'Великобритания')
