
## Terraform logs

Definimos nivel de log en Terraform

```
INFO - Minimo detalle
WARNING
ERROR
DEBUG
TRACE - Maximo detalle
```

### Linux: 

```
export TF_LOG=INFO
```

Guardamos logs en un archivo

```
TF_LOG_PATH=logs.txt
```

### Windows:

```
$env:TF_LOG = "INFO"
```

```
$env:TF_LOG_PATH = "logs.txt"
```


