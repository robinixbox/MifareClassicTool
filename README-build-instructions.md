# Instructions pour compiler l'APK manuellement

Si les workflows GitHub Actions ne fonctionnent pas correctement, voici comment compiler l'application manuellement sur votre ordinateur.

## Prérequis
- Java JDK 17 ou supérieur
- Android Studio (dernière version)
- Git

## Étapes

### 1. Cloner le dépôt
```bash
git clone https://github.com/robinixbox/MifareClassicTool.git
cd MifareClassicTool
git checkout material-ui-upgrade
```

### 2. Ouvrir le projet dans Android Studio
- Lancez Android Studio
- Sélectionnez "Open an existing Android Studio project"
- Naviguez vers le dossier "MifareClassicTool/Mifare Classic Tool" et ouvrez-le

### 3. Laisser Android Studio synchroniser le projet
- Android Studio va automatiquement télécharger les dépendances et synchroniser le projet
- Cela peut prendre quelques minutes

### 4. Compiler l'APK de débogage
- Dans Android Studio, cliquez sur **Build** → **Build Bundle(s) / APK(s)** → **Build APK(s)**
- Une notification apparaîtra une fois la compilation terminée
- Cliquez sur "locate" dans la notification pour trouver l'APK

### 5. Installer l'APK sur votre appareil
- Transférez l'APK sur votre téléphone
- Sur votre téléphone, ouvrez l'explorateur de fichiers, naviguez jusqu'au fichier APK et installez-le

## Compilation en ligne de commande

Si vous préférez utiliser la ligne de commande :

```bash
cd "Mifare Classic Tool"
chmod +x gradlew  # Uniquement sur Linux/Mac
./gradlew assembleDebug  # Utilisez gradlew.bat sur Windows
```

L'APK sera généré dans le chemin suivant :
```
Mifare Classic Tool/app/build/outputs/apk/debug/app-debug.apk
```

## Services de compilation en ligne

Si vous ne souhaitez pas installer Android Studio, voici quelques services en ligne qui peuvent compiler votre application :

1. [Codemagic](https://codemagic.io/) - Offre un niveau gratuit
2. [Bitrise](https://bitrise.io/) - Plateforme CI/CD spécialisée pour le mobile
3. [AppCircle](https://appcircle.io/) - Alternative intéressante à App Center

La plupart de ces services peuvent se connecter directement à votre dépôt GitHub.