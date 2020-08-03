## SSH key pair

Creating and sending to server
```
ssh-keygen -t rsa -b 4096
#    or newer
ssh-keygen -f ~/.ssh/my_key -t ecdsa -b 521

ssh-copy-id -i ~/.ssh/my_key user@host
```
Example .ssh/config file:
```
Host my_host
    HostName 111.111.111.111
    User you
    IdentityFile /home/$USER/.ssh/my_key
```

## mount .img file in linux with loop device

From: https://fossbytes.com/mounting-isos-image-file-types-in-linux/

```
sudo losetup -f -P <file.img>
losetup -a  # see what we mounted
sudo mount <dev/loopXpX> <media/user/file>
# take away
sudo umount <media/user/file>
losetup -d <dev/loopX> # or if you have no other devices:  losetup -D
```

## Installed libraries

Search installed libraries:
```
grep -r something /usr/include
```

Index installed libraries:
```
cd /usr/include
sudo ctags -R
```

## Find USB device:

Look at the output of `dmesg` after device is connected.

## Ipv4-forwarding (allow Linux to be a router/gateway)
```
# Check:
sysctl net.ipv4.ip_forward
# Activate
sysctl -w net.ipv4.ip_forward=1
```

## Setup vlan in namespace
```
# Create namespace
sudo ip netns add <namespace>

# Create vlan
# <eno1.<id>> is the vlan local interface name (vconfig gives it automatiacally)
sudo ip link add link <eno1> name <eno1.<id>> type vlan id <id>
# or
sudo vconfig add <eno1> <id>

# move vlan to namespace
sudo ip link set <eno1.<id>> netns <namespace>

# give address and set up
sudo ip netns exec <namespace> ip addr add <10.0.0.1/24> dev <eno1.<id>>
sudo ip netns exec <namespace> ip link set <eno1.<id>> up

# delete vlan
ip link set dev <eno1.<id>> down
ip link delete <eno1.<id>>

# change address
ip a del 11.0.0.1/24 dev eno1.4
ip a add 11.0.0.254/24 dev eno1.4
```

## tun tap veth in namespace

```
sudo ip -n <router2> link add tap0 type veth peer name tap0 netns <server>
```

## Select ssh
eval `ssh root@192.168.1.200 2>&1 | grep ssh-keygen`
eval `!! 2>&1 | grep ssh-keygen`

## Show kernel .config
```
gunzip -c /proc/config.gz
cat /boot/config
cat /boot/config-$(uname -r)
```

## Crash boot partition on sda disk (to force USB boot)
```
dd if=/dev/zero of=/dev/sda bs=4k count=10
```

## Restart network service (after configuring ip):
```
ip addr flush interface-name && systemctrl restart networking.service
```

## Simpler traceroute (will tell you the MTU)
```
ip r
ip route get to 20.0.0.1
```

## Dump traffic in the network
```
tcpdump
# Dump ethernet
tcpdump -i eth0
# List interfaces:
tcpdump -D
# Other:
tcpdump -w my.pcap
tcpdump -r my.pcap
tcpdump -vvv
tcpdump -A
tcpdump -XX
```

## Trace system calls and signals
```
strace
```

## Network namespaces
```
# Manual
man ip-netns
# list
ip netns
# Execute command
ip netns exec <name> <command>
ip -all netns exec <command>
```

## Show open ports?
```
netstat -tulpan
```

## List Linux modules
```
hostname.not.set# lsmod
```

## List all ARP connected to device
```
arp
ip n
```

## Active connetions
```
netstat
ss
```

## Delete entry from arp table
```
arp -d
ip n del  (this invalidates)
ip n f
```

## Set MTU
```
ifconfig <if> mtu <number>
ip link set dev <if> mtu <number>
```

## Activate/deactivate if
```
ifconfig <if> up/down
ip link set dev <if> up/down
```

## Putty from terminal
```
plink
plink mysession < mycommands.txt > mylocalfile.strace
```

## Traffic control
```
tc
# list queueing disciplines
tc qdisc
# md stands for classful multique
```

## List local ip fancy
```
ip -br -c addr
ip -br a
```

## Disable TCP segmentation offload

Problematic settings:

```
tcp-segmentation-offload: off
        tx-tcp-segmentation: off
        tx-tcp-ecn-segmentation: off [fixed]
        tx-tcp6-segmentation: off
generic-segmentation-offload: off [requested on]
generic-receive-offload: off
```

```
# view current nic configuration:
ethtool -k <device>
# remove settings on the fly:
ethtool -K <device> tso off gso off gro off
```

## Printing in linux
If you want to define a default printer just set the "PRINTER" variable
```
lpstat -t
lpr -P printer file
```

## List hw storage (or other hw)
```
sudo lshw -short
sudo lshw -class disk -class storage -short
```

