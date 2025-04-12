#!/system/bin/sh
# customize.sh

ui_print " "
ui_print "*****************************************"
ui_print "* Optimizador GMS Lite Instalado     *"
ui_print "* Reinicia para aplicar los cambios.    *"
ui_print "* ¡Recuerda los posibles efectos adversos! *"
ui_print "*****************************************"
ui_print " "

# No se necesitan operaciones de archivos aquí
# Los cambios se aplican vía service.sh y system.prop

# Establecer permisos (redundante si ya está en updater-script, pero seguro)
set_perm_recursive $MODPATH 0 0 0755 0644