# redOS-KVM

virt-install --name NAME --ram=7000 --vcpus=1 --os-type windows 
--os-variant win7 --disk pool=virtual_os,size=40,bus=virtio,cache=none 
--network=bridge:br0,model=virtio --graphics vnc,password=PASSWORD 
--disk device=cdrom,path=/mount/storage/iso/WS20012R2x64.ISO 
--disk device=cdrom,path=/mount/storage/iso/virtio-win-0.1.141.iso  
--boot cdrom,hd

virt-install --name wxpx32 --ram=3000 --vcpus=1 --os-type windows --os-variant winxp 
--disk "/virtual_os/wxpx32.qcow2",bus=virtio,format=qcow2,cache=writeback device=cdrom,path="/mount/programm/OS/WindowsXPSP3x32.iso" 
--network=bridge:br0.model=virtio --graphics vnc,password=PASSWORD  
--boot cdrom,hd

virt-install --name wxpx32 --ram=3000 --vcpus=1 --os-type windows --os-variant winxp 
--disk pool=virtual_os,size=15,bus=virtio,cache=none 
--network=bridge:br0,model=virtio --graphics vnc,password=PASSWORD --disk device=cdrom,path=/mount/programm/OS/WindowsXPSP3x32.iso 
--disk device=cdrom,path=/mount/programm/OS/virtio-win-drivers-20120712-1.vfd  
--boot cdrom,hd

virt-install --name wxpx32 --ram=3000 --vcpus=1 --os-type windows --os-variant winxp 
--disk "/virtual_os/wxpx32.qcow2",size=15,bus=virtio,cache=none --network=bridge:br0,model=virtio 
--graphics vnc,password=PASSWORD --disk device=cdrom,path=/mount/programm/OS/WindowsXPSP3x32.iso 
--disk device=cdrom,path=/mount/programm/OS/virtio-win-0.1.141.iso  
--boot cdrom,hd

 virsh attach-disk ws2008r2x64 /iso/virtio-win-0.1.141.iso hda --type cdrom
