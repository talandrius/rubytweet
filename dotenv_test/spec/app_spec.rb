require_relative "../lib/app"

describe "the login_twitter method" do
    it "should return client, and client is not nil" do
      expect(login_twitter).not_to be_nil
    end
  end

describe " test five name array" do
    it "return an random array five members" do
        expect(journalist(array)).to eq(5)
    end
end  