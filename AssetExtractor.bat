@echo AssetExtractor
@echo by Marko2155
@echo -------------------
@if exist out (
	@echo Y | @del out > nul
	@rmdir out > nul
)
@md out
@xcopy /s %USERPROFILE%\AppData\Local\Packages\Microsoft.Windows.ContentDeliveryManager_cw5n1h2txyewy\LocalState\Assets out > nul
@echo Copied assets to out folder!
@cd out
@for %%f in (*.*) do @ren "%%f" "%%f.png"
@echo Converted them into PNG!
@echo Done! Make sure to move these out, as AssetExtractor deletes the out folder everytime it's run.
@pause > nul
@exit
