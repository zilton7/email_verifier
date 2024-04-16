describe 'runs' do
  before do
    EmailVerifier.config do |config|
      config.verifier_email = 'test@test.com'
    end
  end

  it 'with default configuration' do
    EmailVerifier.check('just@justnextlevel.com')
  end
end
