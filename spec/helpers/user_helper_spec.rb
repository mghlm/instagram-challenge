require 'rails_helper'

  def sign_up
    visit('/')
    click_link('Sign up')
    fill_in('Email', with: "mail@magnusholm.com")
    fill_in('Password', with: "123banana")
    fill_in('Password confirmation', with: "123banana")
    click_button('Sign up')
  end

  def sign_in
    visit('/')
    sign_up
    click_link('Sign out')
    click_link('Sign in')
    fill_in('Email', with: "mail@magnusholm.com")
    fill_in('Password', with: "123banana")
    click_button('Log in')
  end
