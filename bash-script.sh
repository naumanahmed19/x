
#!/bin/bash

cat <<EOF >./flutter_native_splash.yaml
flutter_native_splash:
  image: assets/images/splash.png
  color: '$1'
EOF

#Run command to generate icons and splash screen 

cat <<EOF >./flutter_launcher_icons.yaml
flutter_icons:
  image_path: assets/images/icon.png
  android: true
  ios: true
EOF
