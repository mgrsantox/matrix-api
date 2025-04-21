#!/bin/bash

# Load Nominatim
echo "Running services..."
cat <<EOF

░█▀█░█▀▄░█▀▀░░░█▀▄░█░█░█▀█░█▀█░▀█▀░█▀█░█▀▀
░█░█░█▀▄░▀▀█░░░█▀▄░█░█░█░█░█░█░░█░░█░█░█░█
░▀▀▀░▀░▀░▀▀▀░░░▀░▀░▀▀▀░▀░▀░▀░▀░▀▀▀░▀░▀░▀▀▀

EOF

exec java -jar app.jar "$@"
