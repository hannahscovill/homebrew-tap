class JwtDecExp < Formula
  desc "a jwt decoder in rust"
  homepage "https://github.com/hannahscovill/the-rust-programming-language"
  sha256 "c5c098abfb41327b8666e4200231bc99626120a097220c59dd3952132b1dfd9f"
  url "https://github.com/hannahscovill/the-rust-programming-language/releases/download/jwtdecexp-0.0.1/jwtdecexp"
  version "0.0.1"

  def install
    bin.install "jwtdecexp" => "jwtdecexp-rust"
  end

  test do
    output = shell_output("#{bin}/jwtdecexp eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiYWRtaW4iOnRydWUsImlhdCI6MTUxNjIzOTAyMn0.KMUFsIDTnFmyG3nMiGM6H9FNFUROf3wh7SmqJp-QV30")
    assert_equal output.lines.first.strip, 'Answer { header: "{\"alg\":\"HS256\",\"typ\":\"JWT\"}", claims: "{\"sub\":\"1234567890\",\"name\":\"John Doe\",\"admin\":true,\"iat\":1516239022}" }'
  end
end
