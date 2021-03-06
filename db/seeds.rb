require_relative('../models/animal.rb')
require_relative('../models/owner.rb')
require_relative('../models/adoption.rb')
require('pry-byebug')

Adoption.delete_all
Animal.delete_all
Owner.delete_all

animal1 = Animal.new(
  'name' => 'Jasper',
  'age' => 9,
  'type' => 'Cat',
  'breed' => 'Maine Coon',
  'adopt_status' => true,
  'admittion_date' => '20/01/2018'
)

animal1.save

animal2 = Animal.new(
  'name' => 'Angel',
  'age' => 2,
  'type' => 'Dog',
  'breed' => 'Yorkshire Terrier',
  'adopt_status' => false,
  'admittion_date' => '04/02/2018'
)

animal2.save

animal3 = Animal.new(
  'name' => 'Jaffar',
  'age' => 5,
  'type' => 'Snake',
  'breed' => 'Corn Snake',
  'adopt_status' => true,
  'admittion_date' => '21/10/2017'
)

animal3.save

animal4 = Animal.new(
  'name' => 'Lilly',
  'age' => 6,
  'type' => 'Cat',
  'breed' => 'Tabby',
  'adopt_status' => true,
  'admittion_date' => '25/12/2017'
)

animal4.save

animal5 = Animal.new(
  'name' => 'Thumper',
  'age' => 2,
  'type' => 'Rabbit',
  'breed' => 'Angora',
  'adopt_status' => true,
  'admittion_date' => '10/09/2017'
)

animal5.save

owner1 = Owner.new(
  'first_name' => 'Roy',
  'second_name' => 'Cuthbertson',
  'dob' => '27/02/1979',
  'address' => '41 Cadder Way, Bishopbriggs',
  'city' => 'Glasgow',
  'post_code' => 'G64 3JP',
  'email_address' => 'oggieoggieoggieroyroyroy@gmail.com',
  'phone_number' => '07883654910'
)

owner1.save

owner2 = Owner.new(
  'first_name' => 'Kathleen',
  'second_name' => 'Evans',
  'dob' => '1/09/1989',
  'address' => '153 Southview Ave, Clarkston',
  'city' => 'Glasgow',
  'post_code' => 'G76 8QE',
  'email_address' => 'Kathy501@gmail.com',
  'phone_number' => '07979800602'
)

owner2.save

adoption1 = Adoption.new(
  'animal_id' => animal1.id,
  'owner_id' => owner1.id
)

adoption1.save

nil
