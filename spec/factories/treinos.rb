# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :treino do
    usuario nil
    tipo_treino nil
    calorias_gastas 1
    tempo "MyString"
    data "MyString"
    horario "MyString"
  end
end
