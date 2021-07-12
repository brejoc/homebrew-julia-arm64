class JuliaMaster < Formula
  desc "Julia Programming Language, installed from the master branch on GitHub"
  homepage "https://github.com/JuliaLang/julia"
  url "https://julialang-s3.julialang.org/bin/mac/aarch64/1.7/julia-1.7.0-beta3-macaarch64.dmg"
  version "1.7"
  license "MIT"

  depends_on "make" => :build
  conflicts_with cask: "julia"
  conflicts_with cask: "julia-nightly"

  # Using https://stackoverflow.com/a/31625863 to get core count!
  def install
    system "echo 'Building Julia from source. This will take a while!'"
    system "ENV[prefix]=#{prefix}"
    system "make", "install"
  end

  test do
    system "#{bin}/julia", "--version"
  end
end
