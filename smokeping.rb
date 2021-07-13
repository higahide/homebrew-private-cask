# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
#
#
class Smokeping < Formula
  desc "Smokeping is a latency measurement tool"
  homepage "https://oss.oetiker.ch/smokeping/"
  url "https://oss.oetiker.ch/smokeping/pub/smokeping-2.7.3.tar.gz"
  sha256 "430fd58030a494068a897f772c052fc0979ebdd38d1859a03820e098628d36b4"
  # sha256 "544b7b0cd3f7f48dc34f06c0ee6946650f586dedb0ab288e9142671fdffbd718"

  # depends_on "cmake" => :build

  depends_on "rrdtool"
  depends_on "fping" => :optional

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    # Remove unrecognized options if warned by configure
    ## system "./configure", "--disable-debug",
    ##                       "--disable-dependency-tracking",
    ##                       "--disable-silent-rules",
    ##                       "--prefix=#{prefix}"

    system "./configure", "--prefix=#{prefix}"
    # system "cmake", ".", *std_cmake_args
    system "make", "install"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test smokeping`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
    ### system "true"
  end
end
