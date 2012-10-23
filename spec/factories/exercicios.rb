# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :exercicio do
    nome "MyString"
    calorias_gastas 1
    numero_series 1
    tempo_descanso 1
    exercicios_series 1
  end
end
