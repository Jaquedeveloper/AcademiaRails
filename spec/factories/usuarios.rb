# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :usuario do
    nome "MyString"
    altura 1
    sexo "MyString"
    idade 1
    peso_inicial 1.5
  end
end
