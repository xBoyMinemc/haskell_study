
echo "build-"+`date "+%Y-%m-%d %H:%M:%S:%N"` &&
(ghc Main.hs) &&
echo "start--"+`date "+%Y-%m-%d %H:%M:%S:%N"` &&

(./Main.exe) &&

echo "end--"+`date "+%Y-%m-%d %H:%M:%S:%N"` &&
(rm -rf Main.exe) &&
(rm -rf Main.hi) &&
(rm -rf Main.o)