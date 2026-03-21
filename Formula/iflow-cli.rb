class IflowCli < Formula
  desc "AI-powered CLI that embeds in your terminal for coding tasks and workflow automation"
  homepage "https://platform.iflow.cn"
  url "https://registry.npmjs.org/@iflow-ai/iflow-cli/-/iflow-cli-0.5.18.tgz"
  sha256 "0ba6d9d7a1e0ee99facc26fad6324d65487dc792a3490838a061a7a8c8326a55"

  depends_on "node@22"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    assert_match "iflow", shell_output("#{bin}/iflow --version 2>&1", 0)
  end
end
