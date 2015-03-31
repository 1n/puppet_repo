######         ######
##  Configure R10k ##
######         ######

##  This manifest requires the zack/R10k module

class { 'r10k':
  version           => '1.4.2',
  sources           => {
    'vltk' => {
      'remote'  => 'git@github.com:1n/puppet_repo.git',
      'basedir' => "${::settings::confdir}/environments",
      'prefix'  => false,
    }
  },
  purgedirs         => ["${::settings::confdir}/environments"],
  manage_modulepath => false,
}
