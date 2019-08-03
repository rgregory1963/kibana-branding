#!/bin/bash
# Uninstalls MA branding

#  run as Root

# custom favicons (backup first so we can uninstall if necessary)
cp /usr/share/kibana/src/legacy/ui/public/assets/favicons_bu/* /usr/share/kibana/src/legacy/ui/public/assets/favicons/

# custom logo (backup first so we can uninstall if necessary)

cp /usr/share/kibana/node_modules/@elastic/eui/src/components/icon/assets/logo_kibana.svg_bu /usr/share/kibana/node_modules/@elastic/eui/src/components/icon/assets/logo_kibana.svg
cp /usr/share/kibana/node_modules/@elastic/eui/lib/components/icon/assets/logo_kibana.svg_bu /usr/share/kibana/node_modules/@elastic/eui/lib/components/icon/assets/logo_kibana.svg

cp /usr/share/kibana/node_modules/@elastic/eui/src/components/icon/assets/logo_kibana.svg_bu /usr/share/kibana/node_modules/@elastic/eui/src/components/icon/assets/logo_kibana.svg
cp /usr/share/kibana/node_modules/@elastic/eui/lib/components/icon/assets/logo_kibana.svg_bu /usr/share/kibana/node_modules/@elastic/eui/lib/components/icon/assets/logo_kibana.svg

# custom throbber
cp /usr/share/kibana/src/legacy/ui/ui_render/views/ui_app.pug_bu /usr/share/kibana/src/legacy/ui/ui_render/views/ui_app.pug
cp /usr/share/kibana/src/legacy/ui/ui_render/views/chrome.pug_bu /usr/share/kibana/src/legacy/ui/ui_render/views/chrome.pug


# custom plugin css
cp /usr/share/kibana/src/legacy/ui/ui_render/ui_render_mixin.js_bu /usr/share/kibana/src/legacy/ui/ui_render/ui_render_mixin.js

# Modify logoKibana in vendorsDynamicDLL to be empty. Custom icon will be set as background-image in ma-branding plugin css
cp /usr/share/kibana/built_assets/dlls/vendors.bundle.dll.js_bu /usr/share/kibana/built_assets/dlls/vendors.bundle.dll.js

/usr/share/kibana/bin/kibana-plugin remove ma-branding 


