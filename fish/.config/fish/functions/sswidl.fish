function sswidl
    # Set Wine Prefix
    set -x WINEPREFIX /mnt/efd42152-14ab-413d-9d2a-6ebed080bc74/idl_wine

    # Set SolarSoft Environment Variables
    set -x SSW "C:\\ssw"
    set -x SSWDB "C:\\sswdb"
    set -x IDL_STARTUP "C:\\ssw\\gen\\idl\\ssw_system\\idl_startup_windows.pro"
    set -x SSW_INSTR "forward chianti xrt eit trace secchi aia pfss swap lasco"
    set -x HOST "lmsal.com"

    # Suppress Wine debug messages (optional, makes it cleaner)
    set -x WINEDEBUG -all

    # Run IDL Console directly
    wine "/mnt/efd42152-14ab-413d-9d2a-6ebed080bc74/idl_wine/drive_c/Program Files/Exelis/IDL85/bin/bin.x86_64/idl.exe" $argv
end
