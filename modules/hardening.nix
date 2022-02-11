{ lib, config, ... }:

with lib;
{
  security.apparmor.enable = mkDefault true;
  security.apparmor.killUnconfinedConfinables = mkDefault true;

  # disabled for now, breaks firefox in an obnoxious way
  # and has significant performance impact
  #environment.memoryAllocator.provider = "scudo";
  #environment.variables.SCUDO_OPTIONS = "ZeroContents=1";

  boot.kernelParams = [
    # Slab/slub sanity checks, redzoning, and poisoning
    "slub_debug=FZP"

    # Overwrite free'd memory
    "page_poison=1"

    # Enable page allocator randomization
    "page_alloc.shuffle=1"
  ];

  #boot.kernelPatches = [
  #  {
  #    name = "hardened-usercopy";
  #    patch = null;
  #    extraConfig = ''
  #      HARDENED_USERCOPY y
  #    '';
  #  }
  #  {
  #    name = "fortify-source";
  #    patch = null;
  #    extraConfig = ''
  #      FORTIFY_SOURCE y
  #    '';
  #  }
  #  {
  #    name = "slab-freelist-randomization";
  #    patch = null;
  #    extraConfig = ''
  #      SLAB_FREELIST_RANDOM y
  #    '';
  #  }
  #  {
  #    name = "gcc-hardening-plugins";
  #    patch = null;
  #    extraConfig = ''
  #      # Enable GCC Plugins
  #            GCC_PLUGINS y

  #      # Gather additional entropy at boot time for systems that may not have appropriate entropy sources.
  #            GCC_PLUGIN_LATENT_ENTROPY y

  #      # Force all structures to be initialized before they are passed to other functions.
  #      # When building with GCC:
  #            GCC_PLUGIN_STRUCTLEAK y
  #            GCC_PLUGIN_STRUCTLEAK_BYREF_ALL y

  #      # Wipe stack contents on syscall exit (reduces stale data lifetime in stack)
  #            GCC_PLUGIN_STACKLEAK y

  #      # Randomize the layout of system structures. This may have dramatic performance impact, so
  #      # use with caution or also use GCC_PLUGIN_RANDSTRUCT_PERFORMANCE y
  #            GCC_PLUGIN_RANDSTRUCT y
  #    '';
  #  }
  #];

  # yoinked from nixpkgs hardened profile

  # Restrict ptrace() usage to processes with a pre-defined relationship
  # (e.g., parent/child)
  boot.kernel.sysctl."kernel.yama.ptrace_scope" = mkOverride 500 1;

  # Hide kptrs even for processes with CAP_SYSLOG
  boot.kernel.sysctl."kernel.kptr_restrict" = mkOverride 500 2;

  # Disable bpf() JIT (to eliminate spray attacks)
  boot.kernel.sysctl."net.core.bpf_jit_enable" = false;

  # Disable ftrace debugging
  boot.kernel.sysctl."kernel.ftrace_enabled" = false;

  # Enable strict reverse path filtering (that is, do not attempt to route
  # packets that "obviously" do not belong to the iface's network; dropped
  # packets are logged as martians).
  boot.kernel.sysctl."net.ipv4.conf.all.log_martians" = true;
  boot.kernel.sysctl."net.ipv4.conf.all.rp_filter" = "1";
  boot.kernel.sysctl."net.ipv4.conf.default.log_martians" = true;
  boot.kernel.sysctl."net.ipv4.conf.default.rp_filter" = "1";

  # Ignore broadcast ICMP (mitigate SMURF)
  boot.kernel.sysctl."net.ipv4.icmp_echo_ignore_broadcasts" = true;

  # Ignore incoming ICMP redirects (note: default is needed to ensure that the
  # setting is applied to interfaces added after the sysctls are set)
  boot.kernel.sysctl."net.ipv4.conf.all.accept_redirects" = false;
  boot.kernel.sysctl."net.ipv4.conf.all.secure_redirects" = false;
  boot.kernel.sysctl."net.ipv4.conf.default.accept_redirects" = false;
  boot.kernel.sysctl."net.ipv4.conf.default.secure_redirects" = false;
  boot.kernel.sysctl."net.ipv6.conf.all.accept_redirects" = false;
  boot.kernel.sysctl."net.ipv6.conf.default.accept_redirects" = false;

  # Ignore outgoing ICMP redirects (this is ipv4 only)
  boot.kernel.sysctl."net.ipv4.conf.all.send_redirects" = false;
  boot.kernel.sysctl."net.ipv4.conf.default.send_redirects" = false;
}
