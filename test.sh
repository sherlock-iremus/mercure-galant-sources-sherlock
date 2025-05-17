for f in ./tei/livraisons/*.xml
do
    rm -f $f.1
    rm -f $f.2
    xmllint --format --noblanks $f | tr -d '\n'
    # xmllint --xpath '//*[local-name()="sourceDesc"]/*[local-name()="bibl"]' $f.2
done