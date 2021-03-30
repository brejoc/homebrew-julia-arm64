class JuliaMaster < Formula
  desc "The Julia Programming Language, installed from the master branch on GitHub."
  homepage "https://github.com/JuliaLang/julia"
  url "https://github.com/JuliaLang/julia/archive/refs/heads/master.zip"
  version "1.7"
  sha256 "" 
  license "MIT"

  depends_on "make" => :build

  def install
    system "echo 'Building Julia from source. This will take a while!'"
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test julia-nightly-source`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "#{bin}/julia --version"
  end
end
