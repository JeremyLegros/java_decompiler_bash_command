java_decompiler_path="./java-decompiler.jar"

usage="usage : \n \t $0 srcPath destPath"

if [ "$#" -ne 2 ]; then
        echo -e $usage
        exit 0
fi

java -cp "$java_decompiler_path" org.jetbrains.java.decompiler.main.decompiler.ConsoleDecompiler -hdc=0 -dgs=1 -rsy=1 -rbr=1 -lit=1 -nls=1 -mpm=60 $1 $2
