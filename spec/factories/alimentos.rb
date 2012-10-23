# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :alimento do
    nome "MyString"
    categoria "MyString"
    quantidade 1
    unidade_medida "MyString"
    calorias 1
    proteinas 1
    carboidratos 1
    gorduras 1
  end
end
