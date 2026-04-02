{% macro learn_variables() %}

    {% set your_name_jinja = "Jon" %}
    {{ log("Hello " ~ your_name_jinja, info=True) }}

    {{ log("Hello dbt user " ~ var("user_name","No User Name is Set!") ~ "!", info=True) }}



{% endmacro %}