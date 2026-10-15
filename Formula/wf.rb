class Wf < Formula
  desc "CLI for Wayfinder - self-service cloud infrastructure platform"
  homepage "https://getwayfinder.io"
  version "3.4.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://on.wayfinder.run/cli/v3.4.0/wf-cli-darwin-amd64.tar.gz"
      sha256 "ff9cc75b1513a895d5b2241ad300a1ddaaa0a0bc25cec3c9aedb6f3eee54b58d"
    end
    on_arm do
      url "https://on.wayfinder.run/cli/v3.4.0/wf-cli-darwin-arm64.tar.gz"
      sha256 "1b1527d10c4c2f9aa9198b2fae1328e216ae1c0bd11747f1eb11af2c238b6503"
    end
  end

  on_linux do
    on_intel do
      url "https://on.wayfinder.run/cli/v3.4.0/wf-cli-linux-amd64.tar.gz"
      sha256 "c33f231f2ada936945099efd9252842db8ed05c452d99f25fbf4549a601ecb18"
    end
    on_arm do
      url "https://on.wayfinder.run/cli/v3.4.0/wf-cli-linux-arm64.tar.gz"
      sha256 "08570451a6c2b8b78a20305a9736c7da43fb39f3535bd41669fdf58036072432"
    end
  end

  def install
    bin.install Dir["wf-cli-*"].first => "wf"
    bin.install_symlink "wf" => "wayfinder"
  end

  test do
    system bin/"wf", "version"
  end
end
