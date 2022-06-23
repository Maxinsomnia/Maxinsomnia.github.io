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
git config --global --unset http.proxy
git config --global --unset https.proxy
git push origin hexo