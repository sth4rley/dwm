#!/bin/bash

acpi | awk '{if ($3 == "Charging," || $3 == "Discharging,") { sub(/,$/, "", $4); print $4; } else { sub(/,$/, "", $5); print $5; } }' ORS=' ' | sed 's/ $//'



