require "spec_helper"

RSpec.describe CommitLint do
  it "has a version number" do
    expect(CommitLint::VERSION).not_to be nil
  end

  it "does something useful" do
    expect(false).to eq(true)
  end
end
