sleep 30,
wget http://apt.puppetlabs.com/puppetlabs-release-raring.deb
sudo dpkg -i puppetlabs-release-precise.deb
sudo apt-get update
sudo apt-get remove ruby1.8 -y
sudo apt-get install ruby1.9.3 puppet -y

sudo su -c 'echo """[main]
logdir=/var/log/puppet
vardir=/var/lib/puppet
ssldir=/var/lib/puppet/ssl
rundir=/var/run/puppet
factpath=$vardir/lib/facter
templatedir=$confdir/templates


[agent]
server = ip-10-xxx-xx-xx.ec2.internal
report = true
certname=nodename""" >> /etc/puppet/puppet.conf'
