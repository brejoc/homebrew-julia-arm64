class JuliaMaster < Formula
  desc "Julia Programming Language, installed from the master branch on GitHub"
  homepage "https://github.com/JuliaLang/julia"
  url "https://github.com/JuliaLang/julia/archive/refs/heads/master.tar.gz"
  version "1.7"
  license "MIT"

  depends_on "make" => :build
  conflicts_with cask: "julia"
  conflicts_with cask: "julia-nightly"

  # Using https://stackoverflow.com/a/31625863 to get core count!
  def install
    system "echo 'Building Julia from source. This will take a while!'"
    system "ENV[prefix]=#{prefix}"
    system "make -j9" "install"
  end

  test do
    system "#{bin}/julia", "--version"
  end
end
