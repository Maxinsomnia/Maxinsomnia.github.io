pnpm i --lockfile-only
hexo clean
hexo g
info=$1
if ["$info" = ""];
then info="default: update content"
fi
git add -A
git commit -m "$info"
git push origin hexo