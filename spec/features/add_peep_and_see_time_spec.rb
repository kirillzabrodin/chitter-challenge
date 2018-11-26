feature "peeps getting a time" do
  scenario "adds a peep and shows time it was added" do
    visit '/peeps'
    click_button "Add peep"
    fill_in('username', with: 'A user')
    fill_in('content', with: 'Some content')
    click_button "Submit"
    expect(page).to have_content "Some content"
    expect(page).to have_content "A user"
    expect(page).to have_content "#{Time.now.hour}:"
  end
end
