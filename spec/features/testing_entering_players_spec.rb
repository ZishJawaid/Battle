feature 'Enter names' do
  scenario 'submitting names' do
    visit('/')
    fill_in :player_1, with: 'Zish'
    fill_in :player_2, with: 'Sophia'
    click_button 'Submit'
    expect(page).to have_content 'Zish vs Sophia'
  end
end