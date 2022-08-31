DIR="teste"
if [ -d "$DIR" ]; then
#executa ação se o diretório existir
    echo "Achei o diretório $DIR"
else
    mkdir teste
    echo "criei o diretório $DIR"
fi

