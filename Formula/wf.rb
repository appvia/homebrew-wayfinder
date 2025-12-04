class Wf < Formula
  desc "CLI for Wayfinder - self-service cloud infrastructure platform"
  homepage "https://www.appvia.io/wayfinder"
  license "Apache-2.0"
  version "0.0.0"

  # Placeholder - will be auto-updated by release workflow
  on_macos do
    on_intel do
      url "https://storage.googleapis.com/wayfinder-releases/latest/wf-cli-darwin-amd64.tar.gz"
      sha256 "PLACEHOLDER"
    end
    on_arm do
      url "https://storage.googleapis.com/wayfinder-releases/latest/wf-cli-darwin-arm64.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  on_linux do
    on_intel do
      url "https://storage.googleapis.com/wayfinder-releases/latest/wf-cli-linux-amd64.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  def install
    bin.install Dir["wf-cli-*"].first => "wf"
  end

  test do
    system "#{bin}/wf", "version"
  end
end
