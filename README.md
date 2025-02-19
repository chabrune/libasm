# LibASM - Assembly Language Library

Une bibliothèque en langage assembleur implémentant des fonctions C standard essentielles.

## 📝 À Propos

LibASM est un projet éducatif visant à approfondir la compréhension du langage assembleur en réimplémentant des fonctions C couramment utilisées. Cette bibliothèque est écrite en assembleur x86_64 avec la syntaxe Intel.

## 🚀 Fonctionnalités

### Fonctions Principales
| Fonction | Description | Prototype Original |
|----------|-------------|-------------------|
| ft_strlen | Calcule la longueur d'une chaîne | man 3 strlen |
| ft_strcpy | Copie une chaîne source vers une destination | man 3 strcpy |
| ft_strcmp | Compare deux chaînes | man 3 strcmp |
| ft_write | Écrit dans un descripteur de fichier | man 2 write |
| ft_read | Lit depuis un descripteur de fichier | man 2 read |
| ft_strdup | Duplique une chaîne avec malloc | man 3 strdup |


## ⚙️ Spécifications Techniques

- **Assembleur** : NASM
- **Architecture** : x86_64
- **Syntaxe** : Intel (obligatoire)
- **Gestion d'erreurs** : Via errno
- **Restrictions** : Pas de flag -no-pie

## ⚠️ Notes Importantes

- Les fonctions syscall doivent gérer correctement les erreurs
- La variable errno doit être correctement définie
- Le code doit être compilé en 64 bits

---
*Projet réalisé dans le cadre du cursus 42*
