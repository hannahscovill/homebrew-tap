class GuessingGame < Formula
  desc "a guessing game in rust"
  homepage "https://rust-book.cs.brown.edu/ch02-00-guessing-game-tutorial.html"
  sha256 "https://rust-book.cs.brown.edu/ch02-00-guessing-game-tutorial.html"
  url "https://github.com/hannahscovill/the-rust-programming-language/archive/refs/tags/0.0.1.tar.gz"
  version "0.0.1"

  def install
    bin.install "guessing_game"
  end

  test do
    output = shell_output("#{bin}/guessing_game")
    assert_equal output.lines.first.strip, "Guess the number between 0 and 100"
  end
end
