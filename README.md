== README

== Blog rails App

[App on heroku](https://morning-waters-8051.herokuapp.com/)

Superadmin credentials:

email: superuser@blogApp.com

password: superuser


TASK:

Vytvořte Ruby on Rails (RoR) aplikaci s využitím probíraných gemů:
1. Výsledkem vaší práce bude jednoduchá blogovací platforma s použitím probíraných gemů.
2. Vytvořte novou Rails aplikaci a nasaďte na ni exception_notification, pry, better_errors a web-console.
3. Mohou se zaregistrovat noví uživatelé (gem devise) a přidávat příspěvky.
4. Nový uživatel musí být potvrzený mailem (gem devise, letter_opener na localhostu)
5. Uživatelé vidí příspěvky ostatních, mohou ale editovat pouze ty svoje (gem cancancan, rolify).
6. Uživatelé mají svůj avatar - obrázek si mohou měnit (gem papeclip).
7. Existuje superadmin, vidí všechny uživatele a může editovat jejich příspěvky.
8. Aplikaci nasaďdte na Heroku a odevzdejte zdrojový kód a README soubor s url na Heroku a loginem pro superadmina.
Pro vývoj aplikace můžete použít gem rails_admin nebo standardní scaffolld (slim, twitter-bootstrap-rails, simple_form)

<tt>rake doc:app</tt>.

