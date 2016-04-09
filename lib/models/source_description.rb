class ::Fathom::SourceDescription < ::OpenStruct

  def initialize(filename, hash = {})
    super(hash.merge({ :filename => filename }))
  end

end
