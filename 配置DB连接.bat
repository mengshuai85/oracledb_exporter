echo 获取当前目录

cd /d %~dp0
set basePath=%~dp0


echo 配置DB连接   需要设置环境变量：DATA_SOURCE_NAME
setx /M DATA_SOURCE_NAME meng/crrcdt@saas.crrcdt.com:1523/EE.oracle.docker

echo 配置自定义指标
setx /M CUSTOM_METRICS D:\GO\src\oracledb_exporter\custom-metrics.toml
oracledb_exporter.exe


pause
exit