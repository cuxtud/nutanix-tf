#cloud-config
user: testuser
password: Password123? 
chpasswd: {expire: False}
sudo: ALL=(ALL) NOPASSWD:ALL
ssh_pwauth: True
  
apt_update: true
apt_upgrade: true

runcmd:
  - <%=instance.cloudConfig.agentInstall%>