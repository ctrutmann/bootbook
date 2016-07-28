RSpec.describe User, type: :model do
  describe "Model" do
    context 'Validations' do
      it { should validate_presence_of :name}
      it { should validate_presence_of :email}
    end
    context "#save" do
      let(:user) { User.new(name:"Marshall", email: "mj@mj.com")}
      it "adds an entry to the db" do
        expect {
          user.save
        }.to change(User, :count).by(1)
     end
   end
 end
end