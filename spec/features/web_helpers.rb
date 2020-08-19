def sign_in_and_play
    visit('/')
    fill_in :player_1, with: 'Zish'
    fill_in :player_2, with: 'Kibu'
    click_button "Submit"
end