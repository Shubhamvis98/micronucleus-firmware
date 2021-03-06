@echo off
Call SetPath
if not exist releases MKDIR releases
if not exist upgrades MKDIR upgrades

rem Set TARGET=t85_entry_on_power_on_USB_detect_no_pullup
rem Set TARGET=t85_entry_on_power_on
Set TARGET=t85_entry_on_power_on_no_pullup_fast_exit_on_no_USB
echo.
echo **********************************************************
echo make Configuration %TARGET%
echo **********************************************************
make clean
make CONFIG=%TARGET%
mv main.hex releases\%TARGET%.hex
mv upgrade.hex upgrades\upgrade-%TARGET%.hex

pause
make clean