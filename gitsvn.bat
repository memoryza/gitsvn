
@echo off
if "%1" == "diff" @goto list
if "%1" == "commit" @goto commit
if "%1" == "log" @goto log
if "%1" == "pull" @goto pull
:pull
	@svn update > log.txt	
	git commit -am 
	@goto end
:config
	@git stash list
	@echo 'config'
	rem pause
	@goto end
:log
	@git log %2 %3
	@goto end
:commit
  @git commit %2 "%3"
  @goto end
:diff
  @svn diff  && git diff
  @goto end
:end
  @echo 'good bye'