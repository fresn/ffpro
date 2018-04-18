class SessionLog
  @@message=nil
  def self.push message
    @@messages << message
  end

  def self.get_messages
    @@messages
  end
end