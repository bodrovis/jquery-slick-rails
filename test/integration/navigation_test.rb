require 'test_helper'

class NavigationTest < ActionDispatch::IntegrationTest
  test 'can access slick.js' do
    get '/assets/jquery.slick.js'
    assert_response :success
  end

  test 'can access slick.css' do
    get '/assets/slick.css'
    assert_response :success
  end

  test 'can access slick-theme.css' do
    get '/assets/slick-theme.css'
    assert_response :success
  end

  test 'can access slick.eot' do
    get '/assets/slick.eot'
    assert_response :success
  end

  test 'slick response is for the expected version' do
    get '/assets/jquery.slick.js'
    assert_match(/Version: 1\.5\.9/, @response.body)
  end
end
