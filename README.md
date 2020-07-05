# Anotação curso terraform
Um produto **hashicorp**

## Passos vistos:
- Formatando código: não se preocupe com o formato do seu código, depois de digitá-lo execute o comando abaixo e ele vai organizá-lo automaticamente
```bash
terraform fmt
```

- Iniciando no profile AWS
```bash
terraform init -backend-config="profile=g3araujo"
```
- Lista 
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

- get: baixa os modulos do condigo, quando rodar o init ele não vai baixar
```bash
terraform get
```
- import: baixa os modulos do condigo, quando rodar o init ele não vai baixar
```bash
terraform import
```