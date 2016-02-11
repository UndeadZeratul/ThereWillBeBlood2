del /s /q "all\loaders\*.jar"
del /s /q "all\mods\*.jar"
del /s /q "client\mods\*.jar"
del /s /q "dev\config\*.jar"
del /s /q "dev\mods\*.jar"

for /f "delims=" %%i IN ('dir *.jar /b') DO set modpackdownloader=%%i

java -jar "%modpackdownloader%" all/forge.json all/loaders
java -jar "%modpackdownloader%" all/mods.json all/mods
java -jar "%modpackdownloader%" client/mods.json client/mods
java -jar "%modpackdownloader%" dev/mods.json dev/mods
