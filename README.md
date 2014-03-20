docker-trusted-builds
=====================

merely a convenience repo to link to all trusted builds

to quickly ensure you have latest of everything you can run:
```bash
git submodule update --remote
git submodule foreach -q --recursive 'branch="$(git config -f $toplevel/.gitmodules submodule.$name.branch)"; git checkout $branch; git pull'
```
