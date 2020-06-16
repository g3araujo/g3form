# Anotação curso terraform
Um produto **hashicorp**

## Passos vistos:
- formatando codigo
```bash
terraform fmt
```

- init no profile g3araujo
```bash
terraform init -backend-config="profile=g3araujo"
```
- plan
```bash
terraform plan
```
- apply
```bash
terraform apply
```
- alterando: mudar o codigo e para verificar o que vai ser modificado
```bash
terraform plan
```
- destruir
```bash
terraform destroy
```
- mostrar
```bash
terraform show
```
- taint: para forçar que um recurso seja sempre destruido e reconstruido
```bash
terraform taint aws_s3_bucket_object.object 
```
ou para desmarcar o taint
```bash
terraform untaint aws_s3_bucket_object.object 
```
- console
```bash
terraform console
```
- Outra forma de expor o show é **output** <br>
O codigo vc define o que vc quer que apareça no final do apply


