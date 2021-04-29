# Expressions régulières

## Neorau

### Tiers par le matricule

```regexp
S21\.G00\.30\.019,'0000000'\n[\d.',\w\n-]+S21.G00.30.001
```

### Récupération matricules  

```regexp
^(?!S21\.G00\.30\.019).*
```

## CRM

### Récupération matricules

```regexp
^(?!.*<matricule>.*</matricule>).*
```
