def filename
  @filename ||= Fathom.root.join("test/support/short.csv").to_s
end

def short_filename
  @short_filename ||= Fathom.root.join("test/support/short.csv").to_s
end

def long_filename
  @long_filename ||= Fathom.root.join("test/support/adult.csv").to_s
end
