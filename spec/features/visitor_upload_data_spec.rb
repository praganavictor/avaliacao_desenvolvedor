require 'rails_helper'

feature 'visitor visit homepage and upload data' do
  scenario 'successfully' do
    visit root_path

    attach_file 'anexo[files][]', './spec/dados.txt'
    click_on 'Enviar'
    expect(page).to have_css('p', text: 'Enviado com sucesso.')
  end
end
