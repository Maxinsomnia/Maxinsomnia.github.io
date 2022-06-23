cd C:\Users\Guo\blog\maxinsomnia.github.io
pnpm i --lockfile-only
hexo clean
hexo g
info=$1
if ["$info" = ""];
then info="default: update content"
fi
git add -A
git commit -m "$info"
git config --global http.sslVerify "false"
git push origin hexo