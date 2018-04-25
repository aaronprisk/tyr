# Install Tyr

install-core:
	install -dm755 $(DESTDIR)/usr/bin/
	install -dm755 $(DESTDIR)/usr/share/tyr/

	for f in *; do [[ $$f != "plugins" ]] && cp -pr $$f $(DESTDIR)/usr/share/tyr/; done

	install -Dpm 0755 tyr.exec $(DESTDIR)/usr/bin/tyr

	install -Dpm 0644 tyr.desktop $(DESTDIR)/usr/share/applications/org.corvos.tyr.desktop
	install -Dpm 0644 tyr.appdata.xml $(DESTDIR)/usr/share/appdata/tyr.appdata.xml

	install -Dpm 0644 tyr.svg $(DESTDIR)/usr/share/icons/hicolor/scalable/apps/tyr.svg
	install -Dpm 0644 tyr-symbolic.svg $(DESTDIR)/usr/share/icons/hicolor/scalable/apps/tyr-symbolic.svg

	install -Dpm 0644 run-as-root.policy $(DESTDIR)/usr/share/polkit-1/actions/org.corvos.pkexec.run-as-root.policy

	@-if test -z $(DESTDIR); then gtk-update-icon-cache -f -t $(DESTDIR)/usr/share/icons/hicolor; fi


install-plugins:
	install -dm755 $(DESTDIR)/usr/share/tyr/plugins

	cp -pr plugins/* $(DESTDIR)/usr/share/tyr/plugins/


install: install-core install-plugins


uninstall:
	rm -rf $(DESTDIR)/usr/share/tyr/

	rm -f $(DESTDIR)/usr/bin/tyr

	rm -f $(DESTDIR)/usr/share/applications/org.corvos.tyr.desktop
	rm -f $(DESTDIR)/usr/share/appdata/tyr.appdata.xml

	rm -f $(DESTDIR)/usr/share/icons/hicolor/scalable/apps/tyr.svg
	rm -f $(DESTDIR)/usr/share/icons/hicolor/scalable/apps/tyr-symbolic.svg

	rm -f $(DESTDIR)/usr/share/polkit-1/actions/org.corvos.pkexec.run-as-root.policy

	@-if test -z $(DESTDIR); then gtk-update-icon-cache -f -t $(DESTDIR)/usr/share/icons/hicolor; fi
