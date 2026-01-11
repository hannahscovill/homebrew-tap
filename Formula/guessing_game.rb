class GuessingGame < Formula
  desc "a guessing game in rust"
  homepage "https://rust-book.cs.brown.edu/ch02-00-guessing-game-tutorial.html"
  sha256 "55055fd6ae37e715dfc731a7597b9b16f6fc71ccbd59700c69971fcf8e930c16"
  url "https://github.com/hannahscovill/the-rust-programming-language/releases/download/0.0.1/guessing_game"
  version "0.0.1"

  def install
    bin.install "guessing_game"
  end

  test do
    output = shell_output("#{bin}/guessing_game")
    assert_equal output.lines.first.strip, "Guess the number between 0 and 100"
  end
end
