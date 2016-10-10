sed '/#define/d' /home/experimento/Experimento/Worskpace/HUXLEY/Warm1/Warm1/auth.c > /home/experimento/Experimento/Test/HUXLEY/auth2.c
gcc -c /home/experimento/Experimento/Test/HUXLEY/auth2.c -nostartfiles -w -D ENABLE_DEF_AUTH  -D PLUGIN_DEF_AUTH -D ENABLE_OCC
gcc -c /home/experimento/Experimento/Test/HUXLEY/auth2.c -nostartfiles -w -D ENABLE_DEF_AUTH  -D PLUGIN_DEF_AUTH -U ENABLE_OCC
gcc -c /home/experimento/Experimento/Test/HUXLEY/auth2.c -nostartfiles -w -D ENABLE_DEF_AUTH  -U PLUGIN_DEF_AUTH -U ENABLE_OCC
gcc -c /home/experimento/Experimento/Test/HUXLEY/auth2.c -nostartfiles -w -U ENABLE_DEF_AUTH  -D PLUGIN_DEF_AUTH -D ENABLE_OCC
gcc -c /home/experimento/Experimento/Test/HUXLEY/auth2.c -nostartfiles -w -U ENABLE_DEF_AUTH  -U PLUGIN_DEF_AUTH -D ENABLE_OCC





rm /home/experimento/Experimento/Test/HUXLEY/auth2.c
