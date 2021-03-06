require 'spec_helper'

describe Entities::AccountDeletion do
  let(:data) { { diaspora_handle: 'me@goes.byebye.tld' } }

  let(:xml) do
    <<-XML
<account_deletion>
  <diaspora_handle>me@goes.byebye.tld</diaspora_handle>
</account_deletion>
XML
  end

  it_behaves_like 'an Entity subclass' do
    let(:klass) { Entities::AccountDeletion }
  end
end
