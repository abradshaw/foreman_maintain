class Features::Puppet < ForemanMaintain::Feature
  metadata do
    label :puppet

    confine do
      find_package('puppetserver')
    end
  end

  def config_files
    [
      '/etc/puppet',
      '/etc/puppetlabs',
      '/opt/puppetlabs/puppet/cache/foreman_cache_data',
      '/var/lib/puppet/foreman_cache_data',
      '/opt/puppetlabs/puppet/ssl/',
      '/var/lib/puppet/ssl',
      '/var/lib/puppet',
      '/usr/share/ruby/vendor_ruby/puppet/reports/foreman.rb',
      '/opt/puppetlabs/puppet/lib/ruby/vendor_ruby/puppet/reports/foreman.rb'
    ]
  end
end
