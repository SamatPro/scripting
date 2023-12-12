#! /bin/bash
path="C:/Users/Samat/Desktop/scripting/scripting/2.selfExtractingArchive"
while getopts o: flag
do
case "${flag}" in
o) path="${OPTARG}";;
    esac
done
encoded="H4sICCLkcGMAA2JsYXMudGFyAO2TMQ7CMAxFcxSfoHXqODlPByqhUiq1gfMTGsOEKjoYCclv+YuV7+QpTZtPa26dJoiYmGHLWBO7UFMAH4goeeZAgJ4SkgNW3Uq4rblfyirLPPXX8XKe5vvHuTI2DDvnyD3e+Sc01b/X7CjvEUP40j/FzT9HB6i51Avz//RPmh2H/Mv/N/+/Qfx3mh3H/Pvqn8y/YRiGJg81saZVAAwAAA=="
base64 -d <<- EOF >${path}result.tar.gz
${encoded}
EOF
gunzip ${path}result.tar.gz
tar -xvf result.tar
rm result.tar
