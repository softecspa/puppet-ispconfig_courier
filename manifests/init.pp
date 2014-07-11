# Install Courier-IMAP/Courier-POP3
#
# this module is used only in a perfect setup required by IspConfig2 installation
#
class ispconfig_courier {

  require postfix
  Package {
    ensure  => present
  }

  $courier_packages = [
    'courier-authdaemon',
    'courier-base',
    'courier-imap',
    'courier-imap-ssl',
    'courier-pop',
    'courier-pop-ssl',
    'courier-ssl',
    'gamin',
    'libgamin0',
    'libglib2.0-0'
  ]

  package {$courier_packages :}

}
