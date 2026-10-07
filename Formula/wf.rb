class Wf < Formula
  desc "CLI for Wayfinder - self-service cloud infrastructure platform"
  homepage "https://getwayfinder.io"
  version "3.3.2"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://on.wayfinder.run/cli/v3.3.2/wf-cli-darwin-amd64.tar.gz"
      sha256 "b4695d8583642d78db7a53298d628d38eadf9db16fcaa7c0c9797a5473998ca7"
    end
    on_arm do
      url "https://on.wayfinder.run/cli/v3.3.2/wf-cli-darwin-arm64.tar.gz"
      sha256 "c6fab362c95a2ac69a7b437b58f0d345b84c53ed4010c90da68e6ce93e5f32b3"
    end
  end

  on_linux do
    on_intel do
      url "https://on.wayfinder.run/cli/v3.3.2/wf-cli-linux-amd64.tar.gz"
      sha256 "2cd507c21ae6a4bf409e69ae06ee395aecf696ee5826ebd4e67affdae2545f89"
    end
    on_arm do
      url "https://on.wayfinder.run/cli/v3.3.2/wf-cli-linux-arm64.tar.gz"
      sha256 "8c500c1893651b19accd91455bfc0350c99551b8424bc6cb799b0149590338a2"
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
