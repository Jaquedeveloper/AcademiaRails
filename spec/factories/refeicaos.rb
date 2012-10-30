# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :refeicao do
    Tipo_Refeicao nil
    Usuario nil
    calorias_consumidas 1
    hora "MyString"
    data "MyString"
  end
end
