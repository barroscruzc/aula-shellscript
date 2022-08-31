# aula-shellscript

Nesta aula ministrada pelo Prof. Danilo Aparecido, no bootcamp "If Black, Then Code" (IBM & Gama Academy), testamos comandos básicos via terminal GitBash para codar shellscripts para automatizar criação, alteração e execução de arquivos.

## Exercicio 1
### Enunciado
Crie um programa no Shell script que solicite o nome de um diretório e o nome de um arquivo de execução. Com o nome e diretório do arquivo de execução, faça uma chamada para uma aplicação java que você já tenha criado ou seja, chame qualquer app console que você gerou o arquivo .jar

Se você não tiver o .jar da aplicação, o shellscript criado deve gerar o build do maven e depois chamar o .jar

### Resolução da aluna: 
- `Shellscript` 
    - Arquivo: '7-exercicio.sh'
- `Observações` 
    - O diretório deve ser escrito com duas barras. Exemplo: C:\\\Users\\\seunome\\\Downloads\\\projeto
    - Antes de executar o shellscript, é necessário conceder permissão. Basta executar o seguinte código no terminal GitBash aberto no mesmo diretório do arquivo: chmod +x 7-exercicio.sh 

```shel
echo "Escreva o diretório do arquivo"
read DIRETORIO
echo "Escreva o nome do arquivo"
read ARQUIVO
if [ -d "$DIRETORIO" ]; then
    cd "$DIRETORIO"
    if [ -f "$DIRETORIO//target//$ARQUIVO" ]; then
        echo "Encontrei o arquivo $ARQUIVO"
        java -jar "$DIRETORIO//target//$ARQUIVO"
    else
        echo "Arquivo não encontrado."
        mvn clean
        mvn package
        java -jar "$DIRETORIO//target//$ARQUIVO"
        
    fi
else
    echo "Não foi possível encontrar o diretório."
fi
```
