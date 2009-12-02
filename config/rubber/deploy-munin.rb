
namespace :rubber do
  
  namespace :munin do
  
    rubber.allow_optional_tasks(self)

    after "rubber:install_packages", "rubber:munin:custom_install"

    # sometimes apt-get install of munin doesn't end up configuring
    # plugins (e.g. installing postfix at same time, postfix plugin
    # configure barfs as postfix not configured yet)
    desc <<-DESC
      Reconfigures munin
    DESC
    task :custom_install do
      rubber.run_script 'setup_munin_plugins', <<-ENDSCRIPT
        munin-node-configure --shell --remove-also > /tmp/setup-munin-plugins
        sh /tmp/setup-munin-plugins
      ENDSCRIPT
      restart
    end

    # after "deploy:stop", "rubber:munin:stop"
    # before "deploy:start", "rubber:munin:start"
    # after "deploy:restart", "rubber:munin:restart"

    desc "Start munin system monitoring"
    task :start do
      run "/etc/init.d/munin-node start"
    end
    
    desc "Stop munin system monitoring"
    task :stop, :on_error => :continue do
      run "/etc/init.d/munin-node stop"
    end
    
    desc "Restart munin system monitoring"
    task :restart do
      stop
      start
    end
  
  end

end
