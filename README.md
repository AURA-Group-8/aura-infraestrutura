# 🏗️ Aura Infraestrutura

Este repositório contém a configuração de infraestrutura como código (IaC) para o projeto **Aura**, utilizando o **Terraform** para gerenciar recursos no **Microsoft Azure**.

## 📁 Estrutura do Repositório

- 📦 **`providers.tf`**: Configuração do provedor do Azure.  
- 🧩 **`variables.tf`**: Declaração de variáveis utilizadas no projeto.  
- 🔐 **`env.tfvars`**: Valores das variáveis sensíveis (não versionado).  
- 🧱 **`main.tf`**: Definição dos recursos a serem provisionados.  
- 📤 **`outputs.tf`**: Saídas configuradas para exibir informações úteis após a execução.  
- 🙈 **`.gitignore`**: Arquivos e diretórios ignorados pelo Git, incluindo arquivos sensíveis como `*.tfvars`.

## ✅ Pré-requisitos

1. ⚙️ **Terraform**: Certifique-se de que o Terraform está instalado na sua máquina. [Guia de instalação](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli).  
2. ☁️ **Azure CLI**: Para autenticação no Azure. [Guia de instalação](https://learn.microsoft.com/cli/azure/install-azure-cli).  
3. 🔐 **Credenciais do Azure**: Configure as credenciais no arquivo `env.tfvars`.

## ⚙️ Configuração

1. 🧬 Clone este repositório:
   ```bash
   git clone https://github.com/seu-usuario/aura-infraestrutura.git
   cd aura-infraestrutura
   ```

2. 📝 Configure as credenciais no arquivo `env.tfvars`:
   ```hcl
   subscription_id = "SEU_SUBSCRIPTION_ID"
   tenant_id       = "SEU_TENANT_ID"
   client_id       = "SEU_CLIENT_ID"
   client_secret   = "SEU_CLIENT_SECRET"
   ```

3. 🚀 Inicialize o Terraform:
   ```bash
   terraform init
   ```

4. 🧪 Valide a configuração:
   ```bash
   terraform validate
   ```

5. 📦 Aplique as mudanças:
   ```bash
   terraform apply -var-file="env.tfvars"
   ```

## ☁️ Recursos Criados

- **🗂️ Grupo de Recursos**: Um exemplo de grupo de recursos no Azure.

##🔒 Segurança

-⚠️ Certifique-se de que o arquivo `env.tfvars` está listado no `.gitignore` para evitar o versionamento de credenciais sensíveis.
-🚫 Nunca compartilhe suas credenciais publicamente.

## 📄 Licença

Este projeto está licenciado sob a [MIT License](LICENSE).

---

**👥 Mantenedores**: Equipe Aura - Grupo 8
