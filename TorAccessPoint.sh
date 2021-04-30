### [PT] Cofirmar que o OS esta actualizado.[/PT] [EN] Make sure the OS is up to date [/EN]
sudo apt-get update && sudo apt-get upgrade
### [PT] Instalar o git [/PT] [EN] Install git [/EN]
sudo apt-get install git
### [PT] Instalar o Hostapd (software de ponto de acesso wireless) [/PT] [EN] Install hostapd (software for wireless access point)[/EN]
sudo apt-get install hostapd 
# to validate if dhcp is required or it can be atributed with dnsmask - udhcpd

### [PT]Fazer copias de seguranca dos ficheiros de configuracao antigos[/PT] [EN] Backup old config files[/EN]
readonly CONFIG_FILES=(/etc/udhcpd.conf
	/etc/default/udhcpd
	/etc/network/interfaces
	/etc/hostapd/hostapd.conf
	/etc/default/hostapd
	/etc/sysctl.conf
	/etc/iptables.ipv4.nat)

for file in ${CONFIG_FILES[*]};
do
	if [ -f ${file} ]
	then
		copy -i ${file} ${file}.old
	fi
done

