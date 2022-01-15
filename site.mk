##	gluon site.mk makefile example

##	GLUON_FEATURES
#		Specify Gluon features/packages to enable;
#		Gluon will automatically enable a set of packages
#		depending on the combination of features listed

GLUON_FEATURES := \
	autoupdater \
	ebtables-filter-multicast \
	ebtables-filter-ra-dhcp \
	ebtables-limit-arp \
	mesh-batman-adv-15 \
	mesh-vpn-fastd \
	radvd \
	status-page \
	web-advanced \
	web-wizard \
	alfred

##	GLUON_SITE_PACKAGES
#		Specify additional Gluon/OpenWrt packages to include here;
#		A minus sign may be prepended to remove a packages from the
#		selection that would be enabled by default or due to the
#		chosen feature flags

#GLUON_SITE_PACKAGES := iwinfo
GLUON_SITE_PACKAGES := \
	gluon-alfred \
	gluon-autoupdater \
	gluon-ebtables-filter-multicast \
	gluon-ebtables-filter-ra-dhcp \
	gluon-ebtables-limit-arp \
	gluon-config-mode-autoupdater \
	gluon-config-mode-contact-info \
	gluon-config-mode-geo-location \
	gluon-config-mode-geo-location-osm \
	gluon-config-mode-hostname \
	gluon-config-mode-mesh-vpn \
	-gluon-config-mode-theme \
	ffbsee-config-mode-theme \
	-gluon-setup-mode \
	ffbsee-setup-mode \
	ffbsee-alfred \
	ffbsee-cli-basics \
	ffbsee-authorized-keys \
	ffbsee-config-mode-core \
	-gluon-config-mode-core \
	gluon-neighbour-info \
	gluon-node-info \
	gluon-web \
	gluon-web-admin \
	gluon-web-autoupdater \
	gluon-web-network \
	gluon-web-wifi-config \
	gluon-web-osm \
	gluon-mesh-batman-adv-15 \
	gluon-mesh-vpn-fastd \
	gluon-radvd \
	gluon-status-page \
	iwinfo

##	DEFAULT_GLUON_RELEASE
#		version string to use for images
#		gluon relies on
#			opkg compare-versions "$1" '>>' "$2"
#		to decide if a version is newer or not.

DEFAULT_GLUON_RELEASE := 2021.1.1+exp$(shell date '+%Y%m%d')

# Variables set with ?= can be overwritten from the command line

##	GLUON_RELEASE
#		call make with custom GLUON_RELEASE flag, to use your own release version scheme.
#		e.g.:
#			$ make images GLUON_RELEASE=23.42+5
#		would generate images named like this:
#			gluon-ff%site_code%-23.42+5-%router_model%.bin

GLUON_RELEASE ?= $(DEFAULT_GLUON_RELEASE)

# Default priority for updates.
GLUON_PRIORITY ?= 0

# Region code required for some images; supported values: us eu
GLUON_REGION ?= eu

# Languages to include
GLUON_LANGS ?= en de

# Do not build images for deprecated devices
GLUON_DEPRECATED ?= full

# Enable autoupdater
GLUON_AUTOUPDATER_ENABLED ?= 1
