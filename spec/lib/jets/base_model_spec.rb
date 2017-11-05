require "spec_helper"

# To test model methods
class User < Jets::BaseModel
end

describe Jets::BaseModel do
  let(:user) { User.new }

  it "#table_name" do
    expect(user.table_name).to eq("#{Jets.config.project_namespace}-users")
  end

  it "#create" do
    user.create(
      name: "tung"
    )
  end

  it "#find" do
  end
end