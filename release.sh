#!/bin/bash
# A script for preparing binaries for version release of Adder Cursors, modified by 29-d14, original by Abdulkaiz Khatri

declare -A names
names["AdderDot-CloudKiss"]="Cerulian => White dot cursor, inspired by Adder Inds."
names["AdderDot-SecretaryBlonde"]="Pale Blonde => Deep Blue-Green dot cursor, inspired by Adder Inds."
names["AdderDot-ElectricSheen"]="Azure Lake => Deep Sea Blue dot cursor, inspired by Adder Inds."
names["AdderDot-LaurelLamina"]="Deep Emerald => Laurel Green dot cursor, inspired by Adder Inds."
names["AdderDot-BarcalonaOxblood"]="Oxblood => Tearsoaked White dot cursor, inspired by Adder Inds."


# Cleanup old builds
rm -rf themes bin

# Building Adder XCursor binaries
for key in "${!names[@]}";
do
    comment="${names[$key]}";
    ctgen build.toml -p x11 -d "bitmaps/$key" -n "$key" -c "$comment" &
    PID=$!
    wait $PID
done


# Building Adder Windows binaries
for key in "${!names[@]}";
do
    comment="${names[$key]}";
    ctgen build.toml -p windows -s 16 -d "bitmaps/$key" -n "$key-Small" -c "$comment" &
    ctgen build.toml -p windows -s 24 -d "bitmaps/$key" -n "$key-Regular" -c "$comment" &
    ctgen build.toml -p windows -s 32 -d "bitmaps/$key" -n "$key-Large" -c "$comment" &
    ctgen build.toml -p windows -s 48 -d "bitmaps/$key" -n "$key-Extra-Large" -c "$comment" &
    PID=$!
    wait $PID
done

# Compressing Binaries
mkdir -p bin
cd themes

for key in "${!names[@]}";
do
    tar -czvf "../bin/${key}.tar.gz" "${key}" &
    PID=$!
    wait $PID
done


for key in "${!names[@]}";
do
    zip -rv "../bin/${key}-Windows.zip" "${key}-Small-Windows" "${key}-Regular-Windows" "${key}-Large-Windows" "${key}-Extra-Large-Windows" &
    PID=$!
    wait $PID
done

cd ..
