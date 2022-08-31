echo "Escreva o diretório do arquivo"
read DIRETORIO
echo "Escreva o nome do arquivo"
read ARQUIVO
if [ -d "$DIRETORIO" ]; then
    cd "$DIRETORIO"
    if [ -e "$DIRETORIO\\target\\$ARQUIVO" ]; then
        echo "Encontrei o arquivo $ARQUIVO"
        java -jar "$DIRETORIO\\target\\$ARQUIVO"
    else
        echo "Arquivo não encontrado."
        mvn clean
        mvn package
        java -jar "$DIRETORIO\\target\\$ARQUIVO"
    fi
else
    echo "Não foi possível encontrar o diretório."
fi