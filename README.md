## Projeto Pipeline de Elite.

Deploy automatico de criacao de infraestrutura completa EKS da AWS.

Feito Teste de Unidade, e Validação do codigo com o Trivy e TFLint.  

Criacao de imagem e envio para o repositorio no Docker Hub.

## Comandos
aws eks describe-cluster --name NOME_DO_SEU_CLUSTER --query "cluster.endpoint" --output text

aws eks update-kubeconfig --name NOME_DO_CLUSTER --region REGIAO