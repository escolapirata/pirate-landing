require 'test_helper'

class CertificatesControllerTest < ActionController::TestCase
  setup do
    @certificate = certificates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:certificates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create certificate" do
    assert_difference('Certificate.count') do
      post :create, certificate: { activity_id: @certificate.activity_id, grade: @certificate.grade, owner_id: @certificate.owner_id, private_commente: @certificate.private_commente, provider_id: @certificate.provider_id, public_comment: @certificate.public_comment, type: @certificate.type }
    end

    assert_redirected_to certificate_path(assigns(:certificate))
  end

  test "should show certificate" do
    get :show, id: @certificate
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @certificate
    assert_response :success
  end

  test "should update certificate" do
    patch :update, id: @certificate, certificate: { activity_id: @certificate.activity_id, grade: @certificate.grade, owner_id: @certificate.owner_id, private_commente: @certificate.private_commente, provider_id: @certificate.provider_id, public_comment: @certificate.public_comment, type: @certificate.type }
    assert_redirected_to certificate_path(assigns(:certificate))
  end

  test "should destroy certificate" do
    assert_difference('Certificate.count', -1) do
      delete :destroy, id: @certificate
    end

    assert_redirected_to certificates_path
  end
end
