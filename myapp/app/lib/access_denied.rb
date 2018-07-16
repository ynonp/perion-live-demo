class AccessDenied < StandardError
  def initialize
    super('Access Denied')
  end
end
