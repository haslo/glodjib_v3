require 'rails_helper'

describe StorageManager do

  subject { described_class.new }

  it 'loads all storage interfaces' do
    expected_interfaces = {
      amazon: ::Storage::AmazonInterface,
      local_storage: ::Storage::LocalStorageInterface,
    }
    expect(subject.interfaces).to eq(expected_interfaces)
  end

end
