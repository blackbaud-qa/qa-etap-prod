#TODO: figure out way to not require this
require_relative 'persona_model'
require_relative 'header_model'
require_relative 'other_model'
require_relative 'search_model'



module Cukesetaptesting
  module Account
    class RecordModel < Watirmark::Model::Factory
      keywords RecordView.keywords
      search_term {other.name}
      model OtherModel
      model PersonaModel
      model HeaderModel
      model SearchModel
    end
  end
end