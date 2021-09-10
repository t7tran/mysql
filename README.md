# docker-mysql
Extension of the official MySQL with support for script execution on every startup

	docker pull t7tran/mysql:5.7

All scripts mounted under `/docker-entrypoint-initdb.d/` are always executed on every startup.