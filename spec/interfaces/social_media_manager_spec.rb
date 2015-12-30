require 'rails_helper'

describe SocialMediaManager do

  subject { described_class.new }

  it 'loads all storage interfaces' do
    expected_interfaces = {
      flickr: ::SocialMedia::FlickrInterface,
    }
    expect(subject.interfaces).to eq(expected_interfaces)
  end

  describe 'delegation' do
    it 'delegates methods to all specified interfaces' do
      flickr_interface = double('FlickrInterface', name: 'FlickrInterface')
      image = double('Image')
      stub_const('SocialMedia::FlickrInterface', flickr_interface)
      expect(flickr_interface).to receive(:update_data_from).with(image)
      subject.delegate_to_interfaces(:update_data_from, :flickr, image)
    end

    it 'complains when interfaces are not found' do
      image = double('Image')
      expect{subject.delegate_to_interfaces(:update_data_from, [:flickr, :flackr], image)}.to raise_error(::SocialMediaManager::NotAllInterfacesFound, 'Not found: flackr')
    end
  end

end
