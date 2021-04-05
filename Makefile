


# Django

Django_activate-virtual-environment_and_run_server:
	pwd;.  venv/bin/activate; pwd; cd todo; pwd;  python manage.py runserver; cd ..; pwd

Django_run_sever:
	python manage.py runserver;

Django_admin_user_yarat:
	python3 manage.py createsuperuser

Django_admin_delete_datas:
	python3 manage.py flush
	# Removes all data from the database and re-executes any post-synchronization handlers. The table of which migrations have been applied is not cleared.

Django_admin_create_token:
	python3 manage.py drf_create_token admin



Django_new_app:
	pwd; ls; which python; python manage.py startapp core;

Django_migrate_django_app_with_name:
	python manage.py makemigrations core;

Django_migrations_all:
	python manage.py makemigrations

Django_migrate_django:
	python manage.py migrate;

Django_run_manage_py_shell_add_data:
	python manage.py shell;
#from posts.models import Item, TodoList
#t = TodoList(name="delo")
#t.save()
#TodoList.objects.all()
#TodoList.objects.get(id=1)
#TodoList.objects.get(name="delo")
#t.item_set.all()
#t.item_set.create(text="go to the mall", complete=False)
#t.item_set.all()
#t.item_set.get(id=1)

Django_run_external_script_with_shell:
	$ ./manage.py shell < db_inject.py;

#__________________________

# React

React_delete_modules_and_reinstall_them:
	cd todo; cd my-app; rm -rf node_modules; npm install

React_delete_package.json_and_reinstall_them:
	cd todo; cd my-app; rm -rf package-lock.json; rm -rf package.json; rm -rf node_modules;npm cache clear --force;
# npm install
# npm run-script build

React_buglari_coz_them:
	cd todo; cd my-app; npm init; npm install debug;

React_refresh_react_download_lib:
	cd todo; cd my-app;npm install; npm run build; cd ..; cd ..; pwd;

React_refresh:
	cd todo; cd my-app; npm run build; cd ..; cd ..; pwd;

React_run:
	cd todo; cd my-app; npm start;

#activate-virtual-environment_orn:
#	( \
#       source path/to/virtualenv/bin/activate; \
#       pip install -r requirements.txt; \
#    )
#
#activate-virtual-environment_orn1:
#	( \
#       SHELL := /bin/bash; \
#       source ./venv/bin/activate; \
#    )
##__________________________

Unitest_start:
	python -m unittest test_calc.py






# Final Scripts
Final_refresh_all_env:
	cd todo; cd my-app; npm run build; cd ..; cd ..; pwd; .  venv/bin/activate; pwd; cd todo; pwd;  python manage.py collectstatic; cd ..; pwd; cd todo; pwd;  python manage.py runserver 0.0.0.0:80; cd ..; pwd

Final_refresh_all_without_env:
	cd todo; cd my-app; npm run build; cd ..; pwd;  python manage.py collectstatic; cd ..; pwd; cd todo; pwd;  python manage.py runserver; cd ..; pwd
#__________________________
