# -----------------
# Build the app 
# -----------------
[group("build")]
build config="Debug" warninglevel="4":
    dotnet build --configuration {{ config }} --property WarningLevel={{ warninglevel }}
