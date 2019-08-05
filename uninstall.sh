#!/bin/bash
# Uninstalls MA branding

#  run as Root

# custom favicons (backup first so we can uninstall if necessary)
cp /usr/share/kibana/src/legacy/ui/public/assets/favicons_bu/* /usr/share/kibana/src/legacy/ui/public/assets/favicons/
rm -fR /usr/share/kibana/src/legacy/ui/public/assets/favicons_bu

# custom logo (backup first so we can uninstall if necessary)

cp /usr/share/kibana/node_modules/@elastic/eui/src/components/icon/assets/logo_kibana.svg_bu /usr/share/kibana/node_modules/@elastic/eui/src/components/icon/assets/logo_kibana.svg
rm -f /usr/share/kibana/node_modules/@elastic/eui/src/components/icon/assets/logo_kibana.svg_bu
cp /usr/share/kibana/node_modules/@elastic/eui/lib/components/icon/assets/logo_kibana.svg_bu /usr/share/kibana/node_modules/@elastic/eui/lib/components/icon/assets/logo_kibana.svg
rm -f /usr/share/kibana/node_modules/@elastic/eui/lib/components/icon/assets/logo_kibana.svg_bu

cp /usr/share/kibana/node_modules/@elastic/eui/src/components/icon/assets/logo_kibana.svg_bu /usr/share/kibana/node_modules/@elastic/eui/src/components/icon/assets/logo_kibana.svg
rm -f /usr/share/kibana/node_modules/@elastic/eui/src/components/icon/assets/logo_kibana.svg_bu
cp /usr/share/kibana/node_modules/@elastic/eui/lib/components/icon/assets/logo_kibana.svg_bu /usr/share/kibana/node_modules/@elastic/eui/lib/components/icon/assets/logo_kibana.svg
rm -f /usr/share/kibana/node_modules/@elastic/eui/lib/components/icon/assets/logo_kibana.svg_bu

# custom throbber
cp /usr/share/kibana/src/legacy/ui/ui_render/views/ui_app.pug_bu /usr/share/kibana/src/legacy/ui/ui_render/views/ui_app.pug
rm -f /usr/share/kibana/src/legacy/ui/ui_render/views/ui_app.pug_bu
cp /usr/share/kibana/src/legacy/ui/ui_render/views/chrome.pug_bu /usr/share/kibana/src/legacy/ui/ui_render/views/chrome.pug
rm -f /usr/share/kibana/src/legacy/ui/ui_render/views/chrome.pug_bu


# custom plugin css
cp /usr/share/kibana/src/legacy/ui/ui_render/ui_render_mixin.js_bu /usr/share/kibana/src/legacy/ui/ui_render/ui_render_mixin.js
rm -f /usr/share/kibana/src/legacy/ui/ui_render/ui_render_mixin.js_bu

# Modify logoKibana in vendorsDynamicDLL to be empty. Custom icon will be set as background-image in ma-branding plugin css
cp /usr/share/kibana/built_assets/dlls/vendors.bundle.dll.js_bu /usr/share/kibana/built_assets/dlls/vendors.bundle.dll.js
rm -f /usr/share/kibana/built_assets/dlls/vendors.bundle.dll.js_bu

/usr/share/kibana/bin/kibana-plugin remove ma-branding 


