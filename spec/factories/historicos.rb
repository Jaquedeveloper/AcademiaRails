# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :historico do
    refeicao nil
    treino nil
    peso_atual 1.5
    gordura_corporal 1.5
    valor_metabolico 1
    peso_gordura 1.5
    peso_gordura_ideal 1.5
    massa_magra 1.5
    calorias_a_consumir 1
    peso_perdido 1.5
    peso_a_perder 1.5
    peso_ideal 1.5
    saldo_calorias 1
    situacao "MyString"
  end
end
