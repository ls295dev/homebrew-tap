class Localinit < Formula
    desc "init manager"
    homepage "https://codeberg.org/Luca295/localinit"
    head "https://codeberg.org/Luca295/localinit/archive/master.zip"
    depends_on "go" => :build

    def install
        # Example build steps (adjust based on your language, e.g., Go, Rust, Make)
        system "go", "build", *std_go_args(ldflags: "-X main.version=HEAD")
    end
end