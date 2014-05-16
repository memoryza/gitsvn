
@echo off
if "%1" == "diff" @goto list
:config
  @git stash list
  @echo 'config'
  rem pause
  @goto end
:diff
  @svn diff  && git diff
  @goto end
:end
  @echo 'good bye'