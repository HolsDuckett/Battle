# feature 'Testing infrastructure' do
#     scenario 'can run the app and check page content' do
#         visit ('/')
#         expect(page).to have_content 'Testing infrastructure working!'
#     end
# end

feature 'submitting names into the game' do
  scenario 'can add names into the game via a submit buttom' do
    visit ('/')
    fill_in 'Player 1 name', with:'Holly'
    fill_in 'Player 2 name', with:'Meg'
    click_button ('Submit')
    expect(page).to have_content 'Holly vs Meg'
  end

end
