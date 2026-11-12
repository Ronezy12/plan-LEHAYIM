# Plan LEHAIIM

*Fait par **DJ RON***

Implantation technique du **Bal du Nouvel An LEHAIIM** : booth DJ façon festival, sonorisation, lumière, VIP sur scène et bars, dans la salle reconstruite d'après les photos.

## Contenu

| Chemin | Rôle |
|---|---|
| `index.html` | Accueil : dernières mises à jour, plan prêt (LEHAIIM), plans en cours (Péniche, Seguin Sound, Jump, autres salles) |
| `editeur/` | Éditeur d'implantation : catalogue, glisser-déposer, câbles, couverture, inventaire, puissance, 3D |
| `plans/lehayim/` | Plan LEHAIIM : 3D, plan 2D, vue de face, visite guidée, fiche de chaque appareil, export PNG |
| `data/state.json` | Contenu de l'accueil : plans, statuts, photos, mises à jour |
| `photos/` | Photos des lieux |
| `docs/materiel-lehaiim.pdf` | Fiche matériel LEHAIIM (location) |
| `src/` | Sources des pages ; régénérer avec `./build.sh src/accueil.html index.html` et `./build.sh src/plan-lehayim.html plans/lehayim/index.html ../../` |

## En ligne

Activer **GitHub Pages** (Settings → Pages → branche `main`, dossier `/root`) : l'accueil s'ouvre à la racine, le plan LEHAIIM dans `plans/lehayim/`.

## Espace admin

L'édition (plans, photos, mises à jour) se fait sur la version Claude de l'accueil, en tant qu'admin, avec le bouton « Enregistrer ». La version GitHub affiche le contenu de `data/state.json` en lecture seule.

## Utilisation du plan

- **3D / Plan 2D / Face 2D** : sélecteur en haut à droite.
- **Visite** : présentation guidée, la caméra se déplace de zone en zone.
- **Photo** : enregistre l'image de la vue en PNG (sur téléphone, le partage propose « Enregistrer l'image »).
- **Tactile** : un doigt pour se déplacer, deux doigts pour zoomer et pivoter à 360°.
- Toucher un appareil ouvre sa fiche : rôle, fonctions, quantité et lien source.

## À savoir

- Les dimensions de la salle sont **estimées** d'après les photos (environ 14 × 22 m, plafond 5,8 m, mezzanine à 3 m) : à caler sur le plan coté du lieu.
- Les appareils 3D sont des modèles simplifiés aux dimensions des vrais produits, sans logos.
- Tout le matériel est loué pour la soirée : la liste sert de base au devis du loueur (livraison, installation, technicien).
- Machine à brume, accroches et VIP sur scène : à faire valider par l'hôtel et le loueur.
