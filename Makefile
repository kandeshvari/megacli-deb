VERSION = 8.03.08
RELEASE = 1
# SOURCE = https://github.com/coreos/etcd/releases/download/v$(VERSION)/etcd-v$(VERSION)-linux-amd64.tar.gz

all:
	cp -a deb-root megacli-$(VERSION)
	fakeroot dpkg-deb --build megacli-$(VERSION) && mv megacli-$(VERSION).deb megacli-$(VERSION)-$(RELEASE)_amd64.deb

clean:
	@rm -rf megacli-$(VERSION) tmp *.deb

