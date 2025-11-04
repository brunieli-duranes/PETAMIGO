# 🐾 PET AMIGO – Sistema de Adoção Responsável de Animais

## 📘 Resumo
O projeto **Pet Amigo** tem como objetivo desenvolver um sistema para o gerenciamento de adoções responsáveis de animais, integrando **modelagem de banco de dados relacional** e **controle de versão (Git/GitHub)**.  
O sistema organiza informações sobre ONGs, animais disponíveis, adotantes e registros de adoção, oferecendo uma base sólida para futuras aplicações web.  

**Palavras-chave:** Adoção. Banco de dados. Git. SQL. Controle de versão.

---

## 🐶 Introdução
O abandono de animais é um problema social e ambiental crescente. A falta de sistemas organizados para registrar e acompanhar adoções dificulta o trabalho das ONGs e voluntários.  
O projeto **Pet Amigo** busca resolver essa lacuna criando um banco de dados eficiente e versionado, capaz de armazenar dados sobre ONGs, animais, adotantes e adoções.  
A modelagem do banco garante a **integridade e normalização dos dados**, enquanto o uso do **GitHub** assegura o versionamento e a rastreabilidade do projeto.

---

## 🎯 Objetivo Geral
Desenvolver um banco de dados relacional para o sistema **Pet Amigo**, aplicando boas práticas de modelagem e controle de versão para garantir a integridade e o gerenciamento eficiente das informações sobre adoção de animais.

---

## 📋 Objetivos Específicos
- Projetar um modelo de dados eficiente e normalizado;  
- Implementar o banco de dados utilizando SQL;  
- Executar operações de manipulação de dados (inserção, atualização, remoção e consultas);  
- Utilizar o Git e o GitHub para versionar o código;  
- Documentar as alterações por meio de commits descritivos.

---

## 💡 Justificativa e Delimitação do Problema
O **Pet Amigo** visa melhorar o processo de adoção responsável, oferecendo uma solução digital para armazenar e consultar informações sobre animais e adotantes.  
A escolha do **MySQL** deve-se à sua confiabilidade e compatibilidade com diversas plataformas.  
O **GitHub** foi escolhido por ser uma ferramenta popular para colaboração e versionamento de código.

---

## 🧠 Fundamentação Teórica
Segundo **Elmasri e Navathe (2019)**, a modelagem de dados é essencial para garantir integridade e consistência.  
O processo de **normalização** (DATE, 2004) elimina redundâncias e melhora a manutenção do banco.  
O **SQL** é a linguagem padrão para definição e manipulação de dados (SILBERSCHATZ, 2011).  
O uso de **Git** e **GitHub** garante o versionamento eficiente do projeto (CHACON & STRAUB, 2014).

---

## ⚙️ Metodologia

### 6.1 Modelagem do Banco de Dados
O sistema foi modelado com quatro entidades principais:
- **Ong** – armazena dados de ONGs cadastradas;  
- **Animal** – registra os animais disponíveis e adotados;  
- **Adotante** – contém informações dos interessados em adoção;  
- **Adocao** – conecta animais e adotantes com data e status da adoção.

### 6.2 Implementação e Manipulação de Dados
Foram implementadas tabelas com chaves primárias e estrangeiras, seguindo as boas práticas de **3ª Forma Normal (3FN)**.  
Operações SQL implementadas:
- **INSERT** – para cadastro de ONGs, animais e adotantes;  
- **UPDATE** – para atualização do status dos animais;  
- **DELETE** – para remoção de registros;  
- **SELECT** – para consultas de dados.

### 6.3 Uso do Controle de Versão
O projeto foi versionado com **Git** e hospedado no **GitHub**.  
Foram criados commits com mensagens descritivas e branches para novas funcionalidades.  

🔗 **Repositório:** [https://github.com/BrunieliDuranes/PetAmigo](#)

---

## 🐕‍🦺 Resultados Preliminares
O banco de dados foi implementado com sucesso, permitindo armazenar e consultar informações sobre animais e adoções.  
As consultas SQL demonstram que o modelo é funcional e escalável para uso em sistemas reais.  
O GitHub mostra o histórico de commits e a evolução do projeto.

---

## 🏁 Conclusão
O projeto **Pet Amigo** reforça a importância da integração entre **modelagem de banco de dados** e **controle de versão**.  
Com uma estrutura normalizada e versionada, o sistema serve como base para o desenvolvimento futuro de uma aplicação web completa de adoção de animais.  

---

## 📚 Referências
CHACON, S.; STRAUB, B. *Pro Git*. 2ª ed. Apress, 2014.  
DATE, C. J. *Introdução a Sistemas de Bancos de Dados*. 8ª ed. Elsevier, 2004.  
ELMASRI, R.; NAVATHE, S. *Sistemas de Banco de Dados*. 7ª ed. Pearson, 2019.  
SILBERSCHATZ, A.; KORTH, H. F.; SUDARSHAN, S. *Sistemas de Banco de Dados*. 6ª ed. McGraw-Hill, 2011.  
