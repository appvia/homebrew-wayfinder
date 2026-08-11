class WfDev < Formula
  desc "Release-candidate build of the Wayfinder CLI"
  homepage "https://getwayfinder.io"
  version "3.1.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://storage.googleapis.com/wayfinder-releases/v3.1.0/wf-cli-darwin-amd64.tar.gz"
      sha256 "23e7388e42bea308aafe5f96cc29cc48d7e629170b24dd631e6a5c61c2e2727d"
    end
    on_arm do
      url "https://storage.googleapis.com/wayfinder-releases/v3.1.0/wf-cli-darwin-arm64.tar.gz"
      sha256 "ccc990290b884a4f5beb993fff66dfbd952020fe7f14f7983c7003a48c3ac56b"
    end
  end

  on_linux do
    on_intel do
      url "https://storage.googleapis.com/wayfinder-releases/v3.1.0/wf-cli-linux-amd64.tar.gz"
      sha256 "a8f4334f01ecab3bcc73b3a8912f17b5d570d8ea5487957a82d6f64c08cbaae1"
    end
  end

  conflicts_with "wf", because: "wf-dev and wf both install a wf binary"
  def install
    bin.install Dir["wf-cli-*"].first => "wf"
    bin.install_symlink "wf" => "wayfinder"
  end

  test do
    system "#{bin}/wf", "version"
  end
end
