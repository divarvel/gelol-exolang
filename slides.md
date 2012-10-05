# Langages exotiques - Haskell

## Introduction

### Introduction

Il existe beaucoup de langages de programmation

Des célèbres (C, Java)

D'autres moins (J)

Pourquoi cette profusion ?

### Les différents paradigmes

Quelques paradigmes :

 - Impératif
 - Fonctionnel
 - Logique

### Le paradigme impératif

Remonte à la machine de Turing

Manutention d'espace mémoire

Proche du fonctionnment des processeurs

### Le paradigme fonctionnel

Remonte au Lambda Calcul

Définition de fonctions et de leur combinaisons

Proche des mathématiques

### Pourquoi le fonctionnel ?

Raisonnement plus simple

Meilleure composabilité

Programmation parallèle

## La programmation fonctionnelle

### L'essence de la programmation fonctionnelle

Des fonctions

Leur composition

### L'immutabilité

Définition mathématique d'une variable

Immutabilité

### La transparence référentielle

Remplacer une expression par la valeur qu'elle dénote

Absence d'effets de bord

### La récursion

Fondamental

Comment représenter une boucle sans la mutabilité ?

Approche mathématique

    x^0 = 1
    x^n = x * x^(n-1)

Insiste sur la décomposition du problème

### La programmation fonctionnelle typée

Chaque valeur a un type (Entier, Booléen, Liste d'entiers, Fonction des
entiers vers les Booléens)

Systèmes de types souvent sophistiqués

#### Correspondance de Curry Howard

Correspondance preuve - programme.

    type <=> proposition
    programme bien typé <=> preuve de la proposition

Fondamental

#### Un langage fonctionnel

Permet la manipulation de fonctions

Encourage l'immutabilité

## Un langage fonctionnel, Haskell

### Les caractéristiques de Haskell

Haskell est un langage :

    - Fonctionnel
    - Statiquement typé
    - "Fortement" typé
    - À inférence de type
    - Pur
    - Paresseux

### En détail :

Typage statique : typage déterminé en amont

Typage "fort" : à voir

À inférence de type : capable de déterminer le type d'une variable

Pur : pas d'effets de bord

Paresseux : ne calcule un terme que quand (**et si**) il en a besoin

### Les avantages

Haskell est un langage :

    - Fonctionnel : composablité
    - Statiquement typé : sûreté
    - "Fortement" typé : sûreté
    - À inférence de type : concision
    - Pur : composabilité
    - Paresseux : composabilité


### Un exemple

La somme des *n* premiers nombres premiers

    primes = nubBy (\x y -> (gcd x y) > 1) [2..]

    sumOfPrimes n = sum $ take n primes
