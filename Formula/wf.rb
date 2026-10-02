class Wf < Formula
  desc "CLI for Wayfinder - self-service cloud infrastructure platform"
  homepage "https://getwayfinder.io"
  version "3.3.1"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://on.wayfinder.run/cli/v3.3.1/wf-cli-darwin-amd64.tar.gz"
      sha256 "ea05554a580db06056a52c579f06e4afa9932f93f431da73768c25b9757b9399"
    end
    on_arm do
      url "https://on.wayfinder.run/cli/v3.3.1/wf-cli-darwin-arm64.tar.gz"
      sha256 "fe8d81df3cdb6c0caa21ccca17e609764052c6043f832d378cacf2f4992884ac"
    end
  end

  on_linux do
    on_intel do
      url "https://on.wayfinder.run/cli/v3.3.1/wf-cli-linux-amd64.tar.gz"
      sha256 "55642eb29b832074230e082f788ec2933468b9b50fb20c25a7ed474a60a29e28"
    end
    on_arm do
      url "https://on.wayfinder.run/cli/v3.3.1/wf-cli-linux-arm64.tar.gz"
      sha256 "2121b5fed21b5fbc419e19383f41c8651d5c48b50333314e0c387eb1b6daf5f8"
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
