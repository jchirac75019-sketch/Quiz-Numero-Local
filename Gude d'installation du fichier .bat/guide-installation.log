# Guide Complet - Lancer l'Application Quiz Coran

## 📋 Table des Matières

1. [Prérequis](#prérequis)
2. [Installation de Python](#installation-de-python)
3. [Méthode 1 : Lancement Automatique (Fichier .bat)](#méthode-1--lancement-automatique-fichier-bat)
4. [Méthode 2 : Lancement Manuel (Ligne de Commande)](#méthode-2--lancement-manuel-ligne-de-commande)
5. [Accéder à l'Application](#accéder-à-lapplication)
6. [Changer le Port](#changer-le-port)
7. [Gérer Plusieurs Applications](#gérer-plusieurs-applications)
8. [Dépannage](#dépannage)

---

## 🔧 Prérequis

- **Système d'exploitation** : Windows 7 ou supérieur
- **Python** : Version 3.6 ou supérieur
- **Fichiers de l'application** :
  - `index.html`
  - `quran-script.js`
  - `style.css`
  - Tous les fichiers doivent être dans le même dossier

---

## 📥 Installation de Python

### Étape 1 : Télécharger Python

1. Accédez à https://www.python.org
2. Cliquez sur **"Downloads"**
3. Téléchargez la version stable (3.11 ou 3.12)

### Étape 2 : Installer Python

1. Double-cliquez sur le fichier téléchargé
2. **IMPORTANT** : Cochez la case **"Add Python to PATH"** ✓
3. Cliquez sur **"Install Now"**
4. Attendez la fin de l'installation

### Étape 3 : Vérifier l'Installation

1. Ouvrez le **Command Prompt** (Cmd)
2. Tapez : `python --version`
3. Vous devez voir la version de Python (ex: "Python 3.11.0")

---

## 🚀 Méthode 1 : Lancement Automatique (Fichier .bat)

### Configuration Initiale

1. **Téléchargez le fichier `launch.bat`**
2. **Placez le fichier `launch.bat` dans le MÊME dossier que votre application**
   ```
   Mon Dossier Quiz Coran/
   ├── index.html
   ├── quran-script.js
   ├── style.css
   └── launch.bat         ← Ici
   ```

### Lancer l'Application

1. **Double-cliquez sur `launch.bat`**
2. Une fenêtre Command Prompt s'ouvrira
3. Le script vous posera une question :
   ```
   Choisissez un port pour lancer l'application:
   
   1. Port 8000 (par défaut)
   2. Port 8001
   3. Port 8002
   4. Port 8003
   5. Port 9000
   6. Port personnalisé (à spécifier)
   ```
4. **Entrez `1` et appuyez sur Entrée** (pour le port 8000)
5. Vous verrez :
   ```
   [INFO] Lancement du serveur sur le port 8000...
   Serving HTTP on 0.0.0.0 port 8000...
   ```

### Accéder à l'Application

- Ouvrez votre navigateur (Chrome, Firefox, Edge, etc.)
- Allez à : **`http://localhost:8000`**
- L'application se charge ! 🎉

### Arrêter l'Application

- Dans la fenêtre Command Prompt, appuyez sur **Ctrl + C**
- La fenêtre se fermera automatiquement

---

## 🖥️ Méthode 2 : Lancement Manuel (Ligne de Commande)

### Étape par Étape

1. **Ouvrez le Command Prompt**
   - Appuyez sur **Windows + R**
   - Tapez `cmd` et appuyez sur **Entrée**

2. **Naviguez vers le dossier de votre application**
   ```
   cd C:\Users\VotreNom\Desktop\Quiz-Coran
   ```
   *(Remplacez le chemin par le vôtre)*

3. **Vérifiez que vous êtes au bon endroit**
   ```
   dir
   ```
   Vous devez voir `index.html`, `quran-script.js`, etc.

4. **Lancez le serveur sur le port 8000**
   ```
   python -m http.server 8000
   ```
   Vous verrez :
   ```
   Serving HTTP on 0.0.0.0 port 8000
   ```

5. **Ouvrez votre navigateur**
   - Allez à : `http://localhost:8000`

6. **Arrêtez le serveur**
   - Dans la fenêtre Command Prompt, appuyez sur **Ctrl + C**

---

## 🌐 Accéder à l'Application

### Depuis votre ordinateur

- **URL** : `http://localhost:8000`
- **Alternative** : `http://127.0.0.1:8000`

### Depuis un autre ordinateur sur le réseau local

1. Trouvez l'adresse IP de votre ordinateur :
   ```
   ipconfig
   ```
   Cherchez "IPv4 Address" (ex: `192.168.1.100`)

2. Sur l'autre ordinateur, allez à :
   ```
   http://192.168.1.100:8000
   ```

---

## 🔄 Changer le Port

### Pourquoi changer de port ?

Vous avez plusieurs applications qui fonctionnent en local et elles utilisent toutes le **même port (8000)**. Il y a un conflit !

**Solution** : Utilisez des ports différents pour chaque application.

### Exemple : 3 Applications sur des ports différents

```
Quiz Coran          → Port 8000  → http://localhost:8000
Autre Application 1 → Port 8001  → http://localhost:8001
Autre Application 2 → Port 8002  → http://localhost:8002
```

### Comment changer de port ?

#### Avec le fichier .bat

1. Double-cliquez sur `launch.bat`
2. Quand on vous demande le port, sélectionnez :
   - **Option 2** pour le port 8001
   - **Option 3** pour le port 8002
   - **Option 6** pour un port personnalisé

#### En ligne de commande

```bash
REM Port 8001
python -m http.server 8001

REM Port 8002
python -m http.server 8002

REM Port personnalisé (ex: 3000)
python -m http.server 3000
```

### ⚠️ Ports recommandés

| Port | Utilisation |
|------|------------|
| 8000 | Application 1 (par défaut) |
| 8001 | Application 2 |
| 8002 | Application 3 |
| 8003 | Application 4 |
| 9000 | Application 5 |
| 3000-3999 | Ports personnalisés |

**Évitez** : 80, 443, 22, 25 (réservés au système)

---

## 📱 Gérer Plusieurs Applications

### Scénario : 3 applications à lancer simultanément

#### Étape 1 : Créez 3 dossiers

```
Mes Applications/
├── Quiz-Coran/
│   ├── index.html
│   ├── quran-script.js
│   └── launch.bat
├── App-2/
│   ├── index.html
│   └── launch.bat
└── App-3/
    ├── index.html
    └── launch.bat
```

#### Étape 2 : Lancez-les dans des fenêtres différentes

1. **Quiz Coran** : Double-cliquez sur `launch.bat` → Sélectionnez port 8000
   - Accédez à : `http://localhost:8000`

2. **App-2** : Double-cliquez sur `launch.bat` → Sélectionnez port 8001
   - Accédez à : `http://localhost:8001`

3. **App-3** : Double-cliquez sur `launch.bat` → Sélectionnez port 8002
   - Accédez à : `http://localhost:8002`

#### ✅ Résultat

Les 3 applications tournent **simultanément** sur des ports différents !

---

## 🔍 Dépannage

### ❌ Problème : "Python n'est pas reconnu"

**Solution** :
1. Réinstallez Python
2. **COCHEZ BIEN** "Add Python to PATH" ✓
3. Redémarrez votre ordinateur

### ❌ Problème : "Port 8000 déjà en utilisation"

**Solution** :
1. Lancez le serveur sur un port différent :
   ```
   python -m http.server 8001
   ```
2. Accédez à : `http://localhost:8001`

### ❌ Problème : "Impossible de trouver le dossier"

**Solution** :
1. Vérifiez le chemin correct :
   ```
   cd C:\Users\VotreNom\Desktop\Quiz-Coran
   ```
2. Utilisez la commande `dir` pour vérifier les fichiers

### ❌ Problème : "Page blanche ou erreur 404"

**Solution** :
1. Assurez-vous que `index.html` est dans le dossier racine
2. Accédez à : `http://localhost:8000/` (avec `/`)
3. Rechargez la page : **Ctrl + Maj + R** (vider le cache)

### ❌ Problème : Le serveur s'arrête immédiatement

**Solution** :
1. Vérifiez que vous êtes dans le bon dossier
2. Vérifiez que le fichier `index.html` existe
3. Vérifiez qu'il n'y a pas d'erreurs dans la fenêtre Command Prompt

---

## 📝 Résumé Rapide

### Pour lancer rapidement :

```bash
# 1. Ouvrir Command Prompt
# 2. Naviguer au dossier
cd C:\Chemin\vers\votre\application

# 3. Lancer le serveur
python -m http.server 8000

# 4. Ouvrir le navigateur
# http://localhost:8000
```

### Ou simplement :

```bash
Double-cliquez sur launch.bat
Choisissez le port
Ouvrez http://localhost:8000
```

---

## ✅ Prêt ?

Vous êtes maintenant prêt à lancer votre application Quiz Coran localement ! 🚀

**Questions ?** Relisez ce guide ou contactez le support.

Bon développement ! 💻
