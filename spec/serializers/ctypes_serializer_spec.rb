require "rails_helper"

RSpec.describe CtypeSerializer do
  let(:ctype) { FactoryBot.create(:ctype, has_multiple: true) }
  subject { CtypeSerializer.new(ctype) }

  it { expect(subject.name).to eq(ctype.name) }
  it { expect(subject.slug).to eq(ctype.slug) }
  it { expect(subject.has_multiple).to be_truthy }
end
