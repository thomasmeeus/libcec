if node["platform"] == "ubuntu"

    include_recipe "apt::default"
    include_recipe "git::default"

    %w{
        automake g++ liblockdev1 libtool
        liblockdev1-dev autoconf pkg-config
    }.each do |pkg|
        package pkg do
            action :upgrade
        end
    end


    git "Checkout code" do
        repository "git://github.com/Pulse-Eight/libcec.git"
        destination "#{node['libcec']['location']}/libcec"
        reference "master"
        action :sync
    end


    bash "compile_libcec_source" do
        cwd "#{node['libcec']['location']}/libcec"
        code <<-EOH
            ./bootstrap &&
            ./configure #{node['libcec']['default_configure_flags'].join(" ")} &&
            make -j #{node["cpu"]["total"]} && 
            make install
        EOH

        not_if do
            ::File.exists?("#{node['libcec']['prefix']}/bin/cec-client") &&
            node['libcec']['force_recompile'] == false
        end
    end
end