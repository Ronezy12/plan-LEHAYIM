# Plan LEHAYIM

Implantation technique du **Bal du Nouvel An LEHAYIM** : booth DJ façon festival, sonorisation, lumière, VIP sur scène et bars, dans la salle reconstruite d'après les photos.

## Contenu

| Fichier | Rôle |
|---|---|
| `index.html` | Plan interactif : vue 3D, plan 2D vu du dessus, vue de face, visite guidée en 12 étapes, fiche de chaque appareil au toucher, export PNG |
| `page.html` | Source de la page (régénérer `index.html` avec `./build.sh page.html`) |
| `assets/logo-lehayim.jpg` | Logo LEHAYIM |
| `docs/materiel-lehayim.pdf` | Liste du matériel : rôle, quantité, emplacement, caractéristiques, prix relevés chez Sonovente le 11/11/2026 et liens vers les fiches produits |

## Ouvrir le plan

- En ligne : activer **GitHub Pages** (Settings → Pages → branche `main`, dossier `/root`), puis ouvrir l'adresse donnée.
- En local : ouvrir `index.html` dans un navigateur récent (connexion internet nécessaire pour charger three.js et les polices).

## Utilisation

- **3D / Plan 2D / Face 2D** : sélecteur en haut à droite.
- **Visite** : présentation guidée, la caméra se déplace de zone en zone.
- **Photo** : enregistre l'image de la vue en PNG (sur téléphone, le partage propose « Enregistrer l'image » pour la galerie).
- **Options** : points de vue, mode soirée, couleur d'ambiance, rideaux latéraux, repérage du matériel, liste du matériel.
- Toucher un appareil ouvre sa fiche : rôle, fonctions, quantité, prix et lien source.

## À savoir

- Les dimensions de la salle sont **estimées** d'après les photos (environ 14 × 22 m, plafond 5,8 m, mezzanine à 3 m) : à caler sur le plan coté du lieu.
- Les appareils 3D sont des modèles simplifiés aux dimensions des vrais produits, sans logos.
- Prix relevés le 11/11/2026 chez Sonovente ; pour une soirée, demander un devis de location (livraison, installation, technicien).
- Machine à brume, accroches et VIP sur scène : à faire valider par l'hôtel et le loueur.
