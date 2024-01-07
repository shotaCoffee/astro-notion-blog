if [ $# != 1 ] || [ $1 = "" ]; then
    echo "引数には生成する際のファイル名を指定してください"
    exit
fi

OUTPUT_FILENAME=$1

tcardgen \
    --fontDir ./static/fonts/hackgen/HackGen \
    --output output/og/$OUTPUT_FILENAME.png \
    --template static/images/og/_ogp_template.png \
    --config tcargen.yaml \
    ./index.md
