@echo off
echo Compilation de MIFARE Classic Tool Plus...

REM Vérifier si Java est installé
java -version 2>NUL
if %ERRORLEVEL% NEQ 0 (
    echo Erreur: Java n'est pas installé ou n'est pas accessible.
    echo Veuillez installer Java JDK 8 ou supérieur.
    pause
    exit /b 1
)

echo Java est correctement installé.
echo Téléchargement du projet depuis GitHub...

REM Créer un dossier temporaire
mkdir temp_build
cd temp_build

REM Télécharger le ZIP du projet
curl -L -o master.zip https://github.com/robinixbox/MifareClassicTool/archive/refs/heads/material-ui-upgrade.zip

REM Extraire le ZIP
echo Extraction des fichiers...
powershell -command "Expand-Archive -Path master.zip -DestinationPath ."

REM Entrer dans le dossier du projet
cd MifareClassicTool-material-ui-upgrade\Mifare Classic Tool

REM Donner les permissions d'exécution à gradlew
echo Configuration de Gradle...
echo. > gradlew.bat.executable

REM Exécuter la compilation
echo Compilation de l'APK...
call gradlew.bat --no-daemon assembleDebug

REM Vérifier si la compilation a réussi
if %ERRORLEVEL% NEQ 0 (
    echo Erreur lors de la compilation.
    cd ..\..\..
    pause
    exit /b 1
) else (
    echo Compilation réussie!
    echo APK généré avec succès!
)

REM Copier l'APK dans le dossier parent
echo Copie de l'APK vers le dossier principal...
copy app\build\outputs\apk\debug\app-debug.apk ..\..\..

REM Retourner au dossier parent
cd ..\..\..

echo L'APK a été copié dans le dossier courant sous le nom app-debug.apk
echo Vous pouvez l'installer sur votre appareil Android
pause