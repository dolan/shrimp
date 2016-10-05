class Shrimp
  SHRIMP_STRING = <<-SHREND

 \|//|/
.*----___//  <-- delicious!
 /|/|/|
SHREND

  def initialize(next_app)
    @app = next_app
  end

  def call(env)
    status, headers, resp = app.call(env)

    response_body = ""
    resp.body.each { |part| response_body += part }
    response_body += "\n<pre>#{SHRIMP_STRING}</pre>"

    headers["Content-length"] = response_body.length.to_s

    [status, headers, response_body]
  end

  private
  attr_reader :app
end
