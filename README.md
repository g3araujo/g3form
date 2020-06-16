## Anotação curso terraform ##

# 0. formatando codigo
terraform fmt

# 1. init no profile g3araujo
terraform init -backend-config="profile=g3araujo"

# 2. plan
terraform plan

# 3. apply
terraform apply

# 4. alterando: mudar o codigo e 
terraform plan
# para verificar o que vai ser modificado

# 5. destruir
terraform destroy

# 6. mostrar
terraform show

# 7. taint
# para forçar que um recurso seja sempre destruido e reconstruido
terraform taint aws_s3_bucket_object.object 
ou
terraform untaint aws_s3_bucket_object.object 
# para desmarcar o taint

# 8. console
terraform console
# Outra forma de expor o show

# 9. output
# no codigo vc define o que vc quer que apareça no final do apply


