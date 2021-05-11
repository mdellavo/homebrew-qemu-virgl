class Spice < Formula
  homepage "https://www.spice-space.org/"
  desc "The SPICE project aims to provide a complete open source solution for remote access to virtual machines in a seamless way so you can play videos, record audio, share usb devices and share folders without complications."
  url "https://gitlab.freedesktop.org/spice/spice.git"
  version "master"
  license "GPL-2.0-only"

  depends_on "autoconf" => :build
  depends_on "autoconf-archive" => :build
  depends_on "autogen" => :build
  depends_on "automake" => :build
  depends_on "gobject-introspection" => :build
  depends_on "intltool" => :build
  depends_on "libtool" => :build
  depends_on "pkg-config" => :build
  depends_on "vala" => :build

  depends_on "atk"
  depends_on "cairo"
  depends_on "gdk-pixbuf"
  depends_on "gettext"
  depends_on "glib"
  depends_on "gst-libav"
  depends_on "gst-plugins-bad"
  depends_on "gst-plugins-base"
  depends_on "gst-plugins-good"
  depends_on "gst-plugins-ugly"
  depends_on "gstreamer"
  depends_on "gtk+3"
  depends_on "jpeg"
  depends_on "json-glib"
  depends_on "libusb"
  depends_on "lz4"
  depends_on "openssl@1.1"
  depends_on "opus"
  depends_on "pango"
  depends_on "pixman"
  depends_on "spice-protocol"
  depends_on "usbredir"

  def install
    system "./autogen.sh"
    system "./configure", "--prefix=#{prefix}"
    system "make", "-j1", "install"  # FIXME there seems to be some race in the build if -j is too high
  end

  test do


  end

end
