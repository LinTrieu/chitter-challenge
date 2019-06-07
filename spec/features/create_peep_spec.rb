feature 'Creating new peep' do

  scenario 'user can add a new peep' do
    visit("/")
    click_link('All Peeps')
    fill_in('author', with: 'Lin')
    fill_in('handle', with: '@LinnyCoder')
    fill_in('content', with: 'Oh cool! I can add a new peep too!')
    click_link('Submit a new peep')
    expect(page).to have_content('Oh cool! I can add a new peep too!')
  end
end